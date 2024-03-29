
SET FOREIGN_KEY_CHECKS=0;

--
-- Table structure for table `ALTERNATIVEINSTANCE`
--

DROP TABLE IF EXISTS `ALTERNATIVEINSTANCE`;
CREATE TABLE `ALTERNATIVEINSTANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `alternativeset_id` bigint(20) DEFAULT NULL,
  `requirementskeleton_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alternativeinstance_alternativeset_id` (`alternativeset_id`),
  KEY `fk_alternativeinstance_requirementskeleton_id` (`requirementskeleton_id`),
  CONSTRAINT `fk_alternativeinstance_alternativeset_id` FOREIGN KEY (`alternativeset_id`) REFERENCES `ALTERNATIVESET` (`id`),
  CONSTRAINT `fk_alternativeinstance_requirementskeleton_id` FOREIGN KEY (`requirementskeleton_id`) REFERENCES `REQUIREMENTSKELETON` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `ALTERNATIVESET`
-- 

DROP TABLE IF EXISTS `ALTERNATIVESET`;
CREATE TABLE `ALTERNATIVESET` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `optcolumn_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alternativeset_optcolumn_id` (`optcolumn_id`),
  CONSTRAINT `fk_alternativeset_optcolumn_id` FOREIGN KEY (`optcolumn_id`) REFERENCES `OPTCOLUMN` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `COLLECTIONCATEGORY`
--

DROP TABLE IF EXISTS `COLLECTIONCATEGORY`;
CREATE TABLE `COLLECTIONCATEGORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `COLLECTIONINSTANCE`
--

DROP TABLE IF EXISTS `COLLECTIONINSTANCE`;
CREATE TABLE `COLLECTIONINSTANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `collectioncategory_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_collectioninstance_collectioncategory_id` (`collectioncategory_id`),
  CONSTRAINT `fk_collectioninstance_collectioncategory_id` FOREIGN KEY (`collectioncategory_id`) REFERENCES `COLLECTIONCATEGORY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `OPTCOLUMN`
--

DROP TABLE IF EXISTS `OPTCOLUMN`;
CREATE TABLE `OPTCOLUMN` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `optcolumntype_id` bigint(20) DEFAULT NULL,
  `isVisibleByDefault` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`),
  KEY `fk_optcolumn_optcolumntype_id` (`optcolumntype_id`),
  CONSTRAINT `fk_optcolumn_optcolumntype_id` FOREIGN KEY (`optcolumntype_id`) REFERENCES `OPTCOLUMNTYPE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `OPTCOLUMNCONTENT`
--

DROP TABLE IF EXISTS `OPTCOLUMNCONTENT`;
CREATE TABLE `OPTCOLUMNCONTENT` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `optcolumn_id` bigint(20) DEFAULT NULL,
  `requirementskeleton_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_optcolumncontent_optcolumn_id` (`optcolumn_id`),
  KEY `fk_optcolumncontent_requirementskeleton_id` (`requirementskeleton_id`),
  CONSTRAINT `fk_optcolumncontent_optcolumn_id` FOREIGN KEY (`optcolumn_id`) REFERENCES `OPTCOLUMN` (`id`),
  CONSTRAINT `fk_optcolumncontent_requirementskeleton_id` FOREIGN KEY (`requirementskeleton_id`) REFERENCES `REQUIREMENTSKELETON` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `OPTCOLUMNTYPE`
--

DROP TABLE IF EXISTS `OPTCOLUMNTYPE`;
CREATE TABLE `OPTCOLUMNTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `PROJECTTYPE`
--

DROP TABLE IF EXISTS `PROJECTTYPE`;
CREATE TABLE `PROJECTTYPE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `PROJECTTYPE_OPTCOLUMN`
--

DROP TABLE IF EXISTS `PROJECTTYPE_OPTCOLUMN`;
CREATE TABLE `PROJECTTYPE_OPTCOLUMN` (
  `optcolumns_id` bigint(20) NOT NULL,
  `projecttypes_id` bigint(20) NOT NULL,
  PRIMARY KEY (`projecttypes_id`,`optcolumns_id`),
  KEY `fk_optcolumn_optcolumn_projecttype_id` (`optcolumns_id`),
  CONSTRAINT `fk_optcolumn_optcolumn_projecttype_id` FOREIGN KEY (`optcolumns_id`) REFERENCES `OPTCOLUMN` (`id`),
  CONSTRAINT `fk_projecttype_optcolumn_optcolumn_id` FOREIGN KEY (`projecttypes_id`) REFERENCES `PROJECTTYPE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `PROJECTTYPE_STATUSCOLUMN`
--

DROP TABLE IF EXISTS `PROJECTTYPE_STATUSCOLUMN`;
CREATE TABLE `PROJECTTYPE_STATUSCOLUMN` (
  `statuscolumns_id` bigint(20) NOT NULL,
  `projecttypes_id` bigint(20) NOT NULL,
  PRIMARY KEY (`projecttypes_id`,`statuscolumns_id`),
  KEY `fk_statuscolumn_statuscolumn_projecttype_id` (`statuscolumns_id`),
  CONSTRAINT `fk_projecttype_statuscolumn_statuscolumn_id` FOREIGN KEY (`projecttypes_id`) REFERENCES `PROJECTTYPE` (`id`),
  CONSTRAINT `fk_statuscolumn_statuscolumn_projecttype_id` FOREIGN KEY (`statuscolumns_id`) REFERENCES `STATUSCOLUMN` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `REQCATEGORY`
--

DROP TABLE IF EXISTS `REQCATEGORY`;
CREATE TABLE `REQCATEGORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `shortcut` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `REQUIREMENTSKELETON`
--

DROP TABLE IF EXISTS `REQUIREMENTSKELETON`;
CREATE TABLE `REQUIREMENTSKELETON` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `universal_id` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `reqcategory_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_requirementskeleton_reqcategory_id` (`reqcategory_id`),
  CONSTRAINT `fk_requirementskeleton_reqcategory_id` FOREIGN KEY (`reqcategory_id`) REFERENCES `REQCATEGORY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `REQUIREMENTSKELETON_COLLECTIONINSTANCE`
--

DROP TABLE IF EXISTS `REQUIREMENTSKELETON_COLLECTIONINSTANCE`;
CREATE TABLE `REQUIREMENTSKELETON_COLLECTIONINSTANCE` (
  `collectioninstances_id` bigint(20) NOT NULL,
  `requirementskeletons_id` bigint(20) NOT NULL,
  PRIMARY KEY (`requirementskeletons_id`,`collectioninstances_id`),
  KEY `fk_collectioninstance_collectioninstance_requirementskeleton_id` (`collectioninstances_id`),
  CONSTRAINT `fk_collectioninstance_collectioninstance_requirementskeleton_id` FOREIGN KEY (`collectioninstances_id`) REFERENCES `COLLECTIONINSTANCE` (`id`),
  CONSTRAINT `fk_requirementskeleton_collectioninstance_collectioninstance_id` FOREIGN KEY (`requirementskeletons_id`) REFERENCES `REQUIREMENTSKELETON` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `REQUIREMENTSKELETON_PROJECTTYPE`
--

DROP TABLE IF EXISTS `REQUIREMENTSKELETON_PROJECTTYPE`;
CREATE TABLE `REQUIREMENTSKELETON_PROJECTTYPE` (
  `projecttypes_id` bigint(20) NOT NULL,
  `requirementskeletons_id` bigint(20) NOT NULL,
  PRIMARY KEY (`requirementskeletons_id`,`projecttypes_id`),
  KEY `fk_projecttype_projecttype_requirementskeleton_id` (`projecttypes_id`),
  CONSTRAINT `fk_projecttype_projecttype_requirementskeleton_id` FOREIGN KEY (`projecttypes_id`) REFERENCES `PROJECTTYPE` (`id`),
  CONSTRAINT `fk_requirementskeleton_projecttype_projecttype_id` FOREIGN KEY (`requirementskeletons_id`) REFERENCES `REQUIREMENTSKELETON` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `REQUIREMENTSKELETON_TAGINSTANCE`
--

DROP TABLE IF EXISTS `REQUIREMENTSKELETON_TAGINSTANCE`;
CREATE TABLE `REQUIREMENTSKELETON_TAGINSTANCE` (
  `taginstances_id` bigint(20) NOT NULL,
  `requirementskeletons_id` bigint(20) NOT NULL,
  PRIMARY KEY (`requirementskeletons_id`,`taginstances_id`),
  KEY `fk_taginstance_taginstance_requirementskeleton_id` (`taginstances_id`),
  CONSTRAINT `fk_requirementskeleton_taginstance_taginstance_id` FOREIGN KEY (`requirementskeletons_id`) REFERENCES `REQUIREMENTSKELETON` (`id`),
  CONSTRAINT `fk_taginstance_taginstance_requirementskeleton_id` FOREIGN KEY (`taginstances_id`) REFERENCES `TAGINSTANCE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `SLIDETEMPLATE`
--

DROP TABLE IF EXISTS `SLIDETEMPLATE`;
CREATE TABLE `SLIDETEMPLATE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `content` text,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `STATUSCOLUMN`
--

DROP TABLE IF EXISTS `STATUSCOLUMN`;
CREATE TABLE `STATUSCOLUMN` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `is_enum` bit(1) DEFAULT NULL,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `STATUSCOLUMNVALUE`
--

DROP TABLE IF EXISTS `STATUSCOLUMNVALUE`;
CREATE TABLE `STATUSCOLUMNVALUE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `statuscolumn_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_statuscolumnvalue_statuscolumn_id` (`statuscolumn_id`),
  CONSTRAINT `fk_statuscolumnvalue_statuscolumn_id` FOREIGN KEY (`statuscolumn_id`) REFERENCES `STATUSCOLUMN` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TAGCATEGORY`
--

DROP TABLE IF EXISTS `TAGCATEGORY`;
CREATE TABLE `TAGCATEGORY` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TAGINSTANCE`
--

DROP TABLE IF EXISTS `TAGINSTANCE`;
CREATE TABLE `TAGINSTANCE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `show_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `tagcategory_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_taginstance_tagcategory_id` (`tagcategory_id`),
  CONSTRAINT `fk_taginstance_tagcategory_id` FOREIGN KEY (`tagcategory_id`) REFERENCES `TAGCATEGORY` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAINING`
--

DROP TABLE IF EXISTS `TRAINING`;
CREATE TABLE `TRAINING` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  `all_requirements_selected` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAININGBRANCHNODE`
--

DROP TABLE IF EXISTS `TRAININGBRANCHNODE`;
CREATE TABLE `TRAININGBRANCHNODE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `anchor` int(11) DEFAULT NULL,
  `node_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trainingbranchnode_node_id` (`node_id`),
  CONSTRAINT `fk_trainingbranchnode_node_id` FOREIGN KEY (`node_id`) REFERENCES `TRAININGTREENODE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAININGCATEGORYNODE`
--

DROP TABLE IF EXISTS `TRAININGCATEGORYNODE`;
CREATE TABLE `TRAININGCATEGORYNODE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `node_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trainingcategorynode_node_id` (`node_id`),
  KEY `fk_trainingcategorynode_category_id` (`category_id`),
  CONSTRAINT `fk_trainingcategorynode_category_id` FOREIGN KEY (`category_id`) REFERENCES `REQCATEGORY` (`id`),
  CONSTRAINT `fk_trainingcategorynode_node_id` FOREIGN KEY (`node_id`) REFERENCES `TRAININGTREENODE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAININGCUSTOMSLIDENODE`
--

DROP TABLE IF EXISTS `TRAININGCUSTOMSLIDENODE`;
CREATE TABLE `TRAININGCUSTOMSLIDENODE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `anchor` int(11) DEFAULT NULL,
  `node_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trainingcustomslidenode_node_id` (`node_id`),
  CONSTRAINT `fk_trainingcustomslidenode_node_id` FOREIGN KEY (`node_id`) REFERENCES `TRAININGTREENODE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAININGGENERATEDSLIDENODE`
--

DROP TABLE IF EXISTS `TRAININGGENERATEDSLIDENODE`;
CREATE TABLE `TRAININGGENERATEDSLIDENODE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) DEFAULT NULL,
  `optcolumn_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_traininggeneratedslidenode_node_id` (`node_id`),
  KEY `fk_traininggeneratedslidenode_optcolumn_id` (`optcolumn_id`),
  CONSTRAINT `fk_traininggeneratedslidenode_node_id` FOREIGN KEY (`node_id`) REFERENCES `TRAININGTREENODE` (`id`),
  CONSTRAINT `fk_traininggeneratedslidenode_optcolumn_id` FOREIGN KEY (`optcolumn_id`) REFERENCES `OPTCOLUMN` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAININGREQUIREMENTNODE`
--

DROP TABLE IF EXISTS `TRAININGREQUIREMENTNODE`;
CREATE TABLE `TRAININGREQUIREMENTNODE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) DEFAULT NULL,
  `requirementskeleton_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trainingrequirementnode_node_id` (`node_id`),
  KEY `fk_trainingrequirementnode_requirementskeleton_id` (`requirementskeleton_id`),
  CONSTRAINT `fk_trainingrequirementnode_node_id` FOREIGN KEY (`node_id`) REFERENCES `TRAININGTREENODE` (`id`),
  CONSTRAINT `fk_trainingrequirementnode_requirementskeleton_id` FOREIGN KEY (`requirementskeleton_id`) REFERENCES `REQUIREMENTSKELETON` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAININGTREENODE`
--

DROP TABLE IF EXISTS `TRAININGTREENODE`;
CREATE TABLE `TRAININGTREENODE` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `parent_id_id` bigint(20) DEFAULT NULL,
  `training_id_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_trainingtreenode_parent_id_id` (`parent_id_id`),
  KEY `fk_trainingtreenode_training_id_id` (`training_id_id`),
  CONSTRAINT `fk_trainingtreenode_parent_id_id` FOREIGN KEY (`parent_id_id`) REFERENCES `TRAININGTREENODE` (`id`),
  CONSTRAINT `fk_trainingtreenode_training_id_id` FOREIGN KEY (`training_id_id`) REFERENCES `TRAINING` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAINING_COLLECTION`
--

DROP TABLE IF EXISTS `TRAINING_COLLECTION`;
CREATE TABLE `TRAINING_COLLECTION` (
  `collections_id` bigint(20) NOT NULL,
  `trainings_id` bigint(20) NOT NULL,
  PRIMARY KEY (`trainings_id`,`collections_id`),
  KEY `fk_collectioninstance_collection_training_id` (`collections_id`),
  CONSTRAINT `fk_collectioninstance_collection_training_id` FOREIGN KEY (`collections_id`) REFERENCES `COLLECTIONINSTANCE` (`id`),
  CONSTRAINT `fk_training_collection_collectioninstance_id` FOREIGN KEY (`trainings_id`) REFERENCES `TRAINING` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAINING_OPTCOLUMN`
--

DROP TABLE IF EXISTS `TRAINING_OPTCOLUMN`;
CREATE TABLE `TRAINING_OPTCOLUMN` (
  `optcolumns_id` bigint(20) NOT NULL,
  `trainings_id` bigint(20) NOT NULL,
  PRIMARY KEY (`trainings_id`,`optcolumns_id`),
  KEY `fk_optcolumn_optcolumn_training_id` (`optcolumns_id`),
  CONSTRAINT `fk_optcolumn_optcolumn_training_id` FOREIGN KEY (`optcolumns_id`) REFERENCES `OPTCOLUMN` (`id`),
  CONSTRAINT `fk_training_optcolumn_optcolumn_id` FOREIGN KEY (`trainings_id`) REFERENCES `TRAINING` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;

--
-- Table structure for table `TRAINING_PROJECTTYPE`
--

DROP TABLE IF EXISTS `TRAINING_PROJECTTYPE`;
CREATE TABLE `TRAINING_PROJECTTYPE` (
  `projecttypes_id` bigint(20) NOT NULL,
  `trainings_id` bigint(20) NOT NULL,
  PRIMARY KEY (`trainings_id`,`projecttypes_id`),
  KEY `fk_projecttype_projecttype_training_id` (`projecttypes_id`),
  CONSTRAINT `fk_projecttype_projecttype_training_id` FOREIGN KEY (`projecttypes_id`) REFERENCES `PROJECTTYPE` (`id`),
  CONSTRAINT `fk_training_projecttype_projecttype_id` FOREIGN KEY (`trainings_id`) REFERENCES `TRAINING` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET utf8;


SET FOREIGN_KEY_CHECKS=1;

-- EOF

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
 
-- Housekeeping
SET FOREIGN_KEY_CHECKS=0;
SET CHARACTER SET 'utf8';
SET NAMES 'utf8';
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (1,"Secure Software Development Lifecycle","V1.1", '',1, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (1,NULL,"V1.1.1","Verify the use of a secure software development lifecycle that addresses security in all stages of development. ([C1](https://owasp.org/www-project-proactive-controls/#div-numbering))",1, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,1);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,1);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,1);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (4,"V1 - Architecture, Design and Threat Modeling","Architecture, Design and Threat Modeling",4,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,1);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (1,'',1,1);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (2,'',2,1);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (2,NULL,"V1.1.2","Verify the use of threat modeling for every design change or sprint planning to identify threats, plan for countermeasures, facilitate appropriate risk responses, and guide security testing.",2, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,2);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,2);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,2);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,2);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (3,'',1,2);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (4,'',2,2);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,2);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (3,NULL,"V1.1.3","Verify that all user stories and features contain functional security constraints, such as 'As a user, I should be able to view and edit my profile. I should not be able to view or edit anyone else's profile'",3, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,3);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,3);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,3);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,3);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (5,'',1,3);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (6,'',2,3);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,3);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (4,NULL,"V1.1.4","Verify documentation and justification of all the application's trust boundaries, components, and significant data flows.",4, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,4);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,4);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,4);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,4);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (7,'',1,4);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (8,'',2,4);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,4);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (5,NULL,"V1.1.5","Verify definition and security analysis of the application's high-level architecture and all connected remote services. ([C1](https://owasp.org/www-project-proactive-controls/#div-numbering))",5, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,5);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,5);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,5);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,5);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (9,'',1,5);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (10,'',2,5);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,5);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (6,NULL,"V1.1.6","Verify implementation of centralized, simple (economy of design), vetted, secure, and reusable security controls to avoid duplicate, missing, ineffective, or insecure controls. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",6, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,6);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,6);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,6);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,6);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (11,'',1,6);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (12,'',2,6);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,6);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (7,NULL,"V1.1.7","Verify availability of a secure coding checklist, security requirements, guideline, or policy to all developers and testers.",7, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,7);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,7);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,7);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,7);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (13,'',1,7);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (14,'',2,7);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,7);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (2,"Authentication Architecture","V1.2", '',2, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (8,NULL,"V1.2.1","Verify the use of unique or special low-privilege operating system accounts for all application components, services, and servers. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",8, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,8);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,8);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,8);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,8);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (15,'',1,8);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (16,'',2,8);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,8);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (9,NULL,"V1.2.2","Verify that communications between application components, including APIs, middleware and data layers, are authenticated. Components should have the least necessary privileges needed. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",9, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,9);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,9);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,9);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,9);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (17,'',1,9);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (18,'',2,9);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,9);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (10,NULL,"V1.2.3","Verify that the application uses a single vetted authentication mechanism that is known to be secure, can be extended to include strong authentication, and has sufficient logging and monitoring to detect account abuse or breaches.",10, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,10);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,10);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,10);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,10);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (19,'',1,10);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (20,'',2,10);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,10);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (11,NULL,"V1.2.4","Verify that all authentication pathways and identity management APIs implement consistent authentication security control strength, such that there are no weaker alternatives per the risk of the application.",11, _binary '',2);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,11);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,11);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,11);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,11);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (21,'',1,11);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (22,'',2,11);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,11);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (3,"Access Control Architecture","V1.4", '',3, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (12,NULL,"V1.4.1","Verify that trusted enforcement points, such as access control gateways, servers, and serverless functions, enforce access controls. Never enforce access controls on the client.",12, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,12);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,12);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,12);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,12);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (23,'',1,12);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (24,'',2,12);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,12);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (13,NULL,"V1.4.2","[DELETED, NOT ACTIONABLE]",13, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,13);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,13);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (25,'',1,13);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (26,'',2,13);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,13);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (14,NULL,"V1.4.3","[DELETED, DUPLICATE OF 4.1.3]",14, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,14);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,14);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (27,'',1,14);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (28,'',2,14);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,14);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (15,NULL,"V1.4.4","Verify the application uses a single and well-vetted access control mechanism for accessing protected data and resources. All requests must pass through this single mechanism to avoid copy and paste or insecure alternative paths. ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",15, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,15);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,15);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,15);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,15);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (29,'',1,15);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (30,'',2,15);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,15);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (16,NULL,"V1.4.5","Verify that attribute or feature-based access control is used whereby the code checks the user's authorization for a feature/data item rather than just their role. Permissions should still be allocated using roles. ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",16, _binary '',3);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,16);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,16);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,16);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,16);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (31,'',1,16);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (32,'',2,16);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,16);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (4,"Input and Output Architecture","V1.5", '',4, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (17,NULL,"V1.5.1","Verify that input and output requirements clearly define how to handle and process data based on type, content, and applicable laws, regulations, and other policy compliance.",17, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,17);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,17);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,17);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,17);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (33,'',1,17);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (34,'',2,17);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,17);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (18,NULL,"V1.5.2","Verify that serialization is not used when communicating with untrusted clients. If this is not possible, ensure that adequate integrity controls (and possibly encryption if sensitive data is sent) are enforced to prevent deserialization attacks including object injection.",18, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,18);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,18);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,18);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,18);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (35,'',1,18);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (36,'',2,18);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,18);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (19,NULL,"V1.5.3","Verify that input validation is enforced on a trusted service layer. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",19, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,19);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,19);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,19);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,19);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (37,'',1,19);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (38,'',2,19);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,19);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (20,NULL,"V1.5.4","Verify that output encoding occurs close to or by the interpreter for which it is intended. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",20, _binary '',4);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,20);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,20);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,20);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,20);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (39,'',1,20);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (40,'',2,20);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,20);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (5,"Cryptographic Architecture","V1.6", '',5, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (21,NULL,"V1.6.1","Verify that there is an explicit policy for management of cryptographic keys and that a cryptographic key lifecycle follows a key management standard such as NIST SP 800-57.",21, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,21);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,21);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,21);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,21);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (41,'',1,21);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (42,'',2,21);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,21);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (22,NULL,"V1.6.2","Verify that consumers of cryptographic services protect key material and other secrets by using key vaults or API based alternatives.",22, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,22);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,22);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,22);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,22);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (43,'',1,22);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (44,'',2,22);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,22);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (23,NULL,"V1.6.3","Verify that all keys and passwords are replaceable and are part of a well-defined process to re-encrypt sensitive data.",23, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,23);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,23);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,23);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,23);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (45,'',1,23);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (46,'',2,23);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,23);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (24,NULL,"V1.6.4","Verify that the architecture treats client-side secrets--such as symmetric keys, passwords, or API tokens--as insecure and never uses them to protect or access sensitive data.",24, _binary '',5);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,24);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,24);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,24);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,24);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (47,'',1,24);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (48,'',2,24);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,24);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (6,"Errors, Logging and Auditing Architecture","V1.7", '',6, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (25,NULL,"V1.7.1","Verify that a common logging format and approach is used across the system. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",25, _binary '',6);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,25);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,25);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,25);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,25);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (49,'',1,25);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (50,'',2,25);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,25);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (26,NULL,"V1.7.2","Verify that logs are securely transmitted to a preferably remote system for analysis, detection, alerting, and escalation. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",26, _binary '',6);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,26);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,26);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,26);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,26);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (51,'',1,26);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (52,'',2,26);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,26);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (7,"Data Protection and Privacy Architecture","V1.8", '',7, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (27,NULL,"V1.8.1","Verify that all sensitive data is identified and classified into protection levels.",27, _binary '',7);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,27);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,27);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,27);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,27);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (53,'',1,27);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (54,'',2,27);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,27);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (28,NULL,"V1.8.2","Verify that all protection levels have an associated set of protection requirements, such as encryption requirements, integrity requirements, retention, privacy and other confidentiality requirements, and that these are applied in the architecture.",28, _binary '',7);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,28);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,28);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,28);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,28);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (55,'',1,28);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (56,'',2,28);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,28);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (8,"Communications Architecture","V1.9", '',8, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (29,NULL,"V1.9.1","Verify the application encrypts communications between components, particularly when these components are in different containers, systems, sites, or cloud providers. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",29, _binary '',8);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,29);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,29);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,29);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,29);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (57,'',1,29);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (58,'',2,29);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,29);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (30,NULL,"V1.9.2","Verify that application components verify the authenticity of each side in a communication link to prevent person-in-the-middle attacks. For example, application components should validate TLS certificates and chains.",30, _binary '',8);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,30);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,30);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,30);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,30);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (59,'',1,30);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (60,'',2,30);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,30);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (9,"Malicious Software Architecture","V1.10", '',9, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (31,NULL,"V1.10.1","Verify that a source code control system is in use, with procedures to ensure that check-ins are accompanied by issues or change tickets. The source code control system should have access control and identifiable users to allow traceability of any changes.",31, _binary '',9);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,31);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,31);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,31);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,31);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (61,'',1,31);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (62,'',2,31);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,31);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (10,"Business Logic Architecture","V1.11", '',10, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (32,NULL,"V1.11.1","Verify the definition and documentation of all application components in terms of the business or security functions they provide.",32, _binary '',10);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,32);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,32);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,32);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,32);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (63,'',1,32);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (64,'',2,32);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,32);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (33,NULL,"V1.11.2","Verify that all high-value business logic flows, including authentication, session management and access control, do not share unsynchronized state.",33, _binary '',10);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,33);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,33);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,33);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,33);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (65,'',1,33);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (66,'',2,33);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,33);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (34,NULL,"V1.11.3","Verify that all high-value business logic flows, including authentication, session management and access control are thread safe and resistant to time-of-check and time-of-use race conditions.",34, _binary '',10);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,34);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,34);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,34);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,34);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (67,'',1,34);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (68,'',2,34);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,34);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (11,"Secure File Upload Architecture","V1.12", '',11, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (35,NULL,"V1.12.1","[DELETED, DUPLICATE OF 12.4.1]",35, _binary '',11);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,35);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,35);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (69,'',1,35);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (70,'',2,35);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,35);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (36,NULL,"V1.12.2","Verify that user-uploaded files - if required to be displayed or downloaded from the application - are served by either octet stream downloads, or from an unrelated domain, such as a cloud file storage bucket. Implement a suitable Content Security Policy (CSP) to reduce the risk from XSS vectors or other attacks from the uploaded file.",36, _binary '',11);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,36);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,36);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,36);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,36);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (71,'',1,36);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (72,'',2,36);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,36);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (12,"Configuration Architecture","V1.14", '',12, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (37,NULL,"V1.14.1","Verify the segregation of components of differing trust levels through well-defined security controls, firewall rules, API gateways, reverse proxies, cloud-based security groups, or similar mechanisms.",37, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,37);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,37);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,37);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,37);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (73,'',1,37);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (74,'',2,37);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,37);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (38,NULL,"V1.14.2","Verify that binary signatures, trusted connections, and verified endpoints are used to deploy binaries to remote devices.",38, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,38);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,38);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,38);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,38);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (75,'',1,38);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (76,'',2,38);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,38);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (39,NULL,"V1.14.3","Verify that the build pipeline warns of out-of-date or insecure components and takes appropriate actions.",39, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,39);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,39);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,39);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,39);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (77,'',1,39);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (78,'',2,39);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,39);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (40,NULL,"V1.14.4","Verify that the build pipeline contains a build step to automatically build and verify the secure deployment of the application, particularly if the application infrastructure is software defined, such as cloud environment build scripts.",40, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,40);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,40);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,40);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,40);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (79,'',1,40);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (80,'',2,40);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,40);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (41,NULL,"V1.14.5","Verify that application deployments adequately sandbox, containerize and/or isolate at the network level to delay and deter attackers from attacking other applications, especially when they are performing sensitive or dangerous actions such as deserialization. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",41, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,41);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,41);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,41);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,41);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (81,'',1,41);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (82,'',2,41);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,41);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (42,NULL,"V1.14.6","Verify the application does not use unsupported, insecure, or deprecated client-side technologies such as NSAPI plugins, Flash, Shockwave, ActiveX, Silverlight, NACL, or client-side Java applets.",42, _binary '',12);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,42);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,42);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,42);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,42);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (83,'',1,42);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (84,'',2,42);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,42);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (13,"Password Security","V2.1", '',13, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (43,NULL,"V2.1.1","Verify that user set passwords are at least 12 characters in length (after multiple spaces are combined). ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",43, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,43);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,43);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,43);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (5,"V2 - Authentication","Authentication",5,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,43);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (85,'521',1,43);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (86,'5.1.1.2',2,43);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,43);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (44,NULL,"V2.1.2","Verify that passwords of at least 64 characters are permitted, and that passwords of more than 128 characters are denied. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",44, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,44);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,44);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,44);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,44);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (87,'521',1,44);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (88,'5.1.1.2',2,44);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,44);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (45,NULL,"V2.1.3","Verify that password truncation is not performed. However, consecutive multiple spaces may be replaced by a single space. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",45, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,45);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,45);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,45);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,45);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (89,'521',1,45);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (90,'5.1.1.2',2,45);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,45);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (46,NULL,"V2.1.4","Verify that any printable Unicode character, including language neutral characters such as spaces and Emojis are permitted in passwords.",46, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,46);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,46);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,46);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,46);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (91,'521',1,46);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (92,'5.1.1.2',2,46);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,46);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (47,NULL,"V2.1.5","Verify users can change their password.",47, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,47);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,47);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,47);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,47);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (93,'620',1,47);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (94,'5.1.1.2',2,47);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,47);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (48,NULL,"V2.1.6","Verify that password change functionality requires the user's current and new password.",48, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,48);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,48);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,48);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,48);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (95,'620',1,48);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (96,'5.1.1.2',2,48);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,48);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (49,NULL,"V2.1.7","Verify that passwords submitted during account registration, login, and password change are checked against a set of breached passwords either locally (such as the top 1,000 or 10,000 most common passwords which match the system's password policy) or using an external API. If using an API a zero knowledge proof or other mechanism should be used to ensure that the plain text password is not sent or used in verifying the breach status of the password. If the password is breached, the application must require the user to set a new non-breached password. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",49, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,49);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,49);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,49);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,49);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (97,'521',1,49);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (98,'5.1.1.2',2,49);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,49);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (50,NULL,"V2.1.8","Verify that a password strength meter is provided to help users set a stronger password.",50, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,50);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,50);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,50);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,50);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (99,'521',1,50);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (100,'5.1.1.2',2,50);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,50);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (51,NULL,"V2.1.9","Verify that there are no password composition rules limiting the type of characters permitted. There should be no requirement for upper or lower case or numbers or special characters. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",51, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,51);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,51);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,51);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,51);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (101,'521',1,51);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (102,'5.1.1.2',2,51);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,51);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (52,NULL,"V2.1.10","Verify that there are no periodic credential rotation or password history requirements.",52, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,52);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,52);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,52);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,52);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (103,'263',1,52);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (104,'5.1.1.2',2,52);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,52);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (53,NULL,"V2.1.11","Verify that 'paste' functionality, browser password helpers, and external password managers are permitted.",53, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,53);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,53);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,53);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,53);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (105,'521',1,53);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (106,'5.1.1.2',2,53);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,53);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (54,NULL,"V2.1.12","Verify that the user can choose to either temporarily view the entire masked password, or temporarily view the last typed character of the password on platforms that do not have this as built-in functionality.",54, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,54);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,54);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,54);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,54);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (107,'521',1,54);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (108,'5.1.1.2',2,54);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,54);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (14,"General Authenticator Security","V2.2", '',14, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (55,NULL,"V2.2.1","Verify that anti-automation controls are effective at mitigating breached credential testing, brute force, and account lockout attacks. Such controls include blocking the most common breached passwords, soft lockouts, rate limiting, CAPTCHA, ever increasing delays between attempts, IP address restrictions, or risk-based restrictions such as location, first login on a device, recent attempts to unlock the account, or similar. Verify that no more than 100 failed attempts per hour is possible on a single account.",55, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,55);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,55);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,55);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,55);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (109,'307',1,55);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (110,'5.2.2 / 5.1.1.2 / 5.1.4.2 / 5.1.5.2',2,55);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,55);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (56,NULL,"V2.2.2","Verify that the use of weak authenticators (such as SMS and email) is limited to secondary verification and transaction approval and not as a replacement for more secure authentication methods. Verify that stronger methods are offered before weak methods, users are aware of the risks, or that proper measures are in place to limit the risks of account compromise.",56, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,56);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,56);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,56);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,56);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (111,'304',1,56);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (112,'5.2.10',2,56);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,56);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (57,NULL,"V2.2.3","Verify that secure notifications are sent to users after updates to authentication details, such as credential resets, email or address changes, logging in from unknown or risky locations. The use of push notifications - rather than SMS or email - is preferred, but in the absence of push notifications, SMS or email is acceptable as long as no sensitive information is disclosed in the notification.",57, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,57);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,57);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,57);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,57);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (113,'620',1,57);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (114,'',2,57);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,57);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (58,NULL,"V2.2.4","Verify impersonation resistance against phishing, such as the use of multi-factor authentication, cryptographic devices with intent (such as connected keys with a push to authenticate), or at higher AAL levels, client-side certificates.",58, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,58);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,58);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,58);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,58);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (115,'',1,58);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (116,'',2,58);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,58);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (59,NULL,"V2.2.5","Verify that where a Credential Service Provider (CSP) and the application verifying authentication are separated, mutually authenticated TLS is in place between the two endpoints.",59, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,59);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,59);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,59);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,59);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (117,'',1,59);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (118,'',2,59);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,59);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (60,NULL,"V2.2.6","Verify replay resistance through the mandated use of One-time Passwords (OTP) devices, cryptographic authenticators, or lookup codes.",60, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,60);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,60);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,60);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,60);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (119,'',1,60);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (120,'',2,60);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,60);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (61,NULL,"V2.2.7","Verify intent to authenticate by requiring the entry of an OTP token or user-initiated action such as a button press on a FIDO hardware key.",61, _binary '',14);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,61);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,61);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,61);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,61);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (121,'',1,61);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (122,'',2,61);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,61);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (15,"Authenticator Lifecycle","V2.3", '',15, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (62,NULL,"V2.3.1","Verify system generated initial passwords or activation codes SHOULD be securely randomly generated, SHOULD be at least 6 characters long, and MAY contain letters and numbers, and expire after a short period of time. These initial secrets must not be permitted to become the long term password.",62, _binary '',15);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,62);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,62);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,62);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,62);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (123,'330',1,62);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (124,'5.1.1.2 / A.3',2,62);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,62);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (63,NULL,"V2.3.2","Verify that enrollment and use of user-provided authentication devices are supported, such as a U2F or FIDO tokens.",63, _binary '',15);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,63);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,63);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,63);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,63);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (125,'6.1.3',1,63);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (126,'',2,63);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,63);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (64,NULL,"V2.3.3","Verify that renewal instructions are sent with sufficient time to renew time bound authenticators.",64, _binary '',15);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,64);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,64);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,64);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,64);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (127,'6.1.4',1,64);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (128,'',2,64);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,64);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (16,"Credential Storage","V2.4", '',16, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (65,NULL,"V2.4.1","Verify that passwords are stored in a form that is resistant to offline attacks. Passwords SHALL be salted and hashed using an approved one-way key derivation or password hashing function. Key derivation and password hashing functions take a password, a salt, and a cost factor as inputs when generating a password hash. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",65, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,65);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,65);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,65);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,65);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (129,'5.1.1.2',1,65);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (130,'',2,65);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,65);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (66,NULL,"V2.4.2","Verify that the salt is at least 32 bits in length and be chosen arbitrarily to minimize salt value collisions among stored hashes. For each credential, a unique salt value and the resulting hash SHALL be stored. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",66, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,66);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,66);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,66);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,66);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (131,'5.1.1.2',1,66);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (132,'',2,66);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,66);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (67,NULL,"V2.4.3","Verify that if PBKDF2 is used, the iteration count SHOULD be as large as verification server performance will allow, typically at least 100,000 iterations. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",67, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,67);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,67);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,67);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,67);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (133,'5.1.1.2',1,67);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (134,'',2,67);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,67);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (68,NULL,"V2.4.4","Verify that if bcrypt is used, the work factor SHOULD be as large as verification server performance will allow, with a minimum of 10. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",68, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,68);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,68);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,68);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,68);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (135,'5.1.1.2',1,68);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (136,'',2,68);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,68);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (69,NULL,"V2.4.5","Verify that an additional iteration of a key derivation function is performed, using a salt value that is secret and known only to the verifier. Generate the salt value using an approved random bit generator [SP 800-90Ar1] and provide at least the minimum security strength specified in the latest revision of SP 800-131A. The secret salt value SHALL be stored separately from the hashed passwords (e.g., in a specialized device like a hardware security module).",69, _binary '',16);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,69);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,69);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,69);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,69);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (137,'5.1.1.2',1,69);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (138,'',2,69);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,69);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (17,"Credential Recovery","V2.5", '',17, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (70,NULL,"V2.5.1","Verify that a system generated initial activation or recovery secret is not sent in clear text to the user. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",70, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,70);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,70);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,70);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,70);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (139,'640',1,70);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (140,'5.1.1.2',2,70);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,70);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (71,NULL,"V2.5.2","Verify password hints or knowledge-based authentication (so-called 'secret questions') are not present.",71, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,71);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,71);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,71);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,71);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (141,'640',1,71);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (142,'5.1.1.2',2,71);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,71);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (72,NULL,"V2.5.3","Verify password credential recovery does not reveal the current password in any way. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",72, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,72);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,72);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,72);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,72);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (143,'640',1,72);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (144,'5.1.1.2',2,72);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,72);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (73,NULL,"V2.5.4","Verify shared or default accounts are not present (e.g. 'root', 'admin', or 'sa').",73, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,73);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,73);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,73);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,73);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (145,'16',1,73);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (146,'5.1.1.2 / A.3',2,73);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,73);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (74,NULL,"V2.5.5","Verify that if an authentication factor is changed or replaced, that the user is notified of this event.",74, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,74);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,74);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,74);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,74);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (147,'304',1,74);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (148,'6.1.2.3',2,74);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,74);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (75,NULL,"V2.5.6","Verify forgotten password, and other recovery paths use a secure recovery mechanism, such as time-based OTP (TOTP) or other soft token, mobile push, or another offline recovery mechanism. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",75, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,75);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,75);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,75);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,75);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (149,'640',1,75);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (150,'5.1.1.2',2,75);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,75);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (76,NULL,"V2.5.7","Verify that if OTP or multi-factor authentication factors are lost, that evidence of identity proofing is performed at the same level as during enrollment.",76, _binary '',17);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,76);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,76);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,76);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,76);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (151,'6.1.2.3',1,76);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (152,'',2,76);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,76);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (18,"Look-up Secret Verifier","V2.6", '',18, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (77,NULL,"V2.6.1","Verify that lookup secrets can be used only once.",77, _binary '',18);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,77);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,77);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,77);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,77);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (153,'5.1.2.2',1,77);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (154,'',2,77);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,77);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (78,NULL,"V2.6.2","Verify that lookup secrets have sufficient randomness (112 bits of entropy), or if less than 112 bits of entropy, salted with a unique and random 32-bit salt and hashed with an approved one-way hash.",78, _binary '',18);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,78);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,78);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,78);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,78);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (155,'5.1.2.2',1,78);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (156,'',2,78);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,78);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (79,NULL,"V2.6.3","Verify that lookup secrets are resistant to offline attacks, such as predictable values.",79, _binary '',18);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,79);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,79);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,79);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,79);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (157,'5.1.2.2',1,79);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (158,'',2,79);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,79);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (19,"Out of Band Verifier","V2.7", '',19, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (80,NULL,"V2.7.1","Verify that clear text out of band (NIST 'restricted') authenticators, such as SMS or PSTN, are not offered by default, and stronger alternatives such as push notifications are offered first.",80, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,80);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,80);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,80);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,80);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (159,'287',1,80);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (160,'5.1.3.2',2,80);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,80);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (81,NULL,"V2.7.2","Verify that the out of band verifier expires out of band authentication requests, codes, or tokens after 10 minutes.",81, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,81);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,81);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,81);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,81);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (161,'287',1,81);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (162,'5.1.3.2',2,81);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,81);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (82,NULL,"V2.7.3","Verify that the out of band verifier authentication requests, codes, or tokens are only usable once, and only for the original authentication request.",82, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,82);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,82);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,82);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,82);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (163,'287',1,82);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (164,'5.1.3.2',2,82);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,82);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (83,NULL,"V2.7.4","Verify that the out of band authenticator and verifier communicates over a secure independent channel.",83, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,83);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,83);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,83);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,83);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (165,'523',1,83);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (166,'5.1.3.2',2,83);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,83);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (84,NULL,"V2.7.5","Verify that the out of band verifier retains only a hashed version of the authentication code.",84, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,84);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,84);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,84);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,84);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (167,'5.1.3.2',1,84);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (168,'',2,84);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,84);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (85,NULL,"V2.7.6","Verify that the initial authentication code is generated by a secure random number generator, containing at least 20 bits of entropy (typically a six digital random number is sufficient).",85, _binary '',19);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,85);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,85);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,85);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,85);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (169,'5.1.3.2',1,85);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (170,'',2,85);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,85);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (20,"One Time Verifier","V2.8", '',20, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (86,NULL,"V2.8.1","Verify that time-based OTPs have a defined lifetime before expiring.",86, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,86);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,86);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,86);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,86);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (171,'613',1,86);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (172,'5.1.4.2 / 5.1.5.2',2,86);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,86);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (87,NULL,"V2.8.2","Verify that symmetric keys used to verify submitted OTPs are highly protected, such as by using a hardware security module or secure operating system based key storage.",87, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,87);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,87);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,87);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,87);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (173,'5.1.4.2 / 5.1.5.2',1,87);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (174,'',2,87);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,87);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (88,NULL,"V2.8.3","Verify that approved cryptographic algorithms are used in the generation, seeding, and verification of OTPs.",88, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,88);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,88);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,88);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,88);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (175,'5.1.4.2 / 5.1.5.2',1,88);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (176,'',2,88);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,88);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (89,NULL,"V2.8.4","Verify that time-based OTP can be used only once within the validity period.",89, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,89);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,89);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,89);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,89);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (177,'5.1.4.2 / 5.1.5.2',1,89);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (178,'',2,89);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,89);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (90,NULL,"V2.8.5","Verify that if a time-based multi-factor OTP token is re-used during the validity period, it is logged and rejected with secure notifications being sent to the holder of the device.",90, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,90);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,90);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,90);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,90);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (179,'5.1.5.2',1,90);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (180,'',2,90);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,90);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (91,NULL,"V2.8.6","Verify physical single-factor OTP generator can be revoked in case of theft or other loss. Ensure that revocation is immediately effective across logged in sessions, regardless of location.",91, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,91);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,91);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,91);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,91);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (181,'5.2.1',1,91);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (182,'',2,91);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,91);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (92,NULL,"V2.8.7","Verify that biometric authenticators are limited to use only as secondary factors in conjunction with either something you have and something you know. L1: o; L2: ✓; L3: 308",92, _binary '',20);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,92);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,92);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,92);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,92);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (183,'5.2.3',1,92);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (184,'',2,92);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,92);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (21,"Cryptographic Verifier","V2.9", '',21, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (93,NULL,"V2.9.1","Verify that cryptographic keys used in verification are stored securely and protected against disclosure, such as using a Trusted Platform Module (TPM) or Hardware Security Module (HSM), or an OS service that can use this secure storage.",93, _binary '',21);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,93);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,93);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,93);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,93);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (185,'5.1.7.2',1,93);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (186,'',2,93);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,93);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (94,NULL,"V2.9.2","Verify that the challenge nonce is at least 64 bits in length, and statistically unique or unique over the lifetime of the cryptographic device.",94, _binary '',21);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,94);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,94);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,94);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,94);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (187,'5.1.7.2',1,94);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (188,'',2,94);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,94);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (95,NULL,"V2.9.3","Verify that approved cryptographic algorithms are used in the generation, seeding, and verification.",95, _binary '',21);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,95);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,95);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,95);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,95);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (189,'5.1.7.2',1,95);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (190,'',2,95);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,95);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (22,"Service Authentication","V2.10", '',22, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (96,NULL,"V2.10.1","Verify that intra-service secrets do not rely on unchanging credentials such as passwords, API keys or shared accounts with privileged access. L1: OS assisted; L2: HSM; L3: 287",96, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,96);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,96);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,96);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,96);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (191,'5.1.1.1',1,96);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (192,'',2,96);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,96);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (97,NULL,"V2.10.2","Verify that if passwords are required for service authentication, the service account used is not a default credential. (e.g. root/root or admin/admin are default in some services during installation). L1: OS assisted; L2: HSM; L3: 255",97, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,97);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,97);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,97);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,97);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (193,'5.1.1.1',1,97);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (194,'',2,97);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,97);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (98,NULL,"V2.10.3","Verify that passwords are stored with sufficient protection to prevent offline recovery attacks, including local system access. L1: OS assisted; L2: HSM; L3: 522",98, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,98);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,98);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,98);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,98);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (195,'5.1.1.1',1,98);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (196,'',2,98);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,98);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (99,NULL,"V2.10.4","Verify passwords, integrations with databases and third-party systems, seeds and internal secrets, and API keys are managed securely and not included in the source code or stored within source code repositories. Such storage SHOULD resist offline attacks. The use of a secure software key store (L1), hardware TPM, or an HSM (L3) is recommended for password storage. L1: OS assisted; L2: HSM; L3: 798",99, _binary '',22);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,99);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,99);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,99);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,99);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (197,'',1,99);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (198,'',2,99);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,99);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (23,"Fundamental Session Management Security","V3.1", '',23, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (100,NULL,"V3.1.1","Verify the application never reveals session tokens in URL parameters.",100, _binary '',23);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,100);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,100);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,100);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (6,"V3 - Session Management","Session Management",6,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,100);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (199,'598',1,100);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (200,'',2,100);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,100);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (24,"Session Binding","V3.2", '',24, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (101,NULL,"V3.2.1","Verify the application generates a new session token on user authentication. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",101, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,101);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,101);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,101);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,101);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (201,'384',1,101);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (202,'7.1',2,101);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,101);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (102,NULL,"V3.2.2","Verify that session tokens possess at least 64 bits of entropy. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",102, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,102);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,102);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,102);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,102);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (203,'331',1,102);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (204,'7.1',2,102);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,102);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (103,NULL,"V3.2.3","Verify the application only stores session tokens in the browser using secure methods such as appropriately secured cookies (see section 3.4) or HTML 5 session storage.",103, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,103);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,103);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,103);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,103);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (205,'539',1,103);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (206,'7.1',2,103);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,103);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (104,NULL,"V3.2.4","Verify that session tokens are generated using approved cryptographic algorithms. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",104, _binary '',24);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,104);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,104);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,104);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,104);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (207,'7.1',1,104);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (208,'',2,104);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,104);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (25,"Session Termination","V3.3", '',25, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (105,NULL,"V3.3.1","Verify that logout and expiration invalidate the session token, such that the back button or a downstream relying party does not resume an authenticated session, including across relying parties. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",105, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,105);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,105);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,105);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,105);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (209,'613',1,105);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (210,'7.1',2,105);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,105);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (106,NULL,"V3.3.2","If authenticators permit users to remain logged in, verify that re-authentication occurs periodically both when actively used or after an idle period. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering)) L1: 30 days; L2: 12 hours or 30 minutes of inactivity, 2FA optional; L3: 12 hours or 15 minutes of inactivity, with 2FA",106, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,106);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,106);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,106);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,106);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (211,'613',1,106);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (212,'7.2',2,106);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,106);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (107,NULL,"V3.3.3","Verify that the application gives the option to terminate all other active sessions after a successful password change (including change via password reset/recovery), and that this is effective across the application, federated login (if present), and any relying parties.",107, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,107);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,107);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,107);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,107);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (213,'',1,107);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (214,'',2,107);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,107);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (108,NULL,"V3.3.4","Verify that users are able to view and (having re-entered login credentials) log out of any or all currently active sessions and devices.",108, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,108);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,108);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,108);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,108);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (215,'7.1',1,108);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (216,'',2,108);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,108);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (26,"Cookie-based Session Management","V3.4", '',26, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (109,NULL,"V3.4.1","Verify that cookie-based session tokens have the 'Secure' attribute set. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",109, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,109);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,109);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,109);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,109);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (217,'614',1,109);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (218,'7.1.1',2,109);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,109);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (110,NULL,"V3.4.2","Verify that cookie-based session tokens have the 'HttpOnly' attribute set. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",110, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,110);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,110);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,110);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,110);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (219,'1004',1,110);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (220,'7.1.1',2,110);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,110);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (111,NULL,"V3.4.3","Verify that cookie-based session tokens utilize the 'SameSite' attribute to limit exposure to cross-site request forgery attacks. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",111, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,111);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,111);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,111);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,111);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (221,'1275',1,111);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (222,'7.1.1',2,111);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,111);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (112,NULL,"V3.4.4","Verify that cookie-based session tokens use the '__Host-' prefix so cookies are only sent to the host that initially set the cookie.",112, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,112);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,112);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,112);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,112);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (223,'16',1,112);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (224,'7.1.1',2,112);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,112);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (113,NULL,"V3.4.5","Verify that if the application is published under a domain name with other applications that set or use session cookies that might disclose the session cookies, set the path attribute in cookie-based session tokens using the most precise path possible. ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",113, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,113);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,113);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,113);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,113);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (225,'16',1,113);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (226,'7.1.1',2,113);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,113);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (27,"Token-based Session Management","V3.5", '',27, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (114,NULL,"V3.5.1","Verify the application allows users to revoke OAuth tokens that form trust relationships with linked applications.",114, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,114);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,114);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,114);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,114);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (227,'7.1.2',1,114);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (228,'',2,114);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,114);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (115,NULL,"V3.5.2","Verify the application uses session tokens rather than static API secrets and keys, except with legacy implementations.",115, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,115);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,115);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,115);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,115);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (229,'',1,115);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (230,'',2,115);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,115);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (116,NULL,"V3.5.3","Verify that stateless session tokens use digital signatures, encryption, and other countermeasures to protect against tampering, enveloping, replay, null cipher, and key substitution attacks.",116, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,116);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,116);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,116);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,116);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (231,'',1,116);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (232,'',2,116);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,116);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (28,"Federated Re-authentication","V3.6", '',28, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (117,NULL,"V3.6.1","Verify that Relying Parties (RPs) specify the maximum authentication time to Credential Service Providers (CSPs) and that CSPs re-authenticate the user if they haven't used a session within that period.",117, _binary '',28);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,117);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,117);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,117);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,117);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (233,'',1,117);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (234,'',2,117);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,117);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (118,NULL,"V3.6.2","Verify that Credential Service Providers (CSPs) inform Relying Parties (RPs) of the last authentication event, to allow RPs to determine if they need to re-authenticate the user.",118, _binary '',28);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,118);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,118);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,118);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,118);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (235,'',1,118);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (236,'',2,118);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,118);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (29,"Defenses Against Session Management Exploits","V3.7", '',29, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (119,NULL,"V3.7.1","Verify the application ensures a full, valid login session or requires re-authentication or secondary verification before allowing any sensitive transactions or account modifications.",119, _binary '',29);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,119);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,119);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,119);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,119);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (237,'306',1,119);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (238,'',2,119);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,119);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (30,"General Access Control Design","V4.1", '',30, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (120,NULL,"V4.1.1","Verify that the application enforces access control rules on a trusted service layer, especially if client-side access control is present and could be bypassed.",120, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,120);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,120);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,120);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (7,"V4 - Access Control","Access Control",7,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,120);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (239,'602',1,120);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (240,'',2,120);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,120);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (121,NULL,"V4.1.2","Verify that all user and data attributes and policy information used by access controls cannot be manipulated by end users unless specifically authorized.",121, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,121);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,121);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,121);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,121);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (241,'639',1,121);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (242,'',2,121);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,121);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (122,NULL,"V4.1.3","Verify that the principle of least privilege exists - users should only be able to access functions, data files, URLs, controllers, services, and other resources, for which they possess specific authorization. This implies protection against spoofing and elevation of privilege. ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",122, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,122);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,122);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,122);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,122);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (243,'285',1,122);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (244,'',2,122);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,122);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (123,NULL,"V4.1.4","[DELETED, DUPLICATE OF 4.1.3]",123, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,123);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,123);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (245,'',1,123);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (246,'',2,123);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,123);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (124,NULL,"V4.1.5","Verify that access controls fail securely including when an exception occurs. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",124, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,124);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,124);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,124);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,124);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (247,'285',1,124);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (248,'',2,124);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,124);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (31,"Operation Level Access Control","V4.2", '',31, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (125,NULL,"V4.2.1","Verify that sensitive data and APIs are protected against Insecure Direct Object Reference (IDOR) attacks targeting creation, reading, updating and deletion of records, such as creating or updating someone else's record, viewing everyone's records, or deleting all records.",125, _binary '',31);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,125);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,125);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,125);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,125);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (249,'639',1,125);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (250,'',2,125);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,125);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (126,NULL,"V4.2.2","Verify that the application or framework enforces a strong anti-CSRF mechanism to protect authenticated functionality, and effective anti-automation or anti-CSRF protects unauthenticated functionality.",126, _binary '',31);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,126);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,126);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,126);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,126);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (251,'352',1,126);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (252,'',2,126);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,126);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (32,"Other Access Control Considerations","V4.3", '',32, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (127,NULL,"V4.3.1","Verify administrative interfaces use appropriate multi-factor authentication to prevent unauthorized use.",127, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,127);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,127);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,127);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,127);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (253,'419',1,127);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (254,'',2,127);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,127);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (128,NULL,"V4.3.2","Verify that directory browsing is disabled unless deliberately desired. Additionally, applications should not allow discovery or disclosure of file or directory metadata, such as Thumbs.db, .DS_Store, .git or .svn folders.",128, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,128);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,128);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,128);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,128);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (255,'548',1,128);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (256,'',2,128);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,128);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (129,NULL,"V4.3.3","Verify the application has additional authorization (such as step up or adaptive authentication) for lower value systems, and / or segregation of duties for high value applications to enforce anti-fraud controls as per the risk of application and past fraud.",129, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,129);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,129);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,129);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,129);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (257,'',1,129);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (258,'',2,129);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,129);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (33,"Input Validation","V5.1", '',33, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (130,NULL,"V5.1.1","Verify that the application has defenses against HTTP parameter pollution attacks, particularly if the application framework makes no distinction about the source of request parameters (GET, POST, cookies, headers, or environment variables).",130, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,130);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,130);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,130);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (8,"V5 - Validation, Sanitization and Encoding","Validation, Sanitization and Encoding",8,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,130);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (259,'235',1,130);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (260,'',2,130);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,130);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (131,NULL,"V5.1.2","Verify that frameworks protect against mass parameter assignment attacks, or that the application has countermeasures to protect against unsafe parameter assignment, such as marking fields private or similar. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",131, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,131);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,131);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,131);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,131);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (261,'915',1,131);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (262,'',2,131);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,131);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (132,NULL,"V5.1.3","Verify that all input (HTML form fields, REST requests, URL parameters, HTTP headers, cookies, batch files, RSS feeds, etc) is validated using positive validation (allow lists). ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",132, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,132);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,132);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,132);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,132);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (263,'20',1,132);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (264,'',2,132);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,132);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (133,NULL,"V5.1.4","Verify that structured data is strongly typed and validated against a defined schema including allowed characters, length and pattern (e.g. credit card numbers, e-mail addresses, telephone numbers, or validating that two related fields are reasonable, such as checking that suburb and zip/postcode match). ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",133, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,133);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,133);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,133);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,133);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (265,'20',1,133);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (266,'',2,133);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,133);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (134,NULL,"V5.1.5","Verify that URL redirects and forwards only allow destinations which appear on an allow list, or show a warning when redirecting to potentially untrusted content.",134, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,134);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,134);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,134);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,134);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (267,'601',1,134);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (268,'',2,134);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,134);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (34,"Sanitization and Sandboxing","V5.2", '',34, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (135,NULL,"V5.2.1","Verify that all untrusted HTML input from WYSIWYG editors or similar is properly sanitized with an HTML sanitizer library or framework feature. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",135, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,135);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,135);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,135);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,135);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (269,'116',1,135);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (270,'',2,135);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,135);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (136,NULL,"V5.2.2","Verify that unstructured data is sanitized to enforce safety measures such as allowed characters and length.",136, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,136);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,136);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,136);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,136);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (271,'138',1,136);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (272,'',2,136);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,136);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (137,NULL,"V5.2.3","Verify that the application sanitizes user input before passing to mail systems to protect against SMTP or IMAP injection.",137, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,137);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,137);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,137);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,137);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (273,'147',1,137);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (274,'',2,137);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,137);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (138,NULL,"V5.2.4","Verify that the application avoids the use of eval() or other dynamic code execution features. Where there is no alternative, any user input being included must be sanitized or sandboxed before being executed.",138, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,138);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,138);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,138);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,138);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (275,'95',1,138);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (276,'',2,138);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,138);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (139,NULL,"V5.2.5","Verify that the application protects against template injection attacks by ensuring that any user input being included is sanitized or sandboxed.",139, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,139);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,139);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,139);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,139);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (277,'94',1,139);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (278,'',2,139);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,139);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (140,NULL,"V5.2.6","Verify that the application protects against SSRF attacks, by validating or sanitizing untrusted data or HTTP file metadata, such as filenames and URL input fields, and uses allow lists of protocols, domains, paths and ports.",140, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,140);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,140);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,140);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,140);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (279,'918',1,140);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (280,'',2,140);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,140);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (141,NULL,"V5.2.7","Verify that the application sanitizes, disables, or sandboxes user-supplied Scalable Vector Graphics (SVG) scriptable content, especially as they relate to XSS resulting from inline scripts, and foreignObject.",141, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,141);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,141);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,141);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,141);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (281,'159',1,141);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (282,'',2,141);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,141);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (142,NULL,"V5.2.8","Verify that the application sanitizes, disables, or sandboxes user-supplied scriptable or expression template language content, such as Markdown, CSS or XSL stylesheets, BBCode, or similar.",142, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,142);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,142);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,142);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,142);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (283,'94',1,142);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (284,'',2,142);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,142);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (35,"Output Encoding and Injection Prevention","V5.3", '',35, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (143,NULL,"V5.3.1","Verify that output encoding is relevant for the interpreter and context required. For example, use encoders specifically for HTML values, HTML attributes, JavaScript, URL parameters, HTTP headers, SMTP, and others as the context requires, especially from untrusted inputs (e.g. names with Unicode or apostrophes, such as ねこ or O'Hara). ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",143, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,143);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,143);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,143);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,143);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (285,'116',1,143);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (286,'',2,143);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,143);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (144,NULL,"V5.3.2","Verify that output encoding preserves the user's chosen character set and locale, such that any Unicode character point is valid and safely handled. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",144, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,144);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,144);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,144);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,144);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (287,'176',1,144);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (288,'',2,144);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,144);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (145,NULL,"V5.3.3","Verify that context-aware, preferably automated - or at worst, manual - output escaping protects against reflected, stored, and DOM based XSS. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",145, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,145);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,145);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,145);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,145);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (289,'79',1,145);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (290,'',2,145);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,145);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (146,NULL,"V5.3.4","Verify that data selection or database queries (e.g. SQL, HQL, ORM, NoSQL) use parameterized queries, ORMs, entity frameworks, or are otherwise protected from database injection attacks. ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",146, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,146);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,146);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,146);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,146);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (291,'89',1,146);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (292,'',2,146);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,146);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (147,NULL,"V5.3.5","Verify that where parameterized or safer mechanisms are not present, context-specific output encoding is used to protect against injection attacks, such as the use of SQL escaping to protect against SQL injection. ([C3, C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",147, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,147);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,147);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,147);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,147);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (293,'89',1,147);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (294,'',2,147);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,147);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (148,NULL,"V5.3.6","Verify that the application protects against JSON injection attacks, JSON eval attacks, and JavaScript expression evaluation. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",148, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,148);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,148);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,148);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,148);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (295,'830',1,148);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (296,'',2,148);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,148);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (149,NULL,"V5.3.7","Verify that the application protects against LDAP injection vulnerabilities, or that specific security controls to prevent LDAP injection have been implemented. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",149, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,149);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,149);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,149);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,149);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (297,'90',1,149);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (298,'',2,149);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,149);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (150,NULL,"V5.3.8","Verify that the application protects against OS command injection and that operating system calls use parameterized OS queries or use contextual command line output encoding. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",150, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,150);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,150);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,150);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,150);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (299,'78',1,150);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (300,'',2,150);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,150);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (151,NULL,"V5.3.9","Verify that the application protects against Local File Inclusion (LFI) or Remote File Inclusion (RFI) attacks.",151, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,151);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,151);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,151);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,151);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (301,'829',1,151);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (302,'',2,151);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,151);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (152,NULL,"V5.3.10","Verify that the application protects against XPath injection or XML injection attacks. ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",152, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,152);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,152);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,152);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,152);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (303,'643',1,152);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (304,'',2,152);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,152);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (36,"Memory, String, and Unmanaged Code","V5.4", '',36, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (153,NULL,"V5.4.1","Verify that the application uses memory-safe string, safer memory copy and pointer arithmetic to detect or prevent stack, buffer, or heap overflows.",153, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,153);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,153);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,153);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,153);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (305,'',1,153);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (306,'',2,153);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,153);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (154,NULL,"V5.4.2","Verify that format strings do not take potentially hostile input, and are constant.",154, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,154);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,154);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,154);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,154);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (307,'',1,154);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (308,'',2,154);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,154);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (155,NULL,"V5.4.3","Verify that sign, range, and input validation techniques are used to prevent integer overflows.",155, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,155);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,155);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,155);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,155);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (309,'',1,155);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (310,'',2,155);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,155);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (37,"Deserialization Prevention","V5.5", '',37, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (156,NULL,"V5.5.1","Verify that serialized objects use integrity checks or are encrypted to prevent hostile object creation or data tampering. ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",156, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,156);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,156);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,156);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,156);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (311,'502',1,156);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (312,'',2,156);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,156);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (157,NULL,"V5.5.2","Verify that the application correctly restricts XML parsers to only use the most restrictive configuration possible and to ensure that unsafe features such as resolving external entities are disabled to prevent XML eXternal Entity (XXE) attacks.",157, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,157);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,157);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,157);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,157);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (313,'611',1,157);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (314,'',2,157);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,157);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (158,NULL,"V5.5.3","Verify that deserialization of untrusted data is avoided or is protected in both custom code and third-party libraries (such as JSON, XML and YAML parsers).",158, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,158);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,158);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,158);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,158);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (315,'502',1,158);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (316,'',2,158);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,158);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (159,NULL,"V5.5.4","Verify that when parsing JSON in browsers or JavaScript-based backends, JSON.parse is used to parse the JSON document. Do not use eval() to parse JSON.",159, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,159);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,159);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,159);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,159);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (317,'95',1,159);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (318,'',2,159);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,159);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (38,"Data Classification","V6.1", '',38, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (160,NULL,"V6.1.1","Verify that regulated private data is stored encrypted while at rest, such as Personally Identifiable Information (PII), sensitive personal information, or data assessed likely to be subject to EU's GDPR.",160, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,160);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,160);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,160);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (9,"V6 - Stored Cryptography","Stored Cryptography",9,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,160);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (319,'',1,160);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (320,'',2,160);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,160);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (161,NULL,"V6.1.2","Verify that regulated health data is stored encrypted while at rest, such as medical records, medical device details, or de-anonymized research records.",161, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,161);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,161);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,161);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,161);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (321,'',1,161);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (322,'',2,161);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,161);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (162,NULL,"V6.1.3","Verify that regulated financial data is stored encrypted while at rest, such as financial accounts, defaults or credit history, tax records, pay history, beneficiaries, or de-anonymized market or research records.",162, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,162);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,162);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,162);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,162);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (323,'',1,162);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (324,'',2,162);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,162);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (39,"Algorithms","V6.2", '',39, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (163,NULL,"V6.2.1","Verify that all cryptographic modules fail securely, and errors are handled in a way that does not enable Padding Oracle attacks.",163, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,163);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,163);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,163);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,163);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (325,'310',1,163);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (326,'',2,163);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,163);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (164,NULL,"V6.2.2","Verify that industry proven or government approved cryptographic algorithms, modes, and libraries are used, instead of custom coded cryptography. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",164, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,164);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,164);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,164);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,164);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (327,'',1,164);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (328,'',2,164);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,164);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (165,NULL,"V6.2.3","Verify that encryption initialization vector, cipher configuration, and block modes are configured securely using the latest advice.",165, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,165);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,165);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,165);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,165);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (329,'',1,165);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (330,'',2,165);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,165);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (166,NULL,"V6.2.4","Verify that random number, encryption or hashing algorithms, key lengths, rounds, ciphers or modes, can be reconfigured, upgraded, or swapped at any time, to protect against cryptographic breaks. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",166, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,166);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,166);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,166);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,166);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (331,'',1,166);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (332,'',2,166);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,166);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (167,NULL,"V6.2.5","Verify that known insecure block modes (i.e. ECB, etc.), padding modes (i.e. PKCS#1 v1.5, etc.), ciphers with small block sizes (i.e. Triple-DES, Blowfish, etc.), and weak hashing algorithms (i.e. MD5, SHA1, etc.) are not used unless required for backwards compatibility.",167, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,167);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,167);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,167);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,167);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (333,'',1,167);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (334,'',2,167);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,167);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (168,NULL,"V6.2.6","Verify that nonces, initialization vectors, and other single use numbers must not be used more than once with a given encryption key. The method of generation must be appropriate for the algorithm being used.",168, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,168);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,168);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,168);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,168);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (335,'',1,168);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (336,'',2,168);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,168);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (169,NULL,"V6.2.7","Verify that encrypted data is authenticated via signatures, authenticated cipher modes, or HMAC to ensure that ciphertext is not altered by an unauthorized party.",169, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,169);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,169);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,169);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,169);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (337,'',1,169);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (338,'',2,169);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,169);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (170,NULL,"V6.2.8","Verify that all cryptographic operations are constant-time, with no 'short-circuit' operations in comparisons, calculations, or returns, to avoid leaking information.",170, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,170);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,170);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,170);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,170);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (339,'',1,170);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (340,'',2,170);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,170);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (40,"Random Values","V6.3", '',40, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (171,NULL,"V6.3.1","Verify that all random numbers, random file names, random GUIDs, and random strings are generated using the cryptographic module's approved cryptographically secure random number generator when these random values are intended to be not guessable by an attacker.",171, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,171);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,171);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,171);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,171);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (341,'',1,171);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (342,'',2,171);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,171);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (172,NULL,"V6.3.2","Verify that random GUIDs are created using the GUID v4 algorithm, and a Cryptographically-secure Pseudo-random Number Generator (CSPRNG). GUIDs created using other pseudo-random number generators may be predictable.",172, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,172);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,172);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,172);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,172);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (343,'',1,172);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (344,'',2,172);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,172);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (173,NULL,"V6.3.3","Verify that random numbers are created with proper entropy even when the application is under heavy load, or that the application degrades gracefully in such circumstances.",173, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,173);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,173);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,173);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,173);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (345,'',1,173);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (346,'',2,173);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,173);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (41,"Secret Management","V6.4", '',41, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (174,NULL,"V6.4.1","Verify that a secrets management solution such as a key vault is used to securely create, store, control access to and destroy secrets. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",174, _binary '',41);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,174);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,174);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,174);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,174);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (347,'',1,174);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (348,'',2,174);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,174);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (175,NULL,"V6.4.2","Verify that key material is not exposed to the application but instead uses an isolated security module like a vault for cryptographic operations. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",175, _binary '',41);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,175);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,175);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,175);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,175);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (349,'',1,175);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (350,'',2,175);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,175);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (42,"Log Content","V7.1", '',42, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (176,NULL,"V7.1.1","Verify that the application does not log credentials or payment details. Session tokens should only be stored in logs in an irreversible, hashed form. ([C9, C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",176, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,176);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,176);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,176);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (10,"V7 - Error Handling and Logging","Error Handling and Logging",10,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,176);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (351,'532',1,176);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (352,'',2,176);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,176);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (177,NULL,"V7.1.2","Verify that the application does not log other sensitive data as defined under local privacy laws or relevant security policy. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",177, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,177);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,177);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,177);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,177);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (353,'532',1,177);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (354,'',2,177);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,177);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (178,NULL,"V7.1.3","Verify that the application logs security relevant events including successful and failed authentication events, access control failures, deserialization failures and input validation failures. ([C5, C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",178, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,178);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,178);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,178);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,178);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (355,'',1,178);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (356,'',2,178);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,178);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (179,NULL,"V7.1.4","Verify that each log event includes necessary information that would allow for a detailed investigation of the timeline when an event happens. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",179, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,179);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,179);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,179);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,179);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (357,'',1,179);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (358,'',2,179);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,179);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (43,"Log Processing","V7.2", '',43, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (180,NULL,"V7.2.1","Verify that all authentication decisions are logged, without storing sensitive session tokens or passwords. This should include requests with relevant metadata needed for security investigations.",180, _binary '',43);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,180);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,180);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,180);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,180);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (359,'',1,180);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (360,'',2,180);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,180);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (181,NULL,"V7.2.2","Verify that all access control decisions can be logged and all failed decisions are logged. This should include requests with relevant metadata needed for security investigations.",181, _binary '',43);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,181);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,181);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,181);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,181);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (361,'',1,181);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (362,'',2,181);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,181);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (44,"Log Protection","V7.3", '',44, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (182,NULL,"V7.3.1","Verify that all logging components appropriately encode data to prevent log injection. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",182, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,182);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,182);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,182);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,182);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (363,'',1,182);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (364,'',2,182);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,182);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (183,NULL,"V7.3.2","[DELETED, DUPLICATE OF 7.3.1]",183, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,183);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,183);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (365,'',1,183);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (366,'',2,183);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,183);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (184,NULL,"V7.3.3","Verify that security logs are protected from unauthorized access and modification. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",184, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,184);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,184);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,184);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,184);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (367,'',1,184);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (368,'',2,184);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,184);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (185,NULL,"V7.3.4","Verify that time sources are synchronized to the correct time and time zone. Strongly consider logging only in UTC if systems are global to assist with post-incident forensic analysis. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",185, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,185);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,185);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,185);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,185);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (369,'',1,185);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (370,'',2,185);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,185);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (45,"Error Handling","V7.4", '',45, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (186,NULL,"V7.4.1","Verify that a generic message is shown when an unexpected or security sensitive error occurs, potentially with a unique ID which support personnel can use to investigate. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",186, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,186);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,186);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,186);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,186);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (371,'210',1,186);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (372,'',2,186);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,186);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (187,NULL,"V7.4.2","Verify that exception handling (or a functional equivalent) is used across the codebase to account for expected and unexpected error conditions. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",187, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,187);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,187);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,187);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,187);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (373,'',1,187);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (374,'',2,187);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,187);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (188,NULL,"V7.4.3","Verify that a 'last resort' error handler is defined which will catch all unhandled exceptions. ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",188, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,188);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,188);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,188);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,188);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (375,'',1,188);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (376,'',2,188);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,188);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (46,"General Data Protection","V8.1", '',46, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (189,NULL,"V8.1.1","Verify the application protects sensitive data from being cached in server components such as load balancers and application caches.",189, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,189);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,189);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,189);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (11,"V8 - Data Protection","Data Protection",11,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,189);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (377,'',1,189);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (378,'',2,189);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,189);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (190,NULL,"V8.1.2","Verify that all cached or temporary copies of sensitive data stored on the server are protected from unauthorized access or purged/invalidated after the authorized user accesses the sensitive data.",190, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,190);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,190);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,190);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,190);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (379,'',1,190);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (380,'',2,190);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,190);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (191,NULL,"V8.1.3","Verify the application minimizes the number of parameters in a request, such as hidden fields, Ajax variables, cookies and header values.",191, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,191);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,191);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,191);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,191);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (381,'',1,191);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (382,'',2,191);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,191);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (192,NULL,"V8.1.4","Verify the application can detect and alert on abnormal numbers of requests, such as by IP, user, total per hour or day, or whatever makes sense for the application.",192, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,192);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,192);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,192);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,192);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (383,'',1,192);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (384,'',2,192);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,192);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (193,NULL,"V8.1.5","Verify that regular backups of important data are performed and that test restoration of data is performed.",193, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,193);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,193);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,193);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,193);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (385,'',1,193);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (386,'',2,193);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,193);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (194,NULL,"V8.1.6","Verify that backups are stored securely to prevent data from being stolen or corrupted.",194, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,194);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,194);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,194);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,194);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (387,'',1,194);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (388,'',2,194);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,194);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (47,"Client-side Data Protection","V8.2", '',47, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (195,NULL,"V8.2.1","Verify the application sets sufficient anti-caching headers so that sensitive data is not cached in modern browsers.",195, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,195);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,195);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,195);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,195);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (389,'525',1,195);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (390,'',2,195);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,195);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (196,NULL,"V8.2.2","Verify that data stored in browser storage (such as localStorage, sessionStorage, IndexedDB, or cookies) does not contain sensitive data.",196, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,196);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,196);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,196);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,196);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (391,'922',1,196);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (392,'',2,196);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,196);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (197,NULL,"V8.2.3","Verify that authenticated data is cleared from client storage, such as the browser DOM, after the client or session is terminated.",197, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,197);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,197);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,197);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,197);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (393,'922',1,197);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (394,'',2,197);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,197);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (48,"Sensitive Private Data","V8.3", '',48, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (198,NULL,"V8.3.1","Verify that sensitive data is sent to the server in the HTTP message body or headers, and that query string parameters from any HTTP verb do not contain sensitive data.",198, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,198);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,198);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,198);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,198);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (395,'319',1,198);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (396,'',2,198);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,198);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (199,NULL,"V8.3.2","Verify that users have a method to remove or export their data on demand.",199, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,199);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,199);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,199);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,199);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (397,'212',1,199);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (398,'',2,199);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,199);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (200,NULL,"V8.3.3","Verify that users are provided clear language regarding collection and use of supplied personal information and that users have provided opt-in consent for the use of that data before it is used in any way.",200, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,200);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,200);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,200);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,200);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (399,'285',1,200);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (400,'',2,200);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,200);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (201,NULL,"V8.3.4","Verify that all sensitive data created and processed by the application has been identified, and ensure that a policy is in place on how to deal with sensitive data. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",201, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,201);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,201);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,201);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,201);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (401,'200',1,201);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (402,'',2,201);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,201);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (202,NULL,"V8.3.5","Verify accessing sensitive data is audited (without logging the sensitive data itself), if the data is collected under relevant data protection directives or where logging of access is required.",202, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,202);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,202);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,202);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,202);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (403,'',1,202);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (404,'',2,202);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,202);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (203,NULL,"V8.3.6","Verify that sensitive information contained in memory is overwritten as soon as it is no longer required to mitigate memory dumping attacks, using zeroes or random data.",203, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,203);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,203);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,203);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,203);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (405,'',1,203);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (406,'',2,203);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,203);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (204,NULL,"V8.3.7","Verify that sensitive or private information that is required to be encrypted, is encrypted using approved algorithms that provide both confidentiality and integrity. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",204, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,204);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,204);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,204);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,204);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (407,'',1,204);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (408,'',2,204);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,204);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (205,NULL,"V8.3.8","Verify that sensitive personal information is subject to data retention classification, such that old or out of date data is deleted automatically, on a schedule, or as the situation requires.",205, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,205);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,205);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,205);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,205);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (409,'',1,205);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (410,'',2,205);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,205);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (49,"Client Communication Security","V9.1", '',49, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (206,NULL,"V9.1.1","Verify that TLS is used for all client connectivity, and does not fall back to insecure or unencrypted communications. ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",206, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,206);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,206);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,206);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (12,"V9 - Communication","Communication",12,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,206);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (411,'319',1,206);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (412,'',2,206);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,206);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (207,NULL,"V9.1.2","Verify using up to date TLS testing tools that only strong cipher suites are enabled, with the strongest cipher suites set as preferred.",207, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,207);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,207);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,207);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,207);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (413,'326',1,207);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (414,'',2,207);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,207);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (208,NULL,"V9.1.3","Verify that only the latest recommended versions of the TLS protocol are enabled, such as TLS 1.2 and TLS 1.3. The latest version of the TLS protocol should be the preferred option.",208, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,208);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,208);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,208);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,208);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (415,'326',1,208);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (416,'',2,208);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,208);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (50,"Server Communication Security","V9.2", '',50, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (209,NULL,"V9.2.1","Verify that connections to and from the server use trusted TLS certificates. Where internally generated or self-signed certificates are used, the server must be configured to only trust specific internal CAs and specific self-signed certificates. All others should be rejected.",209, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,209);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,209);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,209);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,209);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (417,'',1,209);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (418,'',2,209);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,209);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (210,NULL,"V9.2.2","Verify that encrypted communications such as TLS is used for all inbound and outbound connections, including for management ports, monitoring, authentication, API, or web service calls, database, cloud, serverless, mainframe, external, and partner connections. The server must not fall back to insecure or unencrypted protocols.",210, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,210);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,210);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,210);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,210);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (419,'',1,210);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (420,'',2,210);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,210);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (211,NULL,"V9.2.3","Verify that all encrypted connections to external systems that involve sensitive information or functions are authenticated.",211, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,211);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,211);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,211);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,211);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (421,'',1,211);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (422,'',2,211);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,211);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (212,NULL,"V9.2.4","Verify that proper certification revocation, such as Online Certificate Status Protocol (OCSP) Stapling, is enabled and configured.",212, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,212);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,212);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,212);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,212);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (423,'',1,212);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (424,'',2,212);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,212);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (213,NULL,"V9.2.5","Verify that backend TLS connection failures are logged.",213, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,213);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,213);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,213);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,213);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (425,'',1,213);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (426,'',2,213);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,213);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (51,"Code Integrity","V10.1", '',51, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (214,NULL,"V10.1.1","Verify that a code analysis tool is in use that can detect potentially malicious code, such as time functions, unsafe file operations and network connections.",214, _binary '',51);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,214);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,214);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,214);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (13,"V10 - Malicious Code","Malicious Code",13,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,214);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (427,'',1,214);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (428,'',2,214);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,214);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (52,"Malicious Code Search","V10.2", '',52, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (215,NULL,"V10.2.1","Verify that the application source code and third party libraries do not contain unauthorized phone home or data collection capabilities. Where such functionality exists, obtain the user's permission for it to operate before collecting any data.",215, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,215);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,215);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,215);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,215);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (429,'',1,215);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (430,'',2,215);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,215);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (216,NULL,"V10.2.2","Verify that the application does not ask for unnecessary or excessive permissions to privacy related features or sensors, such as contacts, cameras, microphones, or location.",216, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,216);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,216);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,216);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,216);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (431,'',1,216);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (432,'',2,216);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,216);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (217,NULL,"V10.2.3","Verify that the application source code and third party libraries do not contain back doors, such as hard-coded or additional undocumented accounts or keys, code obfuscation, undocumented binary blobs, rootkits, or anti-debugging, insecure debugging features, or otherwise out of date, insecure, or hidden functionality that could be used maliciously if discovered.",217, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,217);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,217);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,217);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,217);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (433,'',1,217);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (434,'',2,217);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,217);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (218,NULL,"V10.2.4","Verify that the application source code and third party libraries do not contain time bombs by searching for date and time related functions.",218, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,218);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,218);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,218);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,218);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (435,'',1,218);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (436,'',2,218);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,218);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (219,NULL,"V10.2.5","Verify that the application source code and third party libraries do not contain malicious code, such as salami attacks, logic bypasses, or logic bombs.",219, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,219);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,219);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,219);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,219);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (437,'',1,219);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (438,'',2,219);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,219);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (220,NULL,"V10.2.6","Verify that the application source code and third party libraries do not contain Easter eggs or any other potentially unwanted functionality.",220, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,220);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,220);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,220);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,220);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (439,'',1,220);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (440,'',2,220);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,220);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (53,"Application Integrity","V10.3", '',53, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (221,NULL,"V10.3.1","Verify that if the application has a client or server auto-update feature, updates should be obtained over secure channels and digitally signed. The update code must validate the digital signature of the update before installing or executing the update.",221, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,221);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,221);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,221);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,221);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (441,'16',1,221);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (442,'',2,221);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,221);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (222,NULL,"V10.3.2","Verify that the application employs integrity protections, such as code signing or subresource integrity. The application must not load or execute code from untrusted sources, such as loading includes, modules, plugins, code, or libraries from untrusted sources or the Internet.",222, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,222);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,222);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,222);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,222);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (443,'353',1,222);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (444,'',2,222);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,222);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (223,NULL,"V10.3.3","Verify that the application has protection from subdomain takeovers if the application relies upon DNS entries or DNS subdomains, such as expired domain names, out of date DNS pointers or CNAMEs, expired projects at public source code repos, or transient cloud APIs, serverless functions, or storage buckets (*autogen-bucket-id*.cloud.example.com) or similar. Protections can include ensuring that DNS names used by applications are regularly checked for expiry or change.",223, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,223);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,223);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,223);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,223);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (445,'350',1,223);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (446,'',2,223);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,223);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (54,"Business Logic Security","V11.1", '',54, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (224,NULL,"V11.1.1","Verify that the application will only process business logic flows for the same user in sequential step order and without skipping steps.",224, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,224);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,224);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,224);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (14,"V11 - Business Logic","Business Logic",14,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,224);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (447,'841',1,224);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (448,'',2,224);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,224);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (225,NULL,"V11.1.2","Verify that the application will only process business logic flows with all steps being processed in realistic human time, i.e. transactions are not submitted too quickly.",225, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,225);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,225);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,225);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,225);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (449,'799',1,225);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (450,'',2,225);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,225);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (226,NULL,"V11.1.3","Verify the application has appropriate limits for specific business actions or transactions which are correctly enforced on a per user basis.",226, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,226);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,226);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,226);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,226);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (451,'770',1,226);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (452,'',2,226);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,226);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (227,NULL,"V11.1.4","Verify that the application has anti-automation controls to protect against excessive calls such as mass data exfiltration, business logic requests, file uploads or denial of service attacks.",227, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,227);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,227);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,227);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,227);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (453,'770',1,227);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (454,'',2,227);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,227);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (228,NULL,"V11.1.5","Verify the application has business logic limits or validation to protect against likely business risks or threats, identified using threat modeling or similar methodologies.",228, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,228);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,228);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,228);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,228);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (455,'841',1,228);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (456,'',2,228);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,228);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (229,NULL,"V11.1.6","Verify that the application does not suffer from 'Time Of Check to Time Of Use' (TOCTOU) issues or other race conditions for sensitive operations.",229, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,229);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,229);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,229);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,229);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (457,'',1,229);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (458,'',2,229);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,229);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (230,NULL,"V11.1.7","Verify that the application monitors for unusual events or activity from a business logic perspective. For example, attempts to perform actions out of order or actions which a normal user would never attempt. ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",230, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,230);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,230);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,230);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,230);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (459,'',1,230);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (460,'',2,230);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,230);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (231,NULL,"V11.1.8","Verify that the application has configurable alerting when automated attacks or unusual activity is detected.",231, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,231);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,231);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,231);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,231);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (461,'',1,231);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (462,'',2,231);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,231);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (55,"File Upload","V12.1", '',55, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (232,NULL,"V12.1.1","Verify that the application will not accept large files that could fill up storage or cause a denial of service.",232, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,232);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,232);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,232);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (15,"V12 - Files and Resources","Files and Resources",15,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,232);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (463,'400',1,232);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (464,'',2,232);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,232);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (233,NULL,"V12.1.2","Verify that the application checks compressed files (e.g. zip, gz, docx, odt) against maximum allowed uncompressed size and against maximum number of files before uncompressing the file.",233, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,233);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,233);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,233);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,233);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (465,'',1,233);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (466,'',2,233);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,233);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (234,NULL,"V12.1.3","Verify that a file size quota and maximum number of files per user is enforced to ensure that a single user cannot fill up the storage with too many files, or excessively large files.",234, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,234);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,234);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,234);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,234);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (467,'',1,234);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (468,'',2,234);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,234);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (56,"File Integrity","V12.2", '',56, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (235,NULL,"V12.2.1","Verify that files obtained from untrusted sources are validated to be of expected type based on the file's content.",235, _binary '',56);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,235);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,235);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,235);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,235);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (469,'',1,235);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (470,'',2,235);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,235);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (57,"File Execution","V12.3", '',57, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (236,NULL,"V12.3.1","Verify that user-submitted filename metadata is not used directly by system or framework filesystems and that a URL API is used to protect against path traversal.",236, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,236);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,236);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,236);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,236);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (471,'22',1,236);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (472,'',2,236);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,236);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (237,NULL,"V12.3.2","Verify that user-submitted filename metadata is validated or ignored to prevent the disclosure, creation, updating or removal of local files (LFI).",237, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,237);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,237);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,237);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,237);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (473,'73',1,237);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (474,'',2,237);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,237);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (238,NULL,"V12.3.3","Verify that user-submitted filename metadata is validated or ignored to prevent the disclosure or execution of remote files via Remote File Inclusion (RFI) or Server-side Request Forgery (SSRF) attacks.",238, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,238);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,238);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,238);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,238);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (475,'98',1,238);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (476,'',2,238);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,238);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (239,NULL,"V12.3.4","Verify that the application protects against Reflective File Download (RFD) by validating or ignoring user-submitted filenames in a JSON, JSONP, or URL parameter, the response Content-Type header should be set to text/plain, and the Content-Disposition header should have a fixed filename.",239, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,239);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,239);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,239);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,239);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (477,'641',1,239);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (478,'',2,239);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,239);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (240,NULL,"V12.3.5","Verify that untrusted file metadata is not used directly with system API or libraries, to protect against OS command injection.",240, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,240);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,240);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,240);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,240);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (479,'78',1,240);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (480,'',2,240);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,240);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (241,NULL,"V12.3.6","Verify that the application does not include and execute functionality from untrusted sources, such as unverified content distribution networks, JavaScript libraries, node npm libraries, or server-side DLLs.",241, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,241);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,241);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,241);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,241);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (481,'',1,241);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (482,'',2,241);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,241);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (58,"File Storage","V12.4", '',58, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (242,NULL,"V12.4.1","Verify that files obtained from untrusted sources are stored outside the web root, with limited permissions.",242, _binary '',58);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,242);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,242);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,242);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,242);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (483,'552',1,242);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (484,'',2,242);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,242);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (243,NULL,"V12.4.2","Verify that files obtained from untrusted sources are scanned by antivirus scanners to prevent upload and serving of known malicious content.",243, _binary '',58);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,243);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,243);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,243);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,243);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (485,'509',1,243);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (486,'',2,243);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,243);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (59,"File Download","V12.5", '',59, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (244,NULL,"V12.5.1","Verify that the web tier is configured to serve only files with specific file extensions to prevent unintentional information and source code leakage. For example, backup files (e.g. .bak), temporary working files (e.g. .swp), compressed files (.zip, .tar.gz, etc) and other extensions commonly used by editors should be blocked unless required.",244, _binary '',59);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,244);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,244);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,244);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,244);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (487,'552',1,244);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (488,'',2,244);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,244);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (245,NULL,"V12.5.2","Verify that direct requests to uploaded files will never be executed as HTML/JavaScript content.",245, _binary '',59);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,245);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,245);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,245);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,245);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (489,'434',1,245);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (490,'',2,245);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,245);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (60,"SSRF Protection","V12.6", '',60, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (246,NULL,"V12.6.1","Verify that the web or application server is configured with an allow list of resources or systems to which the server can send requests or load data/files from.",246, _binary '',60);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,246);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,246);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,246);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,246);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (491,'918',1,246);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (492,'',2,246);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,246);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (61,"Generic Web Service Security","V13.1", '',61, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (247,NULL,"V13.1.1","Verify that all application components use the same encodings and parsers to avoid parsing attacks that exploit different URI or file parsing behavior that could be used in SSRF and RFI attacks.",247, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,247);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,247);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,247);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (16,"V13 - API and Web Service","API and Web Service",16,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,247);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (493,'116',1,247);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (494,'',2,247);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,247);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (248,NULL,"V13.1.2","[DELETED, DUPLICATE OF 4.3.1]",248, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,248);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,248);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (495,'',1,248);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (496,'',2,248);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,248);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (249,NULL,"V13.1.3","Verify API URLs do not expose sensitive information, such as the API key, session tokens etc.",249, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,249);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,249);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,249);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,249);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (497,'598',1,249);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (498,'',2,249);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,249);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (250,NULL,"V13.1.4","Verify that authorization decisions are made at both the URI, enforced by programmatic or declarative security at the controller or router, and at the resource level, enforced by model-based permissions.",250, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,250);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,250);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,250);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,250);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (499,'',1,250);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (500,'',2,250);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,250);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (251,NULL,"V13.1.5","Verify that requests containing unexpected or missing content types are rejected with appropriate headers (HTTP response status 406 Unacceptable or 415 Unsupported Media Type).",251, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,251);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,251);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,251);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,251);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (501,'',1,251);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (502,'',2,251);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,251);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (62,"RESTful Web Service","V13.2", '',62, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (252,NULL,"V13.2.1","Verify that enabled RESTful HTTP methods are a valid choice for the user or action, such as preventing normal users using DELETE or PUT on protected API or resources.",252, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,252);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,252);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,252);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,252);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (503,'650',1,252);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (504,'',2,252);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,252);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (253,NULL,"V13.2.2","Verify that JSON schema validation is in place and verified before accepting input.",253, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,253);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,253);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,253);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,253);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (505,'20',1,253);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (506,'',2,253);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,253);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (254,NULL,"V13.2.3","Verify that RESTful web services that utilize cookies are protected from Cross-Site Request Forgery via the use of at least one or more of the following: double submit cookie pattern, CSRF nonces, or Origin request header checks.",254, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,254);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,254);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,254);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,254);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (507,'352',1,254);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (508,'',2,254);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,254);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (255,NULL,"V13.2.4","[DELETED, DUPLICATE OF 11.1.4]",255, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,255);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,255);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (509,'',1,255);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (510,'',2,255);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,255);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (256,NULL,"V13.2.5","Verify that REST services explicitly check the incoming Content-Type to be the expected one, such as application/xml or application/json.",256, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,256);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,256);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,256);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,256);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (511,'',1,256);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (512,'',2,256);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,256);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (257,NULL,"V13.2.6","Verify that the message headers and payload are trustworthy and not modified in transit. Requiring strong encryption for transport (TLS only) may be sufficient in many cases as it provides both confidentiality and integrity protection. Per-message digital signatures can provide additional assurance on top of the transport protections for high-security applications but bring with them additional complexity and risks to weigh against the benefits.",257, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,257);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,257);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,257);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,257);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (513,'',1,257);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (514,'',2,257);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,257);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (63,"SOAP Web Service","V13.3", '',63, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (258,NULL,"V13.3.1","Verify that XSD schema validation takes place to ensure a properly formed XML document, followed by validation of each input field before any processing of that data takes place.",258, _binary '',63);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,258);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,258);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,258);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,258);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (515,'20',1,258);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (516,'',2,258);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,258);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (259,NULL,"V13.3.2","Verify that the message payload is signed using WS-Security to ensure reliable transport between client and service.",259, _binary '',63);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,259);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,259);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,259);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,259);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (517,'',1,259);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (518,'',2,259);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,259);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (64,"GraphQL","V13.4", '',64, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (260,NULL,"V13.4.1","Verify that a query allow list or a combination of depth limiting and amount limiting is used to prevent GraphQL or data layer expression Denial of Service (DoS) as a result of expensive, nested queries. For more advanced scenarios, query cost analysis should be used.",260, _binary '',64);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,260);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,260);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,260);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,260);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (519,'',1,260);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (520,'',2,260);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,260);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (261,NULL,"V13.4.2","Verify that GraphQL or other data layer authorization logic should be implemented at the business logic layer instead of the GraphQL layer.",261, _binary '',64);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,261);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,261);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,261);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,261);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (521,'',1,261);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (522,'',2,261);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,261);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (65,"Build and Deploy","V14.1", '',65, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (262,NULL,"V14.1.1","Verify that the application build and deployment processes are performed in a secure and repeatable way, such as CI / CD automation, automated configuration management, and automated deployment scripts.",262, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,262);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,262);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,262);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (17,"V14 - Configuration","Configuration",17,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,262);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (523,'',1,262);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (524,'',2,262);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,262);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (263,NULL,"V14.1.2","Verify that compiler flags are configured to enable all available buffer overflow protections and warnings, including stack randomization, data execution prevention, and to break the build if an unsafe pointer, memory, format string, integer, or string operations are found.",263, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,263);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,263);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,263);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,263);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (525,'',1,263);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (526,'',2,263);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,263);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (264,NULL,"V14.1.3","Verify that server configuration is hardened as per the recommendations of the application server and frameworks in use.",264, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,264);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,264);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,264);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,264);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (527,'',1,264);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (528,'',2,264);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,264);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (265,NULL,"V14.1.4","Verify that the application, configuration, and all dependencies can be re-deployed using automated deployment scripts, built from a documented and tested runbook in a reasonable time, or restored from backups in a timely fashion.",265, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,265);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,265);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,265);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,265);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (529,'',1,265);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (530,'',2,265);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,265);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (266,NULL,"V14.1.5","Verify that authorized administrators can verify the integrity of all security-relevant configurations to detect tampering.",266, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,266);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,266);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,266);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (531,'',1,266);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (532,'',2,266);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,266);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (66,"Dependency","V14.2", '',66, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (267,NULL,"V14.2.1","Verify that all components are up to date, preferably using a dependency checker during build or compile time. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",267, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,267);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,267);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,267);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,267);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (533,'1026',1,267);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (534,'',2,267);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,267);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (268,NULL,"V14.2.2","Verify that all unneeded features, documentation, sample applications and configurations are removed.",268, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,268);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,268);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,268);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,268);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (535,'1002',1,268);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (536,'',2,268);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,268);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (269,NULL,"V14.2.3","Verify that if application assets, such as JavaScript libraries, CSS or web fonts, are hosted externally on a Content Delivery Network (CDN) or external provider, Subresource Integrity (SRI) is used to validate the integrity of the asset.",269, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,269);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,269);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,269);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,269);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (537,'829',1,269);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (538,'',2,269);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,269);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (270,NULL,"V14.2.4","Verify that third party components come from pre-defined, trusted and continually maintained repositories. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",270, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,270);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,270);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,270);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,270);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (539,'',1,270);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (540,'',2,270);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,270);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (271,NULL,"V14.2.5","Verify that a Software Bill of Materials (SBOM) is maintained of all third party libraries in use. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",271, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,271);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,271);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,271);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,271);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (541,'',1,271);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (542,'',2,271);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,271);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (272,NULL,"V14.2.6","Verify that the attack surface is reduced by sandboxing or encapsulating third party libraries to expose only the required behaviour into the application. ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",272, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,272);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,272);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,272);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,272);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (543,'',1,272);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (544,'',2,272);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,272);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (67,"Unintended Security Disclosure","V14.3", '',67, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (273,NULL,"V14.3.1","[DELETED, DUPLICATE OF 7.4.1]",273, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,273);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,273);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (545,'',1,273);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (546,'',2,273);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,273);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (274,NULL,"V14.3.2","Verify that web or application server and application framework debug modes are disabled in production to eliminate debug features, developer consoles, and unintended security disclosures.",274, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,274);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,274);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,274);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,274);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (547,'497',1,274);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (548,'',2,274);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,274);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (275,NULL,"V14.3.3","Verify that the HTTP headers or any part of the HTTP response do not expose detailed version information of system components.",275, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,275);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,275);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,275);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,275);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (549,'200',1,275);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (550,'',2,275);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,275);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (68,"HTTP Security Headers","V14.4", '',68, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (276,NULL,"V14.4.1","Verify that every HTTP response contains a Content-Type header. Also specify a safe character set (e.g., UTF-8, ISO-8859-1) if the content types are text/*, /+xml and application/xml. Content must match with the provided Content-Type header.",276, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,276);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,276);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,276);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,276);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (551,'173',1,276);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (552,'',2,276);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,276);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (277,NULL,"V14.4.2","Verify that all API responses contain a Content-Disposition: attachment; filename='api.json' header (or other appropriate filename for the content type).",277, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,277);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,277);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,277);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,277);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (553,'116',1,277);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (554,'',2,277);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,277);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (278,NULL,"V14.4.3","Verify that a Content Security Policy (CSP) response header is in place that helps mitigate impact for XSS attacks like HTML, DOM, JSON, and JavaScript injection vulnerabilities.",278, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,278);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,278);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,278);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,278);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (555,'1021',1,278);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (556,'',2,278);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,278);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (279,NULL,"V14.4.4","Verify that all responses contain a X-Content-Type-Options: nosniff header.",279, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,279);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,279);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,279);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,279);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (557,'116',1,279);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (558,'',2,279);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,279);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (280,NULL,"V14.4.5","Verify that a Strict-Transport-Security header is included on all responses and for all subdomains, such as Strict-Transport-Security: max-age=15724800; includeSubdomains.",280, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,280);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,280);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,280);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,280);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (559,'523',1,280);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (560,'',2,280);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,280);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (281,NULL,"V14.4.6","Verify that a suitable Referrer-Policy header is included to avoid exposing sensitive information in the URL through the Referer header to untrusted parties.",281, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,281);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,281);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,281);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,281);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (561,'116',1,281);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (562,'',2,281);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,281);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (282,NULL,"V14.4.7","Verify that the content of a web application cannot be embedded in a third-party site by default and that embedding of the exact resources is only allowed where necessary by using suitable Content-Security-Policy: frame-ancestors and X-Frame-Options response headers.",282, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,282);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,282);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,282);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,282);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (563,'1021',1,282);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (564,'',2,282);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,282);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (69,"HTTP Request Header Validation","V14.5", '',69, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (283,NULL,"V14.5.1","Verify that the application server only accepts the HTTP methods in use by the application/API, including pre-flight OPTIONS, and logs/alerts on any requests that are not valid for the application context.",283, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,283);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,283);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,283);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,283);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (565,'749',1,283);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (566,'',2,283);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,283);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (284,NULL,"V14.5.2","Verify that the supplied Origin header is not used for authentication or access control decisions, as the Origin header can easily be changed by an attacker.",284, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,284);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,284);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,284);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,284);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (567,'346',1,284);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (568,'',2,284);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,284);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (285,NULL,"V14.5.3","Verify that the Cross-Origin Resource Sharing (CORS) Access-Control-Allow-Origin header uses a strict allow list of trusted domains and subdomains to match against and does not support the 'null' origin.",285, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,285);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,285);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,285);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,285);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (569,'346',1,285);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (570,'',2,285);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,285);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (286,NULL,"V14.5.4","Verify that HTTP headers added by a trusted proxy or SSO devices, such as a bearer token, are authenticated by the application.",286, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,286);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,286);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,286);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,286);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (571,'',1,286);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (572,'',2,286);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,286);

SET FOREIGN_KEY_CHECKS=1;
-- EOF
