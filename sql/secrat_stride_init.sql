SET FOREIGN_KEY_CHECKS=0;

--
-- Dumping data for table `COLLECTIONCATEGORY`
--

INSERT INTO `COLLECTIONCATEGORY` VALUES 
(1,'STRIDE','Model for identifying security threats in six categories.',0,_binary ''),
(2,'Application Security Verification Levels','The Application Security Verification Standard defines three security verification levels, with each level increasing in depth.',1,_binary ''),
(3,'Does the service handle files?','If application works with files allows uploading documents, generates PDF, displays external file content, etc.',2,_binary ''),
(4,'Is it an API service?','An API service is an access point or library function that has a defined syntax and is accessible from application programs or user code to provide well-defined functionality. Examples: RESTful, SOAP or GraphQL.',3,_binary '');

--
-- Dumping data for table `COLLECTIONINSTANCE`
--

INSERT INTO `COLLECTIONINSTANCE` VALUES 
(1,'L1','ASVS Level 1 is for low assurance levels, and is completely penetration testable',0,_binary '',2),
(2,'L2','ASVS Level 2 is for applications that contain sensitive data, which requires protection and is the recommended level for most apps',1,_binary '',2),
(3,'L3','ASVS Level 3 is for the most critical applications -applications that perform high value transactions, contain sensitive medical data, or any application that requires the highest level of trust.',2,_binary '',2),
(4,'Spoofing','Accessing and use of another user’s credentials, such as username and password',4,_binary '',1),
(5,'Tampering','Intending to maliciously change or modify persistent data, such as records in a database, and the alteration of data in transit between two computers over an open network, such as the Internet',5,_binary '',1),
(6,'Repudiation','Performing prohibited operations in a system that lacks the ability to trace the operations',6,_binary '',1),
(7,'Information disclosure','Intending to read a file that one was not granted access to, or to read data in transit',7,_binary '',1),
(8,'Denial of service','Attempting to deny access to valid users, such as by making a web server temporarily unavailable or unusable',8,_binary '',1),
(9,'Elevation of privilege','Intending to gain privileged access to resources in order to gain unauthorized access to information or to compromise a system',9,_binary '',1),
(10,'Yes, file handling','The service handle files.',10,_binary '',3),
(11,'Yes, API','The service is an API.',11,_binary '',4);

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
 
