
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
INSERT INTO `REQCATEGORY` VALUES (1,"安全软件开发生命周期","V1.1", '',1, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (1,NULL,"V1.1.1","验证使用安全的软件开发生命周期，在开发的各个阶段解决安全问题。 ([C1](https://owasp.org/www-project-proactive-controls/#div-numbering))",1, _binary '',1);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,1);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,1);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,1);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (4,"V1 - 架构、设计和威胁建模","架构、设计和威胁建模",4,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (4,1);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (1,'',1,1);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (2,'',2,1);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,1);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (2,NULL,"V1.1.2","验证在每次设计变更或sprint计划中使用威胁建模，以识别威胁、计划对策、促进适当的风险响应，并指导安全测试。",2, _binary '',1);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (3,NULL,"V1.1.3","验证所有用户信息和功能是否包含功能安全约束，例如 “作为一个用户，我应该能够查看和编辑我的个人资料。我不应该能够查看或编辑其他人的资料”",3, _binary '',1);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (4,NULL,"V1.1.4","验证应用程序所有的信任边界、组件和重要数据流的文档，判断其合理性。",4, _binary '',1);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (5,NULL,"V1.1.5","验证应用程序的高级架构及远程连接服务涉及的定义和安全分析。 ([C1](https://owasp.org/www-project-proactive-controls/#div-numbering))",5, _binary '',1);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (6,NULL,"V1.1.6","验证集中、简单（设计）、安全、经过审查、和可重复使用的安全控制措施的实施情况，以避免重复、缺失、无效或不安全的控制措施。 ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",6, _binary '',1);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (7,NULL,"V1.1.7","向所有开发人员和测试人员，验证安全编码Checklist、安全需求、指南或策略的可用性。",7, _binary '',1);
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
INSERT INTO `REQCATEGORY` VALUES (2,"认证架构","V1.2", '',2, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (8,NULL,"V1.2.1","验证应用程序所有的组件、服务和服务器，是否使用了唯一或特殊的低权限操作系统帐户。 ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",8, _binary '',2);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (9,NULL,"V1.2.2","验证应用组件之间（包括 API、中间件和数据层）的通信是否经过验证。组件只具有最低的必要权限。 ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",9, _binary '',2);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (10,NULL,"V1.2.3","验证应用程序是否使用已知安全的单一认证机制，可以扩展到强身份验证，并有足够的日志记录和监控，来检测帐户滥用或违规行为。",10, _binary '',2);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (11,NULL,"V1.2.4","验证所有的认证途径和身份管理 API ，都实现了一致的认证安全控制强度， 以便收敛应用程序的风险。",11, _binary '',2);
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
INSERT INTO `REQCATEGORY` VALUES (3,"访问控制架构","V1.4", '',3, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (12,NULL,"V1.4.1","验证受信任的实施点（如访问控制网关、服务器和Serverless函数）是否实施了访问控制。切勿在客户端实施访问控制。",12, _binary '',3);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (13,NULL,"V1.4.2","[已删除，不可操作]",13, _binary '',3);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (14,NULL,"V1.4.3","[已删除，与 4.1.3 重复]",14, _binary '',3);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (15,NULL,"V1.4.4","验证应用程序使用单一的、经过严格审查的访问控制机制，来访问受保护的数据和资源。 所有请求都必须通过这个单一机制，以避免复制、粘贴或不安全的替代路径。 ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",15, _binary '',3);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (16,NULL,"V1.4.5","验证是否使用基于属性/特征的访问控制，即代码应检查用户对某一特征/数据项的授权，而不仅仅是他们的角色。 权限仍应依照不同角色进行分配。 ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",16, _binary '',3);
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
INSERT INTO `REQCATEGORY` VALUES (4,"输入和输出架构","V1.5", '',4, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (17,NULL,"V1.5.1","验证输入和输出要求，明确规定如何根据类型、内容以及适用的法律、法规和其他政策规定，来操作和处理数据。",17, _binary '',4);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (18,NULL,"V1.5.2","验证在与不受信任的客户进行通信时，不使用序列化。 如果无法做到这一点，请确保执行足够的完整性控制（如果发送敏感数据，可能还要进行加密），以防止反序列化攻击，包括对象注入。",18, _binary '',4);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (19,NULL,"V1.5.3","验证输入验证是否在可信的服务层上执行。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",19, _binary '',4);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (20,NULL,"V1.5.4","验证输出编码是否发生在其预期的解释器附近（或由解释器进行）。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",20, _binary '',4);
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
INSERT INTO `REQCATEGORY` VALUES (5,"加密架构","V1.6", '',5, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (21,NULL,"V1.6.1","验证是否有明确的加密密钥管理政策，以及加密密钥的生命周期是否遵循密钥管理标准，如NIST SP 800-57。",21, _binary '',5);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (22,NULL,"V1.6.2","验证密码服务的消费者是否通过使用密钥库或基于API的替代方案，来保护密钥材料和其他机密。",22, _binary '',5);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (23,NULL,"V1.6.3","验证所有的密钥和密码是否可替换的，并且是重新加密敏感数据的明确定义流程的一部分。",23, _binary '',5);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (24,NULL,"V1.6.4","验证架构是否将客户端机密（例如对称密钥、密码或 API 令牌）视为不安全的，并且从不使用它们来保护或访问敏感数据。",24, _binary '',5);
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
INSERT INTO `REQCATEGORY` VALUES (6,"错误、日志和审计架构","V1.7", '',6, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (25,NULL,"V1.7.1","验证整个系统是否使用了通用的日志记录格式和方法。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",25, _binary '',6);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (26,NULL,"V1.7.2","验证日志是否安全地传输到远程系统，以便进行分析、检测、报警和升级。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",26, _binary '',6);
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
INSERT INTO `REQCATEGORY` VALUES (7,"数据保护和隐私架构","V1.8", '',7, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (27,NULL,"V1.8.1","验证所有敏感数据都已识别并归入保护级别。",27, _binary '',7);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (28,NULL,"V1.8.2","验证所有保护级别都具有一套相关的保护要求，如加密要求、完整性要求、保留、隐私和其他机密性要求，并在架构中应用这些要求。",28, _binary '',7);
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
INSERT INTO `REQCATEGORY` VALUES (8,"通信架构","V1.9", '',8, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (29,NULL,"V1.9.1","验证应用程序对组件之间的通信进行加密，特别是当这些组件处于不同的容器、系统、站点或云提供商时。 ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",29, _binary '',8);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (30,NULL,"V1.9.2","验证应用组件是否验证了通信链接中每一方的真实性，以防止中间人攻击。例如，应用程序组件应校验TLS证书链。",30, _binary '',8);
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
INSERT INTO `REQCATEGORY` VALUES (9,"恶意软件架构","V1.10", '',9, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (31,NULL,"V1.10.1","验证是否使用了源代码控制系统，以及有程序确保签入时附带问题或变更单。源代码控制系统应该具有访问控制和可识别的用户，以追溯任何的更改。",31, _binary '',9);
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
INSERT INTO `REQCATEGORY` VALUES (10,"业务逻辑架构","V1.11", '',10, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (32,NULL,"V1.11.1","验证所有应用组件在其提供的业务或安全功能方面的定义和文档。",32, _binary '',10);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (33,NULL,"V1.11.2","验证所有高价值的业务逻辑流，包括认证、会话管理和访问控制，不共享不同步的状态。",33, _binary '',10);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (34,NULL,"V1.11.3","验证所有高价值的业务逻辑流，包括身份验证、会话管理和访问控制都是线程安全的，并能抵抗检查时间和使用时间不同步时的条件竞争。",34, _binary '',10);
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
INSERT INTO `REQCATEGORY` VALUES (11,"安全上传架构","V1.12", '',11, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (35,NULL,"V1.12.1","[已删除，与 12.4.1 重复]",35, _binary '',11);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (36,NULL,"V1.12.2","验证用户上传的文件——如果需要显示或从应用中下载，是通过二进制流下载，或从无关的域（如云文件存储桶）提供。实施合适的内容安全策略（CSP），以减少来自上传文件的XSS向量或其他攻击的风险。",36, _binary '',11);
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
INSERT INTO `REQCATEGORY` VALUES (12,"配置架构","V1.14", '',12, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (37,NULL,"V1.14.1","通过明确的安全控制、防火墙规则、API 网关、反向代理、基于云的安全组或类似机制，验证不同信任级别的组件的隔离情况。",37, _binary '',12);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (38,NULL,"V1.14.2","验证二进制签名、可信连接和经过验证的接口，以将二进制文件部署到远程设备。",38, _binary '',12);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (39,NULL,"V1.14.3","验证构建管道是否对过期或不安全的组件发出警告并采取适当的行动。",39, _binary '',12);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (40,NULL,"V1.14.4","验证构建管道是否包含自动构建和验证应用安全部署的构建步骤，特别是当应用基础设施是软件定义时，例如云环境构建脚本。",40, _binary '',12);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (41,NULL,"V1.14.5","验证应用程序部署是否在网络级别进行了充分的沙盒化、容器化或隔离，以延迟和阻止攻击者攻击其他应用程序，尤其是当攻击者执行敏感或危险操作时（如反序列化）。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",41, _binary '',12);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (42,NULL,"V1.14.6","验证应用程序未使用不受支持、不安全或不推荐的客户端技术，如NSAPI插件、Flash、Shockwave、ActiveX、Silverlight、NACL或客户端Java applets。",42, _binary '',12);
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
INSERT INTO `REQCATEGORY` VALUES (13,"密码安全","V2.1", '',13, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (43,NULL,"V2.1.1","验证用户设置的密码长度至少为 12 个字符（多个空格合并后）。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",43, _binary '',13);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,43);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,43);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,43);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (5,"V2 - 认证","认证",5,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (5,43);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (85,'521',1,43);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (86,'5.1.1.2',2,43);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,43);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (44,NULL,"V2.1.2","验证是否允许64个字符以上的密码，并拒绝超过128个字符的密码。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",44, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (45,NULL,"V2.1.3","验证不进行密码截断。然而，连续的多个空格可以被单个空格代替。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",45, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (46,NULL,"V2.1.4","验证密码中是否允许使用任何可打印的Unicode字符，包括语言中立字符，例如空格和表情符号。",46, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (47,NULL,"V2.1.5","验证用户可以更改其密码。",47, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (48,NULL,"V2.1.6","验证密码更改功能是否需要用户的当前密码和新密码。",48, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (49,NULL,"V2.1.7","验证在账户注册、登录和密码更改过程中提交的密码，是否出现在被泄露过的密码中，这些密码可以是本地的（如符合系统密码策略的前1000个或10000个最常见的密码），也可以使用外部API。 如果使用API，应使用零知识证明或其他机制，以确保纯文本密码不被发送或用于验证密码的违反状态。 如果密码被泄露，应用程序必须要求用户设置一个新的未被泄露的密码。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",49, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (50,NULL,"V2.1.8","验证是否提供了密码强度表，以帮助用户设置更强的密码。",50, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (51,NULL,"V2.1.9","验证是否有限制允许的字符类型的密码组成规则。对大写或小写、数字或特殊字符不应有任何要求。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",51, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (52,NULL,"V2.1.10","验证没有定期更换凭证或密码历史的要求。",52, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (53,NULL,"V2.1.11","验证是否允许 “粘贴” 功能、浏览器密码辅助工具和外部密码管理器。",53, _binary '',13);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (54,NULL,"V2.1.12","验证用户可以选择临时查看整个屏蔽的密码，或者在没有内置功能的平台上临时查看密码的最后输入的字符。",54, _binary '',13);
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
INSERT INTO `REQCATEGORY` VALUES (14,"通用身份验证器的安全性","V2.2", '',14, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (55,NULL,"V2.2.1","验证反自动化控制的措施能够有效地缓解被泄露的凭证测试、暴力破解和账户锁定攻击。 这些控制措施包括阻止最常见的泄露密码、软锁定、速率限制、验证码、每次尝试后逐渐增加的间隔时间、IP地址限制，或基于风险的限制，例如位置、设备上的首次登录、最近解锁账户的尝试等类似情况。 验证单个帐户每小时的失败尝试次数不超过 100 次。",55, _binary '',14);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (56,NULL,"V2.2.2","验证弱身份验证器（例如 SMS 和电子邮件）的使用，仅限于二次验证和批准交易，而不是作为更安全的认证方法的替代。 验证是否在弱方法之前提供了更强的方法，用户是否意识到风险，或者是否采取了适当的措施来限制帐户泄露的风险。",56, _binary '',14);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (57,NULL,"V2.2.3","验证在更新认证信息（如凭证重置、电子邮件或地址变更、从未知或风险地点登录）后向用户发送安全通知。 最好使用推送通知——而不是短信或电子邮件，但在没有推送通知的情况下，只要通知中没有披露敏感信息，短信或电子邮件也是可以接受的。",57, _binary '',14);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (58,NULL,"V2.2.4","验证对网络钓鱼的抗冒充性，如使用多因素认证、有意图的加密设备（如有推送认证的连接密钥），或在更高的AAL级别，客户端证书。",58, _binary '',14);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (59,NULL,"V2.2.5","验证当凭证服务提供者（CSP）和验证认证的应用程序分开时，两个端点之间有相互认证的TLS（mTLS）。",59, _binary '',14);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (60,NULL,"V2.2.6","验证抗重放性，是否通过强制使用一次性密码（OTP）设备、加密认证器或查询代码。",60, _binary '',14);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (61,NULL,"V2.2.7","通过要求输入OTP令牌或用户发起的动作（如按下FIDO硬件钥匙的按钮）来验证认证意图。",61, _binary '',14);
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
INSERT INTO `REQCATEGORY` VALUES (15,"身份验证器生命周期","V2.3", '',15, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (62,NULL,"V2.3.1","验证系统生成的初始密码或激活码应该是安全随机生成的，应该至少有6个字符的长度，可以包含字母和数字，并在短时间内过期。这些初始秘密不得被允许成为长期密码。",62, _binary '',15);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (63,NULL,"V2.3.2","验证是否支持注册和使用用户提供的认证设备，如U2F或FIDO令牌。",63, _binary '',15);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (64,NULL,"V2.3.3","验证更新指令的发送时间是否足够，以更新有时间限制的认证器。",64, _binary '',15);
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
INSERT INTO `REQCATEGORY` VALUES (16,"凭证存储","V2.4", '',16, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (65,NULL,"V2.4.1","验证密码是以一种可以抵抗离线攻击的形式存储的。密码应使用认可的单向密钥推导或密码散列函数进行加盐和散列。密钥推导和密码散列函数，在生成密码散列时，将密码、盐和计算成本作为输入。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",65, _binary '',16);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (66,NULL,"V2.4.2","验证盐的长度至少为32位，并且是任意选择的，以减少存储的哈希值之间的碰撞。对于每个凭证，应存储唯一的盐值和由此产生的哈希值。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",66, _binary '',16);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (67,NULL,"V2.4.3","验证如果使用 PBKDF2，迭代次数应在验证服务器性能允许的范围内，一般至少为100,000次迭代。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",67, _binary '',16);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (68,NULL,"V2.4.4","验证如果使用 bcrypt，工作系数应在验证服务器性能允许的范围内尽量大，最小为10。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",68, _binary '',16);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (69,NULL,"V2.4.5","验证是否执行了密钥派生函数的额外迭代，使用的是只有验证者知道的秘密盐值。使用经批准的随机位生成器 [SP 800-90Ar1] 生成盐值，并至少提供 SP 800-131A 最新修订版中规定的最低安全强度。秘密盐值应与散列密码分开存储（例如，在像硬件安全模块这样的专用设备中）。",69, _binary '',16);
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
INSERT INTO `REQCATEGORY` VALUES (17,"凭证恢复","V2.5", '',17, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (70,NULL,"V2.5.1","验证系统生成的初始激活或恢复密码，不会以明文形式发送给用户。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",70, _binary '',17);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (71,NULL,"V2.5.2","验证密码提示或基于知识的身份验证（所谓的“密码保护问题”）不存在。",71, _binary '',17);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (72,NULL,"V2.5.3","验证密码凭据恢复不会以任何方式泄露当前密码。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",72, _binary '',17);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (73,NULL,"V2.5.4","验证共享或默认帐户不存在（例如“root”、“admin”或“sa”）.",73, _binary '',17);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (74,NULL,"V2.5.5","验证如果更改或替换了身份验证因素，则用户会收到此事件的通知。",74, _binary '',17);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (75,NULL,"V2.5.6","验证忘记密码以及其他恢复路径，使用了安全的恢复机制，例如基于时间的OTP（TOTP）或其他软令牌、移动推送或其他离线恢复机制。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",75, _binary '',17);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (76,NULL,"V2.5.7","验证如果OTP或多因素身份验证因素丢失，身份证明的执行水平与注册时相同。",76, _binary '',17);
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
INSERT INTO `REQCATEGORY` VALUES (18,"查找密码认证","V2.6", '',18, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (77,NULL,"V2.6.1","验证查找密文只能使用一次。",77, _binary '',18);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (78,NULL,"V2.6.2","验证查询秘密有足够的随机性（112位熵），如果少于112位熵，则用唯一的随机32位盐进行加盐，并用认可的单向散列进行散列。",78, _binary '',18);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (79,NULL,"V2.6.3","验证查找秘密能够抵抗离线攻击，例如可预测的值。",79, _binary '',18);
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
INSERT INTO `REQCATEGORY` VALUES (19,"带外验证器","V2.7", '',19, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (80,NULL,"V2.7.1","验证默认情况下不提供短信或PSTN等带外的明文认证器，并首先提供推送通知等更强的替代方案。",80, _binary '',19);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (81,NULL,"V2.7.2","验证带外验证器在10分钟后将带外验证请求、代码或令牌过期。",81, _binary '',19);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (82,NULL,"V2.7.3","验证带外验证器身份验证请求、代码或令牌仅可使用一次，并且仅可用于原始身份验证请求。",82, _binary '',19);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (83,NULL,"V2.7.4","验证带外验证器和验证器是否通过安全的独立信道进行通信。",83, _binary '',19);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (84,NULL,"V2.7.5","验证带外验证器只保留认证代码的散列版本。",84, _binary '',19);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (85,NULL,"V2.7.6","验证初始验证码是否由安全随机数生成器生成，包含至少 20 位熵（通常为 6 位数字随机数即可）。",85, _binary '',19);
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
INSERT INTO `REQCATEGORY` VALUES (20,"一次性验证器","V2.8", '',20, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (86,NULL,"V2.8.1","验证基于时间的OTP在过期前有确定的使用寿命",86, _binary '',20);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (87,NULL,"V2.8.2","验证用于验证提交的OTP的对称密钥是否被高度保护，例如使用硬件安全模块或基于安全操作系统的密钥存储。",87, _binary '',20);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (88,NULL,"V2.8.3","验证OTP的生成、播种和验证是否使用了经过批准的加密算法。",88, _binary '',20);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (89,NULL,"V2.8.4","验证基于时间的OTP在有效期内只能使用一次。",89, _binary '',20);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (90,NULL,"V2.8.5","验证如果基于时间的多因素OTP令牌在有效期内被重复使用，将被记录并拒绝，同时向设备持有者发送安全通知。",90, _binary '',20);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (91,NULL,"V2.8.6","验证物理单因素OTP生成器在被盗或其他损失的情况下可以被撤销。确保撤销在登录会话中立即生效，无论在何处。",91, _binary '',20);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (92,NULL,"V2.8.7","验证生物特征身份验证器仅限于用作次要因素，与“你拥有的东西”和“你知道的东西”一起使用。 L1: o; L2: ✓; L3: 308",92, _binary '',20);
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
INSERT INTO `REQCATEGORY` VALUES (21,"密码验证器","V2.9", '',21, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (93,NULL,"V2.9.1","验证用于验证的加密密钥是否安全存储并防止泄露，例如使用可信平台模块（TPM）或硬件安全模块（HSM），或可以使用这种安全存储的操作系统服务。",93, _binary '',21);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (94,NULL,"V2.9.2","验证质询随机数的长度至少为 64 位，并且在统计学上是唯一的，或在加密设备的生命周期内是唯一的。",94, _binary '',21);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (95,NULL,"V2.9.3","验证在生成、播种和验证中使用经批准的加密算法。",95, _binary '',21);
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
INSERT INTO `REQCATEGORY` VALUES (22,"服务认证","V2.10", '',22, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (96,NULL,"V2.10.1","验证服务内机密不依赖于不变的凭据，例如密码、API 密钥或具有特权访问权限的共享帐户。 L1: OS assisted; L2: HSM; L3: 287",96, _binary '',22);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (97,NULL,"V2.10.2","验证如果服务身份验证需要密码，则使用的服务帐户不是默认凭据（例如，root/root 或 admin/admin 是安装过程中某些服务的默认设置）。 L1: OS assisted; L2: HSM; L3: 255",97, _binary '',22);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (98,NULL,"V2.10.3","验证存储的密码是否有足够的保护，以防止离线恢复攻击，包括本地系统访问。 L1: OS assisted; L2: HSM; L3: 522",98, _binary '',22);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (99,NULL,"V2.10.4","验证密码、与数据库和第三方系统的集成、种子和内部机密以及 API 密钥都得到安全管理，不包含在源代码中或存储在源代码存储库中。 这种存储应能抵御离线攻击。建议使用安全的软件密钥存储（L1）、硬件 TPM 或 HSM（L3）来存储密码。 L1: OS assisted; L2: HSM; L3: 798",99, _binary '',22);
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
INSERT INTO `REQCATEGORY` VALUES (23,"基本会话管理安全","V3.1", '',23, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (100,NULL,"V3.1.1","验证应用不会在URL参数中显示会话令牌。",100, _binary '',23);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,100);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,100);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,100);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (6,"V3 - 会话管理","会话管理",6,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,100);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (199,'598',1,100);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (200,'',2,100);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,100);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (24,"会话绑定","V3.2", '',24, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (101,NULL,"V3.2.1","验证应用程序在用户身份验证时，生成新的会话令牌。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",101, _binary '',24);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (102,NULL,"V3.2.2","验证会话令牌具有至少 64 位的熵。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",102, _binary '',24);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (103,NULL,"V3.2.3","验证应用程序仅使用安全方法在浏览器中存储会话令牌，例如适当的 cookie保护（参见第 3.4 节）或 HTML 5 会话存储。",103, _binary '',24);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (104,NULL,"V3.2.4","验证会话令牌是使用批准的加密算法生成的。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",104, _binary '',24);
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
INSERT INTO `REQCATEGORY` VALUES (25,"会话终止","V3.3", '',25, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (105,NULL,"V3.3.1","验证注销和到期是否会使会话令牌无效，以便后退按钮或下游依赖方不会恢复经身份验证过的会话。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",105, _binary '',25);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (106,NULL,"V3.3.3","验证应用程序是否提供了在成功更改密码（包括通过密码重置/恢复）后终止所有其他活动会话的选项，并且这在应用程序、联合登录（如果存在）和任何依赖方中都是有效的。",106, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,106);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,106);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,106);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,106);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (211,'',1,106);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (212,'',2,106);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,106);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (107,NULL,"V3.3.4","验证用户能够查看并（在重新输入登录凭证后）注销当前的所有活动会话和设备。",107, _binary '',25);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,107);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,107);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,107);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,107);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (213,'7.1',1,107);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (214,'',2,107);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,107);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (26,"基于 Cookie 的会话管理","V3.4", '',26, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (108,NULL,"V3.4.1","验证基于 cookie 的会话令牌是否设置了'Secure'属性。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",108, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,108);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,108);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,108);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,108);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (215,'614',1,108);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (216,'7.1.1',2,108);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,108);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (109,NULL,"V3.4.2","验证基于 cookie 的会话令牌是否设置了'HttpOnly'属性。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",109, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,109);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,109);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,109);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,109);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (217,'1004',1,109);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (218,'7.1.1',2,109);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,109);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (110,NULL,"V3.4.3","验证基于cookie的会话令牌是否使用了'SameSite'属性，以限制跨站点请求伪造攻击（CSRF）的风险。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",110, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,110);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,110);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,110);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,110);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (219,'16',1,110);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (220,'7.1.1',2,110);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,110);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (111,NULL,"V3.4.4","验证基于cookie的会话令牌是否使用'__Host-'前缀，这样cookie只会被发送到最初设置cookie的主机。",111, _binary '',26);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,111);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,111);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,111);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,111);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (221,'16',1,111);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (222,'7.1.1',2,111);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,111);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (112,NULL,"V3.4.5","验证如果应用程序在一个域名下发布，而其他应用程序设置或使用会话cookie（这可能会泄露会话cookie），则在基于cookie的会话令牌中设置路径属性（Path），尽可能使用最精确的路径。 ([C6](https://owasp.org/www-project-proactive-controls/#div-numbering))",112, _binary '',26);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (27,"基于令牌的会话管理","V3.5", '',27, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (113,NULL,"V3.5.1","验证该应用允许用户撤销与链接应用建立信任关系的OAuth令牌。",113, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,113);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,113);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,113);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,113);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (225,'7.1.2',1,113);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (226,'',2,113);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,113);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (114,NULL,"V3.5.2","验证应用程序使用会话令牌，而不是静态API密码或密钥，旧的实现除外。",114, _binary '',27);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,114);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,114);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,114);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,114);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (227,'',1,114);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (228,'',2,114);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,114);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (115,NULL,"V3.5.3","验证无状态会话令牌是否使用数字签名、加密等对策，来防止篡改、封装、重放、空密码和密钥替换等攻击。",115, _binary '',27);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (28,"联合重认证","V3.6", '',28, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (116,NULL,"V3.6.1","验证依赖方（RP）是否指定了凭证服务提供商（CSP）的最长身份验证时间，并且如果用户在该期间内未使用会话，CSP是否会重新验证用户。",116, _binary '',28);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,116);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,116);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,116);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,116);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (231,'',1,116);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (232,'',2,116);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,116);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (117,NULL,"V3.6.2","验证凭证服务提供商（CSP）通知依赖方（RP）最后一次认证事件，以便 RP 确定他们是否需要重新认证用户。",117, _binary '',28);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (29,"针对会话管理漏洞的防御措施","V3.7", '',29, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (118,NULL,"V3.7.1","在允许任何敏感交易或帐户修改之前，验证应用程序确保完整、有效的登录会话，或要求重新验证（二次验证）。",118, _binary '',29);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,118);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,118);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,118);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (6,118);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (235,'306',1,118);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (236,'',2,118);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,118);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (30,"通用访问控制设计","V4.1", '',30, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (119,NULL,"V4.1.1","验证应用程序是否在受信任的服务层上执行访问控制规则，尤其是在有客户端访问控制并且可能被绕过的情况下。",119, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,119);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,119);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,119);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (7,"V4 - 访问控制","访问控制",7,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,119);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (237,'602',1,119);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (238,'',2,119);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,119);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (120,NULL,"V4.1.2","验证访问控制所使用的所有用户和数据属性以及策略信息，不能被最终用户操纵，除非得到特别授权。",120, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,120);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,120);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,120);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,120);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (239,'639',1,120);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (240,'',2,120);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,120);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (121,NULL,"V4.1.3","验证是否存在最小权限原则——用户应该只能访问他们拥有特定授权的功能、数据文件、URL、控制器、服务和其他资源。这意味着防止欺骗或特权提升。 ([C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",121, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,121);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,121);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,121);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,121);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (241,'285',1,121);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (242,'',2,121);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,121);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (122,NULL,"V4.1.4","[已删除，与 4.1.3 重复]",122, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,122);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,122);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (243,'',1,122);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (244,'',2,122);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,122);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (123,NULL,"V4.1.5","验证访问控制安全，在发生异常时是否失效。 ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",123, _binary '',30);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,123);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,123);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,123);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,123);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (245,'285',1,123);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (246,'',2,123);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,123);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (31,"操作级访问控制","V4.2", '',31, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (124,NULL,"V4.2.1","验证敏感数据和API的保护，防止针对创建、读取、更新和删除记录的不安全直接对象引用（IDOR）攻击，如创建或更新别人的记录，查看每个人的记录或删除所有记录。",124, _binary '',31);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,124);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,124);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,124);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,124);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (247,'639',1,124);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (248,'',2,124);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,124);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (125,NULL,"V4.2.2","验证应用程序或框架是否实施了强大的反 CSRF 机制来保护经过身份验证的功能，以及有效的反自动化或反 CSRF 保护无需身份验证的功能。",125, _binary '',31);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,125);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,125);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,125);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,125);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (249,'352',1,125);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (250,'',2,125);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,125);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (32,"其他访问控制注意事项","V4.3", '',32, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (126,NULL,"V4.3.1","验证管理界面使用适当的多因素认证，防止未经授权的使用。",126, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,126);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,126);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,126);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,126);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (251,'419',1,126);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (252,'',2,126);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,126);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (127,NULL,"V4.3.2","验证目录浏览被禁用，除非特意需要。此外，应用程序不应允许披露文件或目录元数据，例如Thumbs.db、.DS_Store、.git或.svn文件夹。",127, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,127);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,127);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,127);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,127);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (253,'548',1,127);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (254,'',2,127);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,127);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (128,NULL,"V4.3.3","验证应用程序对低价值的系统有额外的授权（如升级或自适应认证），对高价值的应用程序进行职责分离，以根据应用程序和过去的欺诈风险执行反欺诈控制。",128, _binary '',32);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,128);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,128);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,128);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (7,128);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (255,'',1,128);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (256,'',2,128);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,128);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (33,"输入验证","V5.1", '',33, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (129,NULL,"V5.1.1","验证应用程序是否有HTTP参数污染攻击的防御措施，特别是当应用程序框架没有区分请求参数的来源（GET、POST、cookies、请求头或环境变量）。",129, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,129);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,129);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,129);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (8,"V5 - 验证、过滤和编码","验证、过滤和编码",8,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,129);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (257,'235',1,129);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (258,'',2,129);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,129);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (130,NULL,"V5.1.2","验证框架是否能防止批量参数分配攻击，或者应用程序是否有对策来防止不安全的参数分配，如将字段标记为私有等类型。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",130, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,130);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,130);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,130);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,130);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (259,'915',1,130);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (260,'',2,130);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,130);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (131,NULL,"V5.1.3","验证所有输入（HTML 表单字段、REST 请求、URL 参数、HTTP 请求头、cookies、批处理文件、RSS 源等）都使用“白名单”（允许列表）。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",131, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,131);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,131);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,131);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,131);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (261,'20',1,131);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (262,'',2,131);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,131);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (132,NULL,"V5.1.4","验证结构化数据是强类型的，并根据定义的模式进行验证，包括允许的字符、长度和模式（如信用卡号码、电子邮件地址、电话号码，或验证两个相关字段是否合理，如检查郊区和邮政编码是否匹配）。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",132, _binary '',33);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (133,NULL,"V5.1.5","验证URL重定向和转发的目标地址都在白名单中，或者在重定向到可能不受信任的内容时显示警告。",133, _binary '',33);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,133);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,133);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,133);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,133);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (265,'601',1,133);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (266,'',2,133);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,133);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (34,"过滤和沙盒化","V5.2", '',34, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (134,NULL,"V5.2.1","验证所有来自“所见即所得”编辑器或类似的不受信任的HTML输入，都已经通过HTML过滤库或框架功能，进行了适当的净化。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",134, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,134);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,134);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,134);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,134);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (267,'116',1,134);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (268,'',2,134);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,134);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (135,NULL,"V5.2.2","验证非结构化数据是否经过消毒处理，以执行安全措施，如允许的字符集和长度。",135, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,135);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,135);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,135);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,135);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (269,'138',1,135);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (270,'',2,135);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,135);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (136,NULL,"V5.2.3","验证应用程序在传递给邮件系统之前，对用户的输入进行过滤，以防止SMTP或IMAP注入。",136, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,136);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,136);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,136);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,136);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (271,'147',1,136);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (272,'',2,136);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,136);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (137,NULL,"V5.2.4","验证应用程序是否避免使用eval()或其他动态代码执行功能。在没有其他选择的情况下，任何被包含的用户输入必须在执行前进行过滤或沙箱处理。",137, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,137);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,137);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,137);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,137);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (273,'95',1,137);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (274,'',2,137);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,137);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (138,NULL,"V5.2.5","验证应用程序是否对相关的用户输入进行过滤或沙箱处理，来防止模板注入攻击。",138, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,138);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,138);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,138);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,138);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (275,'94',1,138);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (276,'',2,138);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,138);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (139,NULL,"V5.2.6","验证应用程序是否通过验证或净化不受信任的数据或HTTP文件元数据（如文件名和URL输入字段），并使用协议、域、路径和端口的白名单，来防止SSRF攻击。",139, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,139);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,139);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,139);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,139);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (277,'918',1,139);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (278,'',2,139);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,139);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (140,NULL,"V5.2.7","验证应用程序是否过滤、禁用或沙盒处理了用户提供的可扩展矢量图（SVG）脚本内容，特别是与内联脚本产生的XSS有关的内容，以及外部对象。",140, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,140);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,140);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,140);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,140);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (279,'159',1,140);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (280,'',2,140);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,140);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (141,NULL,"V5.2.8","验证应用程序是否对用户提供的模板语言内容（脚本或表达式，如Markdown、CSS或XSL样式表、BBCode或类似内容）进行过滤、禁用或沙盒处理。",141, _binary '',34);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,141);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,141);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,141);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,141);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (281,'94',1,141);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (282,'',2,141);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,141);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (35,"输出编码和预防注入","V5.3", '',35, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (142,NULL,"V5.3.1","验证输出编码是否与所需的解释器和环境相关。例如，根据HTML值、HTML属性、JavaScript、URL参数、HTTP头、SMTP等上下文的要求，使用专门的编码器，特别是来自不可信任的输入（如带有Unicode或单引号的名字，如ねこ或O'Hara）。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",142, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,142);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,142);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,142);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,142);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (283,'116',1,142);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (284,'',2,142);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,142);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (143,NULL,"V5.3.2","验证输出编码是否保留了用户选择的字符集和地域，从而使任何Unicode字符点都能得到有效和安全的处理。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",143, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,143);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,143);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,143);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,143);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (285,'176',1,143);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (286,'',2,143);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,143);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (144,NULL,"V5.3.3","验证上下文感知，最好是自动——或者最差也是手动——转义输出，以防止反射、存储或基于DOM的XSS。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",144, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,144);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,144);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,144);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,144);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (287,'79',1,144);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (288,'',2,144);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,144);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (145,NULL,"V5.3.4","验证数据选择或数据库查询（如 SQL、HQL、ORM、NoSQL）是否使用参数化查询、ORM、实体框架，或以其他方式防止数据库注入攻击。 ([C3](https://owasp.org/www-project-proactive-controls/#div-numbering))",145, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,145);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,145);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,145);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,145);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (289,'89',1,145);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (290,'',2,145);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,145);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (146,NULL,"V5.3.5","验证在没有参数化或更安全机制的情况下，使用特定上下文的输出编码来防止注入攻击，例如使用SQL转义来防止SQL注入。 ([C3, C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",146, _binary '',35);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (147,NULL,"V5.3.6","验证应用程序是否可以防止JSON注入攻击、JSON eval攻击和JavaScript表达式评估。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",147, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,147);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,147);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,147);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,147);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (293,'830',1,147);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (294,'',2,147);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,147);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (148,NULL,"V5.3.7","验证应用程序可以防止LDAP注入漏洞，或者已经实施了特定的安全控制来防止LDAP注入。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",148, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,148);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,148);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,148);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,148);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (295,'90',1,148);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (296,'',2,148);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,148);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (149,NULL,"V5.3.8","验证应用程序是否能防止操作系统命令注入，以及操作系统调用是否使用参数化的操作系统查询或使用上下文命令行输出编码。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",149, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,149);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,149);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,149);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,149);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (297,'78',1,149);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (298,'',2,149);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,149);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (150,NULL,"V5.3.9","验证应用程序是否能防止本地文件包含（LFI）或远程文件包含（RFI）攻击。",150, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,150);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,150);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,150);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,150);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (299,'829',1,150);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (300,'',2,150);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,150);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (151,NULL,"V5.3.10","验证应用程序是否能防止XPath注入或XML注入攻击。 ([C4](https://owasp.org/www-project-proactive-controls/#div-numbering))",151, _binary '',35);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,151);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,151);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,151);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,151);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (301,'643',1,151);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (302,'',2,151);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,151);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (36,"内存、字符串和非托管代码","V5.4", '',36, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (152,NULL,"V5.4.1","验证应用程序是否使用内存安全字符串、更安全的内存复制和指针运算，以检测或防止堆栈、缓冲区或堆溢出。",152, _binary '',36);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,152);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,152);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,152);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,152);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (303,'',1,152);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (304,'',2,152);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,152);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (153,NULL,"V5.4.2","验证格式化字符串不接受潜在的有害输入，并且是常量。",153, _binary '',36);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (154,NULL,"V5.4.3","验证运用了符号、范围和输入验证技术来防止整数溢出。",154, _binary '',36);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (37,"预防反序列化","V5.5", '',37, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (155,NULL,"V5.5.1","验证序列化对象是否使用完整性检查或加密，以防止恶意对象的创建或数据篡改。 ([C5](https://owasp.org/www-project-proactive-controls/#div-numbering))",155, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,155);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,155);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,155);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,155);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (309,'502',1,155);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (310,'',2,155);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,155);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (156,NULL,"V5.5.2","验证应用程序正确限制 XML 解析器，使其只使用最严格的配置，并确保禁用不安全的功能，如解析外部实体，以防止 XML 外部实体注入（XXE）攻击。",156, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,156);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,156);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,156);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,156);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (311,'611',1,156);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (312,'',2,156);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,156);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (157,NULL,"V5.5.3","验证自定义代码和第三方库（如JSON、XML和YAML解析器）禁止或限制不受信任数据的反序列化。",157, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,157);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,157);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,157);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,157);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (313,'502',1,157);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (314,'',2,157);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,157);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (158,NULL,"V5.5.4","验证在浏览器或基于 JavaScript 的后端解析 JSON 时，使用 JSON.parse 来解析 JSON 文档。不使用 eval() 来解析 JSON。",158, _binary '',37);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,158);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,158);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,158);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (8,158);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (315,'95',1,158);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (316,'',2,158);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,158);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (38,"数据分类","V6.1", '',38, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (159,NULL,"V6.1.1","验证受监管的私人数据在静止状态下是否被加密存储，如个人身份信息（PII）、敏感个人信息或经评估可能受制于欧盟GDPR的数据。",159, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,159);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,159);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,159);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (9,"V6 - 存储密码学","存储密码学",9,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,159);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (317,'',1,159);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (318,'',2,159);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,159);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (160,NULL,"V6.1.2","验证受监管的健康数据在静止状态下是否被加密存储，如医疗记录、医疗设备详情或去匿名化的研究记录。",160, _binary '',38);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,160);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,160);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,160);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,160);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (319,'',1,160);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (320,'',2,160);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,160);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (161,NULL,"V6.1.3","验证受监管的金融数据在静止状态下是否被加密存储，如金融账户、违约或信用记录、税务记录、工资记录、受益人或去匿名化的市场或研究记录。",161, _binary '',38);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (39,"算法","V6.2", '',39, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (162,NULL,"V6.2.1","验证所有的加密模块即使在故障时也是安全的，并且处理错误的方式不会使Padding Oracle攻击得逞。",162, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,162);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,162);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,162);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,162);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (323,'310',1,162);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (324,'',2,162);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,162);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (163,NULL,"V6.2.2","验证使用业界认可或政府批准的加密算法、模式和库，而不是自定义编码的加密技术。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",163, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,163);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,163);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,163);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,163);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (325,'',1,163);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (326,'',2,163);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,163);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (164,NULL,"V6.2.3","验证加密初始化向量、密码配置和分组模式是否使用最新建议进行安全配置。",164, _binary '',39);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (165,NULL,"V6.2.4","验证随机数、加密或散列算法、密钥长度、轮次、密码或模式，可以在任何时候重新配置、升级或交换，以防止密码中断。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",165, _binary '',39);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (166,NULL,"V6.2.5","验证不使用已知不安全的分组模式（如ECB等）、填充模式（如PKCS#1 v1.5等）、小块大小的密码（如Triple-DES、Blowfish等）和弱散列算法（如MD5、SHA1等），除非需要向后兼容。",166, _binary '',39);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (167,NULL,"V6.2.6","验证随机数、初始化向量和其他一次性使用的数字，不得与特定的加密密钥使用超过一次。生成方法必须适合所使用的算法。",167, _binary '',39);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (168,NULL,"V6.2.7","验证加密数据是否通过签名、认证的密码模式或 HMAC 进行身份验证，以确保密文不会被未经授权的一方更改。",168, _binary '',39);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,168);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,168);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,168);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,168);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (335,'',1,168);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (336,'',2,168);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,168);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (169,NULL,"V6.2.8","验证所有的密码操作都是恒定时间的，在比较、计算或返回中没有“短路”操作，以避免信息泄漏。",169, _binary '',39);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (40,"随机值","V6.3", '',40, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (170,NULL,"V6.3.1","验证所有的随机数、随机文件名、随机GUID和随机字符串，都是使用加密模块认可的加密安全随机数生成器生成的，而这些随机值旨在不被攻击者猜测。",170, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,170);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,170);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,170);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,170);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (339,'',1,170);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (340,'',2,170);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,170);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (171,NULL,"V6.3.2","验证是否使用 GUID v4 算法和加密安全伪随机数生成器（CSPRNG）创建了随机 GUID。使用其他伪随机数生成器创建的 GUID 可能是可预测的。",171, _binary '',40);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (172,NULL,"V6.3.3","验证应用程序即使在处于高负载下时也使用适当的熵创建随机数，或者应用程序在这种情况下优雅地降级。",172, _binary '',40);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,172);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,172);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,172);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,172);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (343,'',1,172);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (344,'',2,172);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,172);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (41,"密钥管理","V6.4", '',41, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (173,NULL,"V6.4.1","验证秘密管理解决方案，如钥匙库，用于安全地创建、存储、控制对秘密的访问和销毁。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",173, _binary '',41);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,173);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,173);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,173);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (9,173);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (345,'',1,173);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (346,'',2,173);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,173);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (174,NULL,"V6.4.2","验证密钥材料是否未暴露给应用程序，而是使用一个隔离的安全模块（如保险库）进行加密操作。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",174, _binary '',41);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (42,"日志内容","V7.1", '',42, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (175,NULL,"V7.1.1","验证应用程序不记录凭证或支付细节。会话令牌应该只以不可逆的散列形式存储在日志中。 ([C9, C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",175, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,175);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,175);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,175);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (10,"V7 - 错误处理和日志记录","错误处理和日志记录",10,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,175);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (349,'532',1,175);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (350,'',2,175);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,175);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (176,NULL,"V7.1.2","验证应用程序不会记录当地隐私法或相关安全政策规定的其他敏感数据。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",176, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,176);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,176);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,176);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,176);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (351,'532',1,176);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (352,'',2,176);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,176);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (177,NULL,"V7.1.3","验证应用程序是否记录安全相关事件，例如成功和失败的认证事件、访问控制失败、反序列化失败和输入验证失败的事件。 ([C5, C7](https://owasp.org/www-project-proactive-controls/#div-numbering))",177, _binary '',42);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,177);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,177);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,177);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,177);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (353,'',1,177);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (354,'',2,177);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,177);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (178,NULL,"V7.1.4","验证每个日志事件都包含必要的信息，以便在事件发生后详细调查时间轴。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",178, _binary '',42);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (43,"日志处理","V7.2", '',43, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (179,NULL,"V7.2.1","验证所有的认证决策都被记录下来，不存储敏感的会话令牌或密码。这应该包括安全调查所需的具有相关元数据的请求。",179, _binary '',43);
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
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (180,NULL,"V7.2.2","验证是否可以记录所有访问控制决策并记录所有失败的决策。这应包括安全调查所需的具有相关元数据的请求。",180, _binary '',43);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (44,"日志保护","V7.3", '',44, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (181,NULL,"V7.3.1","验证所有日志组件是否对数据进行了适当的编码，以防止日志注入。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",181, _binary '',44);
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
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (182,NULL,"V7.3.2","[已删除，与 7.3.1 重复]",182, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,182);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,182);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (363,'',1,182);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (364,'',2,182);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,182);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (183,NULL,"V7.3.3","验证安全日志是否受到保护，防止未授权的访问或修改。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",183, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,183);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,183);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,183);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,183);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (365,'',1,183);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (366,'',2,183);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,183);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (184,NULL,"V7.3.4","验证时间源是否同步到正确的时间和时区。如果系统是全球性的，强烈考虑只用UTC来记录，以协助事件后的取证分析。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",184, _binary '',44);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,184);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,184);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,184);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,184);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (367,'',1,184);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (368,'',2,184);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,184);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (45,"错误处理","V7.4", '',45, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (185,NULL,"V7.4.1","验证在发生意外或安全敏感错误时，是否显示通用信息，可能带有支持人员可以用于调查的唯一ID。 ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",185, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,185);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,185);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,185);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,185);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (369,'210',1,185);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (370,'',2,185);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,185);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (186,NULL,"V7.4.2","验证整个代码库是否使用了异常处理（或类似功能），以说明预期和非预期的错误情况。 ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",186, _binary '',45);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,186);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,186);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,186);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (10,186);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (371,'',1,186);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (372,'',2,186);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,186);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (187,NULL,"V7.4.3","验证是否定义了“最后手段”的错误处理程序，以捕获所有未处理的异常。 ([C10](https://owasp.org/www-project-proactive-controls/#div-numbering))",187, _binary '',45);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (46,"通用数据保护","V8.1", '',46, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (188,NULL,"V8.1.1","验证应用程序保护敏感数据不被缓存在负载均衡和应用程序缓存等服务器组件中。",188, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,188);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,188);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,188);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (11,"V8 - 数据保护","数据保护",11,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,188);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (375,'',1,188);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (376,'',2,188);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,188);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (189,NULL,"V8.1.2","验证在服务器上所存储敏感数据的所有缓存或临时副本是否受到保护（防止未经授权的访问），或在被授权用户访问后清除/失效。",189, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,189);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,189);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,189);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,189);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (377,'',1,189);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (378,'',2,189);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,189);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (190,NULL,"V8.1.3","验证应用程序尽量减少请求中的参数数量，如隐藏字段、Ajax 变量、cookies 和请求头。",190, _binary '',46);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (191,NULL,"V8.1.4","验证应用程序能够检测并提醒异常的请求数量，例如按IP、用户、每小时或每天的总数，或其它对应用程序有意义的指标。",191, _binary '',46);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (192,NULL,"V8.1.5","验证是否对重要数据进行了定期备份，是否对数据进行了测试恢复。",192, _binary '',46);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,192);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,192);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,192);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,192);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (383,'',1,192);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (384,'',2,192);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,192);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (193,NULL,"V8.1.6","验证备份的安全存储，防止数据被盗或损坏。",193, _binary '',46);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (47,"客户端数据保护","V8.2", '',47, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (194,NULL,"V8.2.1","验证应用程序设置足够的“禁止缓存”头，以便敏感数据不会在现代浏览器中被缓存。",194, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,194);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,194);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,194);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,194);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (387,'525',1,194);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (388,'',2,194);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,194);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (195,NULL,"V8.2.2","验证存储在浏览器存储（例如 localStorage、sessionStorage、IndexedDB 或 cookie）中的数据不包含敏感数据。",195, _binary '',47);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,195);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,195);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,195);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,195);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (389,'922',1,195);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (390,'',2,195);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,195);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (196,NULL,"V8.2.3","在客户端或会话终止后，验证经过身份验证的数据已从客户端存储（例如浏览器 DOM）中清除。",196, _binary '',47);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (48,"敏感私有数据","V8.3", '',48, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (197,NULL,"V8.3.1","验证敏感数据是在HTTP消息正文或请求头中被发送到服务器，以及HTTP请求方法的查询字符串参数都不包含敏感数据。",197, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,197);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,197);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,197);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,197);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (393,'319',1,197);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (394,'',2,197);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,197);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (198,NULL,"V8.3.2","验证用户是否有途径按需删除或导出自己的数据。",198, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,198);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,198);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,198);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,198);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (395,'212',1,198);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (396,'',2,198);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,198);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (199,NULL,"V8.3.3","验证向用户提供了关于收集和使用其个人信息的明确语言，并且在以任何方式使用这些数据之前，用户已勾选了同意。",199, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,199);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,199);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,199);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,199);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (397,'285',1,199);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (398,'',2,199);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,199);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (200,NULL,"V8.3.4","验证应用程序创建和处理的所有敏感数据是否已被识别，并确保已制定了如何处理敏感数据的策略。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",200, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,200);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,200);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,200);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,200);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (399,'200',1,200);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (400,'',2,200);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,200);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (201,NULL,"V8.3.5","如果数据是根据相关数据保护指令收集的或（应用）要求记录访问日志，验证访问敏感数据是否被审计（不记录敏感数据本身）。",201, _binary '',48);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,201);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,201);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,201);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (11,201);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (401,'',1,201);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (402,'',2,201);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,201);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (202,NULL,"V8.3.6","为了减少内存转储攻击，一旦不再需要内存中的敏感信息，请检查该敏感信息是否会被覆盖（使用0或随机数）。",202, _binary '',48);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (203,NULL,"V8.3.7","验证需要加密的敏感信息或私有信息是否使用经过批准的机密性和完整性算法加密。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",203, _binary '',48);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (204,NULL,"V8.3.8","验证敏感的个人信息是否符合数据保留分类，以便自动、按计划或根据情况需要删除旧数据或过时数据。",204, _binary '',48);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (49,"客户端通信安全","V9.1", '',49, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (205,NULL,"V9.1.1","验证所有客户端连接都使用了TLS，并且不会降级到不安全或未加密的通信。 ([C8](https://owasp.org/www-project-proactive-controls/#div-numbering))",205, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,205);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,205);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,205);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (12,"V9 - 通讯","通讯",12,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,205);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (409,'319',1,205);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (410,'',2,205);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,205);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (206,NULL,"V9.1.2","使用最新的TLS测试工具，验证是否只启用了强密码套件，并将最强的密码套件设置为首选。",206, _binary '',49);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,206);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,206);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,206);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,206);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (411,'326',1,206);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (412,'',2,206);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,206);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (207,NULL,"V9.1.3","验证只启用最新推荐版本的TLS协议，如TLS 1.2和TLS 1.3。最新版本的TLS协议应该是首选项。",207, _binary '',49);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (50,"服务器通信安全","V9.2", '',50, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (208,NULL,"V9.2.1","验证与服务器的连接是否使用受信任的TLS证书。在使用内部生成或自签名证书的情况下，必须将服务器配置为只信任特定的内部CA和特定的自签证书。所有其他的都应该被拒绝。",208, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,208);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,208);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,208);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,208);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (415,'',1,208);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (416,'',2,208);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,208);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (209,NULL,"V9.2.2","确认所有入站和出站连接都使用了 TLS 等加密通信，包括管理端口、监控、身份验证、API 或 Web 服务调用、数据库、云、serverless、大型机、外部和合作伙伴的连接。服务器不得回退到不安全或未加密的协议。",209, _binary '',50);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (210,NULL,"V9.2.3","验证所有外部系统中与敏感信息/功能相关的加密连接，均已通过身份验证。",210, _binary '',50);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (211,NULL,"V9.2.4","验证是否启用并配置了正确的证书吊销，例如在线证书状态协议（OCSP）Stapling。",211, _binary '',50);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (212,NULL,"V9.2.5","验证是否记录了后端TLS连接失败（的事件）。",212, _binary '',50);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,212);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,212);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,212);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (12,212);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (423,'',1,212);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (424,'',2,212);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,212);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (51,"代码完整性","V10.1", '',51, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (213,NULL,"V10.1.1","验证是否使用了代码分析工具，可以检测潜在的恶意代码，如时间函数、不安全的文件操作和网络连接。",213, _binary '',51);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,213);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,213);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,213);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (13,"V10 - 恶意代码","恶意代码",13,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,213);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (425,'',1,213);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (426,'',2,213);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,213);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (52,"恶意代码搜索","V10.2", '',52, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (214,NULL,"V10.2.1","验证应用程序的源代码和第三方库不包含未经授权的回连或数据收集功能。如果存在这样的功能，在收集任何数据之前，要获得用户的操作许可。",214, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,214);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,214);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,214);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,214);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (427,'',1,214);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (428,'',2,214);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,214);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (215,NULL,"V10.2.2","验证应用程序不会对隐私相关的功能或传感器（例如联系人、摄像头、麦克风或位置）要求不必要或过度的权限。",215, _binary '',52);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (216,NULL,"V10.2.3","验证应用程序的源代码和第三方库不包含后门，如硬编码或额外的未记录的账户或密钥、代码混淆、未记录的二进制blobs、rootkits或反调试、不安全的调试特性，或其他过时、不安全或隐藏的功能，一旦被发现可能会被恶意使用。",216, _binary '',52);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,216);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,216);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,216);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,216);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (431,'',1,216);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (432,'',2,216);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,216);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (217,NULL,"V10.2.4","通过搜索日期和时间相关函数，来验证应用程序源代码和第三方库不包含时间炸弹。",217, _binary '',52);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (218,NULL,"V10.2.5","验证应用程序源代码和第三方库不包含恶意代码，例如salami攻击、逻辑绕过或逻辑炸弹。",218, _binary '',52);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (219,NULL,"V10.2.6","验证应用程序的源代码和第三方库不包含复活节彩蛋或任何其他潜在的冗余功能。",219, _binary '',52);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (53,"应用程序完整性","V10.3", '',53, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (220,NULL,"V10.3.1","验证如果应用程序具有客户端或服务器自动更新功能，则应通过安全通道获得更新，并进行数字签名。更新代码必须在安装或执行更新之前验证更新的数字签名。",220, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,220);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,220);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,220);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,220);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (439,'16',1,220);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (440,'',2,220);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,220);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (221,NULL,"V10.3.2","验证应用程序是否采用了完整性保护，如代码签名或子资源完整性。应用程序不得从不受信任的来源加载或执行代码，例如从不可信任的来源或互联网加载模块、插件、代码或库。",221, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,221);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,221);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,221);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,221);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (441,'353',1,221);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (442,'',2,221);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,221);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (222,NULL,"V10.3.3","如果应用程序依赖 DNS 条目或 DNS 子域，例如过期的域名、过时的 DNS 指针或 CNAME、公共源代码库中过期的项目或临时的云API接口、serverless功能或存储桶（*autogen-bucket-id*.cloud.example.com）或类似情况，则验证该应用程序是否具有防止子域接管的措施。保护措施可以包括确保定期检查应用程序使用的DNS名称是否过期或改变。",222, _binary '',53);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,222);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,222);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,222);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (13,222);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (443,'350',1,222);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (444,'',2,222);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,222);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (54,"业务逻辑安全","V11.1", '',54, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (223,NULL,"V11.1.1","验证应用程序仅按串行顺序处理同一用户的业务逻辑流，不会跳过步骤。",223, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,223);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,223);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,223);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (14,"V11 - 业务逻辑","业务逻辑",14,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,223);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (445,'841',1,223);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (446,'',2,223);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,223);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (224,NULL,"V11.1.2","验证应用程序将只处理业务逻辑流，所有步骤都在现实的人工时间内处理，即事务不会提交得太快。",224, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,224);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,224);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,224);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,224);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (447,'799',1,224);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (448,'',2,224);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,224);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (225,NULL,"V11.1.3","验证应用程序是否对特定的业务操作或交易有适当的限制，并在每个用户的基础上正确执行。",225, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,225);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,225);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,225);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,225);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (449,'770',1,225);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (450,'',2,225);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,225);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (226,NULL,"V11.1.4","验证应用程序具有反自动化的控制手段，以防止过度调用，如大量数据泄露、业务逻辑请求、文件上传或拒绝服务攻击。",226, _binary '',54);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (227,NULL,"V11.1.5","验证应用程序是否具有业务逻辑限制或验证，以防止可能的业务风险或威胁（使用威胁建模或类似方法识别）。",227, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,227);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,227);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,227);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,227);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (453,'841',1,227);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (454,'',2,227);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,227);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (228,NULL,"V11.1.6","验证应用程序是否存在TOCTOU（Time Of Check to Time Of Use）问题 或敏感操作的其他条件竞争问题。",228, _binary '',54);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,228);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,228);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,228);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (14,228);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (455,'',1,228);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (456,'',2,228);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,228);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (229,NULL,"V11.1.7","验证应用程序是否从业务逻辑角度监控异常事件或活动。例如，尝试执行无序的操作或普通用户永远不会尝试的操作。 ([C9](https://owasp.org/www-project-proactive-controls/#div-numbering))",229, _binary '',54);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (230,NULL,"V11.1.8","验证应用程序在检测到自动化攻击或异常活动时，具有可配置的警报。",230, _binary '',54);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (55,"文件上传","V12.1", '',55, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (231,NULL,"V12.1.1","确认应用程序不会接受可能会填满存储空间或导致拒绝服务的大文件。",231, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,231);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,231);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,231);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (15,"V12 - 文件和资源","文件和资源",15,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,231);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (461,'400',1,231);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (462,'',2,231);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,231);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (232,NULL,"V12.1.2","验证应用程序在解压缩文件前，根据允许的最大解压缩尺寸和最大文件数检查压缩文件（如zip，gz，docx，odt）。",232, _binary '',55);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,232);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,232);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,232);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,232);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (463,'',1,232);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (464,'',2,232);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,232);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (233,NULL,"V12.1.3","验证文件大小配额和每个用户的最大文件数是否被强制执行，以确保单个用户不能用过多的文件或过大的文件填满存储。",233, _binary '',55);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (56,"文件完整性","V12.2", '',56, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (234,NULL,"V12.2.1","验证从不可信任的来源获得的文件，根据文件的内容，验证其是否为预期类型。",234, _binary '',56);
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
INSERT INTO `REQCATEGORY` VALUES (57,"文件执行","V12.3", '',57, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (235,NULL,"V12.3.1","验证系统或框架文件系统不直接使用用户提交的文件名元数据，并且使用 URL API 来防止路径遍历。",235, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,235);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,235);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,235);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,235);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (469,'22',1,235);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (470,'',2,235);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,235);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (236,NULL,"V12.3.2","验证用户提交的文件名元数据是否经过验证或忽略，以防止通过本地文件包含（LFI） 泄露、创建、更新或删除本地文件。",236, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,236);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,236);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,236);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,236);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (471,'73',1,236);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (472,'',2,236);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,236);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (237,NULL,"V12.3.3","验证用户提交的文件名元数据是否经过验证或忽略，以防止通过远程文件包含（Remote File Inclusion，RFI）或服务器端请求伪造攻击（server - Server Side Request Forgery，SSRF）泄露或执行远程文件。",237, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,237);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,237);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,237);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,237);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (473,'98',1,237);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (474,'',2,237);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,237);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (238,NULL,"V12.3.4","验证应用程序通过验证或忽略用户提交的JSON、JSONP或URL参数中的文件名来防止反射文件下载（RFD），响应的Content-Type头应该设置为 text/plain，而Content-Disposition头应该有一个固定的文件名。",238, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,238);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,238);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,238);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,238);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (475,'641',1,238);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (476,'',2,238);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,238);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (239,NULL,"V12.3.5","验证未受信任的文件元数据不直接用于系统API或库，以防止操作系统命令注入。",239, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,239);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,239);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,239);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,239);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (477,'78',1,239);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (478,'',2,239);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,239);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (240,NULL,"V12.3.6","验证应用程序不包含或执行不可信任来源的功能，如未经验证的内容分发网络、JavaScript 库、node npm 库或服务器端 DLL。",240, _binary '',57);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,240);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,240);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,240);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,240);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (479,'',1,240);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (480,'',2,240);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,240);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (58,"文件存储","V12.4", '',58, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (241,NULL,"V12.4.1","验证从不受信任的来源获得的文件是否存储在 Web 根目录之外，并具有有限的权限。",241, _binary '',58);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,241);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,241);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,241);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,241);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (481,'552',1,241);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (482,'',2,241);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,241);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (242,NULL,"V12.4.2","验证从不受信任的来源获得的文件是否已被防病毒扫描程序扫描，以防止上传和提供已知的恶意内容。",242, _binary '',58);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,242);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,242);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,242);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,242);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (483,'509',1,242);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (484,'',2,242);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,242);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (59,"文件下载","V12.5", '',59, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (243,NULL,"V12.5.1","验证网络层是否被配置为只提供具有特定文件扩展名的文件，以防止意外信息和源代码泄漏。例如，除非有需要，应阻止提供备份文件（如.bak）、临时工作文件（如.swp）、压缩文件（.zip、.tar.gz等）以及其他编辑人员常用的扩展名。",243, _binary '',59);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,243);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,243);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,243);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,243);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (485,'552',1,243);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (486,'',2,243);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,243);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (244,NULL,"V12.5.2","验证对上传文件的直接请求永远不会作为 HTML/JavaScript 内容执行。",244, _binary '',59);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,244);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,244);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,244);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,244);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (487,'434',1,244);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (488,'',2,244);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,244);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (60,"SSRF保护","V12.6", '',60, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (245,NULL,"V12.6.1","验证 Web 或应用程序服务器是否配置了资源或系统的白名单列表，服务器可以向其发送请求或加载数据/文件。",245, _binary '',60);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,245);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,245);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,245);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (15,245);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (489,'918',1,245);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (490,'',2,245);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,245);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (61,"通用Web Service安全","V13.1", '',61, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (246,NULL,"V13.1.1","验证所有应用程序组件使用相同的编码和解析器，以避免利用不同的URI或文件解析特性的攻击（这些解析特性可能被用于SSRF和RFI攻击）。",246, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,246);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,246);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,246);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (16,"V13 - API和Web Service","API和Web Service",16,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,246);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (491,'116',1,246);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (492,'',2,246);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,246);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (247,NULL,"V13.1.2","[已删除，与 4.3.1 重复]",247, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,247);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,247);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (493,'',1,247);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (494,'',2,247);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,247);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (248,NULL,"V13.1.3","验证 API URL不公开敏感信息，例如 API 密钥、会话令牌等。",248, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,248);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,248);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,248);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,248);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (495,'598',1,248);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (496,'',2,248);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,248);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (249,NULL,"V13.1.4","验证授权决策是同时在URI（由程序性或声明性的控制器或路由安全执行）和资源层面（由基于模型的权限执行）做出的。",249, _binary '',61);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,249);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,249);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,249);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,249);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (497,'',1,249);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (498,'',2,249);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,249);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (250,NULL,"V13.1.5","验证包含意外或缺少内容类型的请求是否通过适当的响应头拒绝（HTTP 响应状态 406 Unacceptable 或 415 Unsupported Media Type）。",250, _binary '',61);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (62,"RESTful Web Service","V13.2", '',62, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (251,NULL,"V13.2.1","验证启用的RESTful HTTP方法对用户或操作来说是有效的选择，例如防止普通用户在受保护的API或资源上使用DELETE或PUT。",251, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,251);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,251);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,251);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,251);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (501,'650',1,251);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (502,'',2,251);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,251);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (252,NULL,"V13.2.2","验证 JSON 模式验证是否到位，并在接受输入之前进行验证。",252, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,252);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,252);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,252);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,252);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (503,'20',1,252);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (504,'',2,252);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,252);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (253,NULL,"V13.2.3","通过使用以下至少一项或多项来验证使用 cookie 的 RESTful Web services是否受到跨站点请求伪造（CSRF）的保护：双重提交 cookie 模式、CSRF 随机数或 Origin 请求头检查。",253, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,253);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,253);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,253);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,253);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (505,'352',1,253);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (506,'',2,253);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,253);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (254,NULL,"V13.2.4","[已删除，与 11.1.4 重复]",254, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,254);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,254);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (507,'',1,254);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (508,'',2,254);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,254);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (255,NULL,"V13.2.5","验证REST服务明确检查传入的Content-Type是否为预期类型，如application/xml或application/json。",255, _binary '',62);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,255);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,255);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,255);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,255);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (509,'',1,255);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (510,'',2,255);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,255);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (256,NULL,"V13.2.6","验证消息头和有效载荷是可信的，在传输过程中没有被修改。在许多情况下，要求对传输进行强加密（仅TLS）可能就足够了，因为它同时提供保密性和完整性保护。每条信息的数字签名可以在传输保护的基础上，为高安全性的应用提供额外的保证，但也带来了额外的复杂性和风险，需要权衡利弊。",256, _binary '',62);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (63,"SOAP Web Service","V13.3", '',63, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (257,NULL,"V13.3.1","验证是否进行了 XSD 模式验证以确保 XML 文档格式正确，然后在对该数据进行任何处理之前验证每个输入字段。",257, _binary '',63);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,257);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,257);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,257);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,257);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (513,'20',1,257);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (514,'',2,257);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,257);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (258,NULL,"V13.3.2","验证消息负载是否使用 WS-Security 进行签名，以确保客户端和service之间的可靠传输。",258, _binary '',63);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,258);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,258);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,258);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (16,258);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (515,'',1,258);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (516,'',2,258);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,258);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (64,"GraphQL","V13.4", '',64, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (259,NULL,"V13.4.1","验证是否使用查询白名单或深度和数量限制的组合，来防止昂贵的嵌套查询，导致对 GraphQL 或数据层表达式的拒绝服务（DoS）。对于更高级的场景，应该使用查询成本分析。",259, _binary '',64);
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
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (260,NULL,"V13.4.2","验证 GraphQL 或其他数据层的授权逻辑应在业务逻辑层，而不是 GraphQL 层实现。",260, _binary '',64);
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
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (65,"构建和部署","V14.1", '',65, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (261,NULL,"V14.1.1","验证应用程序的构建和部署过程是以安全和可重复的方式进行的，如 CI / CD 自动化、自动配置管理和自动部署脚本。",261, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,261);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,261);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,261);
-- ASVS Chapter
INSERT INTO `COLLECTIONINSTANCE` VALUES (17,"V14 - 配置","配置",17,_binary '', 1);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,261);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (521,'',1,261);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (522,'',2,261);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,261);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (262,NULL,"V14.1.2","验证编译器标志的配置是否配置为启用所有可用的缓冲区溢出保护和警告，包括堆栈随机化、数据执行保护，并在发现不安全的指针、内存、格式字符串、整数或字符串操作时中断构建。",262, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,262);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,262);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,262);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,262);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (523,'',1,262);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (524,'',2,262);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,262);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (263,NULL,"V14.1.3","验证服务器配置是否按照应用程序服务器和所使用框架的建议进行了加固。",263, _binary '',65);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (264,NULL,"V14.1.4","验证应用程序、配置和所有依赖项是否可以使用自动部署脚本重新部署、在合理的时间内根据记录和测试的运行手册构建，或者及时从备份中恢复。",264, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,264);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,264);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,264);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,264);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (527,'',1,264);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (528,'',2,264);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,264);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (265,NULL,"V14.1.5","验证授权管理员可以验证所有安全相关配置的完整性，以发现篡改行为。",265, _binary '',65);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,265);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,265);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,265);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (529,'',1,265);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (530,'',2,265);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,265);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (66,"依赖","V14.2", '',66, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (266,NULL,"V14.2.1","验证所有组件都是最新的，最好是在构建或编译时使用依赖检查工具。 ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",266, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,266);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,266);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,266);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,266);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (531,'1026',1,266);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (532,'',2,266);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,266);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (267,NULL,"V14.2.2","验证所有不需要的功能、文档、示例应用程序和配置均已被删除。",267, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,267);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,267);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,267);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,267);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (533,'1002',1,267);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (534,'',2,267);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,267);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (268,NULL,"V14.2.3","应用资产，例如JavaScript库、CSS或网页字体，如果被托管在外部的内容分发网络（CDN）或供应商，则验证使用子资源完整性（SRI）来验证该资产的完整性。",268, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,268);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,268);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,268);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,268);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (535,'829',1,268);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (536,'',2,268);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,268);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (269,NULL,"V14.2.4","验证第三方组件来自预先定义的、可信的和持续维护的资源库。 ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",269, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,269);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,269);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,269);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,269);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (537,'',1,269);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (538,'',2,269);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,269);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (270,NULL,"V14.2.5","验证是否维护了正在使用中的所有第三方库的软件材料清单（SBOM）。 ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",270, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,270);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,270);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,270);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,270);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (539,'',1,270);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (540,'',2,270);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,270);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (271,NULL,"V14.2.6","验证通过沙盒或封装第三方库来减少攻击面，只将必需的行为暴露在应用程序中。 ([C2](https://owasp.org/www-project-proactive-controls/#div-numbering))",271, _binary '',66);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,271);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,271);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,271);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,271);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (541,'',1,271);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (542,'',2,271);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,271);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (67,"意外安全泄露","V14.3", '',67, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (272,NULL,"V14.3.1","[已删除，与 7.4.1 重复]",272, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,272);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,272);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (543,'',1,272);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (544,'',2,272);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,272);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (273,NULL,"V14.3.2","验证Web或应用服务器和应用框架的调试模式在生产中是否被禁用，以消除调试功能、开发人员控制台和非预期的安全披露。",273, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,273);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,273);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,273);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,273);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (545,'497',1,273);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (546,'',2,273);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,273);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (274,NULL,"V14.3.3","验证HTTP标头或HTTP响应的任何部分不暴露系统组件的详细版本信息。",274, _binary '',67);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,274);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,274);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,274);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,274);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (547,'200',1,274);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (548,'',2,274);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,274);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (68,"HTTP 安全标头","V14.4", '',68, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (275,NULL,"V14.4.1","验证每个HTTP响应都包含一个 Content-Type 头。如果内容类型是 text/* 、 /+xml 和 application/xml ，还要指定一个安全的字符集（如UTF-8，ISO-8859-1）。内容必须与提供的Content-Type头相匹配。",275, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,275);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,275);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,275);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,275);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (549,'173',1,275);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (550,'',2,275);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,275);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (276,NULL,"V14.4.2","验证所有 API 响应是否包含 Content-Disposition: attachment; filename='api.json' 标头（或内容类型的其他适当文件名）。",276, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,276);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,276);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,276);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,276);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (551,'116',1,276);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (552,'',2,276);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,276);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (277,NULL,"V14.4.3","验证内容安全策略（CSP）响应标头是否到位，有助于减轻对 HTML、DOM、JSON 和 JavaScript 注入漏洞等 XSS 攻击的影响。",277, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,277);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,277);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,277);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,277);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (553,'1021',1,277);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (554,'',2,277);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,277);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (278,NULL,"V14.4.4","验证所有响应是否包含 X-Content-Type-Options: nosniff 标头。",278, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,278);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,278);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,278);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,278);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (555,'116',1,278);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (556,'',2,278);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,278);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (279,NULL,"V14.4.5","验证所有响应和所有子域中是否包含 Strict-Transport-Security 标头，例如 Strict-Transport-Security: max-age=15724800; includeSubdomains。",279, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,279);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,279);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,279);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,279);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (557,'523',1,279);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (558,'',2,279);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,279);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (280,NULL,"V14.4.6","验证是否包含合适的 Referrer-Policy 标头，以避免通过 Referer 标头将 URL 中的敏感信息暴露给不受信任的各方。",280, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,280);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,280);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,280);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,280);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (559,'116',1,280);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (560,'',2,280);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,280);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (281,NULL,"V14.4.7","验证网络应用程序的内容在默认情况下不能被嵌入第三方网站，只有在必要时，才允许使用合适的Content-Security-Policy: frame-ancestors和X-Frame-Options响应头嵌入确切的资源。",281, _binary '',68);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,281);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,281);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,281);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,281);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (561,'1021',1,281);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (562,'',2,281);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,281);
-- ASVS Section
INSERT INTO `REQCATEGORY` VALUES (69,"HTTP 请求头验证","V14.5", '',69, _binary '');
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (282,NULL,"V14.5.1","验证应用服务器只接受应用/API使用的HTTP方法，包括预检请求的OPTIONS，并对使应用上下文无效的请求进行记录/警告。",282, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,282);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,282);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,282);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,282);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (563,'749',1,282);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (564,'',2,282);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,282);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (283,NULL,"V14.5.2","验证提供的 Origin 标头是否不用于身份验证或访问控制决策，因为 Origin 标头很容易被攻击者更改。",283, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,283);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,283);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,283);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,283);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (565,'346',1,283);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (566,'',2,283);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,283);
-- Requirement Skeleton
INSERT INTO `REQUIREMENTSKELETON` VALUES (284,NULL,"V14.5.3","验证跨域资源共享（CORS）的 Access-Control-Allow-Origin 标头是否使用受信任域和子域的严格白名单匹配。并且不支持'null'源。",284, _binary '',69);
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
INSERT INTO `REQUIREMENTSKELETON` VALUES (285,NULL,"V14.5.4","验证由受信任的代理或 SSO 设备添加的 HTTP 标头（例如bearer令牌）是否已通过应用程序的身份验证。",285, _binary '',69);
-- Link ASVS Levels
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (1,285);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (2,285);
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (3,285);
-- Link ASVS Chapter
INSERT INTO `REQUIREMENTSKELETON_COLLECTIONINSTANCE` VALUES (17,285);
-- Link CWE Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (569,'',1,285);
-- Link NIST Reference
INSERT INTO `OPTCOLUMNCONTENT` VALUES (570,'',2,285);
-- Link Project Type
INSERT INTO `REQUIREMENTSKELETON_PROJECTTYPE` VALUES (1,285);

SET FOREIGN_KEY_CHECKS=1;
-- EOF
