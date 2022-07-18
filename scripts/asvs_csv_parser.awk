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
        req_description = req_description " L1: " level1 "; L2: " level2 "; L3: " level3
    }

    print "-- Requirement Skeleton";
    insert_skeleton(rownum, req_id, req_description, categories[section_name]);

    print "-- Link ASVS Levels";
    link_asvs_level(level1, 1, rownum);
    link_asvs_level(level2, 2, rownum);
    link_asvs_level(level3, 3, rownum);

    if (!chapters[chapter_name]){
        print "-- ASVS Chapter";
        insert_chapter(nchapt, chapter_id, chapter_name, chapter_name);
        chapters[chapter_name] = 1;
        nchapt++;
    }

    print "-- Link ASVS Chapter";
    link_chapter(chapter_id, rownum);

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