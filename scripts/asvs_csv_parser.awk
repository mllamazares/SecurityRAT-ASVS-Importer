function clean_quotes(cell_text){
    gsub("\"","", cell_text);
    return cell_text
}

function insert_category(id, name, description) {
    print "INSERT INTO `REQCATEGORY` VALUES (" id ",\"" clean_quotes(name) "\",\"" clean_quotes(description) "\", ''," id ", _binary '');";
}

function insert_chapter(id, chapter_id, short_name, description){
    print "INSERT INTO `COLLECTIONINSTANCE` VALUES (" id ",\"" chapter_id " - " clean_quotes(short_name) "\",\"" clean_quotes(description) "\"," id ",_binary '', 1);";
}

function insert_skeleton(id, short_name, description, reqcategory_id) {
    print "INSERT INTO `REQUIREMENTSKELETON` VALUES (" id ",NULL,\"" clean_quotes(short_name) "\",\"" clean_quotes(description) "\"," id ", _binary ''," reqcategory_id ");";
}

function insert_skeleton_collection(collection_id, skeleton_id) {
    print "INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (" collection_id "," skeleton_id ");";
}

function link_asvs_level(level_col, collection_id, skeleton_id) {
    if (level_col != ""){
        insert_skeleton_collection(collection_id, skeleton_id);
    }
}

function link_chapter(chapter, skeleton_id) {
    gsub(/[^0-9]/,"",chapter);
    insert_skeleton_collection(chapter + SKECOLL_OFFSET, skeleton_id);
}

function link_stride(chapter, skeleton_id) {
    # https://github.com/mllamazares/STRIDE-vs-ASVS/blob/main/STRIDE-vs-ASVS-4.0.csv

    # SPOOFING
    #   V2 - Authentication
    #   V3 - Session Management
    if (chapter ~ /^V(2|3)$/){
        insert_skeleton_collection(4, skeleton_id);
    }

    # TAMPERING
    #   V4 - Access Control
    #   V5 - Validation, Sanitization and Encoding
    if (chapter ~ /^V(4|5)$/){
        insert_skeleton_collection(5, skeleton_id);
    }

    # REPUDIATION
    #   V7 - Error Handling and Logging
    if (chapter ~ /^V(7)$/){
        insert_skeleton_collection(6, skeleton_id);
    }

    # INFORMATION DISCLOSURE
    #   V6 - Stored Cryptography
    #   V7 - Error Handling and Logging
    #   V8 - Data Protection
    #   V9 - Communication
    #   V14 - Configuration
    if (chapter ~ /^V(6|7|8|9|14)$/){
        insert_skeleton_collection(7, skeleton_id);
    }

    # DENIAL OF SERVICE
    #   V14 - Configuration
    if (chapter ~ /^V(14)$/){
        insert_skeleton_collection(8, skeleton_id);
    }

    # ELEVATION OF PRIVILEGE
    #   V4 - Access Control
    #   V14 - Configuration
    if (chapter ~ /^V(4|14)$/){
        insert_skeleton_collection(9, skeleton_id);
    }
}

function link_adhoc_chapters(chapter, skeleton_id) {

    if (chapter !~ /^V(12|13)$/){
        return 
    }

    # Link all STRIDE threats (ids from 4 to 9) to V12 or V13 ASVS categories
    # This is just for adapting to the SecurityRAT selection criteria
    # SecurityRAT fetchs the requirements with an AND not with an OR condition
    # Thus, if you want to set a switch, you need to link the rest of the categories.
    # TODO: raise a issue to SecurityRAT and/or find an alternative that doesn't suck
    for (j=4; j<=9; j++) {
        insert_skeleton_collection(j, skeleton_id);
    }

    # V12 - Files and Resources
    if (chapter ~ /^V(12)$/){
        # Yes, handles files
        insert_skeleton_collection(10, skeleton_id);
    }

    # V13 - API and Web Service
    if (chapter ~ /^V(13)$/){
        # Yes, API service
        insert_skeleton_collection(11, skeleton_id);
    }
}

function link_reference(ref_code, opt_column_id, skeleton_id) {
    print "INSERT INTO `OPTCOLUMNCONTENT` VALUES (" optcont_id ",'" ref_code "'," opt_column_id "," skeleton_id ");"
    optcont_id++;
}

function link_project_type(skeleton_id) {
    print "INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1," skeleton_id ");";
}

BEGIN {
    # Hack to work with comma separated CSV from awk :)
    # https://stackoverflow.com/a/43478468/1709738
    FPAT = "([^,]+)|(\"[^\"]+\")"

    print "-- Housekeeping"
    print "SET FOREIGN_KEY_CHECKS=0;";

    print "SET CHARACTER SET 'utf8';";
    print "SET NAMES 'utf8';";

    # The first 3 rows are already inserted at this point (the ASVS levels)
    SKECOLL_OFFSET = 3;

    ncateg = 1;
    nchapt = 1 + SKECOLL_OFFSET;
    optcont_id = 1;
}{
    # Skip header or empty rows
    if (NR==1 || $0 ==""){next}

    # CSV column mapping
    rownum = NR - 1
    chapter_id = $1
    chapter_name = $2
    section_id = $3
    section_name = $4
    req_id = $5
    req_description = $6
    level1 = $7
    level2 = $8
    level3 = $9
    cwe = $10
    nist = $11

    if (!categories[section_name]){
        print "-- ASVS Section";
        insert_category(ncateg, section_name, section_id);
        categories[section_name] = ncateg;
        ncateg++;
    }

    # If there are no levels defined we want to skip redundant or deleted requirements
    if ((level1 == "") && (level2 == "") && (level3 == "")) {
        next;
    }

    # If the levels are not checkboxes but specifications we want to include them in the requirement descriptions.
    if (level1 ~ /[0-9a-zA-Z]+/){
        req_description = req_description "<br>L1: " level1 "<br>L2: " level2 "<br>L3: " level3
    }

    print "-- Requirement Skeleton";
    insert_skeleton(rownum, req_id, req_description, categories[section_name]);

    print "-- Link ASVS Levels";
    link_asvs_level(level1, 1, rownum);
    link_asvs_level(level2, 2, rownum);
    link_asvs_level(level3, 3, rownum);

    if (stride_version != ""){
        print "-- Link STRIDE";
        link_stride(chapter_id, rownum);

        print "-- Link ad-hoc chapters"
        link_adhoc_chapters(chapter_id, rownum);

    } else {
        if (!chapters[chapter_name]){
            print "-- ASVS Chapter";
            insert_chapter(nchapt, chapter_id, chapter_name, chapter_name);
            chapters[chapter_name] = 1;
            nchapt++;
        }

        print "-- Link ASVS Chapter";
        link_chapter(chapter_id, rownum);
    }

    print "-- Link CWE Reference";
    link_reference(cwe, 1, rownum);

    print "-- Link NIST Reference";
    link_reference(nist, 2, rownum);

    print "-- Link Project Type"
    link_project_type(rownum);
}
END {
    print "\nSET FOREIGN_KEY_CHECKS=1;";
    print "-- EOF";
}