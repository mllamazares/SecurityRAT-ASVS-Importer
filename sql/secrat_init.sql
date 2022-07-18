SET FOREIGN_KEY_CHECKS=0;

--
-- Dumping data for table `COLLECTIONCATEGORY`
--

INSERT INTO `COLLECTIONCATEGORY` VALUES (1,'Application Security Verification Standard Project','The OWASP Application Security Verification Standard (ASVS) Project provides a basis for testing web application technical security controls and also provides developers with a list of requirements for secure development.',0,_binary ''),(2,'Application Security Verification Levels','The Application Security Verification Standard defines three security verification levels, with each level increasing in depth.',1,_binary '');

--
-- Dumping data for table `COLLECTIONINSTANCE`
--

INSERT INTO `COLLECTIONINSTANCE` VALUES (1,'L1','ASVS Level 1 is for low assurance levels, and is completely penetration testable',0,_binary '',2),(2,'L2','ASVS Level 2 is for applications that contain sensitive data, which requires protection and is the recommended level for most apps',1,_binary '',2),(3,'L3','ASVS Level 3 is for the most critical applications -applications that perform high value transactions, contain sensitive medical data, or any application that requires the highest level of trust.',2,_binary '',2);

--
-- Dumping data for table `STATUSCOLUMN`
--

INSERT INTO `STATUSCOLUMN` VALUES (1,'Notes',NULL,_binary '\0',0,_binary '');
INSERT INTO `OPTCOLUMNTYPE` VALUES (1,'shortString','A short string');
INSERT INTO `PROJECTTYPE` VALUES (1,'OWASP ASVS',NULL,0,_binary '');
INSERT INTO `OPTCOLUMN` VALUES (1,'CWE Link','n',0,_binary '',1,_binary ''),(2,'NIST Link','A link to a NIST item',1,_binary '',1,_binary '');
INSERT INTO `PROJECTTYPE_OPTCOLUMN` VALUES (1,1),(2,1);
INSERT INTO `PROJECTTYPE_STATUSCOLUMN` VALUES (1,1);


SET FOREIGN_KEY_CHECKS=1;
-- EOF
 
