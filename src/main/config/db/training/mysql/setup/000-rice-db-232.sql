DROP DATABASE IF EXISTS ricetraining;
CREATE DATABASE ricetraining;

GRANT ALL on ricetraining.* to 'ricetraining'@'localhost' IDENTIFIED BY 'ricetraining';
GRANT ALL on ricetraining.* to 'ricetraining'@'%' IDENTIFIED BY 'ricetraining';

USE `ricetraining`;

-- MySQL dump 10.13  Distrib 5.5.16, for osx10.5 (i386)
--
-- Host: localhost    Database: ricetraining
-- ------------------------------------------------------
-- Server version	5.5.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `KRNS_PESSIMISTIC_LOCK_T`
--

DROP TABLE IF EXISTS `KRNS_PESSIMISTIC_LOCK_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_PESSIMISTIC_LOCK_T` (
  `PESSIMISTIC_LOCK_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `LOCK_DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `GNRT_DT` datetime NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `SESN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT 'undefined',
  PRIMARY KEY (`PESSIMISTIC_LOCK_ID`),
  UNIQUE KEY `KRNS_PESSIMISTIC_LOCK_TC0` (`OBJ_ID`),
  KEY `KRNS_PESSIMISTIC_LOCK_TI1` (`DOC_HDR_ID`),
  KEY `KRNS_PESSIMISTIC_LOCK_TI2` (`PRNCPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_PESSIMISTIC_LOCK_T`
--

LOCK TABLES `KRNS_PESSIMISTIC_LOCK_T` WRITE;
/*!40000 ALTER TABLE `KRNS_PESSIMISTIC_LOCK_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_PESSIMISTIC_LOCK_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ROLE_PERM_T`
--

DROP TABLE IF EXISTS `KRIM_PND_ROLE_PERM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ROLE_PERM_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_PERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ROLE_PERM_T`
--

LOCK TABLES `KRIM_PND_ROLE_PERM_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_PERM_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_PERM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_TYP_ID_S`
--

DROP TABLE IF EXISTS `KRIM_TYP_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_TYP_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_TYP_ID_S`
--

LOCK TABLES `KRIM_TYP_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_TYP_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_TYP_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_ATTR_T`
--

DROP TABLE IF EXISTS `KREW_RULE_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_ATTR_T` (
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `LBL` varchar(2000) COLLATE utf8_bin NOT NULL,
  `RULE_ATTR_TYP_CD` varchar(2000) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `CLS_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `XML` longtext COLLATE utf8_bin,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `APPL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_ATTR_ID`),
  UNIQUE KEY `KREW_RULE_ATTR_TC0` (`OBJ_ID`),
  UNIQUE KEY `KREW_RULE_ATTR_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_ATTR_T`
--

LOCK TABLES `KREW_RULE_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_ATTR_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_ATTR_T` VALUES ('1000','RuleRoutingAttribute','Rule Routing Attribute','RuleAttribute','Rule Routing Attribute','org.kuali.rice.kew.rule.RuleRoutingAttribute',NULL,3,NULL,'6166CBA1B94F644DE0404F8189D86C09'),('1003','NotificationCustomActionListAttribute','Notification  Action List Attribute','ActionListAttribute','Notification Action List Attribute','org.kuali.rice.ken.kew.NotificationCustomActionListAttribute',NULL,2,NULL,'6166CBA1B952644DE0404F8189D86C09'),('1004','NotificationChannelSearchableAttribute','Notification Channel','SearchableXmlAttribute','The associated channel that this message was sent on.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationChannel\" title=\"Notification Channel\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/channel/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B953644DE0404F8189D86C09'),('1005','NotificationPrioritySearchableAttribute','Notification Priority','SearchableXmlAttribute','The priority of this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationPriority\" title=\"Notification Priority\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/priority/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B954644DE0404F8189D86C09'),('1006','NotificationContentTypeSearchableAttribute','Notification Content Type','SearchableXmlAttribute','The content type of this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationContentType\" title=\"Notification Content Type\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/contentType/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B955644DE0404F8189D86C09'),('1007','NotificationProducerSearchableAttribute','Notification Producer','SearchableXmlAttribute','The producer of this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationProducer\" title=\"Notification Producer\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification/producer/name)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B956644DE0404F8189D86C09'),('1008','NotificationRecipientsSearchableAttribute','Notification Recipient','SearchableXmlAttribute','Those who are receiving this notification.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationRecipients\" title=\"Notification Recipients\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification//recipients)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B957644DE0404F8189D86C09'),('1009','NotificationSendersSearchableAttribute','Notification Senders','SearchableXmlAttribute','Those who this notification is being sent on behalf of.','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n              <fieldDef name=\"notificationSenders\" title=\"Notification Senders\">\n                  <display>\n                      <type>text</type>\n                  </display>\n                  <validation required=\"false\"/>\n                  <fieldEvaluation>\n                      <xpathexpression>string(/documentContent/applicationContent/notification//senders)</xpathexpression>\n                  </fieldEvaluation>\n              </fieldDef>\n           </searchingConfig>',1,NULL,'6166CBA1B958644DE0404F8189D86C09'),('1010','ChannelReviewerRoleAttribute','Channel Reviewer Role Attribute','RuleAttribute','Channel Reviewer Role Attribute','org.kuali.rice.ken.kew.ChannelReviewerRoleAttribute',NULL,1,NULL,'6166CBA1B959644DE0404F8189D86C09'),('1011','DestinationAttribute','Department of Prudence Routing','RuleAttribute','Department of Prudence Routing','edu.sampleu.travel.workflow.DestinationRuleAttribute',NULL,1,'TRAVEL','6166CBA1B95A644DE0404F8189D86C09'),('1012','EmployeeAttribute','Employee Routing','RuleAttribute','Employee Routing','edu.sampleu.travel.workflow.EmployeeAttribute',NULL,1,'TRAVEL','6166CBA1B95B644DE0404F8189D86C09'),('1013','AccountAttribute','AccountAttribute','RuleAttribute','AccountAttribute','edu.sampleu.travel.workflow.AccountAttribute',NULL,2,NULL,'6166CBA1B95C644DE0404F8189D86C09'),('1014','TravelAccountDocumentAccountNumberAttribute','Account Number Attribute','SearchableXmlAttribute','The search attribute used to find documents by account number.','org.kuali.rice.krad.workflow.attribute.KualiXmlSearchableAttributeImpl','<searchingConfig>\n                <fieldDef name=\"accountNumber\" title=\"kuali_dd_label(TravelAccount)\">\n                    <display>\n                        <type>text</type>\n                    </display>\n                    <validation required=\"false\"/>\n                    <fieldEvaluation>\n                        <xpathexpression>wf:xstreamsafe(\'//newMaintainableObject/businessObject/number\')</xpathexpression>\n                    </fieldEvaluation>\n                </fieldDef>\n            </searchingConfig>',1,NULL,'6166CBA1B95D644DE0404F8189D86C09'),('1100','EDL.Campus.Example','EDL Campus Routing','RuleXmlAttribute','EDL School Routing','org.kuali.rice.kew.rule.xmlrouting.StandardGenericXMLRuleAttribute','<routingConfig>\n        <fieldDef name=\"campus\" title=\"Campus\" workflowType=\"ALL\">\n          <display>\n            <type>select</type>\n            <values title=\"IUB\">IUB</values>\n            <values title=\"IUPUI\">IUPUI</values>\n          </display>\n          <validation required=\"false\"/>\n          <fieldEvaluation>\n            <xpathexpression>//campus = wf:ruledata(\'campus\')</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n        <xmlDocumentContent>\n          <campus>%campus%</campus>\n        </xmlDocumentContent>\n      </routingConfig>',2,NULL,'6166CBA1B95F644DE0404F8189D86C09'),('1133','FiscalOfficer','foo','RuleAttribute','foo','edu.sampleu.travel.workflow.AccountAttribute',NULL,2,NULL,'6166CBA1B96D644DE0404F8189D86C09'),('1232','LoadTestActionListAttribute','LoadTestActionListAttribute','ActionListAttribute','LoadTestActionListAttribute','components.LoadTestActionListAttibute',NULL,1,NULL,'6166CBA1B9C4644DE0404F8189D86C09'),('1233','XMLSearchableAttribute','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"givenname\" title=\"First name\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition autoWildcardLocation=\"prefixonly\"/>\n          <validation required=\"true\">\n            <regex>^[a-zA-Z ]+$</regex>\n            <message>Invalid first name</message>\n          </validation>\n          <fieldEvaluation>\n            <xpathexpression>//givenname/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C5644DE0404F8189D86C09'),('1234','XMLSearchableAttribute_CaseInsensitive','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"givenname_nocase\" title=\"First name\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition autoWildcardLocation=\"prefixonly\" caseSensitive=\"false\"/>\n          <validation required=\"true\">\n            <regex>^[a-zA-Z ]+$</regex>\n            <message>Invalid first name</message>\n          </validation>\n          <fieldEvaluation>\n            <xpathexpression>//givenname/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C6644DE0404F8189D86C09'),('1235','XMLSearchableAttributeStdLong','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testLongKey\" title=\"Certain Long Value\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition allowWildcards=\"true\" autoWildcardLocation=\"suffixOnly\" dataType=\"long\"/>\n          <fieldEvaluation>\n            <xpathexpression>//testLongKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C7644DE0404F8189D86C09'),('1236','XMLSearchableAttributeStdFloat','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testFloatKey\" title=\"Float in the Water\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition dataType=\"float\"/>\n          <fieldEvaluation>\n            <xpathexpression>//testFloatKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C8644DE0404F8189D86C09'),('1237','XMLSearchableAttributeStdCurrency','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testCurrencyKey\" title=\"Dollars Here\">\n          <display>\n            <type>text</type>\n            <parameters name=\"displayFormatPattern\">#.00</parameters>\n          </display>\n          <searchDefinition dataType=\"float\"/>\n          <fieldEvaluation>\n            <xpathexpression>//testCurrencyKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9C9644DE0404F8189D86C09'),('1238','XMLSearchableAttributeStdDateTime','XML Searchable attribute','SearchableXmlAttribute','XML Searchable attribute','org.kuali.rice.kew.docsearch.xml.StandardGenericXMLSearchableAttribute','<searchingConfig>\n        <fieldDef name=\"testDateTimeKey\" title=\"Searchable Date Field\">\n          <display>\n            <type>text</type>\n          </display>\n          <searchDefinition dataType=\"datetime\" datePicker=\"false\"/>\n          <fieldEvaluation>\n            <xpathexpression>//putWhateverWordsIwantInsideThisTag/testDateTimeKey/value</xpathexpression>\n          </fieldEvaluation>\n        </fieldDef>\n      </searchingConfig>',1,NULL,'6166CBA1B9CA644DE0404F8189D86C09');
/*!40000 ALTER TABLE `KREW_RULE_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_SCHEDULER_STATE` (
  `INSTANCE_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LAST_CHECKIN_TIME` decimal(13,0) NOT NULL,
  `CHECKIN_INTERVAL` decimal(13,0) NOT NULL,
  PRIMARY KEY (`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `KRSB_QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_INPUT_SPEC_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_INPUT_SPEC_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_INPUT_SPEC_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_INPUT_SPEC_S`
--

LOCK TABLES `KRMS_TERM_RSLVR_INPUT_SPEC_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_INPUT_SPEC_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_INPUT_SPEC_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_AUTHOR_ACCOUNT_T`
--

DROP TABLE IF EXISTS `BK_AUTHOR_ACCOUNT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_AUTHOR_ACCOUNT_T` (
  `AUTHOR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `ACCOUNT_NUMBER` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `BANK_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_AUTHOR_ACCOUNT_T`
--

LOCK TABLES `BK_AUTHOR_ACCOUNT_T` WRITE;
/*!40000 ALTER TABLE `BK_AUTHOR_ACCOUNT_T` DISABLE KEYS */;
INSERT INTO `BK_AUTHOR_ACCOUNT_T` VALUES (1,'123123123123123','Money Deposit Bank Ltd'),(2,'123123456456456','Money Deposit Bank Ltd');
/*!40000 ALTER TABLE `BK_AUTHOR_ACCOUNT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_RSP_TMPL_ID_S`
--

DROP TABLE IF EXISTS `KRIM_RSP_TMPL_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_RSP_TMPL_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_RSP_TMPL_ID_S`
--

LOCK TABLES `KRIM_RSP_TMPL_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_RSP_TMPL_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_RSP_TMPL_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_INPUT_SPEC_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_INPUT_SPEC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_INPUT_SPEC_T` (
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TERM_SPEC_ID`,`TERM_RSLVR_ID`),
  KEY `KRMS_INPUT_ASSET_TI1` (`TERM_SPEC_ID`),
  KEY `KRMS_INPUT_ASSET_TI2` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_INPUT_ASSET_FK1` FOREIGN KEY (`TERM_RSLVR_ID`) REFERENCES `KRMS_TERM_RSLVR_T` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_INPUT_ASSET_FK2` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `KRMS_TERM_SPEC_T` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_INPUT_SPEC_T`
--

LOCK TABLES `KRMS_TERM_RSLVR_INPUT_SPEC_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_INPUT_SPEC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_INPUT_SPEC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_NTE_T`
--

DROP TABLE IF EXISTS `KRNS_NTE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_NTE_T` (
  `NTE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `RMT_OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `AUTH_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `POST_TS` datetime NOT NULL,
  `NTE_TYP_CD` varchar(4) COLLATE utf8_bin NOT NULL,
  `TXT` varchar(800) COLLATE utf8_bin DEFAULT NULL,
  `PRG_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `TPC_TXT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTE_ID`),
  UNIQUE KEY `KRNS_NTE_TC0` (`OBJ_ID`),
  KEY `KRNS_NTE_TI1` (`RMT_OBJ_ID`),
  KEY `KRNS_NTE_TR1` (`NTE_TYP_CD`),
  CONSTRAINT `KRNS_NTE_TR1` FOREIGN KEY (`NTE_TYP_CD`) REFERENCES `KRNS_NTE_TYP_T` (`NTE_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_NTE_T`
--

LOCK TABLES `KRNS_NTE_T` WRITE;
/*!40000 ALTER TABLE `KRNS_NTE_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_NTE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_NTE_S`
--

DROP TABLE IF EXISTS `KRNS_NTE_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_NTE_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_NTE_S`
--

LOCK TABLES `KRNS_NTE_S` WRITE;
/*!40000 ALTER TABLE `KRNS_NTE_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_NTE_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_EMAIL_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_EMAIL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_EMAIL_T` (
  `ENTITY_EMAIL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ADDR` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_EMAIL_ID`),
  UNIQUE KEY `KRIM_ENTITY_EMAIL_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_EMAIL_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_EMAIL_TR1` (`ENT_TYP_CD`,`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_EMAIL_TR1` FOREIGN KEY (`ENT_TYP_CD`, `ENTITY_ID`) REFERENCES `KRIM_ENTITY_ENT_TYP_T` (`ENT_TYP_CD`, `ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_EMAIL_T`
--

LOCK TABLES `KRIM_ENTITY_EMAIL_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMAIL_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENTITY_EMAIL_T` VALUES ('1200','5B97C50B04066110E0404F8189D85213',1,'1100','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:55'),('1201','5B97C50B04076110E0404F8189D85213',1,'1101','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1202','5B97C50B04086110E0404F8189D85213',1,'1102','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1203','5B97C50B04096110E0404F8189D85213',1,'1103','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1204','5B97C50B040A6110E0404F8189D85213',1,'1104','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1205','5B97C50B040B6110E0404F8189D85213',1,'1105','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1206','5B97C50B040C6110E0404F8189D85213',1,'1106','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:56'),('1207','5B97C50B040D6110E0404F8189D85213',1,'1107','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1208','5B97C50B040E6110E0404F8189D85213',1,'1108','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1209','5B97C50B040F6110E0404F8189D85213',1,'1109','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1210','5B97C50B04106110E0404F8189D85213',1,'1110','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1211','5B97C50B04116110E0404F8189D85213',1,'1111','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1212','5B97C50B04126110E0404F8189D85213',1,'1112','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:57'),('1213','5B97C50B04136110E0404F8189D85213',1,'1113','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1214','5B97C50B04146110E0404F8189D85213',1,'1114','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1215','5B97C50B04156110E0404F8189D85213',1,'1115','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1216','5B97C50B04166110E0404F8189D85213',1,'1116','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1217','5B97C50B04176110E0404F8189D85213',1,'1117','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1218','5B97C50B04186110E0404F8189D85213',1,'1118','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:58'),('1219','5B97C50B04196110E0404F8189D85213',1,'1119','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1220','5B97C50B041A6110E0404F8189D85213',1,'1120','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1221','5B97C50B041B6110E0404F8189D85213',1,'1121','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1222','5B97C50B041C6110E0404F8189D85213',1,'1122','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1223','5B97C50B041D6110E0404F8189D85213',1,'1123','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1224','5B97C50B041E6110E0404F8189D85213',1,'1124','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1225','5B97C50B041F6110E0404F8189D85213',1,'1125','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:06:59'),('1226','5B97C50B04206110E0404F8189D85213',1,'1126','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1227','5B97C50B04216110E0404F8189D85213',1,'1127','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1228','5B97C50B04226110E0404F8189D85213',1,'1128','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1229','5B97C50B04236110E0404F8189D85213',1,'1129','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1230','5B97C50B04246110E0404F8189D85213',1,'1130','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1231','5B97C50B04256110E0404F8189D85213',1,'1131','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:00'),('1232','5B97C50B04266110E0404F8189D85213',1,'1132','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1233','5B97C50B04276110E0404F8189D85213',1,'1133','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1234','5B97C50B04286110E0404F8189D85213',1,'1134','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1235','5B97C50B04296110E0404F8189D85213',1,'1135','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01'),('1237','5B97C50B042B6110E0404F8189D85213',1,'1137','PERSON','WRK','test@email.edu','Y','Y','2008-11-13 14:07:01');
/*!40000 ALTER TABLE `KRIM_ENTITY_EMAIL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_GRP_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_GRP_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_ATTR_DATA_T` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_GRP_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_GRP_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_GRP_ATTR_DATA_TR3` (`GRP_ID`),
  KEY `KRIM_GRP_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_GRP_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `KRIM_ATTR_DEFN_T` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_GRP_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_GRP_ATTR_DATA_TR3` FOREIGN KEY (`GRP_ID`) REFERENCES `KRIM_GRP_T` (`GRP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_ATTR_DATA_T`
--

LOCK TABLES `KRIM_GRP_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_ATTR_DATA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_GRP_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_HDR_S`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3010 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_S`
--

LOCK TABLES `KREW_DOC_HDR_S` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_HDR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_HDR_T`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_T` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `RTE_LVL` decimal(8,0) NOT NULL,
  `STAT_MDFN_DT` datetime NOT NULL,
  `CRTE_DT` datetime NOT NULL,
  `APRV_DT` datetime DEFAULT NULL,
  `FNL_DT` datetime DEFAULT NULL,
  `RTE_STAT_MDFN_DT` datetime DEFAULT NULL,
  `TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_VER_NBR` decimal(8,0) NOT NULL,
  `INITR_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `RTE_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DTYPE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `APP_DOC_STAT` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_STAT_MDFN_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KREW_DOC_HDR_TC0` (`OBJ_ID`),
  KEY `KREW_DOC_HDR_T10` (`APP_DOC_STAT`),
  KEY `KREW_DOC_HDR_T12` (`APP_DOC_STAT_MDFN_DT`),
  KEY `KREW_DOC_HDR_TI1` (`DOC_TYP_ID`),
  KEY `KREW_DOC_HDR_TI2` (`INITR_PRNCPL_ID`),
  KEY `KREW_DOC_HDR_TI3` (`DOC_HDR_STAT_CD`),
  KEY `KREW_DOC_HDR_TI4` (`TTL`),
  KEY `KREW_DOC_HDR_TI5` (`CRTE_DT`),
  KEY `KREW_DOC_HDR_TI6` (`RTE_STAT_MDFN_DT`),
  KEY `KREW_DOC_HDR_TI7` (`APRV_DT`),
  KEY `KREW_DOC_HDR_TI8` (`FNL_DT`),
  KEY `KREW_DOC_HDR_TI9` (`APP_DOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_T`
--

LOCK TABLES `KREW_DOC_HDR_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_HDR_T` VALUES ('2160','2012','I',0,'2008-08-28 14:11:43','2008-08-28 14:11:43',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1B9F9644DE0404F8189D86C09',NULL,NULL),('2161','2012','I',0,'2008-08-28 14:13:28','2008-08-28 14:13:28',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1B9FA644DE0404F8189D86C09',NULL,NULL),('2220','2012','I',0,'2008-09-19 18:04:35','2008-09-19 18:04:35',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA06644DE0404F8189D86C09',NULL,NULL),('2221','2012','I',0,'2008-09-19 18:06:30','2008-09-19 18:06:30',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA07644DE0404F8189D86C09',NULL,NULL),('2222','2012','I',0,'2008-09-19 18:07:36','2008-09-19 18:07:36',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA08644DE0404F8189D86C09',NULL,NULL),('2223','2012','I',0,'2008-09-19 18:10:23','2008-09-19 18:10:23',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA09644DE0404F8189D86C09',NULL,NULL),('2224','2012','I',0,'2008-09-19 18:11:39','2008-09-19 18:11:39',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA0A644DE0404F8189D86C09',NULL,NULL),('2300','2012','I',0,'2008-09-26 10:59:24','2008-09-26 10:59:24',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA11644DE0404F8189D86C09',NULL,NULL),('2340','2012','I',0,'2008-09-30 17:17:10','2008-09-30 17:17:10',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA12644DE0404F8189D86C09',NULL,NULL),('2380','2029','I',0,'2008-10-01 09:01:21','2008-10-01 09:01:21',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA13644DE0404F8189D86C09',NULL,NULL),('2381','2029','R',0,'2008-10-01 09:05:18','2008-10-01 09:01:51',NULL,NULL,'2008-10-01 09:05:18','New TravelAccount - test ',NULL,1,'admin',7,NULL,'DocumentRouteHeaderValue','6166CBA1BA14644DE0404F8189D86C09',NULL,NULL),('2382','2029','R',0,'2008-10-01 09:07:34','2008-10-01 09:06:57',NULL,NULL,'2008-10-01 09:07:34','New TravelAccount - test ',NULL,1,'admin',7,NULL,'DocumentRouteHeaderValue','6166CBA1BA15644DE0404F8189D86C09',NULL,NULL),('2383','2029','R',0,'2008-10-01 09:11:39','2008-10-01 09:09:19',NULL,NULL,'2008-10-01 09:11:39','New TravelAccount - a5 ',NULL,1,'admin',7,NULL,'DocumentRouteHeaderValue','6166CBA1BA16644DE0404F8189D86C09',NULL,NULL),('2384','2029','F',0,'2008-10-01 09:17:11','2008-10-01 09:16:39','2008-10-01 09:17:09','2008-10-01 09:17:11','2008-10-01 09:17:11','New TravelAccount - asdf ',NULL,1,'admin',8,NULL,'DocumentRouteHeaderValue','6166CBA1BA17644DE0404F8189D86C09',NULL,NULL),('2385','2029','I',0,'2008-10-01 09:17:39','2008-10-01 09:17:39',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA18644DE0404F8189D86C09',NULL,NULL),('2386','2029','I',0,'2008-10-01 09:20:52','2008-10-01 09:20:52',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA19644DE0404F8189D86C09',NULL,NULL),('2392','2029','F',0,'2008-10-01 09:50:07','2008-10-01 09:49:23','2008-10-01 09:50:05','2008-10-01 09:50:07','2008-10-01 09:50:07','New TravelAccount - a8 ',NULL,1,'admin',8,NULL,'DocumentRouteHeaderValue','6166CBA1BA1F644DE0404F8189D86C09',NULL,NULL),('2394','2029','F',0,'2008-10-01 09:54:42','2008-10-01 09:54:02','2008-10-01 09:54:39','2008-10-01 09:54:42','2008-10-01 09:54:42','New TravelAccount - asdf ',NULL,1,'admin',8,NULL,'DocumentRouteHeaderValue','6166CBA1BA21644DE0404F8189D86C09',NULL,NULL),('2395','2029','I',0,'2008-10-01 09:54:58','2008-10-01 09:54:58',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA22644DE0404F8189D86C09',NULL,NULL),('2406','2029','F',0,'2008-10-01 10:49:50','2008-10-01 10:48:18','2008-10-01 10:49:46','2008-10-01 10:49:50','2008-10-01 10:49:50','New TravelAccount - a14 ',NULL,1,'admin',8,NULL,'DocumentRouteHeaderValue','6166CBA1BA2A644DE0404F8189D86C09',NULL,NULL),('2409','2034','I',0,'2008-10-01 10:57:09','2008-10-01 10:57:09',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,'DocumentRouteHeaderValue','6166CBA1BA2D644DE0404F8189D86C09',NULL,NULL),('2410','2034','F',0,'2008-10-01 11:00:51','2008-10-01 10:57:58','2008-10-01 11:00:48','2008-10-01 11:00:51','2008-10-01 11:00:51','New Parameter - sadf ',NULL,1,'admin',7,NULL,'DocumentRouteHeaderValue','6166CBA1BA2E644DE0404F8189D86C09',NULL,NULL),('2460','2012','I',0,'2008-10-22 19:42:13','2008-10-22 19:42:13',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA30644DE0404F8189D86C09',NULL,NULL),('2540','2029','I',0,'2008-11-03 09:23:39','2008-11-03 09:23:39',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA3C644DE0404F8189D86C09',NULL,NULL),('2541','2029','I',0,'2008-11-03 09:25:05','2008-11-03 09:25:05',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA3D644DE0404F8189D86C09',NULL,NULL),('2545','2029','I',0,'2008-11-03 10:05:58','2008-11-03 10:05:58',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA3E644DE0404F8189D86C09',NULL,NULL),('2546','2029','I',0,'2008-11-03 10:09:00','2008-11-03 10:09:00',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA3F644DE0404F8189D86C09',NULL,NULL),('2560','2029','I',0,'2008-11-03 15:26:51','2008-11-03 15:26:51',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA40644DE0404F8189D86C09',NULL,NULL),('2561','2029','I',0,'2008-11-03 15:29:12','2008-11-03 15:29:12',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA41644DE0404F8189D86C09',NULL,NULL),('2684','2683','I',0,'2008-12-22 11:47:53','2008-12-22 11:47:53',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA4F644DE0404F8189D86C09',NULL,NULL),('2685','2683','I',0,'2008-12-22 11:49:12','2008-12-22 11:49:12',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA50644DE0404F8189D86C09',NULL,NULL),('2686','2683','I',0,'2008-12-22 11:55:43','2008-12-22 11:55:43',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA51644DE0404F8189D86C09',NULL,NULL),('2687','2683','I',0,'2008-12-22 12:23:27','2008-12-22 12:23:27',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA52644DE0404F8189D86C09',NULL,NULL),('2688','2683','I',0,'2008-12-22 12:23:46','2008-12-22 12:23:46',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA53644DE0404F8189D86C09',NULL,NULL),('2689','2683','I',0,'2008-12-22 12:24:05','2008-12-22 12:24:05',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA54644DE0404F8189D86C09',NULL,NULL),('2690','2683','I',0,'2008-12-22 12:26:40','2008-12-22 12:26:40',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA55644DE0404F8189D86C09',NULL,NULL),('2691','2683','I',0,'2008-12-22 12:30:10','2008-12-22 12:30:10',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA56644DE0404F8189D86C09',NULL,NULL),('2692','2683','R',0,'2008-12-22 13:04:37','2008-12-22 13:04:12',NULL,NULL,'2008-12-22 13:04:37','Travel Doc 2 - test','1',1,'admin',5,'admin',NULL,'6166CBA1BA57644DE0404F8189D86C09',NULL,NULL),('2693','2683','R',0,'2008-12-22 13:06:22','2008-12-22 13:05:49',NULL,NULL,'2008-12-22 13:06:22','Travel Doc 2 - test',NULL,1,'admin',5,'admin',NULL,'6166CBA1BA58644DE0404F8189D86C09',NULL,NULL),('2694','2683','R',0,'2008-12-22 13:21:21','2008-12-22 13:20:55',NULL,NULL,'2008-12-22 13:21:21','Travel Doc 2 - esdf',NULL,1,'admin',5,'admin',NULL,'6166CBA1BA59644DE0404F8189D86C09',NULL,NULL),('2695','2683','P',4,'2008-12-22 13:27:10','2008-12-22 13:22:10','2008-12-22 13:27:09',NULL,'2008-12-22 13:27:10','Travel Doc 2 - dfads',NULL,1,'admin',35,'admin',NULL,'6166CBA1BA5A644DE0404F8189D86C09',NULL,NULL),('2696','2683','I',0,'2008-12-22 15:47:03','2008-12-22 15:47:03',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'6166CBA1BA5B644DE0404F8189D86C09',NULL,NULL),('2698','2683','I',0,'2009-03-17 10:01:31','2009-03-17 10:01:31',NULL,NULL,NULL,NULL,NULL,1,'admin',2,NULL,NULL,'E91F79DD-2DCD-C59F-6083-D9ABAE729C87',NULL,NULL),('2700','2699','F',0,'2009-03-17 10:12:13','2009-03-17 10:09:54','2009-03-17 10:12:12','2009-03-17 10:12:13','2009-03-17 10:12:13','Adding Rule Delegation \'User4 Destination Routing Secondary Delegation\'',NULL,1,'admin',7,NULL,NULL,'186FED4A-C32E-A69D-9ABD-14F4E6DC2393',NULL,NULL),('2701','2683','R',1,'2009-03-17 10:14:40','2009-03-17 10:14:19',NULL,NULL,'2009-03-17 10:14:38','Travel Request - test',NULL,1,'admin',11,'admin',NULL,'0E6639DF-0DC4-24C1-2D48-21014B7A22BB',NULL,NULL);
/*!40000 ALTER TABLE `KREW_DOC_HDR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_grp_mbr_v`
--

DROP TABLE IF EXISTS `krim_grp_mbr_v`;
/*!50001 DROP VIEW IF EXISTS `krim_grp_mbr_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_grp_mbr_v` (
  `NMSPC_CD` varchar(40),
  `grp_nm` varchar(80),
  `GRP_ID` varchar(40),
  `PRNCPL_NM` varchar(100),
  `PRNCPL_ID` varchar(40),
  `mbr_grp_nm` varchar(80),
  `mbr_grp_id` varchar(40)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `TRV_ACCT_FO`
--

DROP TABLE IF EXISTS `TRV_ACCT_FO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_ACCT_FO` (
  `ACCT_FO_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `ACCT_FO_USER_NAME` varchar(50) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ACCT_FO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_ACCT_FO`
--

LOCK TABLES `TRV_ACCT_FO` WRITE;
/*!40000 ALTER TABLE `TRV_ACCT_FO` DISABLE KEYS */;
INSERT INTO `TRV_ACCT_FO` VALUES (1,'fred',NULL,0),(2,'fran',NULL,0),(3,'frank',NULL,0);
/*!40000 ALTER TABLE `TRV_ACCT_FO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_rsp_role_actn_v`
--

DROP TABLE IF EXISTS `krim_rsp_role_actn_v`;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_actn_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_rsp_role_actn_v` (
  `rsp_nmspc_cd` varchar(40),
  `rsp_id` varchar(40),
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `ROLE_ID` varchar(40),
  `MBR_ID` varchar(40),
  `MBR_TYP_CD` char(1),
  `ROLE_MBR_ID` varchar(40),
  `ACTN_TYP_CD` varchar(40),
  `ACTN_PLCY_CD` varchar(40),
  `FRC_ACTN` varchar(1),
  `PRIORITY_NBR` decimal(3,0)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KRIM_ENTITY_PRIV_PREF_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_PRIV_PREF_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_PRIV_PREF_T` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `SUPPRESS_NM_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `SUPPRESS_EMAIL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_ADDR_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PHONE_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PRSNL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_PRIV_PREF_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_PRIV_PREF_T`
--

LOCK TABLES `KRIM_ENTITY_PRIV_PREF_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_PRIV_PREF_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_PRIV_PREF_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_BOOK_ID_S`
--

DROP TABLE IF EXISTS `BK_BOOK_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_BOOK_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_BOOK_ID_S`
--

LOCK TABLES `BK_BOOK_ID_S` WRITE;
/*!40000 ALTER TABLE `BK_BOOK_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `BK_BOOK_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PERM_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_PERM_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERM_ATTR_DATA_T` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PERM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_PERM_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_PERM_ATTR_DATA_TI1` (`PERM_ID`),
  KEY `KRIM_PERM_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_PERM_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_PERM_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `KRIM_ATTR_DEFN_T` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_PERM_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_PERM_ATTR_DATA_TR3` FOREIGN KEY (`PERM_ID`) REFERENCES `KRIM_PERM_T` (`PERM_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERM_ATTR_DATA_T`
--

LOCK TABLES `KRIM_PERM_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PERM_ATTR_DATA_T` DISABLE KEYS */;
INSERT INTO `KRIM_PERM_ATTR_DATA_T` VALUES ('181','5B4F09744A25EF33E0404F8189D84F24',1,'140','12','2','org.kuali.rice.kew.documentoperation.web.DocumentOperationAction'),('183','5B4F09744A27EF33E0404F8189D84F24',1,'141','12','2','org.kuali.rice.ksb.security.admin.web.JavaSecurityManagementAction'),('185','5B4F09744A29EF33E0404F8189D84F24',1,'142','12','2','org.kuali.rice.ksb.messaging.web.MessageQueueAction'),('187','5B4F09744A2BEF33E0404F8189D84F24',1,'143','12','2','org.kuali.rice.ksb.messaging.web.ServiceRegistryAction'),('189','5B4F09744A2DEF33E0404F8189D84F24',1,'144','12','2','org.kuali.rice.ksb.messaging.web.ThreadPoolAction'),('191','5B4F09744A2FEF33E0404F8189D84F24',1,'145','12','2','org.kuali.rice.ksb.messaging.web.QuartzQueueAction'),('192','5B4F09744A30EF33E0404F8189D84F24',1,'146','5','13','RiceDocument'),('193','5B4F09744A31EF33E0404F8189D84F24',1,'147','3','13','RiceDocument'),('194','5B4F09744A32EF33E0404F8189D84F24',1,'148','3','13','RiceDocument'),('195','5B4F09744A33EF33E0404F8189D84F24',1,'149','3','13','RiceDocument'),('196','5B4F09744A34EF33E0404F8189D84F24',1,'150','18','4','KR*'),('197','5B4F09744A35EF33E0404F8189D84F24',1,'151','19','4','KR*'),('198','5B4F09744A36EF33E0404F8189D84F24',1,'152','20','4','KR*'),('201','5B4F09744A39EF33E0404F8189D84F24',1,'155','21','4','KR*'),('202','5B4F09744A3AEF33E0404F8189D84F24',1,'156','3','13','RiceDocument'),('203','5B4F09744A39EF33E0404F8189D84F25',1,'833','21','4','KUALI'),('204','5B4F09744A39EF33E0404F8189D84F26',1,'834','18','4','KUALI'),('205','5B4F09744A39EF33E0404F8189D84F27',1,'835','19','4','KUALI'),('206','5B4F09744A39EF33E0404F8189D84F28',1,'836','20','4','KUALI'),('211','5B4F09744A43EF33E0404F8189D84F24',1,'161','10','4','KR*'),('213','5B4F09744A45EF33E0404F8189D84F24',1,'162','10','4','KR*'),('216','5B4F09744A48EF33E0404F8189D84F24',1,'163','16','4','KR*'),('217','5B4F09744A49EF33E0404F8189D84F24',1,'164','15','4','KR*'),('218','5B4F09744A4AEF33E0404F8189D84F24',1,'165','3','13','RiceDocument'),('219','5B4F09744A4BEF33E0404F8189D84F24',1,'166','12','4','KR*'),('220','5B4F09744A4CEF33E0404F8189D84F24',1,'167','8','13','KualiDocument'),('221','5B4F09744A4DEF33E0404F8189D84F24',1,'168','3','13','KualiDocument'),('222','5B4F09744A4EEF33E0404F8189D84F24',1,'290','8','13','RiceDocument'),('223','5B4F09744A4FEF33E0404F8189D84F24',1,'170','4','14','A'),('225','5B4F09744A51EF33E0404F8189D84F24',1,'172','4','14','F'),('226','5B4F09744A52EF33E0404F8189D84F24',1,'173','4','14','K'),('239','5B4F09744A5FEF33E0404F8189D84F24',1,'181','8','13','KualiDocument'),('240','5B4F09744A60EF33E0404F8189D84F24',1,'181','8','15','R'),('243','5B4F09744A63EF33E0404F8189D84F24',1,'183','11','5','KimPrincipalImpl'),('244','5B4F09744A64EF33E0404F8189D84F24',1,'183','11','6','password'),('249','5B6013B3AD121A9CE0404F8189D87094',1,'167','8','16','PreRoute'),('376','606763510FC496D3E0404F8189D857A2',1,'259','9','13','KualiDocument'),('379','606763510FC796D3E0404F8189D857A2',1,'261','9','13','KualiDocument'),('384','606763510FCE96D3E0404F8189D857A2',1,'264','59','13','RiceDocument'),('385','606763510FCF96D3E0404F8189D857A2',1,'264','59','8','false'),('431','6314CC58CF59B7B5E0404F8189D84439',1,'306','11','5','IdentityManagementPersonDocument'),('432','6314CC58CF5AB7B5E0404F8189D84439',1,'306','11','6','taxId'),('478','662384B381BA67A1E0404F8189D868A6',1,'332','5','13','KualiDocument'),('479','662384B381BB67A1E0404F8189D868A6',1,'332','5','14','F'),('480','662384B381BE67A1E0404F8189D868A6',1,'333','5','13','KualiDocument'),('481','662384B381BF67A1E0404F8189D868A6',1,'333','5','14','K'),('482','662384B381C267A1E0404F8189D868A6',1,'334','5','13','KualiDocument'),('483','662384B381C367A1E0404F8189D868A6',1,'334','5','14','A'),('701','A207FBACC3764793896D0D769F6DBBFF',1,'701','10','5','RuleTemplate'),('702','37F35D51EE714A8B8A66802F89626C50',1,'702','10','5','EDocLiteStyle'),('703','950DE6A28C144A9B87CA2CFD9FF337C8',1,'703','10','5','EDocLiteDefinition'),('707','D270B9BA7E494507AD0B5D184AB13479',1,'707','10','5','RuleAttribute'),('719','45EEFA6F23FD4015B927D1D19F482888',1,'719','10','5','ParameterDetailType'),('720','FFF2C6639C6041F1B148AA9901C8A1F7',1,'720','10','5','ParameterNamespace'),('721','6D489E39C0BC4890803E3A5F412297BE',1,'721','10','5','ParameterType'),('751','A3142D53EC1541BE92223181852C37CF',1,'701','10','4','KR-WKFLW'),('752','6250F01B4CA243FCBA64A93FE4EAFE83',1,'702','10','4','KR-WKFLW'),('753','E0F57E480CF646A585BC92E91AB5FB1D',1,'703','10','4','KR-WKFLW'),('757','266BD230C3AA40EB9FC8079FBB960DF0',1,'707','10','4','KR-WKFLW'),('768','160C75C4C8A3411D8856A50F38487EB2',1,'719','10','4','KR-NS'),('769','992DE7BE4C3C46F8AEDBE7925CBEE6B3',1,'720','10','4','KR-NS'),('770','330AAEB4459F4A34BBF8FECEA9E23404',1,'721','10','4','KR-NS'),('800','606763510FD296D3E0404F8189D857A2',1,'801','10','4','KR-WKFLW'),('801','606763510FD396D3E0404F8189D857A2',1,'801','10','5','RuleTemplate'),('802','606763510FD596D3E0404F8189D857A2',1,'802','10','4','KR-WKFLW'),('803','606763510FD696D3E0404F8189D857A2',1,'802','10','5','EDocLiteStyle'),('804','606763510FD896D3E0404F8189D857A2',1,'803','10','4','KR-WKFLW'),('805','606763510FD996D3E0404F8189D857A2',1,'803','10','5','EDocLiteDefinition'),('806','606763510FDB96D3E0404F8189D857A2',1,'807','10','4','KR-WKFLW'),('807','606763510FDC96D3E0404F8189D857A2',1,'807','10','5','RuleAttribute'),('814','606763510FE396D3E0404F8189D857A2',1,'814','10','5','PessimisticLock'),('819','606763510FE696D3E0404F8189D857A2',1,'819','10','5','ParameterDetailType'),('820','606763510FE996D3E0404F8189D857A2',1,'820','10','5','ParameterNamespace'),('821','606763510FEC96D3E0404F8189D857A2',1,'821','10','5','ParameterType'),('864','606763510FE296D3E0404F8189D857A2',1,'814','10','4','KR-NS'),('868','606763510FE596D3E0404F8189D857A2',1,'819','10','4','KR-NS'),('869','606763510FE896D3E0404F8189D857A2',1,'820','10','4','KR-NS'),('870','606763510FEB96D3E0404F8189D857A2',1,'821','10','4','KR-NS'),('873','606763510FF396D3E0404F8189D857A2',1,'265','12','4','KR-WKFLW'),('874','606763510FF496D3E0404F8189D857A2',1,'265','12','2','org.kuali.rice.core.web.impex.IngesterAction'),('880','ECCB8A6C-A0DA-5311-6A57-40F743EA334C',1,'840','12','2','org.kuali.rice.ksb.messaging.web.ConfigViewerAction'),('881','717e2c18-89e4-11df-98b1-1300c9ee50c1',1,'841','3','13','KualiDocument'),('882','B6FDEDA86F977F26E0402E0AA9D728AF',1,'842','12','2','org.kuali.rice.core.web.cache.CacheAdminController'),('884','aa1d1400-6155-4819-8bad-e5dd81f9871b',1,'844','56','13','TermMaintenanceDocument'),('885','c43bc7f5-949e-4a85-b173-6a53d81f2762',1,'845','56','13','ContextMaintenanceDocument'),('886','d3e373ca-296b-4834-bd66-ba159ebe733a',1,'846','56','13','TermSpecificationMaintenanceDocument'),('887','BD74D7B702AC02CEE0402E0AA9D75B2D',1,'847','8','13','RiceDocument'),('888','BFCADCB34018249AE0402E0AA9D7065D',1,'848','5','13','KualiDocument'),('889','BFCADCB34019249AE0402E0AA9D7065D',1,'848','5','14','C'),('KR1000','D0C2892F47EC9142E0406E0AC31D23D6',1,'KR1000','4','14','C'),('KR1001','E3EF4C83B4BC5C9EE0406E0AC31D4562',1,'KR1001','8','13','KualiDocument'),('KR1002','E3EF4C83B4BD5C9EE0406E0AC31D4562',1,'KR1001','8','15','I'),('KR1003','E3EF4C83B4C05C9EE0406E0AC31D4562',1,'KR1002','8','13','KualiDocument'),('KR1004','E3EF4C83B4C15C9EE0406E0AC31D4562',1,'KR1002','8','15','S'),('KRSAP882','CDD8032915D7BF1FE040F90A05B94313',1,'KRSAP10003','71','47','UifCompView*'),('KRSAP883','CDD8032915D8BF1FE040F90A05B94313',1,'KRSAP10003','71','51','UifCompView-SecureGroupView'),('KRSAP884','CDD8032915DBBF1FE040F90A05B94313',1,'KRSAP10004','71','47','UifCompView*'),('KRSAP885','CDD8032915DCBF1FE040F90A05B94313',1,'KRSAP10004','71','51','UifCompView-Page9'),('KRSAP886','CDD8032915DFBF1FE040F90A05B94313',1,'KRSAP10005','71','47','UifCompView*'),('KRSAP887','CDD8032915E0BF1FE040F90A05B94313',1,'KRSAP10005','71','51','UifCompView-SecureGroupEdit'),('KRSAP888','CDD8032915E3BF1FE040F90A05B94313',1,'KRSAP10006','70','47','UifCompView*'),('KRSAP889','CDD8032915E4BF1FE040F90A05B94313',1,'KRSAP10006','70','6','field6'),('KRSAP890','CDD8032915E7BF1FE040F90A05B94313',1,'KRSAP10007','70','47','UifCompView*'),('KRSAP891','CDD8032915E8BF1FE040F90A05B94313',1,'KRSAP10007','70','6','field7'),('KRSAP892','CDD8032915EBBF1FE040F90A05B94313',1,'KRSAP10008','70','47','UifCompView*'),('KRSAP893','CDD8032915ECBF1FE040F90A05B94313',1,'KRSAP10008','70','50','UifCompView-SecureFieldGroup1'),('KRSAP894','CDD8032915EFBF1FE040F90A05B94313',1,'KRSAP10009','70','47','UifCompView*'),('KRSAP895','CDD8032915F0BF1FE040F90A05B94313',1,'KRSAP10009','70','50','UifCompView-SecureFieldGroup2'),('KRSAP896','CDD8032915F3BF1FE040F90A05B94313',1,'KRSAP10010','73','47','UifCompView*'),('KRSAP897','CDD8032915F4BF1FE040F90A05B94313',1,'KRSAP10010','73','48','save'),('KRSAP898','CDD8032915F7BF1FE040F90A05B94313',1,'KRSAP10011','72','47','UifCompView*'),('KRSAP899','CDD8032915F8BF1FE040F90A05B94313',1,'KRSAP10011','72','52','UifCompView-SecureWidget'),('KRSAP900','CDD8032915FBBF1FE040F90A05B94313',1,'KRSAP10012','71','47','UifCompView*'),('KRSAP901','CDD8032915FCBF1FE040F90A05B94313',1,'KRSAP10012','71','49','list1'),('KRSAP902','CDD8032915FFBF1FE040F90A05B94313',1,'KRSAP10013','71','47','UifCompView*'),('KRSAP903','CDD803291600BF1FE040F90A05B94313',1,'KRSAP10013','71','49','list2'),('KRSAP904','CDD803291603BF1FE040F90A05B94313',1,'KRSAP10014','74','47','UifCompView*'),('KRSAP905','CDD803291604BF1FE040F90A05B94313',1,'KRSAP10014','74','49','list3'),('KRSAP906','CDD803291605BF1FE040F90A05B94313',1,'KRSAP10014','74','6','field2'),('KRSAP907','CDD803291608BF1FE040F90A05B94313',1,'KRSAP10015','74','47','UifCompView*'),('KRSAP908','CDD803291609BF1FE040F90A05B94313',1,'KRSAP10015','74','49','list3'),('KRSAP909','CDD80329160ABF1FE040F90A05B94313',1,'KRSAP10015','74','6','field3'),('KRSAP910','CDD80329160DBF1FE040F90A05B94313',1,'KRSAP10016','75','47','UifCompView*'),('KRSAP911','CDD80329160EBF1FE040F90A05B94313',1,'KRSAP10016','75','49','list4'),('KRSAP912','CDD80329160FBF1FE040F90A05B94313',1,'KRSAP10016','75','48','delete');
/*!40000 ALTER TABLE `KRIM_PERM_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_EDL_ASSCTN_T`
--

DROP TABLE IF EXISTS `KREW_EDL_ASSCTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_EDL_ASSCTN_T` (
  `EDOCLT_ASSOC_ID` decimal(19,0) NOT NULL DEFAULT '0',
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `EDL_DEF_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `STYLE_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`EDOCLT_ASSOC_ID`),
  UNIQUE KEY `KREW_EDL_ASSCTN_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_EDL_ASSCTN_T`
--

LOCK TABLES `KREW_EDL_ASSCTN_T` WRITE;
/*!40000 ALTER TABLE `KREW_EDL_ASSCTN_T` DISABLE KEYS */;
INSERT INTO `KREW_EDL_ASSCTN_T` VALUES (2010,'eDoc.Example1Doctype','eDoc.Example1.Form','eDoc.Example1.Style',1,1,'6166CBA1BC0E644DE0404F8189D86C09');
/*!40000 ALTER TABLE `KREW_EDL_ASSCTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_MAINT_DOC_T`
--

DROP TABLE IF EXISTS `KRNS_MAINT_DOC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_MAINT_DOC_T` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DOC_CNTNT` longtext COLLATE utf8_bin,
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_MAINT_DOC_TC0` (`OBJ_ID`),
  CONSTRAINT `KRNS_MAINT_DOC_TR1` FOREIGN KEY (`DOC_HDR_ID`) REFERENCES `KRNS_DOC_HDR_T` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_MAINT_DOC_T`
--

LOCK TABLES `KRNS_MAINT_DOC_T` WRITE;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_T` DISABLE KEYS */;
INSERT INTO `KRNS_MAINT_DOC_T` VALUES ('2381','C3C17370-909F-BEEC-EC4E-90E526BC8FD3',2,'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'),('2382','556F9242-337D-05B6-43CB-0D73D5B7C1C9',2,'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'),('2383','BADCD64F-BC79-7880-6DAD-2A512B887C41',2,'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'),('2384','A1FAF919-D378-80AE-5363-E5130D17F0B2',5,'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'),('2392','D69FDC83-9524-A510-FCC6-E888F7FED56B',5,'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'),('2394','0F8BFBE9-A446-4D2B-A989-DA201713023A',5,'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'),('2406','EE5CF4BF-5DDD-F2E2-1663-4CF026F5CFF0',5,'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'),('2410','18FB832C-890E-78A6-95BB-F272864134F3',5,'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'),('2700','09BE8F15-C5E2-FAD4-195C-C2E473B7B6F8',5,'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');
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_DELIV_S`
--

DROP TABLE IF EXISTS `KREN_RECIP_DELIV_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_DELIV_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_DELIV_S`
--

LOCK TABLES `KREN_RECIP_DELIV_S` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_DELIV_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RECIP_DELIV_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_LIST_S`
--

DROP TABLE IF EXISTS `KREN_RECIP_LIST_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_LIST_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_LIST_S`
--

LOCK TABLES `KREN_RECIP_LIST_S` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_LIST_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RECIP_LIST_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_DLGN_T`
--

DROP TABLE IF EXISTS `KRIM_PND_DLGN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_DLGN_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DLGN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_TYP_CD` varchar(100) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`,`DLGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_DLGN_T`
--

LOCK TABLES `KRIM_PND_DLGN_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_DLGN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_DLGN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_LIST_T`
--

DROP TABLE IF EXISTS `KREN_RECIP_LIST_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_LIST_T` (
  `RECIP_LIST_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHNL_ID` decimal(8,0) NOT NULL,
  `RECIP_TYP_CD` varchar(10) COLLATE utf8_bin NOT NULL,
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`RECIP_LIST_ID`),
  UNIQUE KEY `KREN_RECIP_LIST_TC0` (`CHNL_ID`,`RECIP_TYP_CD`,`RECIP_ID`),
  KEY `KREN_RECIP_LIST_TI1` (`CHNL_ID`),
  CONSTRAINT `KREN_RECIP_LIST_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `KREN_CHNL_T` (`CHNL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_LIST_T`
--

LOCK TABLES `KREN_RECIP_LIST_T` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_LIST_T` DISABLE KEYS */;
INSERT INTO `KREN_RECIP_LIST_T` VALUES (1,4,'USER','testuser1',NULL,NULL),(2,4,'USER','testuser3',NULL,NULL);
/*!40000 ALTER TABLE `KREN_RECIP_LIST_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_DELIV_T`
--

DROP TABLE IF EXISTS `KREN_RECIP_DELIV_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_DELIV_T` (
  `RECIP_DELIV_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CHNL` varchar(300) COLLATE utf8_bin NOT NULL,
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RECIP_DELIV_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_DELIV_T`
--

LOCK TABLES `KREN_RECIP_DELIV_T` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_DELIV_T` DISABLE KEYS */;
INSERT INTO `KREN_RECIP_DELIV_T` VALUES (1,'testuser6','KEW','mock',0),(2,'testuser1','KEW','mock',0),(3,'testuser2','KEW','mock',0),(4,'quickstart','KEW','mock',0),(5,'testuser5','KEW','mock',0),(6,'testuser4','KEW','mock',0);
/*!40000 ALTER TABLE `KREN_RECIP_DELIV_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_ETHNIC_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_ETHNIC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_ETHNIC_T` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ETHNCTY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SUB_ETHNCTY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KRIM_ENTITY_ETHNIC_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_ETHNIC_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_ETHNIC_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_ETHNIC_T`
--

LOCK TABLES `KRIM_ENTITY_ETHNIC_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_ETHNIC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_ETHNIC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_REF_OBJ_KRMS_OBJ_S`
--

DROP TABLE IF EXISTS `KRMS_REF_OBJ_KRMS_OBJ_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_REF_OBJ_KRMS_OBJ_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_REF_OBJ_KRMS_OBJ_S`
--

LOCK TABLES `KRMS_REF_OBJ_KRMS_OBJ_S` WRITE;
/*!40000 ALTER TABLE `KRMS_REF_OBJ_KRMS_OBJ_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_REF_OBJ_KRMS_OBJ_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_TYP_ATTR_S`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2010 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_ATTR_S`
--

LOCK TABLES `KREW_DOC_TYP_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_TYP_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_CALENDARS` (
  `CALENDAR_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_CALENDARS`
--

LOCK TABLES `KRSB_QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_RSP_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ROLE_RSP_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_RSP_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_RSP_ID_S`
--

LOCK TABLES `KRIM_ROLE_RSP_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_AFLTN_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_AFLTN_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_AFLTN_TYP_T` (
  `AFLTN_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_AFLTN_TYP_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`AFLTN_TYP_CD`),
  UNIQUE KEY `KRIM_AFLTN_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_AFLTN_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_AFLTN_TYP_T`
--

LOCK TABLES `KRIM_AFLTN_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_AFLTN_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_AFLTN_TYP_T` VALUES ('AFLT','5B97C50B03736110E0404F8189D85213',1,'Affiliate','N','Y','d','2008-11-13 14:06:30'),('FCLTY','5B97C50B03746110E0404F8189D85213',1,'Faculty','Y','Y','b','2008-11-13 14:06:30'),('STAFF','5B97C50B03756110E0404F8189D85213',1,'Staff','Y','Y','c','2008-11-13 14:06:30'),('STDNT','5B97C50B03766110E0404F8189D85213',1,'Student','N','Y','a','2008-11-13 14:06:30');
/*!40000 ALTER TABLE `KRIM_AFLTN_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CHNL_SUBSCRP_T`
--

DROP TABLE IF EXISTS `KREN_CHNL_SUBSCRP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CHNL_SUBSCRP_T` (
  `CHNL_SUBSCRP_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHNL_ID` decimal(8,0) NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`CHNL_SUBSCRP_ID`),
  UNIQUE KEY `KREN_CHNL_SUBSCRP_TC0` (`CHNL_ID`,`PRNCPL_ID`),
  KEY `KREN_CHNL_SUBSCRP_TI1` (`CHNL_ID`),
  CONSTRAINT `KREN_CHAN_SUBSCRP_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `KREN_CHNL_T` (`CHNL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CHNL_SUBSCRP_T`
--

LOCK TABLES `KREN_CHNL_SUBSCRP_T` WRITE;
/*!40000 ALTER TABLE `KREN_CHNL_SUBSCRP_T` DISABLE KEYS */;
INSERT INTO `KREN_CHNL_SUBSCRP_T` VALUES (1,1,'testuser4',NULL,NULL),(1000,1,'admin',NULL,NULL);
/*!40000 ALTER TABLE `KREN_CHNL_SUBSCRP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CHNL_SUBSCRP_S`
--

DROP TABLE IF EXISTS `KREN_CHNL_SUBSCRP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CHNL_SUBSCRP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CHNL_SUBSCRP_S`
--

LOCK TABLES `KREN_CHNL_SUBSCRP_S` WRITE;
/*!40000 ALTER TABLE `KREN_CHNL_SUBSCRP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_CHNL_SUBSCRP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_EXT_ID_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_EXT_ID_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_EXT_ID_T` (
  `ENTITY_EXT_ID_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EXT_ID_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EXT_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_EXT_ID_ID`),
  UNIQUE KEY `KRIM_ENTITY_EXT_ID_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_EXT_ID_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_EXT_ID_TR2` (`EXT_ID_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_EXT_ID_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_EXT_ID_TR2` FOREIGN KEY (`EXT_ID_TYP_CD`) REFERENCES `KRIM_EXT_ID_TYP_T` (`EXT_ID_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_EXT_ID_T`
--

LOCK TABLES `KRIM_ENTITY_EXT_ID_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_EXT_ID_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_EXT_ID_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_DOC_HDR_T`
--

DROP TABLE IF EXISTS `KRNS_DOC_HDR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_DOC_HDR_T` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `FDOC_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ORG_DOC_HDR_ID` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `TMPL_DOC_HDR_ID` varchar(14) COLLATE utf8_bin DEFAULT NULL,
  `EXPLANATION` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_DOC_HDR_TC0` (`OBJ_ID`),
  KEY `KRNS_DOC_HDR_TI3` (`ORG_DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_DOC_HDR_T`
--

LOCK TABLES `KRNS_DOC_HDR_T` WRITE;
/*!40000 ALTER TABLE `KRNS_DOC_HDR_T` DISABLE KEYS */;
INSERT INTO `KRNS_DOC_HDR_T` VALUES ('2123','A1CE1FBC-4CB8-672E-0CA0-8CF1F9E7001B',4,'rewer','1',NULL,NULL),('2381','5376DA5C-E693-65A5-E1B4-B403660B5315',2,'test',NULL,NULL,NULL),('2382','1586F905-5C0A-5348-72A4-BF9ECDD1967F',2,'test',NULL,NULL,NULL),('2383','00375DE1-4F36-8000-DA86-B731D73FFE03',2,'a5',NULL,NULL,NULL),('2384','BD50B601-2F27-184A-6349-52F696F1927B',5,'asdf',NULL,NULL,NULL),('2387','5FECE942-58D1-CCA7-36D9-F47AD78EEE89',2,'test trans doc',NULL,NULL,NULL),('2388','30034849-5137-0893-9871-87B1D8015D77',2,'test trans doc 2',NULL,NULL,NULL),('2389','889E14B3-B2C4-1B46-6B95-FDA71509360B',2,'test trans doc 3',NULL,NULL,NULL),('2390','D97C2F77-0CAE-0CF4-BBC8-F7D83143A72D',2,'test trans doc 4',NULL,NULL,NULL),('2391','FA4C747D-D12F-FBE5-4841-5FE813973D3F',3,'test trans doc 5',NULL,NULL,NULL),('2392','37681271-55AD-67D3-994D-9438CC088A2C',5,'a8',NULL,NULL,NULL),('2393','494D43EF-7987-2726-4F0D-2C3817A28A87',2,'asdf',NULL,NULL,NULL),('2394','D0E4F8A1-617C-6819-3DBE-5189C9248E43',5,'asdf',NULL,NULL,NULL),('2396','128456EF-B9B4-D940-FFF8-2DD5E66312D6',2,'asdf',NULL,NULL,NULL),('2400','FFB6EF95-9B5B-85DB-7044-5F72EAC68615',2,'asdf',NULL,NULL,NULL),('2401','CA3E068D-CA02-190F-FE25-0E3DCBA14C96',2,'dsaf',NULL,NULL,NULL),('2402','35BC7B93-8288-5D36-D32A-1B1096094081',2,'sdfa',NULL,NULL,NULL),('2403','80729320-661F-9133-473B-69E0138D4A9B',2,'sadf',NULL,NULL,NULL),('2404','38735150-77D3-BA30-3B01-D7F025C15FAA',2,'ASDf',NULL,NULL,NULL),('2405','D3537A08-6173-4DD8-B925-E3493F587DCD',4,'sdaf',NULL,NULL,NULL),('2406','36A06489-8F83-C489-455F-A1D4A9082248',5,'a14',NULL,NULL,NULL),('2407','539F5EAB-CFBB-16D8-E7C0-6326793DCDB3',4,'dsaf',NULL,NULL,NULL),('2410','0A69E828-1BE0-CC72-FB18-A518033184E7',5,'sadf',NULL,NULL,NULL),('2480','A1DACA08-BA46-F2CC-F3E6-2F5C7FA9ACC4',2,'nate',NULL,NULL,NULL),('2481','39EE9595-5121-1527-0E6E-B1380A1A13A7',2,'nate2',NULL,NULL,NULL),('2482','26ECE1C4-077D-2772-312D-B03B14D117FB',4,'nate3',NULL,NULL,NULL),('2483','6948923D-524D-3990-EAF6-28247E1B1904',4,'nate after convertions',NULL,NULL,NULL),('2484','BAB7E16B-792C-26A6-80DB-5FAACFC45CF1',4,'one more',NULL,NULL,NULL),('2500','6B2F08FD-15C4-72F2-10C2-E887F5C6752E',2,'testing patch',NULL,NULL,NULL),('2501','ECF3E5A5-E5A3-0EB9-38E6-510D71084E9D',4,'testing patch 2',NULL,NULL,NULL),('2520','EE1240AF-EA07-F774-0B1C-7483C853FB3E',2,'2234',NULL,NULL,NULL),('2521','2028AB52-184F-86E2-0BD3-8CE296CF2F84',2,'asdfsd',NULL,NULL,NULL),('2522','F0FDB682-C109-CD1F-EB32-347A7D04270D',4,'sadf',NULL,NULL,NULL),('2584','4A9A559F-9D10-9B92-E814-60F82E392853',2,'sadsadsadas',NULL,NULL,NULL),('2640','1F360AC6-6DCD-BFA2-63E3-B5027F41B391',4,'test','123',NULL,'dsf'),('2692','8ED05623-5D21-C6ED-715F-CEF4E3C43D30',2,'test','1',NULL,NULL),('2693','59108177-A298-55C3-2595-DAFD985F67F2',2,'test',NULL,NULL,NULL),('2694','58EF3839-6297-549E-FCB1-B23144800B0E',2,'esdf',NULL,NULL,NULL),('2695','575820F1-EE03-E7C8-F32B-9640D0D25B5A',7,'dfads',NULL,NULL,NULL),('2700','CCE4C116-CE7C-2D35-759B-E9C28D7CFAAB',5,'Create a new delegation rule for test',NULL,NULL,NULL),('2701','564A761C-6CCD-2E0B-6AC7-E528B655CA60',2,'test',NULL,NULL,NULL);
/*!40000 ALTER TABLE `KRNS_DOC_HDR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_PREFS_T`
--

DROP TABLE IF EXISTS `KREN_RECIP_PREFS_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_PREFS_T` (
  `RECIP_PREFS_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PROP` varchar(200) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(1000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RECIP_PREFS_ID`),
  UNIQUE KEY `KREN_RECIP_PREFS_TC0` (`RECIP_ID`,`PROP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_PREFS_T`
--

LOCK TABLES `KREN_RECIP_PREFS_T` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_PREFS_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RECIP_PREFS_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_RULE_TYP_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_RULE_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_RULE_TYP_T` (
  `CNTXT_VLD_RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_RULE_ID`),
  KEY `KRMS_CNTXT_VLD_RULE_TYP_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_RULE_TYP_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_RULE_TYP_T`
--

LOCK TABLES `KRMS_CNTXT_VLD_RULE_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_RULE_TYP_T` DISABLE KEYS */;
INSERT INTO `KRMS_CNTXT_VLD_RULE_TYP_T` VALUES ('T1000','CONTEXT1','1002',1);
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_RULE_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_RULE_TYP_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_RULE_TYP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_RULE_TYP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_RULE_TYP_S`
--

LOCK TABLES `KRMS_CNTXT_VLD_RULE_TYP_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_RULE_TYP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_RULE_TYP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ROLE_RSP_ACTN_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_ROLE_RSP_ACTN_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ROLE_RSP_ACTN_MT` (
  `ROLE_RSP_ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_NBR` decimal(3,0) DEFAULT NULL,
  `ACTN_PLCY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `FRC_ACTN` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ROLE_RSP_ACTN_ID`,`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ROLE_RSP_ACTN_MT`
--

LOCK TABLES `KRIM_PND_ROLE_RSP_ACTN_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_RSP_ACTN_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_RSP_ACTN_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_ADDR_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_ADDR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_ADDR_T` (
  `ENTITY_ADDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_3` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `CITY` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `STATE_PVC_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `ATTN_LINE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_FMT` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MOD_DT` datetime DEFAULT NULL,
  `VALID_DT` datetime DEFAULT NULL,
  `VALID_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ADDR_ID`),
  UNIQUE KEY `KRIM_ENTITY_ADDR_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_ADDR_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_ADDR_TR1` (`ENT_TYP_CD`,`ENTITY_ID`),
  KEY `KRIM_ENTITY_ADDR_TR2` (`ADDR_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_ADDR_TR2` FOREIGN KEY (`ADDR_TYP_CD`) REFERENCES `KRIM_ADDR_TYP_T` (`ADDR_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_ADDR_TR1` FOREIGN KEY (`ENT_TYP_CD`, `ENTITY_ID`) REFERENCES `KRIM_ENTITY_ENT_TYP_T` (`ENT_TYP_CD`, `ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_ADDR_T`
--

LOCK TABLES `KRIM_ENTITY_ADDR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_ADDR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_ADDR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_CTZNSHP_STAT_T`
--

DROP TABLE IF EXISTS `KRIM_CTZNSHP_STAT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_CTZNSHP_STAT_T` (
  `CTZNSHP_STAT_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`CTZNSHP_STAT_CD`),
  UNIQUE KEY `KRIM_CTZNSHP_STAT_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_CTZNSHP_STAT_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_CTZNSHP_STAT_T`
--

LOCK TABLES `KRIM_CTZNSHP_STAT_T` WRITE;
/*!40000 ALTER TABLE `KRIM_CTZNSHP_STAT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_CTZNSHP_STAT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_GRP_ID_S`
--

DROP TABLE IF EXISTS `KRIM_GRP_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_ID_S`
--

LOCK TABLES `KRIM_GRP_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_GRP_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DLGN_RSP_T`
--

DROP TABLE IF EXISTS `KREW_DLGN_RSP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DLGN_RSP_T` (
  `DLGN_RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_RULE_BASE_VAL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP` varchar(20) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DLGN_RULE_ID`),
  UNIQUE KEY `KREW_DLGN_RSP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DLGN_RSP_T`
--

LOCK TABLES `KREW_DLGN_RSP_T` WRITE;
/*!40000 ALTER TABLE `KREW_DLGN_RSP_T` DISABLE KEYS */;
INSERT INTO `KREW_DLGN_RSP_T` VALUES ('1641','2022','1640','S',1,'07B43BF1-B39B-CD35-024D-C05AF402D6A6');
/*!40000 ALTER TABLE `KREW_DLGN_RSP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_RULE_T`
--

DROP TABLE IF EXISTS `KRMS_RULE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_RULE_T` (
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RULE_ID`),
  UNIQUE KEY `KRMS_RULE_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRMS_RULE_TI1` (`PROP_ID`),
  CONSTRAINT `KRMS_RULE_FK1` FOREIGN KEY (`PROP_ID`) REFERENCES `KRMS_PROP_T` (`PROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_RULE_T`
--

LOCK TABLES `KRMS_RULE_T` WRITE;
/*!40000 ALTER TABLE `KRMS_RULE_T` DISABLE KEYS */;
INSERT INTO `KRMS_RULE_T` VALUES ('T1000','KR-RULE-TEST','Rule1',NULL,'T1000','Y',1,'stub rule lorem ipsum'),('T1001','KR-RULE-TEST','Rule2',NULL,'T1001','Y',1,'Frog specimens bogus rule foo'),('T1002','KR-RULE-TEST','Rule3',NULL,'T1002','Y',1,'Bloomington campus code rule'),('T1003','KR-RULE-TEST','Rule4',NULL,'T1003','Y',1,'check for possible BBQ ingiter hazard'),('T1004','KR-RULE-TEST','Rule5',NULL,'T1004','Y',1,'remembered to wear socks'),('T1005','KR-RULE-TEST','Rule6',NULL,'T1005','Y',1,'good behavior at carnival'),('T1006','KR-RULE-TEST','Rule7',NULL,'T1006','Y',1,'is KRMS in da haus'),('T1007','KR-RULE-TEST','CmpdTestRule',NULL,'T1007','Y',1,'For testing compound props'),('T1008','KR-RULE-TEST','Going Away Party for Travis',NULL,'T1011','Y',1,'Does PO require my approval');
/*!40000 ALTER TABLE `KRMS_RULE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_RULE_S`
--

DROP TABLE IF EXISTS `KRMS_RULE_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_RULE_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_RULE_S`
--

LOCK TABLES `KRMS_RULE_S` WRITE;
/*!40000 ALTER TABLE `KRMS_RULE_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_RULE_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_NM_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_NM_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_NM_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_NM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FIRST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_NM` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `SUFFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PREFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `TITLE_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `NM_CHNG_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_NM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_NM_MT`
--

LOCK TABLES `KRIM_PND_NM_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_NM_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_NM_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_BIO_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_BIO_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_BIO_T` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `BIRTH_DT` datetime DEFAULT NULL,
  `GNDR_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `DECEASED_DT` datetime DEFAULT NULL,
  `MARITAL_STATUS` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRIM_LANG_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SEC_LANG_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BIRTH_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `BIRTH_STATE_PVC_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `BIRTH_CITY` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `GEO_ORIGIN` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `GNDR_CHG_CD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_BIO_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_BIO_T`
--

LOCK TABLES `KRIM_ENTITY_BIO_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_BIO_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_BIO_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_BOOK_TYP_T`
--

DROP TABLE IF EXISTS `BK_BOOK_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_BOOK_TYP_T` (
  `TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_BOOK_TYP_T`
--

LOCK TABLES `BK_BOOK_TYP_T` WRITE;
/*!40000 ALTER TABLE `BK_BOOK_TYP_T` DISABLE KEYS */;
INSERT INTO `BK_BOOK_TYP_T` VALUES ('ROM','Romantic','Romantic Books','Y','6bbbdb82-d614-49c2-8716-4234e72f9f5e',1),('SCI-FI','Science Fiction','Science Fiction Story','Y','482b3394-0327-4e93-bd80-c5dc3b2a9e1f',1);
/*!40000 ALTER TABLE `BK_BOOK_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_EXPR_T`
--

DROP TABLE IF EXISTS `KREW_RULE_EXPR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_EXPR_T` (
  `RULE_EXPR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TYP` varchar(256) COLLATE utf8_bin NOT NULL,
  `RULE_EXPR` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_EXPR_ID`),
  UNIQUE KEY `KREW_RULE_EXPR_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_EXPR_T`
--

LOCK TABLES `KREW_RULE_EXPR_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_EXPR_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_EXPR_T` VALUES ('2000','BSF:groovy','import edu.sampleu.recipe.util.RecipeUtils\n		        import org.apache.commons.lang.StringUtils\n				import org.kuali.rice.kew.engine.RouteContext;\n				import org.kuali.rice.kew.rule.Rule;\n				import org.kuali.rice.kew.rule.RuleExpressionResult;\n		        \n				String ingredients = RecipeUtils.getRecipeIngredientsFromRecipeDocumentContent(routeContext)\n		\n				if(StringUtils.containsIgnoreCase(ingredients, \"chicken\")) {\n					return RecipeUtils.constructGroupApprovalRequest(\"KR-WKFLW:ChickenRecipeMasters\", rule)\n		        } else {\n		        	/* Return an empty route request */\n		        	return RecipeUtils.constructEmptyApprovalRequest(rule);\n		        }','616A0754-3BA6-39DF-9A1B-11432849DC6B',1),('2001','BSF:groovy','import javax.xml.namespace.QName\n				import org.kuali.rice.resourceloader.GlobalResourceLoader\n				import edu.sampleu.magazine.service.MagazineService\n		        import edu.sampleu.recipe.util.RecipeUtils\n		        import org.apache.commons.lang.StringUtils\n				import org.kuali.rice.kew.engine.RouteContext\n				import org.kuali.rice.kew.rule.Rule\n				import org.kuali.rice.kew.rule.RuleExpressionResult\n		        \n				String origin = RecipeUtils.getRecipeOriginFromRecipeDocumentContent(routeContext)\n				\n				QName serviceName = new QName(\"magazineNamespace\", \"magazineSoapService\")\n				MagazineService magazineSoapService = (MagazineService) GlobalResourceLoader.getService(serviceName)\n				String managedMagazines[] = magazineSoapService.getAllManagedMagazines()\n		\n				if(ArrayUtils.contains(managedMagazines, origin)) {\n					return RecipeUtils.constructGroupApprovalRequest(\"KR-WKFLW:MagazineManagers\", rule)\n		        } else {\n		        	/* Return an empty route request */\n		        	return RecipeUtils.constructEmptyApprovalRequest(rule);\n		        }','3364EB47-6407-9C45-8AAD-7A8310266208',1);
/*!40000 ALTER TABLE `KREW_RULE_EXPR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_EXPR_S`
--

DROP TABLE IF EXISTS `KREW_RULE_EXPR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_EXPR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_EXPR_S`
--

LOCK TABLES `KREW_RULE_EXPR_S` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_EXPR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RULE_EXPR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_NM_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_NM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_NM_T` (
  `ENTITY_NM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NM_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FIRST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_NM` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `SUFFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PREFIX_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `TITLE_NM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `NM_CHNG_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_NM_ID`),
  UNIQUE KEY `KRIM_ENTITY_NM_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_NM_TI1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_NM_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_NM_T`
--

LOCK TABLES `KRIM_ENTITY_NM_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_NM_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENTITY_NM_T` VALUES ('1200','5B97C50B042C6110E0404F8189D85213',1,'1100','PRFR','admin',NULL,'admin',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1201','5B97C50B042D6110E0404F8189D85213',1,'1101','PRFR','Test',NULL,'Admin 1',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1202','5B97C50B042E6110E0404F8189D85213',1,'1102','PRFR','Test',NULL,'Admin 2',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1203','5B97C50B042F6110E0404F8189D85213',1,'1103','PRFR','Test',NULL,'User 1',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1204','5B97C50B04306110E0404F8189D85213',1,'1104','PRFR','Test',NULL,'User 2',NULL,NULL,'Y','Y','2008-11-13 14:07:02',NULL,NULL,NULL),('1205','5B97C50B04316110E0404F8189D85213',1,'1105','PRFR','Test',NULL,'User 3',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1206','5B97C50B04326110E0404F8189D85213',1,'1106','PRFR','Test',NULL,'User 4',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1207','5B97C50B04336110E0404F8189D85213',1,'1107','PRFR','Test',NULL,'User 5',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1208','5B97C50B04346110E0404F8189D85213',1,'1108','PRFR','Test',NULL,'User 6',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1209','5B97C50B04356110E0404F8189D85213',1,'1109','PRFR','quickstart',NULL,'quickstart',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1210','5B97C50B04366110E0404F8189D85213',1,'1110','PRFR','User',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:03',NULL,NULL,NULL),('1211','5B97C50B04376110E0404F8189D85213',1,'1111','PRFR','User',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1212','5B97C50B04386110E0404F8189D85213',1,'1112','PRFR','User',NULL,'Three',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1213','5B97C50B04396110E0404F8189D85213',1,'1113','PRFR','user4',NULL,'user4',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1214','5B97C50B043A6110E0404F8189D85213',1,'1114','PRFR','Edna',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1215','5B97C50B043B6110E0404F8189D85213',1,'1115','PRFR','Eric',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1216','5B97C50B043C6110E0404F8189D85213',1,'1116','PRFR','Earl',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1217','5B97C50B043D6110E0404F8189D85213',1,'1117','PRFR','Erin',NULL,'Employee',NULL,NULL,'Y','Y','2008-11-13 14:07:04',NULL,NULL,NULL),('1218','5B97C50B043E6110E0404F8189D85213',1,'1118','PRFR','fred',NULL,'fred',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1219','5B97C50B043F6110E0404F8189D85213',1,'1119','PRFR','fran',NULL,'fran',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1220','5B97C50B04406110E0404F8189D85213',1,'1120','PRFR','frank',NULL,'frank',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1221','5B97C50B04416110E0404F8189D85213',1,'1121','PRFR','Doug',NULL,'Neidermeyer',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1222','5B97C50B04426110E0404F8189D85213',1,'1122','PRFR','Identity',NULL,'Manager One',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1223','5B97C50B04436110E0404F8189D85213',1,'1123','PRFR','Identity',NULL,'Manager Two',NULL,NULL,'Y','Y','2008-11-13 14:07:05',NULL,NULL,NULL),('1224','5B97C50B04446110E0404F8189D85213',1,'1124','PRFR','Identity',NULL,'Manager Three',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1225','5B97C50B04456110E0404F8189D85213',1,'1125','PRFR','Admin',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1226','5B97C50B04466110E0404F8189D85213',1,'1126','PRFR','Admin',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1227','5B97C50B04476110E0404F8189D85213',1,'1127','PRFR','Tester',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1228','5B97C50B04486110E0404F8189D85213',1,'1128','PRFR','Tester',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1229','5B97C50B04496110E0404F8189D85213',1,'1129','PRFR','Developer',NULL,'One',NULL,NULL,'Y','Y','2008-11-13 14:07:06',NULL,NULL,NULL),('1230','5B97C50B044A6110E0404F8189D85213',1,'1130','PRFR','Developer',NULL,'Two',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1231','5B97C50B044B6110E0404F8189D85213',1,'1131','PRFR','Notification',NULL,'System',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1232','5B97C50B044C6110E0404F8189D85213',1,'1132','PRFR','Notification',NULL,'System Admin',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1233','5B97C50B044D6110E0404F8189D85213',1,'1133','PRFR','newAccountUser',NULL,'newAccountUser',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1234','5B97C50B044E6110E0404F8189D85213',1,'1134','PRFR','supervisor',NULL,'supervisor',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1235','5B97C50B044F6110E0404F8189D85213',1,'1135','PRFR','director',NULL,'director',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1236','5B97C50B04506110E0404F8189D85213',1,'1136','PRFR','KULUSER',NULL,'KULUSER',NULL,NULL,'Y','Y','2008-11-13 14:07:07',NULL,NULL,NULL),('1237','5B97C50B04516110E0404F8189D85213',1,'1137','PRFR','employee',NULL,'employee',NULL,NULL,'Y','Y','2008-11-13 14:07:08',NULL,NULL,NULL);
/*!40000 ALTER TABLE `KRIM_ENTITY_NM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_grp_v`
--

DROP TABLE IF EXISTS `krim_role_grp_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_grp_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_grp_v` (
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `role_id` varchar(40),
  `grp_nmspc_cd` varchar(40),
  `GRP_NM` varchar(80),
  `ROLE_MBR_ID` varchar(40),
  `attr_nm` varchar(100),
  `attr_val` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KRMS_TYP_RELN_T`
--

DROP TABLE IF EXISTS `KRMS_TYP_RELN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TYP_RELN_T` (
  `TYP_RELN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `FROM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TO_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RELN_TYP` varchar(40) COLLATE utf8_bin NOT NULL,
  `SEQ_NO` decimal(5,0) NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`TYP_RELN_ID`),
  UNIQUE KEY `KRMS_TYP_RELN_TC1` (`FROM_TYP_ID`,`TO_TYP_ID`,`RELN_TYP`),
  KEY `KRMS_TYP_RELN_FK2` (`TO_TYP_ID`),
  CONSTRAINT `KRMS_TYP_RELN_FK2` FOREIGN KEY (`TO_TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`),
  CONSTRAINT `KRMS_TYP_RELN_FK1` FOREIGN KEY (`FROM_TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TYP_RELN_T`
--

LOCK TABLES `KRMS_TYP_RELN_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TYP_RELN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TYP_RELN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_EMAIL_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_EMAIL_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_EMAIL_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_EMAIL_ID_S`
--

LOCK TABLES `KRIM_ENTITY_EMAIL_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMAIL_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMAIL_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_DLGN_ID_S`
--

DROP TABLE IF EXISTS `KRIM_DLGN_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_DLGN_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_DLGN_ID_S`
--

LOCK TABLES `KRIM_DLGN_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_DLGN_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_DLGN_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_DRVD_CMPNT_T`
--

DROP TABLE IF EXISTS `KRCR_DRVD_CMPNT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_DRVD_CMPNT_T` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CMPNT_SET_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_DRVD_CMPNT_T`
--

LOCK TABLES `KRCR_DRVD_CMPNT_T` WRITE;
/*!40000 ALTER TABLE `KRCR_DRVD_CMPNT_T` DISABLE KEYS */;
INSERT INTO `KRCR_DRVD_CMPNT_T` VALUES ('KR-CORE','StyleBo','Stylesheet','DD:RICE'),('KR-CR','ComponentBo','Component','DD:TRAVEL'),('KR-CR','NamespaceBo','Namespace','DD:TRAVEL'),('KR-CR','ParameterBo','Parameter','DD:TRAVEL'),('KR-CR','ParameterTypeBo','Parameter Type','DD:TRAVEL'),('KR-CR','StyleBo','Stylesheet','DD:TRAVEL'),('KR-EDL','EDocLiteAssociation','eDoc Lite Association','DD:TRAVEL'),('KR-EDL','EDocLiteDefinition','eDoc Lite Definition','DD:TRAVEL'),('KR-IDM','DelegateTypeBo','Delegations','DD:TRAVEL'),('KR-IDM','EntityAddressTypeBo','Address Type','DD:TRAVEL'),('KR-IDM','EntityAffiliationTypeBo','Affiliation Type','DD:TRAVEL'),('KR-IDM','EntityCitizenshipStatusBo','Citizenship Status','DD:TRAVEL'),('KR-IDM','EntityEmailTypeBo','Email Type','DD:TRAVEL'),('KR-IDM','EntityEmploymentStatusBo','Employee Status','DD:TRAVEL'),('KR-IDM','EntityEmploymentTypeBo','Employee Type','DD:TRAVEL'),('KR-IDM','EntityExternalIdentifierTypeBo','External Identifier Type','DD:TRAVEL'),('KR-IDM','EntityNameTypeBo','Entity Name Type','DD:TRAVEL'),('KR-IDM','EntityPhoneTypeBo','Phone Type','DD:TRAVEL'),('KR-IDM','EntityTypeBo','Entity Type','DD:TRAVEL'),('KR-IDM','GenericPermissionBo','Permission','DD:TRAVEL'),('KR-IDM','GroupBo','Group','DD:TRAVEL'),('KR-IDM','GroupDocumentMember','Names','DD:TRAVEL'),('KR-IDM','GroupDocumentQualifier','Group Qualifier','DD:TRAVEL'),('KR-IDM','IdentityManagementGroup','Group','DD:TRAVEL'),('KR-IDM','IdentityManagementPerson','Person','DD:TRAVEL'),('KR-IDM','IdentityManagementRole','Role','DD:TRAVEL'),('KR-IDM','KimAttributeBo','Kim Attribute Definition','DD:TRAVEL'),('KR-IDM','KimAttributeDataBo','Attribute Data','DD:TRAVEL'),('KR-IDM','KimAttributes','KIM Attributes','DD:TRAVEL'),('KR-IDM','KimDocumentRoleMember','Names','DD:TRAVEL'),('KR-IDM','KimDocumentRoleQualifier','Role Qualifier','DD:TRAVEL'),('KR-IDM','KimDocumentRoleResponsibilityAction','Role Responsibility Action','DD:TRAVEL'),('KR-IDM','KimTypeBo','Kim Types','DD:TRAVEL'),('KR-IDM','PermissionAttributeBo','Permission Attribute Data','DD:TRAVEL'),('KR-IDM','PermissionBo','Permission','DD:TRAVEL'),('KR-IDM','PermissionTemplateBo','Permission Templates','DD:TRAVEL'),('KR-IDM','PersonDocumentAddress','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentAffiliation','Entity Affiliation','DD:TRAVEL'),('KR-IDM','PersonDocumentCitizenship','Entity Citizenship','DD:TRAVEL'),('KR-IDM','PersonDocumentEmail','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentEmploymentInfo','Entity Employment','DD:TRAVEL'),('KR-IDM','PersonDocumentGroup','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentName','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentPhone','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentPrivacy','Names','DD:TRAVEL'),('KR-IDM','PersonDocumentRole','Names','DD:TRAVEL'),('KR-IDM','PersonImpl','Person','DD:TRAVEL'),('KR-IDM','ResponsibilityAttributeBo','Responsibility Attribute Data','DD:TRAVEL'),('KR-IDM','ResponsibilityBo','Responsibility','DD:TRAVEL'),('KR-IDM','ResponsibilityTemplateBo','Responsibility Templates','DD:TRAVEL'),('KR-IDM','ReviewResponsibilityBo','Review Responsibility','DD:TRAVEL'),('KR-IDM','RoleBo','Names','DD:TRAVEL'),('KR-IDM','RoleDocumentDelegationMember','Delegation Members','DD:TRAVEL'),('KR-IDM','RoleDocumentDelegationMemberQualifier','Role Qualifier','DD:TRAVEL'),('KR-IDM','RoleMemberBo','Names','DD:TRAVEL'),('KR-IDM','UberPermissionBo','Permission','DD:TRAVEL'),('KR-IDM','UberResponsibilityBo','Responsibility','DD:TRAVEL'),('KR-NS','AdHocRoutePerson','Ad Hoc Route Person','DD:TRAVEL'),('KR-NS','AdHocRouteWorkgroup','Ad Hoc Route Workgroup','DD:TRAVEL'),('KR-NS','Attachment','Attachment','DD:TRAVEL'),('KR-NS','AttributeReferenceDummy','Attribute Reference Dummy','DD:TRAVEL'),('KR-NS','AttributeReferenceElements','Attribute Reference Elements','DD:TRAVEL'),('KR-NS','BusinessObjectAttributeEntry','Business Object Attribute Entry','DD:TRAVEL'),('KR-NS','CampusBo','Campus','DD:TRAVEL'),('KR-NS','CampusTypeBo','Campus Type','DD:TRAVEL'),('KR-NS','ComponentBo','Component','DD:RICE'),('KR-NS','CountryBo','Country','DD:TRAVEL'),('KR-NS','CountyBo','County','DD:TRAVEL'),('KR-NS','DocumentHeader','Document Header','DD:TRAVEL'),('KR-NS','NamespaceBo','Namespace','DD:RICE'),('KR-NS','Note','Note','DD:TRAVEL'),('KR-NS','NoteType','Note Type','DD:TRAVEL'),('KR-NS','ParameterBo','Parameter','DD:RICE'),('KR-NS','ParameterTypeBo','Parameter Type','DD:RICE'),('KR-NS','PessimisticLock','Pessimistic Lock','DD:TRAVEL'),('KR-NS','PostalCodeBo','Postal Code','DD:TRAVEL'),('KR-NS','StateBo','State','DD:TRAVEL'),('KR-SAP','AttachmentSample','Attachment Sample','DD:TRAVEL'),('KR-SAP','BookOrder','BookOrder','DD:TRAVEL'),('KR-SAP','FiscalOfficer','Fiscal Officer','DD:TRAVEL'),('KR-SAP','MultiAttachmentSample','Attachment Sample','DD:TRAVEL'),('KR-SAP','Travel2','Travel Request','DD:TRAVEL'),('KR-SAP','TravelAccount','Travel Account','DD:TRAVEL'),('KR-SAP','TravelAccountExtension','Travel Account Extension','DD:TRAVEL'),('KR-SAP','TravelAccountType','Travel Account Type','DD:TRAVEL'),('KR-SAP','TravelAccountUseRate','Travel Account Use Rate','DD:TRAVEL'),('KR-SAP','TravelAuthorization','TravelAuthorization','DD:TRAVEL'),('KR-WKFLW','DocumentRouteHeaderValue','Document','DD:TRAVEL'),('KR-WKFLW','DocumentSearchCriteriaBo','Document','DD:TRAVEL'),('KR-WKFLW','DocumentType','Document Type','DD:TRAVEL'),('KR-WKFLW','GroupRuleResponsibility','Group Rule Responsibility','DD:TRAVEL'),('KR-WKFLW','PeopleFlowBo','People Flow','DD:TRAVEL'),('KR-WKFLW','PeopleFlowDelegateBo','People Flow Delegate','DD:TRAVEL'),('KR-WKFLW','PeopleFlowMemberBo','People Flow Member','DD:TRAVEL'),('KR-WKFLW','PersonRuleResponsibility','Person Rule Responsibility','DD:TRAVEL'),('KR-WKFLW','RoleRuleResponsibility','Role Rule Responsibility','DD:TRAVEL'),('KR-WKFLW','Rule','Rule Maintenance Document Type Document','DD:TRAVEL'),('KR-WKFLW','RuleAttribute','Rule Attribute','DD:TRAVEL'),('KR-WKFLW','RuleBaseValues','Rule','DD:TRAVEL'),('KR-WKFLW','RuleDelegationBo','Delegation Rule','DD:TRAVEL'),('KR-WKFLW','RuleTemplateAttributeBo','Rule Template Attribute','DD:TRAVEL'),('KR-WKFLW','RuleTemplateBo','Rule Template','DD:TRAVEL'),('krms','ContextBo','Context','DD:TRAVEL'),('tv','FiscalOfficer','Fiscal Officer','DD:RICE'),('tv','TravelAccount','Travel Account','DD:RICE'),('tv','TravelAccountExtension','Travel Account Extension','DD:RICE'),('tv','TravelAccountType','Travel Account Type','DD:RICE'),('tv','TravelAccountUseRate','Travel Account Use Rate','DD:RICE');
/*!40000 ALTER TABLE `KRCR_DRVD_CMPNT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_EMAIL_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_EMAIL_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_EMAIL_TYP_T` (
  `EMAIL_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TYP_CD`),
  UNIQUE KEY `KRIM_EMAIL_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EMAIL_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_EMAIL_TYP_T`
--

LOCK TABLES `KRIM_EMAIL_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_EMAIL_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_EMAIL_TYP_T` VALUES ('HM','5B97C50B03776110E0404F8189D85213',1,'Home','Y','b','2008-11-13 14:06:31'),('OTH','5B97C50B03786110E0404F8189D85213',1,'Other','Y','c','2008-11-13 14:06:31'),('WRK','5B97C50B03796110E0404F8189D85213',1,'Work','Y','a','2008-11-13 14:06:31');
/*!40000 ALTER TABLE `KRIM_EMAIL_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_GRP_PRNCPL_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_GRP_PRNCPL_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_GRP_PRNCPL_MT` (
  `GRP_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `GRP_NM` varchar(80) COLLATE utf8_bin NOT NULL,
  `GRP_TYPE` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`GRP_MBR_ID`,`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_GRP_PRNCPL_MT`
--

LOCK TABLES `KRIM_PND_GRP_PRNCPL_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_GRP_PRNCPL_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_GRP_PRNCPL_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_TYP_APP_DOC_STAT_T`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_APP_DOC_STAT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_APP_DOC_STAT_T` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_STAT_NM` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `CAT_NM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SEQ_NO` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_TYP_ID`,`DOC_STAT_NM`),
  UNIQUE KEY `KREW_DOC_TYP_APP_DOC_STAT_TC0` (`OBJ_ID`),
  KEY `KREW_DOC_TYP_APP_DOC_STAT_T1` (`DOC_TYP_ID`),
  KEY `KREW_DOC_TYP_APP_DOC_STAT_T2` (`DOC_TYP_ID`,`CAT_NM`),
  CONSTRAINT `KREW_DOC_TYP_APP_DOC_STAT_FK1` FOREIGN KEY (`DOC_TYP_ID`, `CAT_NM`) REFERENCES `KREW_DOC_TYP_APP_STAT_CAT_T` (`DOC_TYP_ID`, `CAT_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_APP_DOC_STAT_T`
--

LOCK TABLES `KREW_DOC_TYP_APP_DOC_STAT_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_APP_DOC_STAT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_TYP_APP_DOC_STAT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_HDR_EXT_LONG_T`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_EXT_LONG_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_EXT_LONG_T` (
  `DOC_HDR_EXT_LONG_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(256) COLLATE utf8_bin NOT NULL,
  `VAL` decimal(22,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_LONG_ID`),
  KEY `KREW_DOC_HDR_EXT_LONG_TI1` (`KEY_CD`(255),`VAL`),
  KEY `KREW_DOC_HDR_EXT_LONG_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_LONG_TI3` (`VAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_EXT_LONG_T`
--

LOCK TABLES `KREW_DOC_HDR_EXT_LONG_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_LONG_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_LONG_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRAD_MSG_T`
--

DROP TABLE IF EXISTS `KRAD_MSG_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRAD_MSG_T` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `MSG_KEY` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LOC` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `MSG_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`,`MSG_KEY`,`LOC`),
  UNIQUE KEY `KRAD_MSG_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRAD_MSG_T`
--

LOCK TABLES `KRAD_MSG_T` WRITE;
/*!40000 ALTER TABLE `KRAD_MSG_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRAD_MSG_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRLC_CMP_TYP_T`
--

DROP TABLE IF EXISTS `KRLC_CMP_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRLC_CMP_TYP_T` (
  `CAMPUS_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMP_TYP_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`CAMPUS_TYP_CD`),
  UNIQUE KEY `KRNS_CMP_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRLC_CMP_TYP_T`
--

LOCK TABLES `KRLC_CMP_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRLC_CMP_TYP_T` DISABLE KEYS */;
INSERT INTO `KRLC_CMP_TYP_T` VALUES ('B','BOTH','1EFD72846DC90024E043814FD8810024',1,'Y'),('F','FISCAL','1EFD72846DCA0024E043814FD8810024',1,'Y'),('P','PHYSICAL','1EFD72846DCB0024E043814FD8810024',1,'Y');
/*!40000 ALTER TABLE `KRLC_CMP_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_ATTR_S`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_ATTR_S`
--

LOCK TABLES `KREW_PPL_FLW_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CNTNT_TYP_T`
--

DROP TABLE IF EXISTS `KREN_CNTNT_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CNTNT_TYP_T` (
  `CNTNT_TYP_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `CUR_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'T',
  `CNTNT_TYP_VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(1000) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(1000) COLLATE utf8_bin NOT NULL,
  `XSD` longtext COLLATE utf8_bin NOT NULL,
  `XSL` longtext COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CNTNT_TYP_ID`),
  UNIQUE KEY `KREN_CNTNT_TYP_TC0` (`NM`,`CNTNT_TYP_VER_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CNTNT_TYP_T`
--

LOCK TABLES `KREN_CNTNT_TYP_T` WRITE;
/*!40000 ALTER TABLE `KREN_CNTNT_TYP_T` DISABLE KEYS */;
INSERT INTO `KREN_CNTNT_TYP_T` VALUES (1,'Simple','T',0,'Simple content type','notification/ContentTypeSimple','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- This schema describes a simple notification.  It only contains a content\nelement which is a String...about as simple as one can get -->\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\"\n  xmlns:c=\"ns:notification/common\"\n  xmlns:cs=\"ns:notification/ContentTypeSimple\"\n  targetNamespace=\"ns:notification/ContentTypeSimple\"\n  attributeFormDefault=\"unqualified\" \n    elementFormDefault=\"qualified\">\n  <annotation>\n    <documentation xml:lang=\"en\">\n      Simple Content Schema\n    </documentation>\n  </annotation>\n  <import namespace=\"ns:notification/common\" schemaLocation=\"resource:notification/notification-common\" />\n  <!--  The content element is just a String -->\n  <element name=\"content\">\n    <complexType>\n      <sequence>\n        <element name=\"message\" type=\"c:LongStringType\"/>\n      </sequence>\n    </complexType>\n  </element>\n</schema>','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<xsl:stylesheet\n   version=\"1.0\" \n   xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" \n   xmlns:n=\"ns:notification/ContentTypeSimple\" \n   xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n   xsi:schemaLocation=\"ns:notification/ContentTypeSimple resource:notification/ContentTypeSimple\" \n   exclude-result-prefixes=\"n xsi\">\n   <xsl:output method=\"html\" omit-xml-declaration=\"yes\" />\n   <xsl:template match=\"/n:content/n:message\">\n      <strong>\n          <xsl:value-of select=\".\" disable-output-escaping=\"yes\"/>\n      </strong>\n   </xsl:template>\n</xsl:stylesheet>',1,NULL),(2,'Event','T',0,'Event content type','notification/ContentTypeEvent','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- This schema defines an generic event notification type in order for it\nto be accepted into the system. -->\n<schema xmlns=\"http://www.w3.org/2001/XMLSchema\" xmlns:c=\"ns:notification/common\" xmlns:ce=\"ns:notification/ContentTypeEvent\" targetNamespace=\"ns:notification/ContentTypeEvent\" attributeFormDefault=\"unqualified\" elementFormDefault=\"qualified\">\n  <annotation>\n    <documentation xml:lang=\"en\">Content Event Schema</documentation>\n  </annotation>\n  <import namespace=\"ns:notification/common\" schemaLocation=\"resource:notification/notification-common\" />\n  <!-- The content element describes the content of the notification.  It\n  contains a message (a simple String) and a message element -->\n  <element name=\"content\">\n    <complexType>\n      <sequence>\n        <element name=\"message\" type=\"c:LongStringType\"/>\n        <element ref=\"ce:event\"/>\n      </sequence>\n    </complexType>\n  </element>\n  <!-- This is the event element.  It describes a simple event type containing a\n  summary, description, location, and start/stop times -->\n  <element name=\"event\">\n    <complexType>\n      <sequence>\n        <element name=\"summary\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"description\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"location\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"startDateTime\" type=\"c:NonEmptyShortStringType\" />\n        <element name=\"stopDateTime\" type=\"c:NonEmptyShortStringType\" />\n      </sequence>\n    </complexType>\n  </element>\n</schema>','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- style sheet declaration: be very careful editing the following, the\n     default namespace must be used otherwise elements will not match -->\n<xsl:stylesheet\n    version=\"1.0\" \n    xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" \n    xmlns:n=\"ns:notification/ContentTypeEvent\" \n    xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" \n    xsi:schemaLocation=\"ns:notification/ContentTypeEvent resource:notification/ContentTypeEvent\" \n    exclude-result-prefixes=\"n xsi\">\n    <!-- output an html fragment -->\n    <xsl:output method=\"html\" indent=\"yes\" />\n    <!-- match everything -->\n    <xsl:template match=\"/n:content\" >\n        <table class=\"bord-all\">\n            <xsl:apply-templates />\n        </table>\n    </xsl:template>\n    <!--  match message element in the default namespace and render as strong -->\n    <xsl:template match=\"n:message\" >\n        <caption>\n            <strong><xsl:value-of select=\".\" disable-output-escaping=\"yes\"/></strong>\n        </caption>\n    </xsl:template>\n    <!-- match on event in the default namespace and display all children -->\n    <xsl:template match=\"n:event\">\n        <tr>\n            <td class=\"thnormal\"><strong>Summary: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:summary\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>Description: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:description\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>Location: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:location\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>Start Time: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:startDateTime\" /></td>\n        </tr>\n        <tr>\n            <td class=\"thnormal\"><strong>End Time: </strong></td>\n            <td class=\"thnormal\"><xsl:value-of select=\"n:stopDateTime\" /></td>\n        </tr>\n    </xsl:template> \n</xsl:stylesheet>',1,NULL);
/*!40000 ALTER TABLE `KREN_CNTNT_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_TRIGGERS` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_NAME` varchar(80) COLLATE utf8_bin NOT NULL,
  `JOB_GROUP` varchar(80) COLLATE utf8_bin NOT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_FIRE_TIME` decimal(13,0) DEFAULT NULL,
  `PREV_FIRE_TIME` decimal(13,0) DEFAULT NULL,
  `PRIORITY` decimal(13,0) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) COLLATE utf8_bin NOT NULL,
  `TRIGGER_TYPE` varchar(8) COLLATE utf8_bin NOT NULL,
  `START_TIME` decimal(13,0) NOT NULL,
  `END_TIME` decimal(13,0) DEFAULT NULL,
  `CALENDAR_NAME` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `MISFIRE_INSTR` decimal(2,0) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `KRSB_QRTZ_TRIGGERS_TI1` (`NEXT_FIRE_TIME`),
  KEY `KRSB_QRTZ_TRIGGERS_TI2` (`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `KRSB_QRTZ_TRIGGERS_TI3` (`TRIGGER_STATE`),
  KEY `KRSB_QRTZ_TRIGGERS_TI4` (`IS_VOLATILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_TRIGGERS`
--

LOCK TABLES `KRSB_QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_INIT_RTE_NODE_INSTN_T`
--

DROP TABLE IF EXISTS `KREW_INIT_RTE_NODE_INSTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_INIT_RTE_NODE_INSTN_T` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`DOC_HDR_ID`,`RTE_NODE_INSTN_ID`),
  KEY `KREW_INIT_RTE_NODE_INSTN_TI1` (`DOC_HDR_ID`),
  KEY `KREW_INIT_RTE_NODE_INSTN_TI2` (`RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_INIT_RTE_NODE_INSTN_T`
--

LOCK TABLES `KREW_INIT_RTE_NODE_INSTN_T` WRITE;
/*!40000 ALTER TABLE `KREW_INIT_RTE_NODE_INSTN_T` DISABLE KEYS */;
INSERT INTO `KREW_INIT_RTE_NODE_INSTN_T` VALUES ('2036','2072'),('2037','2077'),('2038','2079'),('2039','2081'),('2040','2083'),('2041','2085'),('2042','2087'),('2060','2101'),('2080','2121'),('2081','2123'),('2100','2141'),('2101','2143'),('2102','2145'),('2120','2161'),('2121','2163'),('2122','2165'),('2123','2170'),('2124','2177'),('2140','2181'),('2160','2201'),('2161','2203'),('2180','2221'),('2207','2244'),('2208','2246'),('2209','2248'),('2210','2250'),('2211','2252'),('2212','2254'),('2213','2256'),('2214','2258'),('2218','2263'),('2219','2268'),('2220','2281'),('2221','2283'),('2222','2285'),('2223','2287'),('2224','2289'),('2240','2301'),('2241','2303'),('2242','2305'),('2260','2321'),('2281','2343'),('2283','2347'),('2300','2361'),('2340','2401'),('2380','2441'),('2381','2443'),('2382','2445'),('2383','2447'),('2384','2449'),('2385','2453'),('2386','2455'),('2387','2457'),('2388','2460'),('2389','2463'),('2390','2467'),('2391','2470'),('2392','2473'),('2393','2477'),('2394','2480'),('2395','2484'),('2396','2486'),('2400','2501'),('2401','2504'),('2402','2509'),('2403','2514'),('2404','2519'),('2405','2525'),('2406','2532'),('2407','2536'),('2408','2538'),('2409','2545'),('2410','2547'),('2420','2561'),('2460','2601'),('2480','2621'),('2481','2626'),('2482','2631'),('2483','2638'),('2484','2645'),('2500','2661'),('2501','2666'),('2502','2673'),('2520','2681'),('2521','2683'),('2522','2685'),('2540','2701'),('2541','2703'),('2545','2711'),('2546','2713'),('2560','2721'),('2561','2723'),('2580','2741'),('2581','2743'),('2582','2745'),('2583','2747'),('2584','2749'),('2600','2761'),('2601','2763'),('2620','2781'),('2621','2783'),('2622','2785'),('2623','2787'),('2640','2801'),('2660','2821'),('2684','2853'),('2685','2855'),('2686','2857'),('2687','2859'),('2688','2861'),('2689','2863'),('2690','2865'),('2691','2867'),('2692','2869'),('2693','2871'),('2694','2873'),('2695','2875'),('2696','2882'),('2698','2884'),('2700','2886'),('2701','2890');
/*!40000 ALTER TABLE `KREW_INIT_RTE_NODE_INSTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_BRCH_ST_T`
--

DROP TABLE IF EXISTS `KREW_RTE_BRCH_ST_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_BRCH_ST_T` (
  `RTE_BRCH_ST_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_BRCH_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_BRCH_ST_ID`),
  KEY `KREW_RTE_BRCH_ST_TI1` (`RTE_BRCH_ID`,`KEY_CD`),
  KEY `KREW_RTE_BRCH_ST_TI2` (`RTE_BRCH_ID`),
  KEY `KREW_RTE_BRCH_ST_TI3` (`KEY_CD`,`VAL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_BRCH_ST_T`
--

LOCK TABLES `KREW_RTE_BRCH_ST_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_BRCH_ST_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_BRCH_ST_T` VALUES ('2074','2071','System.PostProcessorProcessed','true',2),('2075','2071','System.PostProcessorFinal','true',1),('2103','2100','System.PostProcessorProcessed','true',2),('2104','2100','System.PostProcessorFinal','true',1),('2167','2164','System.PostProcessorProcessed','true',2),('2168','2164','System.PostProcessorFinal','true',1),('2175','2169','System.PostProcessorProcessed','true',1),('2223','2220','System.PostProcessorProcessed','true',2),('2224','2220','System.PostProcessorFinal','true',1),('2265','2262','System.PostProcessorProcessed','true',2),('2266','2262','System.PostProcessorFinal','true',1),('2270','2267','System.PostProcessorProcessed','true',2),('2271','2267','System.PostProcessorFinal','true',1),('2323','2320','System.PostProcessorProcessed','true',2),('2324','2320','System.PostProcessorFinal','true',1),('2450','2448','System.PostProcessorProcessed','true',2),('2451','2448','System.PostProcessorFinal','true',1),('2474','2472','System.PostProcessorProcessed','true',2),('2475','2472','System.PostProcessorFinal','true',1),('2481','2479','System.PostProcessorProcessed','true',2),('2482','2479','System.PostProcessorFinal','true',1),('2530','2524','System.PostProcessorProcessed','true',1),('2533','2531','System.PostProcessorProcessed','true',2),('2534','2531','System.PostProcessorFinal','true',1),('2543','2535','System.PostProcessorProcessed','true',1),('2548','2546','System.PostProcessorProcessed','true',2),('2549','2546','System.PostProcessorFinal','true',1),('2636','2630','System.PostProcessorProcessed','true',1),('2643','2637','System.PostProcessorProcessed','true',1),('2650','2644','System.PostProcessorProcessed','true',1),('2671','2665','System.PostProcessorProcessed','true',1),('2690','2684','System.PostProcessorProcessed','true',1),('2806','2800','System.PostProcessorProcessed','true',1),('2880','2874','System.PostProcessorProcessed','true',1),('2887','2885','System.PostProcessorProcessed','true',2),('2888','2885','System.PostProcessorFinal','true',1);
/*!40000 ALTER TABLE `KREW_RTE_BRCH_ST_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_AGENDA_TYP_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_AGENDA_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_AGENDA_TYP_T` (
  `CNTXT_VLD_AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `AGENDA_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_AGENDA_ID`),
  KEY `KRMS_CNTXT_VLD_AGENDA_TYP_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_AGENDA_TYP_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_AGENDA_TYP_T`
--

LOCK TABLES `KRMS_CNTXT_VLD_AGENDA_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_AGENDA_TYP_T` DISABLE KEYS */;
INSERT INTO `KRMS_CNTXT_VLD_AGENDA_TYP_T` VALUES ('T1000','CONTEXT1','T1005',1);
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_AGENDA_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_AGENDA_TYP_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_AGENDA_TYP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_AGENDA_TYP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_AGENDA_TYP_S`
--

LOCK TABLES `KRMS_CNTXT_VLD_AGENDA_TYP_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_AGENDA_TYP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_AGENDA_TYP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_REF_OBJ_KRMS_OBJ_T`
--

DROP TABLE IF EXISTS `KRMS_REF_OBJ_KRMS_OBJ_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_REF_OBJ_KRMS_OBJ_T` (
  `REF_OBJ_KRMS_OBJ_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `COLLECTION_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KRMS_OBJ_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KRMS_DSCR_TYP` varchar(40) COLLATE utf8_bin NOT NULL,
  `REF_OBJ_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `REF_DSCR_TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`REF_OBJ_KRMS_OBJ_ID`),
  UNIQUE KEY `KRMS_REF_OBJ_KRMS_OBJ_TC1` (`COLLECTION_NM`,`KRMS_OBJ_ID`,`KRMS_DSCR_TYP`,`REF_OBJ_ID`,`REF_DSCR_TYP`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_REF_OBJ_KRMS_OBJ_T`
--

LOCK TABLES `KRMS_REF_OBJ_KRMS_OBJ_T` WRITE;
/*!40000 ALTER TABLE `KRMS_REF_OBJ_KRMS_OBJ_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_REF_OBJ_KRMS_OBJ_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_EMP_STAT_T`
--

DROP TABLE IF EXISTS `KRIM_EMP_STAT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_EMP_STAT_T` (
  `EMP_STAT_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EMP_STAT_CD`),
  UNIQUE KEY `KRIM_EMP_STAT_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EMP_STAT_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_EMP_STAT_T`
--

LOCK TABLES `KRIM_EMP_STAT_T` WRITE;
/*!40000 ALTER TABLE `KRIM_EMP_STAT_T` DISABLE KEYS */;
INSERT INTO `KRIM_EMP_STAT_T` VALUES ('A','5B97C50B037A6110E0404F8189D85213',1,'Active','Y','01','2008-11-13 14:06:31'),('D','5B97C50B037B6110E0404F8189D85213',1,'Deceased','Y','99','2008-11-13 14:06:31'),('L','5B97C50B037C6110E0404F8189D85213',1,'On Non-Pay Leave','Y','04','2008-11-13 14:06:32'),('N','5B97C50B037D6110E0404F8189D85213',1,'Status Not Yet Processed','Y','03','2008-11-13 14:06:32'),('P','5B97C50B037E6110E0404F8189D85213',1,'Processing','Y','02','2008-11-13 14:06:32'),('R','5B97C50B037F6110E0404F8189D85213',1,'Retired','Y','10','2008-11-13 14:06:32'),('T','5B97C50B03806110E0404F8189D85213',1,'Terminated','Y','97','2008-11-13 14:06:32');
/*!40000 ALTER TABLE `KRIM_EMP_STAT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_TMPL_S`
--

DROP TABLE IF EXISTS `KREW_RTE_TMPL_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_TMPL_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1645 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_TMPL_S`
--

LOCK TABLES `KREW_RTE_TMPL_S` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_TMPL_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RTE_TMPL_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_SNDR_T`
--

DROP TABLE IF EXISTS `KREN_SNDR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_SNDR_T` (
  `SNDR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NTFCTN_ID` decimal(8,0) NOT NULL,
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`SNDR_ID`),
  UNIQUE KEY `KREN_SNDR_TC0` (`NTFCTN_ID`,`NM`),
  KEY `KREN_SNDR_TI1` (`NTFCTN_ID`),
  CONSTRAINT `KREN_SNDR_FK1` FOREIGN KEY (`NTFCTN_ID`) REFERENCES `KREN_NTFCTN_T` (`NTFCTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_SNDR_T`
--

LOCK TABLES `KREN_SNDR_T` WRITE;
/*!40000 ALTER TABLE `KREN_SNDR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_SNDR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_SNDR_S`
--

DROP TABLE IF EXISTS `KREN_SNDR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_SNDR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_SNDR_S`
--

LOCK TABLES `KREN_SNDR_S` WRITE;
/*!40000 ALTER TABLE `KREN_SNDR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_SNDR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_EXT_T`
--

DROP TABLE IF EXISTS `KREW_RULE_EXT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_EXT_T` (
  `RULE_EXT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_TMPL_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_EXT_ID`),
  KEY `KREW_RULE_EXT_T1` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_EXT_T`
--

LOCK TABLES `KREW_RULE_EXT_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_EXT_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_EXT_T` VALUES ('1045','1024','1044',1),('1047','1027','1046',1),('1104','1102','1103',1),('1107','1102','1106',1);
/*!40000 ALTER TABLE `KREW_RULE_EXT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_FIRED_TRIGGERS` (
  `ENTRY_ID` varchar(95) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL,
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin NOT NULL,
  `INSTANCE_NAME` varchar(80) COLLATE utf8_bin NOT NULL,
  `FIRED_TIME` decimal(13,0) NOT NULL,
  `PRIORITY` decimal(13,0) NOT NULL,
  `STATE` varchar(16) COLLATE utf8_bin NOT NULL,
  `JOB_NAME` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `JOB_GROUP` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTRY_ID`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI1` (`JOB_GROUP`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI2` (`JOB_NAME`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI3` (`REQUESTS_RECOVERY`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI4` (`IS_STATEFUL`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI5` (`TRIGGER_GROUP`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI6` (`INSTANCE_NAME`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI7` (`TRIGGER_NAME`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI8` (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `KRSB_QRTZ_FIRED_TRIGGERS_TI9` (`IS_VOLATILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `KRSB_QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_LOCK_S`
--

DROP TABLE IF EXISTS `KRNS_LOCK_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_LOCK_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_LOCK_S`
--

LOCK TABLES `KRNS_LOCK_S` WRITE;
/*!40000 ALTER TABLE `KRNS_LOCK_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_LOCK_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_MBR_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_MBR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_MBR_T` (
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'P',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ROLE_MBR_ID`),
  UNIQUE KEY `KRIM_ROLE_MBR_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_MBR_TI1` (`MBR_ID`),
  KEY `KRIM_ROLE_MBR_TI2` (`ROLE_ID`,`MBR_ID`,`MBR_TYP_CD`),
  KEY `KRIM_ROLE_MBR_TI3` (`MBR_ID`,`MBR_TYP_CD`),
  CONSTRAINT `KRIM_ROLE_MBR_TR1` FOREIGN KEY (`ROLE_ID`) REFERENCES `KRIM_ROLE_T` (`ROLE_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_MBR_T`
--

LOCK TABLES `KRIM_ROLE_MBR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_MBR_T` DISABLE KEYS */;
INSERT INTO `KRIM_ROLE_MBR_T` VALUES ('1282',1,'5B4B421E43857717E0404F8189D821F7','90','1','P',NULL,NULL,'2009-08-21 03:52:51'),('1283',1,'D0B057F8E7B949EFA94AE8CDA47DE41B','63','admin','P',NULL,NULL,'2008-12-08 12:49:41'),('1284',1,'B7DBFABEFD2E8CBFE0402E0AA9D757C9','98','admin','P',NULL,NULL,'2012-01-31 16:04:04'),('KR1000',1,'CFBAA6F5F0D45D07E0406E0AC31D229B','KR1000','guest','P',NULL,NULL,'2012-11-30 17:41:57'),('KRSAP10003',1,'CDD8032915D2BF1FE040F90A05B94313','KRSAP10003','dev1','P',NULL,NULL,'2012-11-06 17:34:34'),('KRSAP10004',1,'CDD8032915D4BF1FE040F90A05B94313','KRSAP10004','admin','P',NULL,NULL,'2012-11-06 17:34:45'),('KRSAP10005',1,'CDD8032915D5BF1FE040F90A05B94313','KRSAP10004','dev1','P',NULL,NULL,'2012-11-06 17:34:48');
/*!40000 ALTER TABLE `KRIM_ROLE_MBR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_VISA_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_VISA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_VISA_T` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VISA_TYPE_KEY` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VISA_ENTRY` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VISA_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KRIM_ENTITY_VISA_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_VISA_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_VISA_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_VISA_T`
--

LOCK TABLES `KRIM_ENTITY_VISA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_VISA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_VISA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRVL_PER_DIEM_T`
--

DROP TABLE IF EXISTS `TRVL_PER_DIEM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRVL_PER_DIEM_T` (
  `ID` decimal(19,0) NOT NULL DEFAULT '0',
  `TRIP_TYP_CD` varchar(3) COLLATE utf8_bin NOT NULL,
  `COUNTRY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COUNTRY_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `COUNTY_CD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PRI_DEST` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SSN_BGN_DT` datetime DEFAULT NULL,
  `EFFECT_FROM_DT` datetime DEFAULT NULL,
  `EFFECT_TO_DT` datetime DEFAULT NULL,
  `LOAD_DT` datetime DEFAULT NULL,
  `SSN_BGN_MONTH_DAY` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `BKFST` decimal(19,0) DEFAULT NULL,
  `LUNCH` decimal(19,0) DEFAULT NULL,
  `DIN` decimal(19,0) DEFAULT NULL,
  `LODGING` decimal(19,2) DEFAULT '0.00',
  `INC` decimal(19,2) DEFAULT '0.00',
  `MEALS_INC` decimal(19,2) DEFAULT '0.00',
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRVL_PER_DIEM_T`
--

LOCK TABLES `TRVL_PER_DIEM_T` WRITE;
/*!40000 ALTER TABLE `TRVL_PER_DIEM_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRVL_PER_DIEM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_PHONE_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_PHONE_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_PHONE_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_PHONE_ID_S`
--

LOCK TABLES `KRIM_ENTITY_PHONE_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_PHONE_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_PHONE_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_LOOKUP_RSLT_T`
--

DROP TABLE IF EXISTS `KRNS_LOOKUP_RSLT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_LOOKUP_RSLT_T` (
  `LOOKUP_RSLT_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `LOOKUP_DT` datetime NOT NULL,
  `SERIALZD_RSLTS` longtext COLLATE utf8_bin,
  PRIMARY KEY (`LOOKUP_RSLT_ID`),
  UNIQUE KEY `KRNS_LOOKUP_RSLT_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_LOOKUP_RSLT_T`
--

LOCK TABLES `KRNS_LOOKUP_RSLT_T` WRITE;
/*!40000 ALTER TABLE `KRNS_LOOKUP_RSLT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_LOOKUP_RSLT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_prncpl_v`
--

DROP TABLE IF EXISTS `krim_prncpl_v`;
/*!50001 DROP VIEW IF EXISTS `krim_prncpl_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_prncpl_v` (
  `PRNCPL_ID` varchar(40),
  `PRNCPL_NM` varchar(100),
  `FIRST_NM` varchar(40),
  `LAST_NM` varchar(80),
  `AFLTN_TYP_CD` varchar(40),
  `CAMPUS_CD` varchar(2),
  `EMP_STAT_CD` varchar(40),
  `EMP_TYP_CD` varchar(40)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `krim_perm_v`
--

DROP TABLE IF EXISTS `krim_perm_v`;
/*!50001 DROP VIEW IF EXISTS `krim_perm_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_perm_v` (
  `tmpl_nmspc_cd` varchar(40),
  `tmpl_nm` varchar(100),
  `PERM_TMPL_ID` varchar(40),
  `perm_nmspc_cd` varchar(40),
  `perm_nm` varchar(100),
  `PERM_ID` varchar(40),
  `perm_typ_nm` varchar(100),
  `SRVC_NM` varchar(200)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KRIM_ENTITY_CACHE_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_CACHE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_CACHE_T` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FIRST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MIDDLE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRSN_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRMRY_DEPT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_TS` datetime DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_CACHE_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ENTITY_CACHE_TC1` (`PRNCPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_CACHE_T`
--

LOCK TABLES `KRIM_ENTITY_CACHE_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_CACHE_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENTITY_CACHE_T` VALUES ('1100','admin','admin','PERSON','admin',NULL,'admin','admin, admin',NULL,NULL,NULL,'2012-11-25 19:29:25','6d4e59c3-caf1-453d-8724-0998765eb180');
/*!40000 ALTER TABLE `KRIM_ENTITY_CACHE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_BOOK_T`
--

DROP TABLE IF EXISTS `BK_BOOK_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_BOOK_T` (
  `BOOK_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `TITLE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `AUTHOR` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ISBN` varchar(17) COLLATE utf8_bin DEFAULT NULL,
  `PUBLISHER` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PUB_DATE` datetime DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRICE` decimal(15,2) DEFAULT NULL,
  `RATING` decimal(22,0) DEFAULT NULL,
  PRIMARY KEY (`BOOK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_BOOK_T`
--

LOCK TABLES `BK_BOOK_T` WRITE;
/*!40000 ALTER TABLE `BK_BOOK_T` DISABLE KEYS */;
INSERT INTO `BK_BOOK_T` VALUES (1,'i See',NULL,'ROM','9781402894626','Rupa Publishers Ltd.','2002-09-01 00:00:00','482b3394-0327-4e93-bd80-c5dc3b2a9e34',1,34.43,87),(2,'Galactico',NULL,'SCI-FI','9781402894634','Rupa Publishers Ltd.','2002-09-01 00:00:00','482b3394-0327-4ee5-bd80-c5dc3b2a9e34',1,12.43,90);
/*!40000 ALTER TABLE `BK_BOOK_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TST_SEARCH_ATTR_INDX_TST_DOC_T`
--

DROP TABLE IF EXISTS `TST_SEARCH_ATTR_INDX_TST_DOC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TST_SEARCH_ATTR_INDX_TST_DOC_T` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(14,0) DEFAULT NULL,
  `RTE_LVL_CNT` decimal(14,0) DEFAULT NULL,
  `CNSTNT_STR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RTD_STR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `HLD_RTD_STR` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `RD_ACCS_CNT` decimal(14,0) DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TST_SEARCH_ATTR_INDX_TST_DOC_T`
--

LOCK TABLES `TST_SEARCH_ATTR_INDX_TST_DOC_T` WRITE;
/*!40000 ALTER TABLE `TST_SEARCH_ATTR_INDX_TST_DOC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `TST_SEARCH_ATTR_INDX_TST_DOC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_NTE_TYP_T`
--

DROP TABLE IF EXISTS `KRNS_NTE_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_NTE_TYP_T` (
  `NTE_TYP_CD` varchar(4) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `TYP_DESC_TXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTE_TYP_CD`),
  UNIQUE KEY `KRNS_NTE_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_NTE_TYP_T`
--

LOCK TABLES `KRNS_NTE_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRNS_NTE_TYP_T` DISABLE KEYS */;
INSERT INTO `KRNS_NTE_TYP_T` VALUES ('BO','53680C68F5A9AD9BE0404F8189D80A6C',1,'DOCUMENT BUSINESS OBJECT','Y'),('DH','53680C68F5AAAD9BE0404F8189D80A6C',1,'DOCUMENT HEADER','Y');
/*!40000 ALTER TABLE `KRNS_NTE_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_TRIGGER_LISTENERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_TRIGGER_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_TRIGGER_LISTENERS` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_LISTENER` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_LISTENER`),
  CONSTRAINT `KRSB_QRTZ_TRIGGER_LISTENE_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `KRSB_QRTZ_TRIGGERS` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_TRIGGER_LISTENERS`
--

LOCK TABLES `KRSB_QRTZ_TRIGGER_LISTENERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_TRIGGER_LISTENERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_TRIGGER_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRAV_DOC_2_ACCOUNTS`
--

DROP TABLE IF EXISTS `TRAV_DOC_2_ACCOUNTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRAV_DOC_2_ACCOUNTS` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FDOC_NBR`,`ACCT_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRAV_DOC_2_ACCOUNTS`
--

LOCK TABLES `TRAV_DOC_2_ACCOUNTS` WRITE;
/*!40000 ALTER TABLE `TRAV_DOC_2_ACCOUNTS` DISABLE KEYS */;
INSERT INTO `TRAV_DOC_2_ACCOUNTS` VALUES ('2123','a2'),('2387','a2'),('2387','a3'),('2388','a1'),('2388','a2'),('2389','a1'),('2389','a2'),('2390','a1'),('2390','a2'),('2391','a1'),('2391','a2'),('2393','a1'),('2393','a2'),('2396','a1'),('2396','a2'),('2400','a1'),('2400','a2'),('2401','a1'),('2401','a2'),('2402','a1'),('2402','a2'),('2403','a1'),('2403','a2'),('2404','a1'),('2404','a2'),('2405','a1'),('2405','a2'),('2407','a1'),('2407','a2'),('2480','a3'),('2480','a9'),('2481','a1'),('2481','a2'),('2482','a1'),('2482','a2'),('2483','a1'),('2483','a2'),('2484','a1'),('2500','a1'),('2500','a2'),('2501','a1'),('2501','a2'),('2520','a1'),('2520','a2'),('2521','a1'),('2521','a2'),('2522','a1'),('2522','a2'),('2584','a6'),('2600','a6'),('2601','a6'),('2621','a6'),('2622','a6'),('2623','a6'),('2640','a1'),('2640','a2'),('2692','a1'),('2693','a1'),('2694','a1'),('2695','a1'),('2701','a1');
/*!40000 ALTER TABLE `TRAV_DOC_2_ACCOUNTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_ETHNIC_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_ETHNIC_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_ETHNIC_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_ETHNIC_ID_S`
--

LOCK TABLES `KRIM_ENTITY_ETHNIC_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_ETHNIC_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_ETHNIC_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_PARM_SPEC_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_PARM_SPEC_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_PARM_SPEC_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_PARM_SPEC_S`
--

LOCK TABLES `KRMS_TERM_RSLVR_PARM_SPEC_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_PARM_SPEC_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_PARM_SPEC_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_CTZNSHP_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_CTZNSHP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_CTZNSHP_T` (
  `ENTITY_CTZNSHP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `CTZNSHP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STRT_DT` datetime DEFAULT NULL,
  `END_DT` datetime DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_CTZNSHP_ID`),
  UNIQUE KEY `KRIM_ENTITY_CTZNSHP_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_CTZNSHP_TR1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_CTZNSHP_TR2` (`CTZNSHP_STAT_CD`),
  CONSTRAINT `KRIM_ENTITY_CTZNSHP_TR2` FOREIGN KEY (`CTZNSHP_STAT_CD`) REFERENCES `KRIM_CTZNSHP_STAT_T` (`CTZNSHP_STAT_CD`),
  CONSTRAINT `KRIM_ENTITY_CTZNSHP_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_CTZNSHP_T`
--

LOCK TABLES `KRIM_ENTITY_CTZNSHP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_CTZNSHP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_CTZNSHP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_LOOKUP_SEL_T`
--

DROP TABLE IF EXISTS `KRNS_LOOKUP_SEL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_LOOKUP_SEL_T` (
  `LOOKUP_RSLT_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `LOOKUP_DT` datetime NOT NULL,
  `SEL_OBJ_IDS` longtext COLLATE utf8_bin,
  PRIMARY KEY (`LOOKUP_RSLT_ID`),
  UNIQUE KEY `KRNS_LOOKUP_SEL_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_LOOKUP_SEL_T`
--

LOCK TABLES `KRNS_LOOKUP_SEL_T` WRITE;
/*!40000 ALTER TABLE `KRNS_LOOKUP_SEL_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_LOOKUP_SEL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_BRCH_T`
--

DROP TABLE IF EXISTS `KREW_RTE_BRCH_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_BRCH_T` (
  `RTE_BRCH_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `PARNT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `INIT_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SPLT_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `JOIN_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_BRCH_ID`),
  KEY `KREW_RTE_BRCH_TI1` (`NM`),
  KEY `KREW_RTE_BRCH_TI2` (`PARNT_ID`),
  KEY `KREW_RTE_BRCH_TI3` (`INIT_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_BRCH_TI4` (`SPLT_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_BRCH_TI5` (`JOIN_RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_BRCH_T`
--

LOCK TABLES `KREW_RTE_BRCH_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_BRCH_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_BRCH_T` VALUES ('2071','PRIMARY',NULL,NULL,NULL,NULL,9),('2076','PRIMARY',NULL,NULL,NULL,NULL,2),('2078','PRIMARY',NULL,NULL,NULL,NULL,2),('2080','PRIMARY',NULL,NULL,NULL,NULL,2),('2082','PRIMARY',NULL,NULL,NULL,NULL,2),('2084','PRIMARY',NULL,NULL,NULL,NULL,2),('2086','PRIMARY',NULL,NULL,NULL,NULL,2),('2100','PRIMARY',NULL,NULL,NULL,NULL,9),('2120','PRIMARY',NULL,NULL,NULL,NULL,2),('2122','PRIMARY',NULL,NULL,NULL,NULL,2),('2140','PRIMARY',NULL,NULL,NULL,NULL,2),('2142','PRIMARY',NULL,NULL,NULL,NULL,2),('2144','PRIMARY',NULL,NULL,NULL,NULL,2),('2160','PRIMARY',NULL,NULL,NULL,NULL,2),('2162','PRIMARY',NULL,NULL,NULL,NULL,2),('2164','PRIMARY',NULL,NULL,NULL,NULL,9),('2169','PRIMARY',NULL,NULL,NULL,NULL,21),('2176','PRIMARY',NULL,NULL,NULL,NULL,2),('2180','PRIMARY',NULL,NULL,NULL,NULL,2),('2200','PRIMARY',NULL,NULL,NULL,NULL,2),('2202','PRIMARY',NULL,NULL,NULL,NULL,2),('2220','PRIMARY',NULL,NULL,NULL,NULL,9),('2243','PRIMARY',NULL,NULL,NULL,NULL,2),('2245','PRIMARY',NULL,NULL,NULL,NULL,2),('2247','PRIMARY',NULL,NULL,NULL,NULL,2),('2249','PRIMARY',NULL,NULL,NULL,NULL,2),('2251','PRIMARY',NULL,NULL,NULL,NULL,2),('2253','PRIMARY',NULL,NULL,NULL,NULL,2),('2255','PRIMARY',NULL,NULL,NULL,NULL,2),('2257','PRIMARY',NULL,NULL,NULL,NULL,2),('2262','PRIMARY',NULL,NULL,NULL,NULL,11),('2267','PRIMARY',NULL,NULL,NULL,NULL,11),('2280','PRIMARY',NULL,NULL,NULL,NULL,2),('2282','PRIMARY',NULL,NULL,NULL,NULL,2),('2284','PRIMARY',NULL,NULL,NULL,NULL,2),('2286','PRIMARY',NULL,NULL,NULL,NULL,2),('2288','PRIMARY',NULL,NULL,NULL,NULL,2),('2300','PRIMARY',NULL,NULL,NULL,NULL,2),('2302','PRIMARY',NULL,NULL,NULL,NULL,2),('2304','PRIMARY',NULL,NULL,NULL,NULL,2),('2320','PRIMARY',NULL,NULL,NULL,NULL,9),('2342','PRIMARY',NULL,NULL,NULL,NULL,2),('2346','PRIMARY',NULL,NULL,NULL,NULL,4),('2360','PRIMARY',NULL,NULL,NULL,NULL,2),('2400','PRIMARY',NULL,NULL,NULL,NULL,2),('2440','PRIMARY',NULL,NULL,NULL,NULL,2),('2442','PRIMARY',NULL,NULL,NULL,NULL,2),('2444','PRIMARY',NULL,NULL,NULL,NULL,2),('2446','PRIMARY',NULL,NULL,NULL,NULL,2),('2448','PRIMARY',NULL,NULL,NULL,NULL,6),('2452','PRIMARY',NULL,NULL,NULL,NULL,2),('2454','PRIMARY',NULL,NULL,NULL,NULL,2),('2456','PRIMARY',NULL,NULL,NULL,NULL,2),('2459','PRIMARY',NULL,NULL,NULL,NULL,2),('2462','PRIMARY',NULL,NULL,NULL,NULL,2),('2466','PRIMARY',NULL,NULL,NULL,NULL,2),('2469','PRIMARY',NULL,NULL,NULL,NULL,6),('2472','PRIMARY',NULL,NULL,NULL,NULL,6),('2476','PRIMARY',NULL,NULL,NULL,NULL,2),('2479','PRIMARY',NULL,NULL,NULL,NULL,6),('2483','PRIMARY',NULL,NULL,NULL,NULL,2),('2485','PRIMARY',NULL,NULL,NULL,NULL,2),('2500','PRIMARY',NULL,NULL,NULL,NULL,2),('2503','PRIMARY',NULL,NULL,NULL,NULL,7),('2508','PRIMARY',NULL,NULL,NULL,NULL,2),('2513','PRIMARY',NULL,NULL,NULL,NULL,2),('2518','PRIMARY',NULL,NULL,NULL,NULL,7),('2524','PRIMARY',NULL,NULL,NULL,NULL,25),('2531','PRIMARY',NULL,NULL,NULL,NULL,6),('2535','PRIMARY',NULL,NULL,NULL,NULL,25),('2537','PRIMARY',NULL,NULL,NULL,NULL,2),('2544','PRIMARY',NULL,NULL,NULL,NULL,2),('2546','PRIMARY',NULL,NULL,NULL,NULL,6),('2560','PRIMARY',NULL,NULL,NULL,NULL,2),('2600','PRIMARY',NULL,NULL,NULL,NULL,2),('2620','PRIMARY',NULL,NULL,NULL,NULL,2),('2625','PRIMARY',NULL,NULL,NULL,NULL,2),('2630','PRIMARY',NULL,NULL,NULL,NULL,23),('2637','PRIMARY',NULL,NULL,NULL,NULL,23),('2644','PRIMARY',NULL,NULL,NULL,NULL,23),('2660','PRIMARY',NULL,NULL,NULL,NULL,2),('2665','PRIMARY',NULL,NULL,NULL,NULL,23),('2672','PRIMARY',NULL,NULL,NULL,NULL,2),('2680','PRIMARY',NULL,NULL,NULL,NULL,2),('2682','PRIMARY',NULL,NULL,NULL,NULL,2),('2684','PRIMARY',NULL,NULL,NULL,NULL,23),('2700','PRIMARY',NULL,NULL,NULL,NULL,2),('2702','PRIMARY',NULL,NULL,NULL,NULL,2),('2710','PRIMARY',NULL,NULL,NULL,NULL,2),('2712','PRIMARY',NULL,NULL,NULL,NULL,2),('2720','PRIMARY',NULL,NULL,NULL,NULL,2),('2722','PRIMARY',NULL,NULL,NULL,NULL,2),('2740','PRIMARY',NULL,NULL,NULL,NULL,2),('2742','PRIMARY',NULL,NULL,NULL,NULL,2),('2744','PRIMARY',NULL,NULL,NULL,NULL,2),('2746','PRIMARY',NULL,NULL,NULL,NULL,2),('2748','PRIMARY',NULL,NULL,NULL,NULL,2),('2760','PRIMARY',NULL,NULL,NULL,NULL,2),('2762','PRIMARY',NULL,NULL,NULL,NULL,2),('2780','PRIMARY',NULL,NULL,NULL,NULL,2),('2782','PRIMARY',NULL,NULL,NULL,NULL,2),('2784','PRIMARY',NULL,NULL,NULL,NULL,2),('2786','PRIMARY',NULL,NULL,NULL,NULL,2),('2800','PRIMARY',NULL,NULL,NULL,NULL,23),('2820','PRIMARY',NULL,NULL,NULL,NULL,2),('2852','PRIMARY',NULL,NULL,NULL,NULL,2),('2854','PRIMARY',NULL,NULL,NULL,NULL,2),('2856','PRIMARY',NULL,NULL,NULL,NULL,2),('2858','PRIMARY',NULL,NULL,NULL,NULL,2),('2860','PRIMARY',NULL,NULL,NULL,NULL,2),('2862','PRIMARY',NULL,NULL,NULL,NULL,2),('2864','PRIMARY',NULL,NULL,NULL,NULL,2),('2866','PRIMARY',NULL,NULL,NULL,NULL,2),('2868','PRIMARY',NULL,NULL,NULL,NULL,2),('2870','PRIMARY',NULL,NULL,NULL,NULL,2),('2872','PRIMARY',NULL,NULL,NULL,NULL,2),('2874','PRIMARY',NULL,NULL,NULL,NULL,23),('2881','PRIMARY',NULL,NULL,NULL,NULL,2),('2883','PRIMARY',NULL,NULL,NULL,NULL,2),('2885','PRIMARY',NULL,NULL,NULL,NULL,6),('2889','PRIMARY',NULL,NULL,NULL,NULL,7);
/*!40000 ALTER TABLE `KREW_RTE_BRCH_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_S`
--

LOCK TABLES `KRMS_TERM_RSLVR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ROLE_MBR_ATTR_DATA_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_ROLE_MBR_ATTR_DATA_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ROLE_MBR_ATTR_DATA_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ATTR_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ROLE_MBR_ATTR_DATA_MT`
--

LOCK TABLES `KRIM_PND_ROLE_MBR_ATTR_DATA_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_MBR_ATTR_DATA_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_MBR_ATTR_DATA_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_T` (
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OUTPUT_TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TERM_RSLVR_ID`),
  UNIQUE KEY `KRMS_TERM_RSLVR_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRMS_TERM_RSLVR_TI2` (`TYP_ID`),
  KEY `KRMS_TERM_RSLVR_FK1` (`OUTPUT_TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_FK3` FOREIGN KEY (`TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_FK1` FOREIGN KEY (`OUTPUT_TERM_SPEC_ID`) REFERENCES `KRMS_TERM_SPEC_T` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_T`
--

LOCK TABLES `KRMS_TERM_RSLVR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_T` DISABLE KEYS */;
INSERT INTO `KRMS_TERM_RSLVR_T` VALUES ('T1000','KR-RULE-TEST','campusSizeResolver','T1000','T1000','Y',1),('T1001','KR-RULE-TEST','orgMemberResolver','T1000','T1001','Y',1);
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TYP_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_TYP_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TYP_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TYP_ATTR_S`
--

LOCK TABLES `KRMS_TYP_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TYP_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TYP_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CTGRY_S`
--

DROP TABLE IF EXISTS `KRMS_CTGRY_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CTGRY_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CTGRY_S`
--

LOCK TABLES `KRMS_CTGRY_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CTGRY_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CTGRY_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CTGRY_T`
--

DROP TABLE IF EXISTS `KRMS_CTGRY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CTGRY_T` (
  `CTGRY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`CTGRY_ID`),
  UNIQUE KEY `KRMS_CTGRY_TC0` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CTGRY_T`
--

LOCK TABLES `KRMS_CTGRY_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CTGRY_T` DISABLE KEYS */;
INSERT INTO `KRMS_CTGRY_T` VALUES ('T1000','misc','KR-RULE-TEST',0);
/*!40000 ALTER TABLE `KRMS_CTGRY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_GRP_T`
--

DROP TABLE IF EXISTS `KRIM_GRP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_T` (
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_NM` varchar(80) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `GRP_DESC` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`),
  UNIQUE KEY `KRIM_GRP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_GRP_TC1` (`GRP_NM`,`NMSPC_CD`),
  KEY `KRIM_GRP_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_GRP_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_T`
--

LOCK TABLES `KRIM_GRP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_T` DISABLE KEYS */;
INSERT INTO `KRIM_GRP_T` VALUES ('1','5B97C50B04A16110E0404F8189D85213',1,'WorkflowAdmin','KR-WKFLW','WorkflowAdmin','1','Y','2008-11-13 14:07:21'),('2000','5B97C50B04A26110E0404F8189D85213',1,'NotificationAdmin','KR-WKFLW','Notification system admin group for automation.','1','Y','2008-11-13 14:07:21'),('2001','5B97C50B04A36110E0404F8189D85213',1,'TestGroup1','KUALI','Test group 1 for KEN testing.','1','Y','2008-11-13 14:07:21'),('2002','5B97C50B04A46110E0404F8189D85213',1,'TestGroup2','KUALI','Test group 2 for KEN testing.','1','Y','2008-11-13 14:07:21'),('2003','5B97C50B04A56110E0404F8189D85213',1,'RiceTeam','KUALI','A test workgroup for KEN.','1','Y','2008-11-13 14:07:22'),('2004','5B97C50B04A66110E0404F8189D85213',1,'Group0','KUALI','Group0','1','Y','2008-11-13 14:07:22'),('2005','5B97C50B04A76110E0404F8189D85213',1,'Group1','KUALI','Group1','1','Y','2008-11-13 14:07:22'),('2006','5B97C50B04A86110E0404F8189D85213',1,'Group2','KUALI','Group2','1','Y','2008-11-13 14:07:22'),('2007','5B97C50B04A96110E0404F8189D85213',1,'Kuali Identity Managers','KUALI','Kuali Identity Managers','1','Y','2008-11-13 14:07:22'),('2008','5B97C50B04AA6110E0404F8189D85213',1,'Kuali Administrators','KUALI','Kuali Administrators','1','Y','2008-11-13 14:07:22'),('2009','5B97C50B04AB6110E0404F8189D85213',1,'Kuali Developers','KUALI','Kuali Developers','1','Y','2008-11-13 14:07:23'),('2200','5B97C50B04B06110E0404F8189D85213',1,'eDoc.Example1.SuperUsers','KUALI','edoclite documentation uses this. Do not change or delete.','1','Y','2008-11-13 14:07:23'),('2201','5B97C50B04B16110E0404F8189D85213',1,'eDoc.Example1.defaultExceptions','KUALI','edoclite documentation uses this. Do not change or delete.','1','Y','2008-11-13 14:07:24'),('2202','5B97C50B04B26110E0404F8189D85213',1,'eDoc.Example1.IUB.Workgroup','KUALI','Edoclite Documentation workgroup for example edoclite named eDoc.Example1','1','Y','2008-11-13 14:07:24'),('2203','5B97C50B04B36110E0404F8189D85213',1,'eDoc.Example1.IUPUI.Workgroup','KUALI','Edoclite Documentation workgroup for example edoclite named eDoc.Example1','1','Y','2008-11-13 14:07:24'),('9997','BB5ECDEF-27B7-44DF-F1B4-84406566C899',1,'RecipeMasters','KR-WKFLW','The masters of recipe making.  These people know it all!','1','Y','2009-05-15 12:21:55'),('9998','988E2790-350E-B816-B4BB-3730F27BCAF4',1,'ChickenRecipeMasters','KR-WKFLW','The masters of chicken recipes.  These people know it all!','1','Y','2009-05-15 12:21:55'),('9999','E96581EA-4C1B-605B-CE46-2A2EADD755FB',1,'MagazineManagers','KR-WKFLW','The managers of the magazine system.','1','Y','2009-05-15 12:21:56');
/*!40000 ALTER TABLE `KRIM_GRP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_ATT_T`
--

DROP TABLE IF EXISTS `KRNS_ATT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_ATT_T` (
  `NTE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `MIME_TYP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FILE_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `ATT_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `FILE_SZ` decimal(14,0) DEFAULT NULL,
  `ATT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTE_ID`),
  UNIQUE KEY `KRNS_ATT_TC0` (`OBJ_ID`),
  CONSTRAINT `KRNS_ATT_TR1` FOREIGN KEY (`NTE_ID`) REFERENCES `KRNS_NTE_T` (`NTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_ATT_T`
--

LOCK TABLES `KRNS_ATT_T` WRITE;
/*!40000 ALTER TABLE `KRNS_ATT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_ATT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_CMPNT_SET_T`
--

DROP TABLE IF EXISTS `KRCR_CMPNT_SET_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_CMPNT_SET_T` (
  `CMPNT_SET_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LAST_UPDT_TS` datetime NOT NULL,
  `CHKSM` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CMPNT_SET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_CMPNT_SET_T`
--

LOCK TABLES `KRCR_CMPNT_SET_T` WRITE;
/*!40000 ALTER TABLE `KRCR_CMPNT_SET_T` DISABLE KEYS */;
INSERT INTO `KRCR_CMPNT_SET_T` VALUES ('DD:RICE','2011-10-30 16:49:58','YF7O4JRiqftiUrQJzhfwpEPP3Oc=',1),('DD:TRAVEL','2012-11-25 19:25:38','qTdEjWgfA5vemMSMR8x8vwRzNts=',1);
/*!40000 ALTER TABLE `KRCR_CMPNT_SET_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_LNK_T`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_LNK_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_LNK_T` (
  `FROM_RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FROM_RTE_NODE_ID`,`TO_RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_LNK_TI1` (`FROM_RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_LNK_TI2` (`TO_RTE_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_LNK_T`
--

LOCK TABLES `KREW_RTE_NODE_LNK_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_LNK_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_NODE_LNK_T` VALUES ('2041','2042'),('2042','2043'),('2580','2581'),('2846','2847'),('2847','2848'),('2848','2849'),('2849','2850'),('2892','2893'),('2895','2896'),('2898','2899'),('2901','2902'),('2904','2905'),('2905','2906'),('2914','2915');
/*!40000 ALTER TABLE `KREW_RTE_NODE_LNK_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_EMP_INFO_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_EMP_INFO_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_EMP_INFO_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRMRY_DEPT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_EMP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `EMP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_REC_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BASE_SLRY_AMT` decimal(15,2) DEFAULT NULL,
  `PRMRY_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_EMP_INFO_MT`
--

LOCK TABLES `KRIM_PND_EMP_INFO_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_EMP_INFO_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_EMP_INFO_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_ACTN_S`
--

DROP TABLE IF EXISTS `KRMS_ACTN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_ACTN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_ACTN_S`
--

LOCK TABLES `KRMS_ACTN_S` WRITE;
/*!40000 ALTER TABLE `KRMS_ACTN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_ACTN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_RSP_ID_S`
--

DROP TABLE IF EXISTS `KRIM_RSP_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_RSP_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_RSP_ID_S`
--

LOCK TABLES `KRIM_RSP_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_RSP_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_RSP_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_ACTN_T`
--

DROP TABLE IF EXISTS `KRMS_ACTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_ACTN_T` (
  `ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SEQ_NO` decimal(5,0) DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ACTN_ID`),
  UNIQUE KEY `KRMS_ACTN_TC2` (`ACTN_ID`,`RULE_ID`,`SEQ_NO`),
  KEY `KRMS_ACTN_TI1` (`TYP_ID`),
  KEY `KRMS_ACTN_TI2` (`RULE_ID`),
  KEY `KRMS_ACTN_TI3` (`RULE_ID`,`SEQ_NO`),
  CONSTRAINT `KRMS_ACTN_FK1` FOREIGN KEY (`RULE_ID`) REFERENCES `KRMS_RULE_T` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_ACTN_T`
--

LOCK TABLES `KRMS_ACTN_T` WRITE;
/*!40000 ALTER TABLE `KRMS_ACTN_T` DISABLE KEYS */;
INSERT INTO `KRMS_ACTN_T` VALUES ('T1000','testAction','Action Stub for Testing','T1002','T1000',1,1,'KR-RULE-TEST');
/*!40000 ALTER TABLE `KRMS_ACTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_NTFCTN_T`
--

DROP TABLE IF EXISTS `KREN_NTFCTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_NTFCTN_T` (
  `NTFCTN_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `DELIV_TYP` varchar(3) COLLATE utf8_bin NOT NULL,
  `CRTE_DTTM` datetime NOT NULL,
  `SND_DTTM` datetime DEFAULT NULL,
  `AUTO_RMV_DTTM` datetime DEFAULT NULL,
  `PRIO_ID` decimal(8,0) NOT NULL,
  `TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT` longtext COLLATE utf8_bin NOT NULL,
  `CNTNT_TYP_ID` decimal(8,0) NOT NULL,
  `CHNL_ID` decimal(8,0) NOT NULL,
  `PRODCR_ID` decimal(8,0) NOT NULL,
  `PROCESSING_FLAG` varchar(15) COLLATE utf8_bin NOT NULL,
  `LOCKD_DTTM` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTFCTN_ID`),
  KEY `KREN_NTFCTN_I1` (`CNTNT_TYP_ID`),
  KEY `KREN_NTFCTN_I2` (`PRIO_ID`),
  KEY `KREN_NTFCTN_I3` (`PRODCR_ID`),
  KEY `KREN_NTFCTN_FK1` (`CHNL_ID`),
  CONSTRAINT `KREN_NTFCTN_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `KREN_CHNL_T` (`CHNL_ID`),
  CONSTRAINT `KREN_NTFCTN_FK2` FOREIGN KEY (`CNTNT_TYP_ID`) REFERENCES `KREN_CNTNT_TYP_T` (`CNTNT_TYP_ID`),
  CONSTRAINT `KREN_NTFCTN_FK3` FOREIGN KEY (`PRIO_ID`) REFERENCES `KREN_PRIO_T` (`PRIO_ID`),
  CONSTRAINT `KREN_NTFCTN_FK4` FOREIGN KEY (`PRODCR_ID`) REFERENCES `KREN_PRODCR_T` (`PRODCR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_NTFCTN_T`
--

LOCK TABLES `KREN_NTFCTN_T` WRITE;
/*!40000 ALTER TABLE `KREN_NTFCTN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_NTFCTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRLC_PSTL_CD_T`
--

DROP TABLE IF EXISTS `KRLC_PSTL_CD_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRLC_PSTL_CD_T` (
  `POSTAL_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'US',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_STATE_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `COUNTY_CD` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CITY_NM` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`POSTAL_CD`,`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_POSTAL_CODE_TC0` (`OBJ_ID`),
  KEY `KR_POSTAL_CODE_TR3` (`COUNTY_CD`,`POSTAL_STATE_CD`,`POSTAL_CNTRY_CD`),
  KEY `KR_POSTAL_CODE_TR2` (`POSTAL_STATE_CD`,`POSTAL_CNTRY_CD`),
  KEY `KR_POSTAL_CODE_TR1` (`POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_POSTAL_CODE_TR1` FOREIGN KEY (`POSTAL_CNTRY_CD`) REFERENCES `KRLC_CNTRY_T` (`POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_POSTAL_CODE_TR2` FOREIGN KEY (`POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`) REFERENCES `KRLC_ST_T` (`POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_POSTAL_CODE_TR3` FOREIGN KEY (`COUNTY_CD`, `POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`) REFERENCES `KRLC_CNTY_T` (`COUNTY_CD`, `STATE_CD`, `POSTAL_CNTRY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRLC_PSTL_CD_T`
--

LOCK TABLES `KRLC_PSTL_CD_T` WRITE;
/*!40000 ALTER TABLE `KRLC_PSTL_CD_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRLC_PSTL_CD_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_ITM_T`
--

DROP TABLE IF EXISTS `KREW_ACTN_ITM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_ITM_T` (
  `ACTN_ITM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ASND_DT` datetime NOT NULL,
  `RQST_CD` char(1) COLLATE utf8_bin NOT NULL,
  `ACTN_RQST_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_LBL` varchar(128) COLLATE utf8_bin NOT NULL,
  `DOC_HDLR_URL` varchar(255) COLLATE utf8_bin NOT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `DTYPE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RQST_LBL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_ITM_ID`),
  KEY `KREW_ACTN_ITM_T1` (`PRNCPL_ID`),
  KEY `KREW_ACTN_ITM_TI2` (`DOC_HDR_ID`),
  KEY `KREW_ACTN_ITM_TI3` (`ACTN_RQST_ID`),
  KEY `KREW_ACTN_ITM_TI5` (`PRNCPL_ID`,`DLGN_TYP`,`DOC_HDR_ID`),
  KEY `KREW_ACTN_ITM_TI6` (`DLGN_TYP`,`DLGN_PRNCPL_ID`,`DLGN_GRP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_ITM_T`
--

LOCK TABLES `KREW_ACTN_ITM_T` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_ITM_T` DISABLE KEYS */;
INSERT INTO `KREW_ACTN_ITM_T` VALUES ('10222','director','2008-12-22 13:26:36','K','2366','2695','director director',NULL,'Travel Doc 2 - dfads','Travel Request','http://localhost:8080/kr-dev/travelDocument2.do?methodToCall=docHandler','TravelRequest','2028',NULL,1,NULL,NULL,NULL,NULL),('10224','user4','2009-03-17 10:14:41','A','2367','2701',NULL,NULL,'Travel Request - test','Travel Request','http://localhost:8080/kr-dev/travelDocument2.do?methodToCall=docHandler','TravelRequest','2022',NULL,1,NULL,NULL,NULL,NULL),('10225','user2','2009-03-17 10:14:41','A','2368','2701',NULL,'user4','Travel Request - test','Travel Request','http://localhost:8080/kr-dev/travelDocument2.do?methodToCall=docHandler','TravelRequest','2061','S',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KREW_ACTN_ITM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_ITM_S`
--

DROP TABLE IF EXISTS `KREW_ACTN_ITM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_ITM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10226 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_ITM_S`
--

LOCK TABLES `KREW_ACTN_ITM_S` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_ITM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_ACTN_ITM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TYP_S`
--

DROP TABLE IF EXISTS `KRMS_TYP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TYP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TYP_S`
--

LOCK TABLES `KRMS_TYP_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TYP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TYP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_EMP_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_EMP_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_EMP_TYP_T` (
  `EMP_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EMP_TYP_CD`),
  UNIQUE KEY `KRIM_EMP_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EMP_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_EMP_TYP_T`
--

LOCK TABLES `KRIM_EMP_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_EMP_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_EMP_TYP_T` VALUES ('N','5B97C50B03826110E0404F8189D85213',1,'Non-Professional','Y','02','2008-11-13 14:06:32'),('O','5B97C50B03836110E0404F8189D85213',1,'Other','Y','99','2008-11-13 14:06:33'),('P','5B97C50B03846110E0404F8189D85213',1,'Professional','Y','01','2008-11-13 14:06:33');
/*!40000 ALTER TABLE `KRIM_EMP_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRLC_CMP_T`
--

DROP TABLE IF EXISTS `KRLC_CMP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRLC_CMP_T` (
  `CAMPUS_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CAMPUS_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_SHRT_NM` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_TYP_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`CAMPUS_CD`),
  UNIQUE KEY `KRNS_CAMPUS_TC0` (`OBJ_ID`),
  KEY `SH_CAMPUS_TR1` (`CAMPUS_TYP_CD`),
  CONSTRAINT `SH_CAMPUS_TR1` FOREIGN KEY (`CAMPUS_TYP_CD`) REFERENCES `KRLC_CMP_TYP_T` (`CAMPUS_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRLC_CMP_T`
--

LOCK TABLES `KRLC_CMP_T` WRITE;
/*!40000 ALTER TABLE `KRLC_CMP_T` DISABLE KEYS */;
INSERT INTO `KRLC_CMP_T` VALUES ('BL','BLOOMINGTON','BLOOMINGTON','B','014F3DB2478DA448E043814FD28EA448',1,'Y'),('BX','BLGTN OFF CAMPUS','BLGTN OFF CA','P','014F3DB24798A448E043814FD28EA448',1,'Y'),('CO','COLUMBUS','COLUMBUS','F','014F3DB2478EA448E043814FD28EA448',1,'Y'),('EA','EAST-RICHMOND','EA-RICHMOND','B','014F3DB2478FA448E043814FD28EA448',1,'Y'),('FW','FORT WAYNE','FORT WAYNE','B','014F3DB24790A448E043814FD28EA448',1,'Y'),('IN','INDIANAPOLIS','INDIANAPOLIS','B','014F3DB24791A448E043814FD28EA448',1,'Y'),('KO','KOKOMO','KOKOMO','B','014F3DB24792A448E043814FD28EA448',1,'Y'),('NW','NORTHWEST-GARY','NW-GARY','B','014F3DB24793A448E043814FD28EA448',1,'Y'),('OC','OFF CAMPUS','OFF CAMPUS','F','014F3DB24794A448E043814FD28EA448',1,'Y'),('SB','SOUTH BEND','SOUTH BEND','B','014F3DB24795A448E043814FD28EA448',1,'Y'),('SE','SOUTHEAST-NEW ALBANY','SE-NEW ALBNY','B','014F3DB24796A448E043814FD28EA448',1,'Y'),('UA','UNIVERSITY ADMINISTRATION','UNIVER ADMIN','F','014F3DB24797A448E043814FD28EA448',1,'Y');
/*!40000 ALTER TABLE `KRLC_CMP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_TYP_ATTR_T`
--

DROP TABLE IF EXISTS `KRIM_TYP_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_TYP_ATTR_T` (
  `KIM_TYP_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`KIM_TYP_ATTR_ID`),
  UNIQUE KEY `KRIM_TYP_ATTR_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_TYP_ATTR_TC1` (`SORT_CD`,`KIM_TYP_ID`,`KIM_ATTR_DEFN_ID`,`ACTV_IND`),
  KEY `KRIM_TYP_ATTRIBUTE_TI1` (`KIM_TYP_ID`),
  KEY `KRIM_TYP_ATTR_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_TYP_ATTR_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `KRIM_ATTR_DEFN_T` (`KIM_ATTR_DEFN_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_TYP_ATTRIBUTE_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_TYP_ATTR_T`
--

LOCK TABLES `KRIM_TYP_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_TYP_ATTR_T` DISABLE KEYS */;
INSERT INTO `KRIM_TYP_ATTR_T` VALUES ('1','5ADF18B6D4AD7954E0404F8189D85002',1,'a','3','13','Y'),('10','5ADF18B6D4C87954E0404F8189D85002',1,'c','8','15','Y'),('101','603B735FA6BBFE21E0404F8189D8083B',1,'a','56','13','Y'),('102','603B735FA6C2FE21E0404F8189D8083B',1,'b','56','7','Y'),('103','603B735FA6BEFE21E0404F8189D8083B',1,'a','57','5','Y'),('104','603B735FA6BFFE21E0404F8189D8083B',1,'b','57','44','Y'),('107','60432A73A6A39F65E0404F8189D86AA4',1,'a','54','13','Y'),('108','606763510FBD96D3E0404F8189D857A2',1,'a','59','13','Y'),('109','606763510FBE96D3E0404F8189D857A2',1,'b','59','8','Y'),('11','5ADF18B6D4C97954E0404F8189D85002',1,'b','8','16','Y'),('111','67F145466E909160E0404F8189D86771',1,'a','67','4','Y'),('112','67F145466E959160E0404F8189D86771',1,'b','14','13','Y'),('113','B7DBFABEFD3F8CBFE0402E0AA9D757C9',1,'a','68','47','Y'),('114','B7DBFABEFD408CBFE0402E0AA9D757C9',1,'a','69','47','Y'),('115','B7DBFABEFD418CBFE0402E0AA9D757C9',1,'b','69','10','Y'),('116','B7DBFABEFD428CBFE0402E0AA9D757C9',1,'a','70','47','Y'),('117','B7DBFABEFD438CBFE0402E0AA9D757C9',1,'b','70','50','Y'),('118','B7DBFABEFD448CBFE0402E0AA9D757C9',1,'c','70','6','Y'),('119','B7DBFABEFD458CBFE0402E0AA9D757C9',1,'a','71','47','Y'),('12','5ADF18B6D4CE7954E0404F8189D85002',1,'a','9','13','Y'),('120','B7DBFABEFD468CBFE0402E0AA9D757C9',1,'b','71','51','Y'),('121','B7DBFABEFD478CBFE0402E0AA9D757C9',1,'c','71','50','Y'),('122','B7DBFABEFD488CBFE0402E0AA9D757C9',1,'a','72','47','Y'),('123','B7DBFABEFD498CBFE0402E0AA9D757C9',1,'b','72','52','Y'),('124','B7DBFABEFD4A8CBFE0402E0AA9D757C9',1,'a','73','47','Y'),('125','B7DBFABEFD4B8CBFE0402E0AA9D757C9',1,'b','73','53','Y'),('126','B7DBFABEFD4C8CBFE0402E0AA9D757C9',1,'c','73','48','Y'),('127','B7DBFABEFD4D8CBFE0402E0AA9D757C9',1,'a','74','47','Y'),('128','B7DBFABEFD4E8CBFE0402E0AA9D757C9',1,'b','74','51','Y'),('129','B7DBFABEFD4F8CBFE0402E0AA9D757C9',1,'c','74','49','Y'),('130','B7DBFABEFD508CBFE0402E0AA9D757C9',1,'d','74','50','Y'),('131','B7DBFABEFD518CBFE0402E0AA9D757C9',1,'e','74','6','Y'),('132','B7DBFABEFD528CBFE0402E0AA9D757C9',1,'a','75','47','Y'),('133','B7DBFABEFD538CBFE0402E0AA9D757C9',1,'b','75','51','Y'),('134','B7DBFABEFD548CBFE0402E0AA9D757C9',1,'c','75','49','Y'),('135','B7DBFABEFD558CBFE0402E0AA9D757C9',1,'d','75','53','Y'),('136','B7DBFABEFD568CBFE0402E0AA9D757C9',1,'e','75','48','Y'),('137','BC5444677C23328CE0402E0AA9D77D80',1,'a','8','54','Y'),('138','69FA55ACC2EE2598E0404F8189D86880',1,'e','7','46','Y'),('14','5ADF18B6D4D07954E0404F8189D85002',1,'b','9','9','Y'),('15','5ADF18B6D4D87954E0404F8189D85002',1,'a','10','4','Y'),('16','5ADF18B6D4D97954E0404F8189D85002',1,'b','10','5','Y'),('17','5ADF18B6D4DD7954E0404F8189D85002',1,'a','11','5','Y'),('18','5ADF18B6D4DE7954E0404F8189D85002',1,'b','11','6','Y'),('19','5ADF18B6D4E47954E0404F8189D85002',1,'a','12','4','Y'),('2','5ADF18B6D4B67954E0404F8189D85002',1,'a','4','14','Y'),('20','5ADF18B6D4E57954E0404F8189D85002',1,'b','12','2','Y'),('21','5ADF18B6D4E87954E0404F8189D85002',1,'a','13','3','Y'),('22','5ADF18B6D4EB7954E0404F8189D85002',1,'a','14','10','Y'),('23','5ADF18B6D4EE7954E0404F8189D85002',1,'a','15','4','Y'),('24','5ADF18B6D4EF7954E0404F8189D85002',1,'b','15','1','Y'),('25','5ADF18B6D4F37954E0404F8189D85002',1,'a','16','4','Y'),('26','5ADF18B6D4F47954E0404F8189D85002',1,'b','16','5','Y'),('27','5ADF18B6D4F57954E0404F8189D85002',1,'c','16','11','Y'),('28','5ADF18B6D4F87954E0404F8189D85002',1,'a','17','12','Y'),('29','5ADF18B6D4FA7954E0404F8189D85002',1,'a','18','4','Y'),('3','5ADF18B6D4B97954E0404F8189D85002',1,'a','5','13','Y'),('30','5ADF18B6D4FB7954E0404F8189D85002',1,'b','18','18','Y'),('31','5ADF18B6D4FE7954E0404F8189D85002',1,'a','19','4','Y'),('32','5ADF18B6D4FF7954E0404F8189D85002',1,'b','19','19','Y'),('33','5ADF18B6D5027954E0404F8189D85002',1,'a','20','4','Y'),('34','5ADF18B6D5037954E0404F8189D85002',1,'b','20','20','Y'),('35','5ADF18B6D5067954E0404F8189D85002',1,'a','21','4','Y'),('36','5ADF18B6D5077954E0404F8189D85002',1,'b','21','21','Y'),('4','5ADF18B6D4BA7954E0404F8189D85002',1,'b','5','14','Y'),('7','5ADF18B6D4C17954E0404F8189D85002',1,'a','7','13','Y'),('8','5ADF18B6D4C27954E0404F8189D85002',1,'b','7','16','Y'),('80','5C4970B2B2E18277E0404F8189D80B30',1,'c','7','40','Y'),('81','5C4970B2B2E28277E0404F8189D80B30',1,'d','7','41','Y'),('89','5C7D997640695002E0404F8189D86F11',1,'a','42','42','Y'),('9','5ADF18B6D4C77954E0404F8189D85002',1,'a','8','13','Y'),('91','5C7D9976406B5002E0404F8189D86F11',1,'a','43','42','Y'),('95','5C997D14EAC3FE40E0404F8189D87DC5',1,'a','52','13','Y'),('96','5C997D14EAC4FE40E0404F8189D87DC5',1,'b','52','16','Y'),('97','5C997D14EAC5FE40E0404F8189D87DC5',1,'c','52','6','Y'),('KR1000','CDC48BA7E67787DFE040F90A05B92A31',1,'a','KR1000','13','Y'),('KR1001','CDC48BA7E67887DFE040F90A05B92A31',1,'b','KR1000','16','Y'),('KR1002','CDC48BA7E67987DFE040F90A05B92A31',1,'c','KR1000','15','Y'),('KR1003','CEA27F2DB2DB3593E040F90A05B924DB',1,'A','KR1001','KR1000','Y'),('KR1004','CEA27F2DB2DE3593E040F90A05B924DB',1,'b','21','KR1001','Y');
/*!40000 ALTER TABLE `KRIM_TYP_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_PRODCR_S`
--

DROP TABLE IF EXISTS `KREN_PRODCR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_PRODCR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_PRODCR_S`
--

LOCK TABLES `KREN_PRODCR_S` WRITE;
/*!40000 ALTER TABLE `KREN_PRODCR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_PRODCR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_PRODCR_T`
--

DROP TABLE IF EXISTS `KREN_PRODCR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_PRODCR_T` (
  `PRODCR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(1000) COLLATE utf8_bin NOT NULL,
  `CNTCT_INFO` varchar(1000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PRODCR_ID`),
  UNIQUE KEY `KREN_PRODCR_TC0` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_PRODCR_T`
--

LOCK TABLES `KREN_PRODCR_T` WRITE;
/*!40000 ALTER TABLE `KREN_PRODCR_T` DISABLE KEYS */;
INSERT INTO `KREN_PRODCR_T` VALUES (1,'Notification System','This producer represents messages sent from the general message sending forms.','kuali-ken-testing@cornell.edu',1,NULL),(2,'University Library System','This producer represents messages sent from the University Library system.','kuali-ken-testing@cornell.edu',1,NULL),(3,'University Events Office','This producer represents messages sent from the University Events system.','kuali-ken-testing@cornell.edu',1,NULL);
/*!40000 ALTER TABLE `KREN_PRODCR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_GRP_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_PND_GRP_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_GRP_ATTR_DATA_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ATTR_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_GRP_ATTR_DATA_T`
--

LOCK TABLES `KRIM_PND_GRP_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_GRP_ATTR_DATA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_GRP_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_USAGE_S`
--

DROP TABLE IF EXISTS `KRMS_NL_USAGE_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_USAGE_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_USAGE_S`
--

LOCK TABLES `KRMS_NL_USAGE_S` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_PARM_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_PARM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_PARM_T` (
  `TERM_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL,
  PRIMARY KEY (`TERM_PARM_ID`),
  KEY `KRMS_TERM_PARM_TI1` (`TERM_ID`),
  CONSTRAINT `KRMS_TERM_PARM_FK1` FOREIGN KEY (`TERM_ID`) REFERENCES `KRMS_TERM_T` (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_PARM_T`
--

LOCK TABLES `KRMS_TERM_PARM_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_PARM_T` DISABLE KEYS */;
INSERT INTO `KRMS_TERM_PARM_T` VALUES ('T1000','T1000','Campus Code','BL',1);
/*!40000 ALTER TABLE `KRMS_TERM_PARM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_BLOB_TRIGGERS` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `BLOB_DATA` longblob,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `KRSB_QRTZ_BLOB_TRIGGERS_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `KRSB_QRTZ_TRIGGERS` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `KRSB_QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_CTZNSHP_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_CTZNSHP_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_CTZNSHP_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_CTZNSHP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `CTZNSHP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STRT_DT` datetime DEFAULT NULL,
  `END_DT` datetime DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_CTZNSHP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_CTZNSHP_MT`
--

LOCK TABLES `KRIM_PND_CTZNSHP_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_CTZNSHP_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_CTZNSHP_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TYP_T`
--

DROP TABLE IF EXISTS `KRMS_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TYP_T` (
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `SRVC_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ID`),
  UNIQUE KEY `KRMS_TYP_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TYP_T`
--

LOCK TABLES `KRMS_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TYP_T` DISABLE KEYS */;
INSERT INTO `KRMS_TYP_T` VALUES ('1000','Notify PeopleFlow','KR-RULE','notificationPeopleFlowActionTypeService','Y',1),('1001','Route to PeopleFlow','KR-RULE','approvalPeopleFlowActionTypeService','Y',1),('1002','Validation Rule','KR-RULE','validationRuleTypeService','Y',1),('1003','Validation Action','KR-RULE','validationActionTypeService','Y',1),('T1000','TermResolver','KR-RULE-TEST',NULL,'Y',1),('T1001','CAMPUS','KR-RULE-TEST','myCampusService','Y',1),('T1002','KrmsActionResolverType','KR-RULE-TEST','testActionTypeService','Y',1),('T1003','CONTEXT','KR-RULE-TEST',NULL,'Y',1),('T1004','AGENDA','KR-RULE-TEST',NULL,'Y',1),('T1005','Campus Agenda','KR-RULE-TEST','campusAgendaTypeService','Y',1);
/*!40000 ALTER TABLE `KRMS_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_PARM_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_PARM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_PARM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_PARM_S`
--

LOCK TABLES `KRMS_TERM_PARM_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_PARM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_PARM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_NTE_S`
--

DROP TABLE IF EXISTS `KREW_DOC_NTE_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_NTE_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_NTE_S`
--

LOCK TABLES `KREW_DOC_NTE_S` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_NTE_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_NTE_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_AFLTN_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_AFLTN_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_AFLTN_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_AFLTN_ID_S`
--

LOCK TABLES `KRIM_ENTITY_AFLTN_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_AFLTN_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_AFLTN_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_NTE_T`
--

DROP TABLE IF EXISTS `KREW_DOC_NTE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_NTE_T` (
  `DOC_NTE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `AUTH_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CRT_DT` datetime NOT NULL,
  `TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`DOC_NTE_ID`),
  KEY `KREW_DOC_NTE_TI1` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_NTE_T`
--

LOCK TABLES `KREW_DOC_NTE_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_NTE_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_NTE_T` VALUES ('2000','2213','admin','2008-09-16 13:05:00','Added this test note.',1),('2002','2219','admin','2008-09-16 14:02:36','This is a test note.',3),('2004','2219','user1','2008-09-16 14:25:58','Added a note at second node.',2);
/*!40000 ALTER TABLE `KREW_DOC_NTE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_RSP_ACTN_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ROLE_RSP_ACTN_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_RSP_ACTN_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_RSP_ACTN_ID_S`
--

LOCK TABLES `KRIM_ROLE_RSP_ACTN_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_ACTN_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_ACTN_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_AGENDA_T`
--

DROP TABLE IF EXISTS `KRMS_AGENDA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_AGENDA_T` (
  `AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `INIT_AGENDA_ITM_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AGENDA_ID`),
  UNIQUE KEY `KRMS_AGENDA_TC1` (`NM`,`CNTXT_ID`),
  KEY `KRMS_AGENDA_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_AGENDA_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_AGENDA_T`
--

LOCK TABLES `KRMS_AGENDA_T` WRITE;
/*!40000 ALTER TABLE `KRMS_AGENDA_T` DISABLE KEYS */;
INSERT INTO `KRMS_AGENDA_T` VALUES ('T1000','My Fabulous Agenda','CONTEXT1','T1000',NULL,'Y',1),('T1001','SimpleAgendaCompoundProp','CONTEXT1','T1007','T1004','Y',1),('T1002','One Big Rule','CONTEXT1','T1008','T1004','Y',1);
/*!40000 ALTER TABLE `KRMS_AGENDA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_AGENDA_S`
--

DROP TABLE IF EXISTS `KRMS_AGENDA_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_AGENDA_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_AGENDA_S`
--

LOCK TABLES `KRMS_AGENDA_S` WRITE;
/*!40000 ALTER TABLE `KRMS_AGENDA_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_AGENDA_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_RQST_S`
--

DROP TABLE IF EXISTS `KREW_ACTN_RQST_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_RQST_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2369 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_RQST_S`
--

LOCK TABLES `KREW_ACTN_RQST_S` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_RQST_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_ACTN_RQST_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_PREF_S`
--

DROP TABLE IF EXISTS `KREN_RECIP_PREF_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_PREF_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_PREF_S`
--

LOCK TABLES `KREN_RECIP_PREF_S` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_PREF_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RECIP_PREF_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_MSG_QUE_T`
--

DROP TABLE IF EXISTS `KRSB_MSG_QUE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_MSG_QUE_T` (
  `MSG_QUE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `DT` datetime NOT NULL,
  `EXP_DT` datetime DEFAULT NULL,
  `PRIO` decimal(8,0) NOT NULL,
  `STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `RTRY_CNT` decimal(8,0) NOT NULL,
  `IP_NBR` varchar(2000) COLLATE utf8_bin NOT NULL,
  `SVC_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `SVC_MTHD_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `APP_VAL_ONE` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `APP_VAL_TWO` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`MSG_QUE_ID`),
  KEY `KRSB_MSG_QUE_TI1` (`SVC_NM`,`SVC_MTHD_NM`(255)),
  KEY `KRSB_MSG_QUE_TI2` (`APPL_ID`,`STAT_CD`,`IP_NBR`(255),`DT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_MSG_QUE_T`
--

LOCK TABLES `KRSB_MSG_QUE_T` WRITE;
/*!40000 ALTER TABLE `KRSB_MSG_QUE_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_MSG_QUE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_MSG_QUE_S`
--

DROP TABLE IF EXISTS `KRSB_MSG_QUE_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_MSG_QUE_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=467 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_MSG_QUE_S`
--

LOCK TABLES `KRSB_MSG_QUE_S` WRITE;
/*!40000 ALTER TABLE `KRSB_MSG_QUE_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_MSG_QUE_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_PARM_SPEC_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_PARM_SPEC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_PARM_SPEC_T` (
  `TERM_RSLVR_PARM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(45) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL,
  PRIMARY KEY (`TERM_RSLVR_PARM_SPEC_ID`),
  KEY `KRMS_TERM_RESLV_PARM_FK1` (`TERM_RSLVR_ID`),
  CONSTRAINT `KRMS_TERM_RESLV_PARM_FK1` FOREIGN KEY (`TERM_RSLVR_ID`) REFERENCES `KRMS_TERM_RSLVR_T` (`TERM_RSLVR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_PARM_SPEC_T`
--

LOCK TABLES `KRMS_TERM_RSLVR_PARM_SPEC_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_PARM_SPEC_T` DISABLE KEYS */;
INSERT INTO `KRMS_TERM_RSLVR_PARM_SPEC_T` VALUES ('T1000','T1000','Campus Code',1),('T1001','T1001','Org Code',1),('T1002','T1001','Principal ID',1);
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_PARM_SPEC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_ATTR_S`
--

LOCK TABLES `KRMS_CNTXT_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_S`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2923 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_S`
--

LOCK TABLES `KREW_RTE_NODE_S` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RTE_NODE_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_ORDER_DOC_T`
--

DROP TABLE IF EXISTS `BK_ORDER_DOC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_ORDER_DOC_T` (
  `DOC_HDR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_ORDER_DOC_T`
--

LOCK TABLES `BK_ORDER_DOC_T` WRITE;
/*!40000 ALTER TABLE `BK_ORDER_DOC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `BK_ORDER_DOC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_GRP_DOCUMENT_T`
--

DROP TABLE IF EXISTS `KRIM_GRP_DOCUMENT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_DOCUMENT_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `GRP_NMSPC` varchar(100) COLLATE utf8_bin NOT NULL,
  `GRP_NM` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `GRP_DESC` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_DOCUMENT_T`
--

LOCK TABLES `KRIM_GRP_DOCUMENT_T` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_DOCUMENT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_GRP_DOCUMENT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_T`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_T` (
  `RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `RTE_MTHD_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTE_MTHD_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `FNL_APRVR_IND` decimal(1,0) DEFAULT NULL,
  `MNDTRY_RTE_IND` decimal(1,0) DEFAULT NULL,
  `ACTVN_TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `BRCH_PROTO_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `CONTENT_FRAGMENT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NEXT_DOC_STAT` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_TI1` (`NM`,`DOC_TYP_ID`),
  KEY `KREW_RTE_NODE_TI2` (`DOC_TYP_ID`,`FNL_APRVR_IND`),
  KEY `KREW_RTE_NODE_TI3` (`BRCH_PROTO_ID`),
  KEY `KREW_RTE_NODE_TI4` (`DOC_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_T`
--

LOCK TABLES `KREW_RTE_NODE_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_NODE_T` VALUES ('2004','2011','placeholder','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,2,NULL,'1',NULL),('2006','2012','placeholder','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,2,NULL,'1',NULL),('2039','2023','Adhoc Routing','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,1,0,'S',NULL,1,NULL,'1',NULL),('2041','2024','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,'1',NULL),('2042','2024','ReviewersNode','org.kuali.rice.kew.engine.node.RequestsNode','ReviewersRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2043','2024','RequestsNode','org.kuali.rice.kew.engine.node.RequestsNode','NotificationRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2057','2029','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,2,NULL,'1',NULL),('2059','2030','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2061','2031','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2063','2032','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2065','2033','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2067','2034','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2344','2282','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2580','2440','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'2201',NULL),('2581','2440','eDoc.Example1.Node1','org.kuali.rice.kew.engine.node.RequestsNode','eDoc.Example1.Node1','FR',0,0,'P',NULL,1,NULL,'2201',NULL),('2840','2680','PreRoute','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,2,NULL,NULL,NULL),('2846','2683','PreRoute','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2847','2683','DestinationApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-DestinationRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2848','2683','TravelerApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-TravelerRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2849','2683','SupervisorApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-SupervisorRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2850','2683','AccountApproval','org.kuali.rice.kew.engine.node.RequestsNode','TravelRequest-AccountRouting','FR',0,0,'S',NULL,1,NULL,'1',NULL),('2892','2704','Adhoc Routing','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,4,NULL,'1',NULL),('2893','2704','Recipe Masters Group Approval','org.kuali.rice.kew.engine.node.RequestsNode',NULL,NULL,0,0,'S',NULL,4,NULL,'1',NULL),('2895','2707','Adhoc Routing','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2896','2707','Chicken Recipe Masters Group Approval','org.kuali.rice.kew.engine.node.RequestsNode',NULL,NULL,0,0,'S',NULL,1,NULL,'1',NULL),('2898','2995','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2899','2995','RoleType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2901','2996','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2902','2996','GroupType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2904','2997','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2905','2997','GroupType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2906','2997','RoleType','org.kuali.rice.kew.engine.node.RoleNode','org.kuali.rice.kew.role.RoleRouteModule','RM',0,0,'P',NULL,1,NULL,NULL,NULL),('2908','2998','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2910','2999','AdHoc','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'S',NULL,1,NULL,NULL,NULL),('2914','3006','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2915','3006','PeopleFlows','org.kuali.rice.kew.engine.node.RequestsNode',NULL,'RE',0,0,'R',NULL,1,NULL,'1',NULL),('2917','3007','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2919','3008','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL),('2921','3009','Initiated','org.kuali.rice.kew.engine.node.InitialNode',NULL,NULL,0,0,'P',NULL,1,NULL,'1',NULL);
/*!40000 ALTER TABLE `KREW_RTE_NODE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_ATTR_T` (
  `CNTXT_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_ATTR_ID`),
  KEY `KRMS_CNTXT_ATTR_TI1` (`CNTXT_ID`),
  KEY `KRMS_CNTXT_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_CNTXT_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_CNTXT_ATTR_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_ATTR_T`
--

LOCK TABLES `KRMS_CNTXT_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_ATTR_T` DISABLE KEYS */;
INSERT INTO `KRMS_CNTXT_ATTR_T` VALUES ('T1000','CONTEXT1','BLAH','T1000',1);
/*!40000 ALTER TABLE `KRMS_CNTXT_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_TERM_SPEC_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_TERM_SPEC_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_TERM_SPEC_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_TERM_SPEC_S`
--

LOCK TABLES `KRMS_CNTXT_VLD_TERM_SPEC_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_TERM_SPEC_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_TERM_SPEC_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_CRON_TRIGGERS` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CRON_EXPRESSION` varchar(80) COLLATE utf8_bin NOT NULL,
  `TIME_ZONE_ID` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `KRSB_QRTZ_CRON_TRIGGERS_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `KRSB_QRTZ_TRIGGERS` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `KRSB_QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_BAM_PARM_S`
--

DROP TABLE IF EXISTS `KRSB_BAM_PARM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_BAM_PARM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_BAM_PARM_S`
--

LOCK TABLES `KRSB_BAM_PARM_S` WRITE;
/*!40000 ALTER TABLE `KRSB_BAM_PARM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_BAM_PARM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_BAM_PARM_T`
--

DROP TABLE IF EXISTS `KRSB_BAM_PARM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_BAM_PARM_T` (
  `BAM_PARM_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `BAM_ID` decimal(14,0) NOT NULL,
  `PARM` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`BAM_PARM_ID`),
  KEY `KREW_BAM_PARM_TI1` (`BAM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_BAM_PARM_T`
--

LOCK TABLES `KRSB_BAM_PARM_T` WRITE;
/*!40000 ALTER TABLE `KRSB_BAM_PARM_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_BAM_PARM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_TERM_SPEC_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_TERM_SPEC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_TERM_SPEC_T` (
  `CNTXT_TERM_SPEC_PREREQ_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PREREQ` varchar(1) COLLATE utf8_bin DEFAULT 'n',
  PRIMARY KEY (`CNTXT_TERM_SPEC_PREREQ_ID`),
  KEY `KRMS_CNTXT_VLD_TERM_SPEC_TI2` (`TERM_SPEC_ID`),
  KEY `KRMS_CNTXT_VLD_TERM_SPEC_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_TERM_SPEC_TI1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_TERM_SPEC_TI2` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `KRMS_TERM_SPEC_T` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_TERM_SPEC_T`
--

LOCK TABLES `KRMS_CNTXT_VLD_TERM_SPEC_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_TERM_SPEC_T` DISABLE KEYS */;
INSERT INTO `KRMS_CNTXT_VLD_TERM_SPEC_T` VALUES ('T1000','CONTEXT1','T1002','N'),('T1001','CONTEXT1','T1003','N'),('T1002','CONTEXT1','T1004','N'),('T1003','CONTEXT1','T1005','N'),('T1004','CONTEXT1','T1006','N'),('T1005','CONTEXT1','T1007','N'),('T1006','CONTEXT1','T1000','N'),('T1007','CONTEXT1','T1001','N');
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_TERM_SPEC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_INSTN_T`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_INSTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_INSTN_T` (
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `BRCH_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PROC_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `CMPLT_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `INIT_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_TI1` (`DOC_HDR_ID`,`ACTV_IND`,`CMPLT_IND`),
  KEY `KREW_RTE_NODE_INSTN_TI2` (`RTE_NODE_ID`),
  KEY `KREW_RTE_NODE_INSTN_TI3` (`BRCH_ID`),
  KEY `KREW_RTE_NODE_INSTN_TI4` (`PROC_RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_INSTN_T`
--

LOCK TABLES `KREW_RTE_NODE_INSTN_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_INSTN_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_NODE_INSTN_T` VALUES ('2201','2160','2006','2200',NULL,1,0,1,1),('2203','2161','2006','2202',NULL,1,0,1,1),('2281','2220','2006','2280',NULL,1,0,1,1),('2283','2221','2006','2282',NULL,1,0,1,1),('2285','2222','2006','2284',NULL,1,0,1,1),('2287','2223','2006','2286',NULL,1,0,1,1),('2289','2224','2006','2288',NULL,1,0,1,1),('2361','2300','2006','2360',NULL,1,0,1,1),('2401','2340','2006','2400',NULL,1,0,1,1),('2441','2380','2057','2440',NULL,1,0,1,1),('2443','2381','2057','2442',NULL,1,0,1,1),('2445','2382','2057','2444',NULL,1,0,1,1),('2447','2383','2057','2446',NULL,1,0,1,1),('2449','2384','2057','2448',NULL,0,1,0,2),('2453','2385','2057','2452',NULL,1,0,1,1),('2455','2386','2057','2454',NULL,1,0,1,1),('2473','2392','2057','2472',NULL,0,1,0,2),('2480','2394','2057','2479',NULL,0,1,0,2),('2484','2395','2057','2483',NULL,1,0,1,1),('2532','2406','2057','2531',NULL,0,1,0,2),('2545','2409','2067','2544',NULL,1,0,1,1),('2547','2410','2067','2546',NULL,0,1,0,2),('2601','2460','2006','2600',NULL,1,0,1,1),('2701','2540','2057','2700',NULL,1,0,1,1),('2703','2541','2057','2702',NULL,1,0,1,1),('2711','2545','2057','2710',NULL,1,0,1,1),('2713','2546','2057','2712',NULL,1,0,1,1),('2721','2560','2057','2720',NULL,1,0,1,1),('2723','2561','2057','2722',NULL,1,0,1,1),('2853','2684','2846','2852',NULL,1,0,1,1),('2855','2685','2846','2854',NULL,1,0,1,1),('2857','2686','2846','2856',NULL,1,0,1,1),('2859','2687','2846','2858',NULL,1,0,1,1),('2861','2688','2846','2860',NULL,1,0,1,1),('2863','2689','2846','2862',NULL,1,0,1,1),('2865','2690','2846','2864',NULL,1,0,1,1),('2867','2691','2846','2866',NULL,1,0,1,1),('2869','2692','2846','2868',NULL,1,0,1,1),('2871','2693','2846','2870',NULL,1,0,1,1),('2873','2694','2846','2872',NULL,1,0,1,1),('2875','2695','2846','2874',NULL,0,1,0,2),('2876','2695','2847','2874',NULL,0,1,0,3),('2877','2695','2848','2874',NULL,0,1,0,3),('2878','2695','2849','2874',NULL,0,1,0,3),('2879','2695','2850','2874',NULL,0,1,0,2),('2882','2696','2846','2881',NULL,1,0,1,1),('2884','2698','2846','2883',NULL,1,0,1,1),('2886','2700','2840','2885',NULL,0,1,0,2),('2890','2701','2846','2889',NULL,0,1,0,2),('2891','2701','2847','2889',NULL,1,0,0,2);
/*!40000 ALTER TABLE `KREW_RTE_NODE_INSTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_NM_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_NM_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_NM_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_NM_ID_S`
--

LOCK TABLES `KRIM_ENTITY_NM_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_NM_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_NM_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_FUNC_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_FUNC_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_FUNC_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_FUNC_S`
--

LOCK TABLES `KRMS_CNTXT_VLD_FUNC_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_FUNC_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_FUNC_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_TYP_ATTR_T`
--

DROP TABLE IF EXISTS `KREW_TYP_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_TYP_ATTR_T` (
  `TYP_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SEQ_NO` decimal(5,0) NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ATTR_ID`),
  UNIQUE KEY `KREW_TYP_ATTR_TC1` (`TYP_ID`,`ATTR_DEFN_ID`),
  KEY `KREW_TYP_ATTR_TI1` (`ATTR_DEFN_ID`),
  KEY `KREW_TYP_ATTR_TI2` (`TYP_ID`),
  CONSTRAINT `KREW_TYP_ATTR_FK2` FOREIGN KEY (`TYP_ID`) REFERENCES `KREW_TYP_T` (`TYP_ID`),
  CONSTRAINT `KREW_TYP_ATTR_FK1` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KREW_ATTR_DEFN_T` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_TYP_ATTR_T`
--

LOCK TABLES `KREW_TYP_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KREW_TYP_ATTR_T` DISABLE KEYS */;
INSERT INTO `KREW_TYP_ATTR_T` VALUES ('1',1,'1','1','Y',1),('2',2,'1','2','Y',1);
/*!40000 ALTER TABLE `KREW_TYP_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_TYP_ATTR_S`
--

DROP TABLE IF EXISTS `KREW_TYP_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_TYP_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_TYP_ATTR_S`
--

LOCK TABLES `KREW_TYP_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KREW_TYP_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_TYP_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_FUNC_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_FUNC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_FUNC_T` (
  `CNTXT_VLD_FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_FUNC_ID`),
  KEY `KRMS_CNTXT_VLD_FUNC_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_FUNC_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_FUNC_T`
--

LOCK TABLES `KRMS_CNTXT_VLD_FUNC_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_FUNC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_FUNC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_AFLTN_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_AFLTN_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_AFLTN_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `AFLTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_AFLTN_ID`),
  CONSTRAINT `KRIM_PND_AFLTN_MT_FK1` FOREIGN KEY (`FDOC_NBR`) REFERENCES `KRIM_PERSON_DOCUMENT_T` (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_AFLTN_MT`
--

LOCK TABLES `KRIM_PND_AFLTN_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_AFLTN_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_AFLTN_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_BAM_S`
--

DROP TABLE IF EXISTS `KRSB_BAM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_BAM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_BAM_S`
--

LOCK TABLES `KRSB_BAM_S` WRITE;
/*!40000 ALTER TABLE `KRSB_BAM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_BAM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_FO_ID_S`
--

DROP TABLE IF EXISTS `TRV_FO_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_FO_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_FO_ID_S`
--

LOCK TABLES `TRV_FO_ID_S` WRITE;
/*!40000 ALTER TABLE `TRV_FO_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRV_FO_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ATT_T`
--

DROP TABLE IF EXISTS `KREW_ATT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ATT_T` (
  `ATTACHMENT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NTE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FILE_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `FILE_LOC` varchar(255) COLLATE utf8_bin NOT NULL,
  `MIME_TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ATTACHMENT_ID`),
  KEY `KREW_ATT_TI1` (`NTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ATT_T`
--

LOCK TABLES `KREW_ATT_T` WRITE;
/*!40000 ALTER TABLE `KREW_ATT_T` DISABLE KEYS */;
INSERT INTO `KREW_ATT_T` VALUES ('2001','2000','G1.Example1.For.version094.EDL.xml','/opt/ears/wf_att_2213_G1_Example1_For_version094_EDL_xml_204458687.tmp','text/xml',1),('2003','2002','hasActiveNode.class','/opt/ears/wf_att_2219_hasActiveNode_class_204558692.tmp','text/plain',1),('2005','2004','ReadMe.txt','/opt/ears/wf_att_2219_ReadMe_txt_204658693.tmp','text/plain',1);
/*!40000 ALTER TABLE `KREW_ATT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_DLGN_T`
--

DROP TABLE IF EXISTS `KRIM_DLGN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_DLGN_T` (
  `DLGN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `ROLE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DLGN_ID`),
  UNIQUE KEY `KRIM_DLGN_TC0` (`OBJ_ID`),
  KEY `KRIM_DLGN_TR1` (`ROLE_ID`),
  KEY `KRIM_DLGN_TR2` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_TR2` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_TR1` FOREIGN KEY (`ROLE_ID`) REFERENCES `KRIM_ROLE_T` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_DLGN_T`
--

LOCK TABLES `KRIM_DLGN_T` WRITE;
/*!40000 ALTER TABLE `KRIM_DLGN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_DLGN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_BAM_T`
--

DROP TABLE IF EXISTS `KRSB_BAM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_BAM_T` (
  `BAM_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `SVC_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `SVC_URL` varchar(500) COLLATE utf8_bin NOT NULL,
  `MTHD_NM` varchar(2000) COLLATE utf8_bin NOT NULL,
  `THRD_NM` varchar(500) COLLATE utf8_bin NOT NULL,
  `CALL_DT` datetime NOT NULL,
  `TGT_TO_STR` varchar(2000) COLLATE utf8_bin NOT NULL,
  `SRVR_IND` decimal(1,0) NOT NULL,
  `EXCPN_TO_STR` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `EXCPN_MSG` longtext COLLATE utf8_bin,
  PRIMARY KEY (`BAM_ID`),
  KEY `KRSB_BAM_TI1` (`SVC_NM`,`MTHD_NM`(255)),
  KEY `KRSB_BAM_TI2` (`SVC_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_BAM_T`
--

LOCK TABLES `KRSB_BAM_T` WRITE;
/*!40000 ALTER TABLE `KRSB_BAM_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_BAM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_PRIV_PREF_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_PRIV_PREF_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_PRIV_PREF_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `SUPPRESS_NM_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `SUPPRESS_EMAIL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_ADDR_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PHONE_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `SUPPRESS_PRSNL_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_PRIV_PREF_MT`
--

LOCK TABLES `KRIM_PND_PRIV_PREF_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_PRIV_PREF_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_PRIV_PREF_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_rsp_attr_v`
--

DROP TABLE IF EXISTS `krim_rsp_attr_v`;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_attr_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_rsp_attr_v` (
  `responsibility_type_name` varchar(100),
  `rsp_TEMPLATE_NAME` varchar(100),
  `rsp_namespace_code` varchar(40),
  `rsp_NAME` varchar(100),
  `rsp_id` varchar(40),
  `attribute_name` varchar(100),
  `attribute_value` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KREW_DOC_HDR_EXT_T`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_EXT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_EXT_T` (
  `DOC_HDR_EXT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(256) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_ID`),
  KEY `KREW_DOC_HDR_EXT_TI1` (`KEY_CD`(255),`VAL`(255)),
  KEY `KREW_DOC_HDR_EXT_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_TI3` (`VAL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_EXT_T`
--

LOCK TABLES `KREW_DOC_HDR_EXT_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_HDR_EXT_T` VALUES ('2000','2381','accountNumber','a11'),('2001','2382','accountNumber','a4'),('2002','2383','accountNumber','a5'),('2003','2384','accountNumber','a6'),('2020','2392','accountNumber','a8'),('2021','2394','accountNumber','a9'),('2040','2406','accountNumber','a14');
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_TMPL_S`
--

DROP TABLE IF EXISTS `KRMS_NL_TMPL_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_TMPL_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_TMPL_S`
--

LOCK TABLES `KRMS_NL_TMPL_S` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_TMPL_T`
--

DROP TABLE IF EXISTS `KRMS_NL_TMPL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_TMPL_T` (
  `NL_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `LANG_CD` varchar(2) COLLATE utf8_bin NOT NULL,
  `NL_USAGE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `TMPL` varchar(4000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_TMPL_ID`),
  UNIQUE KEY `KRMS_NL_TMPL_TC1` (`LANG_CD`,`NL_USAGE_ID`,`TYP_ID`),
  KEY `KRMS_TYP_T` (`TYP_ID`),
  KEY `KRMS_NL_TMPL_FK1` (`NL_USAGE_ID`),
  CONSTRAINT `KRMS_NL_TMPL_FK1` FOREIGN KEY (`NL_USAGE_ID`) REFERENCES `KRMS_NL_USAGE_T` (`NL_USAGE_ID`),
  CONSTRAINT `KRMS_TYP_T` FOREIGN KEY (`TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_TMPL_T`
--

LOCK TABLES `KRMS_NL_TMPL_T` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_MSG_PYLD_T`
--

DROP TABLE IF EXISTS `KRSB_MSG_PYLD_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_MSG_PYLD_T` (
  `MSG_QUE_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `MSG_PYLD` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`MSG_QUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_MSG_PYLD_T`
--

LOCK TABLES `KRSB_MSG_PYLD_T` WRITE;
/*!40000 ALTER TABLE `KRSB_MSG_PYLD_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_MSG_PYLD_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_PROP_S`
--

DROP TABLE IF EXISTS `KRMS_PROP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_PROP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_PROP_S`
--

LOCK TABLES `KRMS_PROP_S` WRITE;
/*!40000 ALTER TABLE `KRMS_PROP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_PROP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_PROP_T`
--

DROP TABLE IF EXISTS `KRMS_PROP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_PROP_T` (
  `PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESC_TXT` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DSCRM_TYP_CD` varchar(10) COLLATE utf8_bin NOT NULL,
  `CMPND_OP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `CMPND_SEQ_NO` decimal(5,0) DEFAULT NULL,
  PRIMARY KEY (`PROP_ID`),
  KEY `KRMS_PROP_FK2` (`TYP_ID`),
  KEY `KRMS_PROP_TI1` (`RULE_ID`),
  CONSTRAINT `KRMS_PROP_FK2` FOREIGN KEY (`TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_PROP_T`
--

LOCK TABLES `KRMS_PROP_T` WRITE;
/*!40000 ALTER TABLE `KRMS_PROP_T` DISABLE KEYS */;
INSERT INTO `KRMS_PROP_T` VALUES ('T1000','is campus bloomington',NULL,'S',NULL,'T1000',1,NULL),('T1001','is campus bloomington',NULL,'S',NULL,'T1001',1,NULL),('T1002','is campus bloomington',NULL,'S',NULL,'T1002',1,NULL),('T1003','is campus bloomington',NULL,'S',NULL,'T1003',1,NULL),('T1004','is campus bloomington',NULL,'S',NULL,'T1004',1,NULL),('T1005','is campus bloomington',NULL,'S',NULL,'T1005',1,NULL),('T1006','is campus bloomington',NULL,'S',NULL,'T1006',1,NULL),('T1007','a compound prop',NULL,'C','&','T1007',1,NULL),('T1008','a simple child to a compound prop',NULL,'S',NULL,'T1007',1,NULL),('T1009','2nd simple child to a compound prop ',NULL,'S',NULL,'T1007',1,2),('T1010','3nd simple child to a compound prop ',NULL,'S',NULL,'T1007',1,3),('T1011','is purchase special',NULL,'C','&','T1008',1,NULL),('T1012','is purchase order value large',NULL,'S',NULL,'T1008',1,NULL),('T1013','is purchased item controlled',NULL,'C','|','T1008',1,NULL),('T1014','is it for a special event',NULL,'C','&','T1008',1,NULL),('T1015','is item purchased animal',NULL,'S',NULL,'T1008',1,NULL),('T1016','is purchased item radioactive',NULL,'S',NULL,'T1008',1,NULL),('T1017','is it medicinal',NULL,'S',NULL,'T1008',1,3),('T1018','charged to Kuali',NULL,'S',NULL,'T1008',1,NULL),('T1019','Party at Travis House',NULL,'S',NULL,'T1008',1,NULL);
/*!40000 ALTER TABLE `KRMS_PROP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_PHONE_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_PHONE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_PHONE_T` (
  `ENTITY_PHONE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_NBR` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_EXTN_NBR` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_PHONE_ID`),
  UNIQUE KEY `KRIM_ENTITY_PHONE_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_PHONE_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_PHONE_TR1` (`ENT_TYP_CD`,`ENTITY_ID`),
  KEY `KRIM_ENTITY_PHONE_TR2` (`PHONE_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_PHONE_TR2` FOREIGN KEY (`PHONE_TYP_CD`) REFERENCES `KRIM_PHONE_TYP_T` (`PHONE_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_PHONE_TR1` FOREIGN KEY (`ENT_TYP_CD`, `ENTITY_ID`) REFERENCES `KRIM_ENTITY_ENT_TYP_T` (`ENT_TYP_CD`, `ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_PHONE_T`
--

LOCK TABLES `KRIM_ENTITY_PHONE_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_PHONE_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_PHONE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_MAINT_DOC_ATT_LST_T`
--

DROP TABLE IF EXISTS `KRNS_MAINT_DOC_ATT_LST_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_MAINT_DOC_ATT_LST_T` (
  `ATT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `ATT_CNTNT` longblob NOT NULL,
  `FILE_NM` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT_TYP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ATT_ID`),
  UNIQUE KEY `KRNS_MAINT_DOC_ATT_LST_TC0` (`OBJ_ID`),
  KEY `KRNS_MAINT_DOC_ATT_LST_TI1` (`DOC_HDR_ID`),
  CONSTRAINT `KRNS_MAINT_DOC_ATT_LST_FK1` FOREIGN KEY (`DOC_HDR_ID`) REFERENCES `KRNS_MAINT_DOC_T` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_MAINT_DOC_ATT_LST_T`
--

LOCK TABLES `KRNS_MAINT_DOC_ATT_LST_T` WRITE;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_ATT_LST_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_ATT_LST_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_MULTI_ATT_SAMPLE`
--

DROP TABLE IF EXISTS `TRV_MULTI_ATT_SAMPLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_MULTI_ATT_SAMPLE` (
  `GEN_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `ATTACHMENT_ID` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILENAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE_CONTENT_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE` longblob,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`GEN_ID`),
  KEY `SYS_C003453453` (`ATTACHMENT_ID`),
  CONSTRAINT `SYS_C003453453` FOREIGN KEY (`ATTACHMENT_ID`) REFERENCES `TRV_ATT_SAMPLE` (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_MULTI_ATT_SAMPLE`
--

LOCK TABLES `TRV_MULTI_ATT_SAMPLE` WRITE;
/*!40000 ALTER TABLE `TRV_MULTI_ATT_SAMPLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRV_MULTI_ATT_SAMPLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRVL_PER_DIEM_ID_SEQ`
--

DROP TABLE IF EXISTS `TRVL_PER_DIEM_ID_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRVL_PER_DIEM_ID_SEQ` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRVL_PER_DIEM_ID_SEQ`
--

LOCK TABLES `TRVL_PER_DIEM_ID_SEQ` WRITE;
/*!40000 ALTER TABLE `TRVL_PER_DIEM_ID_SEQ` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRVL_PER_DIEM_ID_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_SPEC_CTGRY_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_SPEC_CTGRY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_SPEC_CTGRY_T` (
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CTGRY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TERM_SPEC_ID`,`CTGRY_ID`),
  KEY `KRMS_TERM_SPEC_CTGRY_FK2` (`CTGRY_ID`),
  CONSTRAINT `KRMS_TERM_SPEC_CTGRY_FK1` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `KRMS_TERM_SPEC_T` (`TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_SPEC_CTGRY_FK2` FOREIGN KEY (`CTGRY_ID`) REFERENCES `KRMS_CTGRY_T` (`CTGRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_SPEC_CTGRY_T`
--

LOCK TABLES `KRMS_TERM_SPEC_CTGRY_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_SPEC_CTGRY_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_SPEC_CTGRY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_ADDRESS_T`
--

DROP TABLE IF EXISTS `BK_ADDRESS_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_ADDRESS_T` (
  `ADDRESS_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `AUTHOR_ID` decimal(22,0) DEFAULT NULL,
  `ADDR_TYP` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STREET1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `STREET2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CITY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PROVIENCE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `COUNTRY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_ADDRESS_T`
--

LOCK TABLES `BK_ADDRESS_T` WRITE;
/*!40000 ALTER TABLE `BK_ADDRESS_T` DISABLE KEYS */;
INSERT INTO `BK_ADDRESS_T` VALUES (1,1,'Residence','Strt1R','Strt2R','CityR','ProvinceR','CountryR','Y','b8190679-7cfe-49c9-bd99-6b264f700f0d',1),(2,1,'Office','Strt1O','Strt2O','CityO','ProvinceO','CountryO','Y','b8190679-7cfe-49c9-bd99-6b264f700f03',1);
/*!40000 ALTER TABLE `BK_ADDRESS_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_RSP_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_RSP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_RSP_T` (
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`ROLE_RSP_ID`),
  UNIQUE KEY `KRIM_ROLE_RSP_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_RSP_TI1` (`RSP_ID`),
  CONSTRAINT `KRIM_ROLE_RSP_TR1` FOREIGN KEY (`RSP_ID`) REFERENCES `KRIM_RSP_T` (`RSP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_RSP_T`
--

LOCK TABLES `KRIM_ROLE_RSP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENT_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_ENT_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENT_TYP_T` (
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`ENT_TYP_CD`),
  UNIQUE KEY `KRIM_ENT_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ENT_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENT_TYP_T`
--

LOCK TABLES `KRIM_ENT_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENT_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENT_TYP_T` VALUES ('PERSON','5B97C50B03886110E0404F8189D85213',1,'Person','01','Y'),('SYSTEM','5B97C50B03896110E0404F8189D85213',1,'System','02','Y');
/*!40000 ALTER TABLE `KRIM_ENT_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRLC_CNTY_T`
--

DROP TABLE IF EXISTS `KRLC_CNTY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRLC_CNTY_T` (
  `COUNTY_CD` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `STATE_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'US',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `COUNTY_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`COUNTY_CD`,`STATE_CD`,`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_COUNTY_TC0` (`OBJ_ID`),
  KEY `KRLC_CNTY_TR1` (`STATE_CD`,`POSTAL_CNTRY_CD`),
  CONSTRAINT `KRLC_CNTY_TR1` FOREIGN KEY (`STATE_CD`, `POSTAL_CNTRY_CD`) REFERENCES `KRLC_ST_T` (`POSTAL_STATE_CD`, `POSTAL_CNTRY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRLC_CNTY_T`
--

LOCK TABLES `KRLC_CNTY_T` WRITE;
/*!40000 ALTER TABLE `KRLC_CNTY_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRLC_CNTY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_ORDER_ENTRY_T`
--

DROP TABLE IF EXISTS `BK_ORDER_ENTRY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_ORDER_ENTRY_T` (
  `BK_ORDER_ENTRY_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `BOOK_ID` decimal(22,0) NOT NULL,
  `QUANTITY` decimal(22,0) NOT NULL,
  `UNIT_PRICE` decimal(15,2) DEFAULT NULL,
  `DISCOUNT` decimal(5,2) DEFAULT NULL,
  `TOTAL_PRICE` decimal(15,2) DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`BK_ORDER_ENTRY_ID`),
  KEY `BK_ORDER_ENTRY_T_KRNS_DO_ADV1` (`DOC_HDR_ID`),
  KEY `BK_ORDER_ENTRY_T_BK_BOOK_T` (`BOOK_ID`),
  CONSTRAINT `BK_ORDER_ENTRY_T_BK_BOOK_T` FOREIGN KEY (`BOOK_ID`) REFERENCES `BK_BOOK_T` (`BOOK_ID`),
  CONSTRAINT `BK_ORDER_ENTRY_T_KRNS_DO_ADV1` FOREIGN KEY (`DOC_HDR_ID`) REFERENCES `KRNS_DOC_HDR_T` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_ORDER_ENTRY_T`
--

LOCK TABLES `BK_ORDER_ENTRY_T` WRITE;
/*!40000 ALTER TABLE `BK_ORDER_ENTRY_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `BK_ORDER_ENTRY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_EDL_DEF_T`
--

DROP TABLE IF EXISTS `KREW_EDL_DEF_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_EDL_DEF_T` (
  `EDOCLT_DEF_ID` decimal(19,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `XML` longtext COLLATE utf8_bin NOT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`EDOCLT_DEF_ID`),
  UNIQUE KEY `KREW_EDL_DEF_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_EDL_DEF_T`
--

LOCK TABLES `KREW_EDL_DEF_T` WRITE;
/*!40000 ALTER TABLE `KREW_EDL_DEF_T` DISABLE KEYS */;
INSERT INTO `KREW_EDL_DEF_T` VALUES (2008,'eDoc.Example1.Form','<edl name=\"eDoc.Example1.Form\" title=\"Example 1\">\n      <security/>\n      <createInstructions>** Questions with an asterisk are required.</createInstructions>\n      <instructions>** Questions with an asterisk are required.</instructions>\n      <validations/>\n      <attributes/>\n      <fieldDef name=\"userName\" title=\"Full Name\">\n        <display>\n          <type>text</type>\n          <meta>\n            <name>size</name>\n            <value>40</value>\n          </meta>\n        </display>\n        <validation required=\"true\">\n          <message>Please enter your full name</message>\n        </validation>\n      </fieldDef>\n      <fieldDef name=\"rqstDate\" title=\"Requested Date of Implementation:\">\n        <display>\n          <type>text</type>\n        </display>\n        <validation required=\"true\">\n          <regex>^[0-1]?[0-9](/|-)[0-3]?[0-9](/|-)[1-2][0-9][0-9][0-9]$</regex>\n          <message>Enter a valid date in the format mm/dd/yyyy.</message>\n        </validation>\n      </fieldDef>\n      <fieldDef name=\"requestType\" title=\"Request Type:\">\n        <display>\n          <type>radio</type>\n          <values title=\"New\">New</values>\n          <values title=\"Modification\">Modification</values>\n        </display>\n        <validation required=\"true\">\n          <message>Please select a request type.</message>\n        </validation>\n      </fieldDef>\n      <fieldDef attributeName=\"EDL.Campus.Example\" name=\"campus\" title=\"Campus:\">\n        <display>\n          <type>select</type>\n          <values title=\"IUB\">IUB</values>\n          <values title=\"IUPUI\">IUPUI</values>\n        </display>\n        <validation required=\"true\">\n          <message>Please select a campus.</message>\n        </validation>\n      </fieldDef>\n      <fieldDef name=\"description\" title=\"Description of Request:\">\n        <display>\n          <type>textarea</type>\n          <meta>\n            <name>rows</name>\n            <value>5</value>\n          </meta>\n          <meta>\n            <name>cols</name>\n            <value>60</value>\n          </meta>\n          <meta>\n            <name>wrap</name>\n            <value>hard</value>\n          </meta>\n        </display>\n        <validation required=\"false\"/>\n      </fieldDef>\n      <fieldDef name=\"fundedBy\" title=\"My research/sponsored program work is funded by NIH or NSF.\">\n        <display>\n          <type>checkbox</type>\n          <values title=\"My research/sponsored program work is funded by NIH or NSF.\">nihnsf</values>\n        </display>\n      </fieldDef>\n      <fieldDef name=\"researchHumans\" title=\"My research/sponsored program work involves human subjects.\">\n        <display>\n          <type>checkbox</type>\n          <values title=\"My research/sponsored program work involves human subjects.\">humans</values>\n        </display>\n      </fieldDef>\n    </edl>\n',1,1,'6166CBA1BC0B644DE0404F8189D86C09');
/*!40000 ALTER TABLE `KREW_EDL_DEF_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_ORDER_ENTRY_S`
--

DROP TABLE IF EXISTS `BK_ORDER_ENTRY_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_ORDER_ENTRY_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_ORDER_ENTRY_S`
--

LOCK TABLES `BK_ORDER_ENTRY_S` WRITE;
/*!40000 ALTER TABLE `BK_ORDER_ENTRY_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `BK_ORDER_ENTRY_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PERM_ID_S`
--

DROP TABLE IF EXISTS `KRIM_PERM_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERM_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERM_ID_S`
--

LOCK TABLES `KRIM_PERM_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_PERM_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PERM_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRVL_AUTH_DOC_T`
--

DROP TABLE IF EXISTS `TRVL_AUTH_DOC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRVL_AUTH_DOC_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRVL_ID` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `TRAVELER_DTL_ID` decimal(19,0) DEFAULT NULL,
  `TEM_PROFILE_ID` decimal(19,0) DEFAULT NULL,
  `TRIP_TYP_CD` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  `TRIP_BGN_DT` datetime DEFAULT NULL,
  `TRIP_END_DT` datetime DEFAULT NULL,
  `PRIMARY_DEST_ID` decimal(19,0) DEFAULT NULL,
  `PRIMARY_DEST_NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARY_DEST_CNTRY_ST` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PRIMARY_DEST_CNTY` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `EXP_LMT` decimal(19,2) DEFAULT '0.00',
  `MEAL_WITHOUT_LODGING` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TRIP_DESC` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELINQUENT_TR_EXCEPTION` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `PER_DIEM_ADJ` decimal(19,2) DEFAULT '0.00',
  `AR_CUST_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `AR_INV_DOC_NBR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CELL_PH_NUM` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `RGN_FAMIL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CTZN_CNTRY_CD` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `FDOC_NXT_EXP_NBR` decimal(7,0) DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRVL_AUTH_DOC_T`
--

LOCK TABLES `TRVL_AUTH_DOC_T` WRITE;
/*!40000 ALTER TABLE `TRVL_AUTH_DOC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRVL_AUTH_DOC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_SVC_DSCRPTR_T`
--

DROP TABLE IF EXISTS `KRSB_SVC_DSCRPTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_SVC_DSCRPTR_T` (
  `SVC_DSCRPTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DSCRPTR` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`SVC_DSCRPTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_SVC_DSCRPTR_T`
--

LOCK TABLES `KRSB_SVC_DSCRPTR_T` WRITE;
/*!40000 ALTER TABLE `KRSB_SVC_DSCRPTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_SVC_DSCRPTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_SVC_DSCRPTR_S`
--

DROP TABLE IF EXISTS `KRSB_SVC_DSCRPTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_SVC_DSCRPTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_SVC_DSCRPTR_S`
--

LOCK TABLES `KRSB_SVC_DSCRPTR_S` WRITE;
/*!40000 ALTER TABLE `KRSB_SVC_DSCRPTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_SVC_DSCRPTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CHNL_PRODCR_T`
--

DROP TABLE IF EXISTS `KREN_CHNL_PRODCR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CHNL_PRODCR_T` (
  `CHNL_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `PRODCR_ID` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CHNL_ID`,`PRODCR_ID`),
  KEY `KREN_CHNL_PRODCR_TI1` (`CHNL_ID`),
  KEY `KREN_CHNL_PRODCR_TI2` (`PRODCR_ID`),
  CONSTRAINT `KREN_CHNL_PRODCR_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `KREN_CHNL_T` (`CHNL_ID`),
  CONSTRAINT `KREN_CHNL_PRODCR_FK2` FOREIGN KEY (`PRODCR_ID`) REFERENCES `KREN_PRODCR_T` (`PRODCR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CHNL_PRODCR_T`
--

LOCK TABLES `KREN_CHNL_PRODCR_T` WRITE;
/*!40000 ALTER TABLE `KREN_CHNL_PRODCR_T` DISABLE KEYS */;
INSERT INTO `KREN_CHNL_PRODCR_T` VALUES (1,1),(2,1),(2,2),(3,1),(3,2),(4,1),(4,3),(5,1);
/*!40000 ALTER TABLE `KREN_CHNL_PRODCR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_TYP_T`
--

DROP TABLE IF EXISTS `KREW_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_TYP_T` (
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `SRVC_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ID`),
  UNIQUE KEY `KREW_TYP_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_TYP_T`
--

LOCK TABLES `KREW_TYP_T` WRITE;
/*!40000 ALTER TABLE `KREW_TYP_T` DISABLE KEYS */;
INSERT INTO `KREW_TYP_T` VALUES ('1','Sample Type','KR-SAP','sampleAppPeopleFlowTypeService','Y',1);
/*!40000 ALTER TABLE `KREW_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_TYP_S`
--

DROP TABLE IF EXISTS `KREW_TYP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_TYP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_TYP_S`
--

LOCK TABLES `KREW_TYP_S` WRITE;
/*!40000 ALTER TABLE `KREW_TYP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_TYP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_AFLTN_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_AFLTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_AFLTN_T` (
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `AFLTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CAMPUS_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_AFLTN_ID`),
  UNIQUE KEY `KRIM_ENTITY_AFLTN_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_AFLTN_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_AFLTN_TR2` (`AFLTN_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_AFLTN_TR2` FOREIGN KEY (`AFLTN_TYP_CD`) REFERENCES `KRIM_AFLTN_TYP_T` (`AFLTN_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_AFLTN_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_AFLTN_T`
--

LOCK TABLES `KRIM_ENTITY_AFLTN_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_AFLTN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_AFLTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TYP_RELN_S`
--

DROP TABLE IF EXISTS `KRMS_TYP_RELN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TYP_RELN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TYP_RELN_S`
--

LOCK TABLES `KRMS_TYP_RELN_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TYP_RELN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TYP_RELN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_CTZNSHP_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_CTZNSHP_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_CTZNSHP_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_CTZNSHP_ID_S`
--

LOCK TABLES `KRIM_ENTITY_CTZNSHP_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_CTZNSHP_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_CTZNSHP_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ROLE_MBR_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_ROLE_MBR_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ROLE_MBR_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ROLE_MBR_MT`
--

LOCK TABLES `KRIM_PND_ROLE_MBR_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_MBR_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_MBR_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_RSP_T`
--

DROP TABLE IF EXISTS `KREW_RULE_RSP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_RSP_T` (
  `RULE_RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRIO` decimal(5,0) DEFAULT NULL,
  `ACTN_RQST_CD` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `APPR_PLCY` char(1) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_RSP_ID`),
  UNIQUE KEY `KREW_RULE_RSP_TC0` (`OBJ_ID`),
  KEY `KREW_RULE_RSP_TI1` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_RSP_T`
--

LOCK TABLES `KREW_RULE_RSP_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_RSP_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_RSP_T` VALUES ('2021','2020','1044',1,'A','org.kuali.rice.ken.kew.ChannelReviewerRoleAttribute!reviewers','R','F',1,'6166CBA1BBFC644DE0404F8189D86C09'),('2023','2022','1046',1,'A','user4','F','F',1,'6166CBA1BBFD644DE0404F8189D86C09'),('2025','2024','1049',1,'A','edu.sampleu.travel.workflow.EmployeeAttribute!employee','R','F',1,'6166CBA1BBFE644DE0404F8189D86C09'),('2027','2026','1050',1,'A','edu.sampleu.travel.workflow.EmployeeAttribute!supervisr','R','F',1,'6166CBA1BBFF644DE0404F8189D86C09'),('2029','2028','1051',1,'K','edu.sampleu.travel.workflow.EmployeeAttribute!director','R','F',1,'6166CBA1BC00644DE0404F8189D86C09'),('2031','2030','1052',1,'A','edu.sampleu.travel.workflow.AccountAttribute!FO','R','F',1,'6166CBA1BC01644DE0404F8189D86C09'),('2041','2040','1103',1,'A','2202','G','F',1,'6166CBA1BC02644DE0404F8189D86C09'),('2043','2042','1106',1,'A','2203','G','F',1,'6166CBA1BC03644DE0404F8189D86C09'),('2064','2063','1642',1,'A','9997','G','F',1,'B1FCE360-EA7A-C2B8-9D70-88C39A982094');
/*!40000 ALTER TABLE `KREW_RULE_RSP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_AUTHOR_ID_S`
--

DROP TABLE IF EXISTS `BK_AUTHOR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_AUTHOR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_AUTHOR_ID_S`
--

LOCK TABLES `BK_AUTHOR_ID_S` WRITE;
/*!40000 ALTER TABLE `BK_AUTHOR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `BK_AUTHOR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_SVC_DEF_T`
--

DROP TABLE IF EXISTS `KRSB_SVC_DEF_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_SVC_DEF_T` (
  `SVC_DEF_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SVC_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `SVC_URL` varchar(500) COLLATE utf8_bin NOT NULL,
  `INSTN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `SRVR_IP` varchar(40) COLLATE utf8_bin NOT NULL,
  `TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `SVC_VER` varchar(40) COLLATE utf8_bin NOT NULL,
  `STAT_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `SVC_DSCRPTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CHKSM` varchar(30) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SVC_DEF_ID`),
  KEY `KRSB_SVC_DEF_TI1` (`INSTN_ID`),
  KEY `KRSB_SVC_DEF_TI2` (`SVC_NM`,`STAT_CD`),
  KEY `KRSB_SVC_DEF_TI3` (`STAT_CD`),
  KEY `KRSB_SVC_DEF_TI4` (`SVC_DSCRPTR_ID`),
  CONSTRAINT `KRSB_SVC_DEF_FK1` FOREIGN KEY (`SVC_DSCRPTR_ID`) REFERENCES `KRSB_SVC_DSCRPTR_T` (`SVC_DSCRPTR_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_SVC_DEF_T`
--

LOCK TABLES `KRSB_SVC_DEF_T` WRITE;
/*!40000 ALTER TABLE `KRSB_SVC_DEF_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_SVC_DEF_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_TMPL_T`
--

DROP TABLE IF EXISTS `KREW_RULE_TMPL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_TMPL_T` (
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(250) COLLATE utf8_bin NOT NULL,
  `RULE_TMPL_DESC` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_RULE_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_TMPL_ID`),
  UNIQUE KEY `KREW_RULE_TMPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KREW_RULE_TMPL_TI1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_TMPL_T`
--

LOCK TABLES `KREW_RULE_TMPL_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_TMPL_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_TMPL_T` VALUES ('1015','WorkflowDocumentDelegationTemplate','WorkflowDocumentDelegationTemplate',NULL,2,'6166CBA1BA86644DE0404F8189D86C09'),('1016','WorkflowDocumentTemplate','Workflow Document Template','1015',4,'6166CBA1BA87644DE0404F8189D86C09'),('1017','Ack1Template','Acknowledgement 1 Template',NULL,4,'6166CBA1BA88644DE0404F8189D86C09'),('1018','Ack2Template','Acknowledgement 2 Template',NULL,4,'6166CBA1BA89644DE0404F8189D86C09'),('1023','ReviewersRouting','Routes to channel reviewers',NULL,2,'6166CBA1BA8C644DE0404F8189D86C09'),('1025','NotificationRouting','The standard rule template for sending notification messages.',NULL,2,'6166CBA1BA8D644DE0404F8189D86C09'),('1026','TravelRequest-DestinationRouting','Destination Routing','1015',8,'6166CBA1BA8E644DE0404F8189D86C09'),('1028','TravelRequest-TravelerRouting','Traveler Routing',NULL,2,'6166CBA1BA8F644DE0404F8189D86C09'),('1030','TravelRequest-SupervisorRouting','Supervisor Routing',NULL,2,'6166CBA1BA90644DE0404F8189D86C09'),('1032','TravelRequest-AccountRouting','Travel Account Routing',NULL,2,'6166CBA1BA91644DE0404F8189D86C09'),('1101','eDoc.Example1.Node1','eDocLite Example1 Routing',NULL,2,'6166CBA1BA92644DE0404F8189D86C09'),('1320','RuleRoutingTemplate','RuleRoutingTemplate',NULL,2,'6166CBA1BA96644DE0404F8189D86C09'),('1537','WorkflowDocument2Template','Workflow Document Template 2',NULL,2,'6166CBA1BAE9644DE0404F8189D86C09'),('1538','WorkflowDocument3Template','Workflow Document Template 3',NULL,2,'6166CBA1BAEA644DE0404F8189D86C09');
/*!40000 ALTER TABLE `KREW_RULE_TMPL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CNTNT_TYP_S`
--

DROP TABLE IF EXISTS `KREN_CNTNT_TYP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CNTNT_TYP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CNTNT_TYP_S`
--

LOCK TABLES `KREN_CNTNT_TYP_S` WRITE;
/*!40000 ALTER TABLE `KREN_CNTNT_TYP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_CNTNT_TYP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PERSON_DOCUMENT_T`
--

DROP TABLE IF EXISTS `KRIM_PERSON_DOCUMENT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERSON_DOCUMENT_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `PRNCPL_PSWD` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `UNIV_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERSON_DOCUMENT_T`
--

LOCK TABLES `KRIM_PERSON_DOCUMENT_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PERSON_DOCUMENT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PERSON_DOCUMENT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_SVC_DEF_S`
--

DROP TABLE IF EXISTS `KRSB_SVC_DEF_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_SVC_DEF_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10105 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_SVC_DEF_S`
--

LOCK TABLES `KRSB_SVC_DEF_S` WRITE;
/*!40000 ALTER TABLE `KRSB_SVC_DEF_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_SVC_DEF_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_ADDRESS_ID_S`
--

DROP TABLE IF EXISTS `BK_ADDRESS_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_ADDRESS_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_ADDRESS_ID_S`
--

LOCK TABLES `BK_ADDRESS_ID_S` WRITE;
/*!40000 ALTER TABLE `BK_ADDRESS_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `BK_ADDRESS_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_ACCT`
--

DROP TABLE IF EXISTS `TRV_ACCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_ACCT` (
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL,
  `ACCT_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ACCT_TYPE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ACCT_FO_ID` decimal(14,0) DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `SUB_ACCT` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `SUB_ACCT_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `SUBSIDIZED_PCT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_ACCT`
--

LOCK TABLES `TRV_ACCT` WRITE;
/*!40000 ALTER TABLE `TRV_ACCT` DISABLE KEYS */;
INSERT INTO `TRV_ACCT` VALUES ('a1','a1',NULL,1,NULL,0,NULL,NULL,NULL,NULL),('a14','a14',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a2','a2',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a3','a3',NULL,3,NULL,0,'a3-sub','sub-a3',NULL,NULL),('a6','a6',NULL,2,NULL,0,'a6-sub','sub-a6',NULL,NULL),('a8','a8',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a9','a9',NULL,2,NULL,0,NULL,NULL,NULL,NULL),('a1','a1',NULL,1,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `TRV_ACCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_ACCT_TYPE`
--

DROP TABLE IF EXISTS `TRV_ACCT_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_ACCT_TYPE` (
  `ACCT_TYPE` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_TYPE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ACCT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_ACCT_TYPE`
--

LOCK TABLES `TRV_ACCT_TYPE` WRITE;
/*!40000 ALTER TABLE `TRV_ACCT_TYPE` DISABLE KEYS */;
INSERT INTO `TRV_ACCT_TYPE` VALUES ('CAT','Clearing Account Type',NULL,0),('EAT','Expense Account Type',NULL,0),('IAT',' Income Account Type',NULL,0);
/*!40000 ALTER TABLE `TRV_ACCT_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_PAUSED_TRIGGER_GRPS` (
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `KRSB_QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_PERM_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ROLE_PERM_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_PERM_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_PERM_ID_S`
--

LOCK TABLES `KRIM_ROLE_PERM_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_PERM_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_PERM_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_LIST_OPTN_S`
--

DROP TABLE IF EXISTS `KREW_ACTN_LIST_OPTN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_LIST_OPTN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1269 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_LIST_OPTN_S`
--

LOCK TABLES `KREW_ACTN_LIST_OPTN_S` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_LIST_OPTN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_ACTN_LIST_OPTN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_ATT_SAMPLE`
--

DROP TABLE IF EXISTS `TRV_ATT_SAMPLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_ATT_SAMPLE` (
  `ATTACHMENT_ID` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILENAME` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE_CONTENT_TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ATTACHMENT_FILE` longblob,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_ATT_SAMPLE`
--

LOCK TABLES `TRV_ATT_SAMPLE` WRITE;
/*!40000 ALTER TABLE `TRV_ATT_SAMPLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRV_ATT_SAMPLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_TYP_ATTR_T`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_ATTR_T` (
  `DOC_TYP_ATTRIB_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ORD_INDX` decimal(4,0) DEFAULT '0',
  PRIMARY KEY (`DOC_TYP_ATTRIB_ID`),
  KEY `KREW_DOC_TYP_ATTR_TI1` (`DOC_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_ATTR_T`
--

LOCK TABLES `KREW_DOC_TYP_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_ATTR_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_TYP_ATTR_T` VALUES ('2000','2023','1003',1),('2001','2023','1006',2),('2002','2023','1004',3),('2003','2023','1007',4),('2004','2023','1005',5),('2005','2023','1008',6),('2006','2023','1009',7),('2007','2024','1003',1),('2008','2029','1014',1),('2009','3006','1014',1);
/*!40000 ALTER TABLE `KREW_DOC_TYP_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_TMPL_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_NL_TMPL_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_TMPL_ATTR_T` (
  `NL_TMPL_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NL_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_TMPL_ATTR_ID`),
  UNIQUE KEY `KRMS_NL_TMPL_ATTR_TC1` (`NL_TMPL_ID`,`ATTR_DEFN_ID`),
  KEY `KRMS_NL_TMPL_ATTR_FK2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_NL_TMPL_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_NL_TMPL_ATTR_FK1` FOREIGN KEY (`NL_TMPL_ID`) REFERENCES `KRMS_NL_TMPL_T` (`NL_TMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_TMPL_ATTR_T`
--

LOCK TABLES `KRMS_NL_TMPL_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_TMPL_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_NL_TMPL_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_TMPL_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_TMPL_ATTR_S`
--

LOCK TABLES `KRMS_NL_TMPL_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_TMPL_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PERM_TMPL_T`
--

DROP TABLE IF EXISTS `KRIM_PERM_TMPL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERM_TMPL_T` (
  `PERM_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`PERM_TMPL_ID`),
  UNIQUE KEY `KRIM_PERM_TMPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PERM_TMPL_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_PERM_TMPL_TI1` (`NMSPC_CD`,`NM`),
  KEY `KRIM_PERM_TMPL_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_PERM_TMPL_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERM_TMPL_T`
--

LOCK TABLES `KRIM_PERM_TMPL_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PERM_TMPL_T` DISABLE KEYS */;
INSERT INTO `KRIM_PERM_TMPL_T` VALUES ('1','5ADF18B6D4857954E0404F8189D85002',1,'KUALI','Default',NULL,'1','Y'),('10','5ADF18B6D4BF7954E0404F8189D85002',1,'KR-SYS','Initiate Document',NULL,'3','Y'),('14','5ADF18B6D4CA7954E0404F8189D85002',1,'KR-WKFLW','Cancel Document',NULL,'8','Y'),('15','5ADF18B6D4CB7954E0404F8189D85002',1,'KR-WKFLW','Save Document',NULL,'8','Y'),('16','5ADF18B6D4CC7954E0404F8189D85002',1,'KR-NS','Edit Document',NULL,'8','Y'),('2','5ADF18B6D4AF7954E0404F8189D85002',1,'KR-NS','Copy Document',NULL,'3','Y'),('23','5ADF18B6D4DA7954E0404F8189D85002',1,'KR-NS','Look Up Records',NULL,'10','Y'),('24','5ADF18B6D4DB7954E0404F8189D85002',1,'KR-NS','Inquire Into Records',NULL,'10','Y'),('25','5ADF18B6D4DF7954E0404F8189D85002',1,'KR-NS','View Inquiry or Maintenance Document Field',NULL,'11','Y'),('26','5ADF18B6D4E07954E0404F8189D85002',1,'KR-NS','Modify Maintenance Document Field',NULL,'11','Y'),('27','5ADF18B6D4E17954E0404F8189D85002',1,'KR-NS','Full Unmask Field',NULL,'11','Y'),('28','5ADF18B6D4E27954E0404F8189D85002',1,'KR-NS','Partial Unmask Field',NULL,'11','Y'),('29','5ADF18B6D4E67954E0404F8189D85002',1,'KR-NS','Use Screen',NULL,'12','Y'),('3','5ADF18B6D4B07954E0404F8189D85002',1,'KR-WKFLW','Administer Routing for Document',NULL,'3','Y'),('30','5ADF18B6D4E97954E0404F8189D85002',1,'KR-NS','Perform Custom Maintenance Document Function',NULL,'13','Y'),('31','5ADF18B6D4EC7954E0404F8189D85002',1,'KR-NS','Use Transactional Document',NULL,'14','Y'),('32','5ADF18B6D4F07954E0404F8189D85002',1,'KR-NS','Modify Batch Job',NULL,'15','Y'),('33','5ADF18B6D4F17954E0404F8189D85002',1,'KR-NS','Upload Batch Input File(s)',NULL,'15','Y'),('34','5ADF18B6D4F67954E0404F8189D85002',1,'KR-NS','Maintain System Parameter',NULL,'16','Y'),('35','5ADF18B6D4FC7954E0404F8189D85002',1,'KR-IDM','Assign Role',NULL,'18','Y'),('36','5ADF18B6D5007954E0404F8189D85002',1,'KR-IDM','Grant Permission',NULL,'19','Y'),('37','5ADF18B6D5047954E0404F8189D85002',1,'KR-IDM','Grant Responsibility',NULL,'20','Y'),('38','5ADF18B6D5087954E0404F8189D85002',1,'KR-IDM','Populate Group',NULL,'21','Y'),('4','5ADF18B6D4B17954E0404F8189D85002',1,'KR-WKFLW','Blanket Approve Document',NULL,'3','Y'),('40','5ADF18B6D4AE7954E0404F8189D85002',1,'KR-NS','Open Document',NULL,'3','Y'),('42','603B735FA6C4FE21E0404F8189D8083B',1,'KR-NS','Create / Maintain Record(s)',NULL,'56','Y'),('43','603B735FA6C0FE21E0404F8189D8083B',1,'KR-NS','View Inquiry or Maintenance Document Section',NULL,'57','Y'),('44','603B735FA6C1FE21E0404F8189D8083B',1,'KR-NS','Modify Maintenance Document Section',NULL,'57','Y'),('45','606763510FC096D3E0404F8189D857A2',1,'KR-NS','Add Note / Attachment',NULL,'9','Y'),('46','606763510FC196D3E0404F8189D857A2',1,'KR-NS','View Note / Attachment',NULL,'9','Y'),('47','606763510FC296D3E0404F8189D857A2',1,'KR-NS','Delete Note / Attachment',NULL,'59','Y'),('49','662384B381B867A1E0404F8189D868A6',1,'KR-NS','Send Ad Hoc Request',NULL,'5','Y'),('5','5ADF18B6D4B27954E0404F8189D85002',1,'KR-WKFLW','Route Document',NULL,'3','Y'),('51','430ad531-89e4-11df-98b1-1300c9ee50c1',1,'KR-WKFLW','Add Message to Route Log',NULL,'3','Y'),('52','B7DBFABEFD2A8CBFE0402E0AA9D757C9',1,'KR-RULE','KRMS Agenda Permission','View/Maintain Agenda','67','Y'),('53','B7DBFABEFD578CBFE0402E0AA9D757C9',1,'KR-KRAD','Open View',NULL,'68','Y'),('54','B7DBFABEFD588CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit View',NULL,'68','Y'),('55','B7DBFABEFD598CBFE0402E0AA9D757C9',1,'KR-KRAD','Use View',NULL,'69','Y'),('56','B7DBFABEFD5A8CBFE0402E0AA9D757C9',1,'KR-KRAD','View Field',NULL,'70','Y'),('57','B7DBFABEFD5B8CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Field',NULL,'70','Y'),('58','B7DBFABEFD5C8CBFE0402E0AA9D757C9',1,'KR-KRAD','View Group',NULL,'71','Y'),('59','B7DBFABEFD5D8CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Group',NULL,'71','Y'),('60','B7DBFABEFD5E8CBFE0402E0AA9D757C9',1,'KR-KRAD','View Widget',NULL,'72','Y'),('61','B7DBFABEFD5F8CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Widget',NULL,'72','Y'),('62','B7DBFABEFD608CBFE0402E0AA9D757C9',1,'KR-KRAD','Perform Action',NULL,'73','Y'),('63','B7DBFABEFD618CBFE0402E0AA9D757C9',1,'KR-KRAD','View Line',NULL,'71','Y'),('64','B7DBFABEFD628CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Line',NULL,'71','Y'),('65','B7DBFABEFD638CBFE0402E0AA9D757C9',1,'KR-KRAD','View Line Field',NULL,'74','Y'),('66','B7DBFABEFD648CBFE0402E0AA9D757C9',1,'KR-KRAD','Edit Line Field',NULL,'74','Y'),('67','B7DBFABEFD658CBFE0402E0AA9D757C9',1,'KR-KRAD','Perform Line Action',NULL,'75','Y'),('68','BC5444677C24328CE0402E0AA9D77D80',1,'KR-WKFLW','Recall Document',NULL,'8','Y'),('8','5ADF18B6D4B77954E0404F8189D85002',1,'KR-NS','Take Requested Action',NULL,'4','Y'),('9','5ADF18B6D4BB7954E0404F8189D85002',1,'KR-WKFLW','Ad Hoc Review Document',NULL,'5','Y'),('KR1000','CDC48BA7E67A87DFE040F90A05B92A31',1,'KR-WKFLW','Super User Approve Single Action Request',NULL,'KR1000','Y'),('KR1001','CDC48BA7E67B87DFE040F90A05B92A31',1,'KR-WKFLW','Super User Approve Document',NULL,'KR1000','Y'),('KR1002','CDC48BA7E67C87DFE040F90A05B92A31',1,'KR-WKFLW','Super User Disapprove Document',NULL,'KR1000','Y'),('KR1003','CEA27F2DB2DC3593E040F90A05B924DB',1,'KR-SYS','Backdoor Restriction','Backdoor Restriction','KR1001','Y');
/*!40000 ALTER TABLE `KRIM_PERM_TMPL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_CFG_PARM_T`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_CFG_PARM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_CFG_PARM_T` (
  `RTE_NODE_CFG_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_NODE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RTE_NODE_CFG_PARM_ID`),
  KEY `KREW_RTE_NODE_CFG_PARM_TI1` (`RTE_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_CFG_PARM_T`
--

LOCK TABLES `KREW_RTE_NODE_CFG_PARM_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_CFG_PARM_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_NODE_CFG_PARM_T` VALUES ('2012','2004','contentFragment','<start name=\"placeholder\"><activationType>S</activationType></start>'),('2013','2004','activationType','S'),('2014','2004','ruleSelector','Template'),('2015','2006','contentFragment','<start name=\"placeholder\"><activationType>S</activationType></start>'),('2016','2006','activationType','S'),('2017','2006','ruleSelector','Template'),('2118','2039','contentFragment','<start name=\"Adhoc Routing\"><activationType>S</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>true</finalApproval></start>'),('2119','2039','activationType','S'),('2120','2039','mandatoryRoute','false'),('2121','2039','finalApproval','true'),('2122','2039','ruleSelector','Template'),('2123','2041','contentFragment','<start name=\"Initiated\"><activationType>S</activationType></start>'),('2124','2041','activationType','S'),('2125','2041','ruleSelector','Template'),('2126','2042','contentFragment','<requests name=\"ReviewersNode\"><ruleTemplate>ReviewersRouting</ruleTemplate></requests>'),('2127','2042','ruleTemplate','ReviewersRouting'),('2128','2042','ruleSelector','Template'),('2129','2043','contentFragment','<requests name=\"RequestsNode\"><ruleTemplate>NotificationRouting</ruleTemplate></requests>'),('2130','2043','ruleTemplate','NotificationRouting'),('2131','2043','ruleSelector','Template'),('2162','2057','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2163','2057','activationType','P'),('2164','2057','mandatoryRoute','false'),('2165','2057','finalApproval','false'),('2166','2057','ruleSelector','Template'),('2167','2059','contentFragment','<start name=\"Initiated\"><activationType>P</activationType></start>'),('2168','2059','activationType','P'),('2169','2059','ruleSelector','Template'),('2170','2061','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2171','2061','activationType','P'),('2172','2061','mandatoryRoute','false'),('2173','2061','finalApproval','false'),('2174','2061','ruleSelector','Template'),('2175','2063','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2176','2063','activationType','P'),('2177','2063','mandatoryRoute','false'),('2178','2063','finalApproval','false'),('2179','2063','ruleSelector','Template'),('2180','2065','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2181','2065','activationType','P'),('2182','2065','mandatoryRoute','false'),('2183','2065','finalApproval','false'),('2184','2065','ruleSelector','Template'),('2185','2067','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2186','2067','activationType','P'),('2187','2067','mandatoryRoute','false'),('2188','2067','finalApproval','false'),('2189','2067','ruleSelector','Template'),('2243','2344','contentFragment','<start name=\"AdHoc\"><activationType>P</activationType></start>'),('2244','2344','activationType','P'),('2245','2344','ruleSelector','Template'),('2360','2580','contentFragment','<start name=\"Initiated\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2361','2580','activationType','P'),('2362','2580','mandatoryRoute','false'),('2363','2580','finalApproval','false'),('2364','2580','ruleSelector','Template'),('2365','2581','contentFragment','<requests name=\"eDoc.Example1.Node1\"><activationType>P</activationType><ruleTemplate>eDoc.Example1.Node1</ruleTemplate><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></requests>'),('2366','2581','activationType','P'),('2367','2581','ruleTemplate','eDoc.Example1.Node1'),('2368','2581','mandatoryRoute','false'),('2369','2581','finalApproval','false'),('2370','2581','ruleSelector','Template'),('2380','2840','contentFragment','<start name=\"PreRoute\"><activationType>S</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2381','2840','activationType','S'),('2382','2840','mandatoryRoute','false'),('2383','2840','finalApproval','false'),('2384','2840','ruleSelector','Template'),('2397','2846','contentFragment','<start name=\"PreRoute\"><activationType>P</activationType></start>'),('2398','2846','activationType','P'),('2399','2846','ruleSelector','Template'),('2400','2847','contentFragment','<requests name=\"DestinationApproval\"><ruleTemplate>TravelRequest-DestinationRouting</ruleTemplate></requests>'),('2401','2847','ruleTemplate','TravelRequest-DestinationRouting'),('2402','2847','ruleSelector','Template'),('2403','2848','contentFragment','<requests name=\"TravelerApproval\"><ruleTemplate>TravelRequest-TravelerRouting</ruleTemplate></requests>'),('2404','2848','ruleTemplate','TravelRequest-TravelerRouting'),('2405','2848','ruleSelector','Template'),('2406','2849','contentFragment','<requests name=\"SupervisorApproval\"><ruleTemplate>TravelRequest-SupervisorRouting</ruleTemplate></requests>'),('2407','2849','ruleTemplate','TravelRequest-SupervisorRouting'),('2408','2849','ruleSelector','Template'),('2409','2850','contentFragment','<requests name=\"AccountApproval\"><ruleTemplate>TravelRequest-AccountRouting</ruleTemplate></requests>'),('2410','2850','ruleTemplate','TravelRequest-AccountRouting'),('2411','2850','ruleSelector','Template'),('2412','2892','contentFragment','<start name=\"Adhoc Routing\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2413','2892','activationType','P'),('2414','2892','mandatoryRoute','false'),('2415','2892','finalApproval','false'),('2416','2892','ruleSelector','Template'),('2417','2893','contentFragment','<requests name=\"Recipe Masters Group Approval\"><activationType>S</activationType><ruleSelector>Named</ruleSelector><ruleName>RecipeMastersGroupApproval</ruleName></requests>'),('2418','2893','activationType','S'),('2419','2893','ruleSelector','Named'),('2420','2893','ruleName','RecipeMastersGroupApproval'),('2421','2895','contentFragment','<start name=\"Adhoc Routing\"><activationType>P</activationType><mandatoryRoute>false</mandatoryRoute><finalApproval>false</finalApproval></start>'),('2422','2895','activationType','P'),('2423','2895','mandatoryRoute','false'),('2424','2895','finalApproval','false'),('2425','2895','ruleSelector','Template'),('2426','2896','contentFragment','<requests name=\"Chicken Recipe Masters Group Approval\"><activationType>S</activationType><ruleSelector>Named</ruleSelector><ruleName>ChickenRecipeMastersGroupApproval</ruleName></requests>'),('2427','2896','activationType','S'),('2428','2896','ruleSelector','Named'),('2429','2896','ruleName','ChickenRecipeMastersGroupApproval'),('2430','2898','contentFragment','<start name=\"AdHoc\"/>'),('2431','2898','ruleSelector','Template'),('2432','2899','contentFragment','<role name=\"RoleType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2433','2899','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2434','2899','activationType','P'),('2435','2899','ruleSelector','Template'),('2436','2901','contentFragment','<start name=\"AdHoc\"/>'),('2437','2901','ruleSelector','Template'),('2438','2902','contentFragment','<role name=\"GroupType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2439','2902','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2440','2902','activationType','P'),('2441','2902','ruleSelector','Template'),('2442','2904','contentFragment','<start name=\"AdHoc\"/>'),('2443','2904','ruleSelector','Template'),('2444','2905','contentFragment','<role name=\"GroupType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2445','2905','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2446','2905','activationType','P'),('2447','2905','ruleSelector','Template'),('2448','2906','contentFragment','<role name=\"RoleType\"><qualifierResolverClass>org.kuali.rice.kim.impl.type.KimTypeQualifierResolver</qualifierResolverClass><activationType>P</activationType></role>'),('2449','2906','qualifierResolverClass','org.kuali.rice.kim.impl.type.KimTypeQualifierResolver'),('2450','2906','activationType','P'),('2451','2906','ruleSelector','Template'),('2452','2908','contentFragment','<start name=\"AdHoc\"/>'),('2453','2908','ruleSelector','Template'),('2454','2910','contentFragment','<start name=\"AdHoc\"/>'),('2455','2910','ruleSelector','Template'),('2461','2914','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2462','2914','activationType','P'),('2463','2914','mandatoryRoute','false'),('2464','2914','finalApproval','false'),('2465','2914','ruleSelector','Template'),('2466','2915','contentFragment','<requests name=\"PeopleFlows\">\n<activationType>R</activationType>\n<rulesEngine executorClass=\"edu.sampleu.travel.workflow.TravelAccountRulesEngineExecutor\"/>\n</requests>\n'),('2467','2915','activationType','R'),('2468','2915','rulesEngine',NULL),('2469','2915','ruleSelector','Template'),('2470','2917','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2471','2917','activationType','P'),('2472','2917','mandatoryRoute','false'),('2473','2917','finalApproval','false'),('2474','2917','ruleSelector','Template'),('2475','2919','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2476','2919','activationType','P'),('2477','2919','mandatoryRoute','false'),('2478','2919','finalApproval','false'),('2479','2919','ruleSelector','Template'),('2480','2921','contentFragment','<start name=\"Initiated\">\n<activationType>P</activationType>\n<mandatoryRoute>false</mandatoryRoute>\n<finalApproval>false</finalApproval>\n</start>\n'),('2481','2921','activationType','P'),('2482','2921','mandatoryRoute','false'),('2483','2921','finalApproval','false'),('2484','2921','ruleSelector','Template');
/*!40000 ALTER TABLE `KREW_RTE_NODE_CFG_PARM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_ATTR_T` (
  `TERM_RSLVR_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_RSLVR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TERM_RSLVR_ATTR_ID`),
  KEY `KRMS_TERM_RSLVR_ATTR_TI1` (`TERM_RSLVR_ID`),
  KEY `KRMS_TERM_RSLVR_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_TERM_RSLVR_ATTR_FK1` FOREIGN KEY (`TERM_RSLVR_ID`) REFERENCES `KRMS_TERM_RSLVR_T` (`TERM_RSLVR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_ATTR_T`
--

LOCK TABLES `KRMS_TERM_RSLVR_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_RSLVR_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_RSLVR_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_RSLVR_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_RSLVR_ATTR_S`
--

LOCK TABLES `KRMS_TERM_RSLVR_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_RSLVR_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_CFG_PARM_S`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_CFG_PARM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_CFG_PARM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2485 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_CFG_PARM_S`
--

LOCK TABLES `KREW_RTE_NODE_CFG_PARM_S` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_CFG_PARM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RTE_NODE_CFG_PARM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_TYP_ATTR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_TYP_ATTR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_TYP_ATTR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_TYP_ATTR_ID_S`
--

LOCK TABLES `KRIM_TYP_ATTR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_TYP_ATTR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_TYP_ATTR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PERM_TMPL_ID_S`
--

DROP TABLE IF EXISTS `KRIM_PERM_TMPL_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERM_TMPL_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERM_TMPL_ID_S`
--

LOCK TABLES `KRIM_PERM_TMPL_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_PERM_TMPL_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PERM_TMPL_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_DLGT_T`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_DLGT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_DLGT_T` (
  `PPL_FLW_DLGT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PPL_FLW_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `ACTN_RQST_PLCY_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`PPL_FLW_DLGT_ID`),
  KEY `KREW_PPL_FLW_DLGT_TI1` (`PPL_FLW_MBR_ID`),
  CONSTRAINT `KREW_PPL_FLW_DLGT_FK1` FOREIGN KEY (`PPL_FLW_MBR_ID`) REFERENCES `KREW_PPL_FLW_MBR_T` (`PPL_FLW_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_DLGT_T`
--

LOCK TABLES `KREW_PPL_FLW_DLGT_T` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_DLGT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_DLGT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_PROP_PARM_T`
--

DROP TABLE IF EXISTS `KRMS_PROP_PARM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_PROP_PARM_T` (
  `PROP_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PARM_VAL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARM_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `SEQ_NO` decimal(5,0) NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PROP_PARM_ID`),
  KEY `KRMS_PROP_PARM_TI1` (`PROP_ID`),
  CONSTRAINT `KRMS_PROP_PARM_FK1` FOREIGN KEY (`PROP_ID`) REFERENCES `KRMS_PROP_T` (`PROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_PROP_PARM_T`
--

LOCK TABLES `KRMS_PROP_PARM_T` WRITE;
/*!40000 ALTER TABLE `KRMS_PROP_PARM_T` DISABLE KEYS */;
INSERT INTO `KRMS_PROP_PARM_T` VALUES ('T1000','T1000','T1002','T',1,1),('T1001','T1000','BL','C',2,1),('T1002','T1000','=','O',3,1),('T1003','T1001','T1002','T',1,1),('T1004','T1001','BL','C',2,1),('T1005','T1001','=','O',3,1),('T1006','T1002','T1002','T',1,1),('T1007','T1002','BL','C',2,1),('T1008','T1002','=','O',3,1),('T1009','T1003','T1002','T',1,1),('T1010','T1003','BL','C',2,1),('T1011','T1003','=','O',3,1),('T1012','T1004','T1002','T',1,1),('T1013','T1004','BL','C',2,1),('T1014','T1004','=','O',3,1),('T1015','T1005','T1002','T',1,1),('T1016','T1005','BL','C',2,1),('T1017','T1005','=','O',3,1),('T1018','T1006','T1002','T',1,1),('T1019','T1006','BL','C',2,1),('T1020','T1006','=','O',3,1),('T1021','T1008','T1002','T',1,1),('T1022','T1008','Muir','C',2,1),('T1023','T1008','=','O',3,1),('T1024','T1009','T1002','T',1,1),('T1025','T1009','Revelle','C',2,1),('T1026','T1009','=','O',3,1),('T1027','T1010','T1002','T',1,1),('T1028','T1010','Warren','C',2,1),('T1029','T1010','=','O',3,1),('T1030','T1012','T1004','T',1,1),('T1031','T1012','5500.00','C',2,1),('T1032','T1012','>','O',3,1),('T1033','T1015','T1005','T',1,1),('T1034','T1015','ANIMAL','C',2,1),('T1035','T1015','=','O',3,1),('T1036','T1016','T1005','T',1,1),('T1037','T1016','RADIOACTIVE','C',2,1),('T1038','T1016','=','O',3,1),('T1039','T1017','T1005','T',1,1),('T1040','T1017','ALCOHOL BEVERAGE','C',2,1),('T1041','T1017','=','O',3,1),('T1042','T1018','T1006','T',1,1),('T1043','T1018','KUALI SLUSH FUND','C',2,1),('T1044','T1018','=','O',3,1),('T1045','T1019','T1007','T',1,1),('T1046','T1019','Christmas Party','C',2,1),('T1047','T1019','=','O',3,1);
/*!40000 ALTER TABLE `KRMS_PROP_PARM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_USR_S`
--

DROP TABLE IF EXISTS `KREW_USR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_USR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100000000000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_USR_S`
--

LOCK TABLES `KREW_USR_S` WRITE;
/*!40000 ALTER TABLE `KREW_USR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_USR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_DLGT_S`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_DLGT_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_DLGT_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_DLGT_S`
--

LOCK TABLES `KREW_PPL_FLW_DLGT_S` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_DLGT_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_DLGT_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_PROP_PARM_S`
--

DROP TABLE IF EXISTS `KRMS_PROP_PARM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_PROP_PARM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_PROP_PARM_S`
--

LOCK TABLES `KRMS_PROP_PARM_S` WRITE;
/*!40000 ALTER TABLE `KRMS_PROP_PARM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_PROP_PARM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_TYP_PROC_T`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_PROC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_PROC_T` (
  `DOC_TYP_PROC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `INIT_RTE_NODE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `INIT_IND` decimal(1,0) NOT NULL DEFAULT '0',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`DOC_TYP_PROC_ID`),
  KEY `KREW_DOC_TYP_PROC_TI1` (`DOC_TYP_ID`),
  KEY `KREW_DOC_TYP_PROC_TI2` (`INIT_RTE_NODE_ID`),
  KEY `KREW_DOC_TYP_PROC_TI3` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_PROC_T`
--

LOCK TABLES `KREW_DOC_TYP_PROC_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_PROC_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_TYP_PROC_T` VALUES ('2005','2011','2004','PRIMARY',1,2),('2007','2012','2006','PRIMARY',1,2),('2040','2023','2039','PRIMARY',1,1),('2044','2024','2041','PRIMARY',1,1),('2058','2029','2057','PRIMARY',1,2),('2060','2030','2059','PRIMARY',1,1),('2062','2031','2061','PRIMARY',1,1),('2064','2032','2063','PRIMARY',1,1),('2066','2033','2065','PRIMARY',1,1),('2068','2034','2067','PRIMARY',1,1),('2345','2282','2344','PRIMARY',1,1),('2582','2440','2580','PRIMARY',1,1),('2841','2680','2840','PRIMARY',1,2),('2851','2683','2846','PRIMARY',1,1),('2894','2704','2892','PRIMARY',1,4),('2897','2707','2895','PRIMARY',1,1),('2900','2995','2898','PRIMARY',1,1),('2903','2996','2901','PRIMARY',1,1),('2907','2997','2904','PRIMARY',1,1),('2909','2998','2908','PRIMARY',1,1),('2911','2999','2910','PRIMARY',1,1),('2916','3006','2914','PRIMARY',1,1),('2918','3007','2917','PRIMARY',1,1),('2920','3008','2919','PRIMARY',1,1),('2922','3009','2921','PRIMARY',1,1);
/*!40000 ALTER TABLE `KREW_DOC_TYP_PROC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_RSP_RQRD_ATTR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_RSP_RQRD_ATTR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_RSP_RQRD_ATTR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_RSP_RQRD_ATTR_ID_S`
--

LOCK TABLES `KRIM_RSP_RQRD_ATTR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_RSP_RQRD_ATTR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_RSP_RQRD_ATTR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_TMPL_OPTN_T`
--

DROP TABLE IF EXISTS `KREW_RULE_TMPL_OPTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_TMPL_OPTN_T` (
  `RULE_TMPL_OPTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KEY_CD` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_TMPL_OPTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_TMPL_OPTN_T`
--

LOCK TABLES `KREW_RULE_TMPL_OPTN_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_TMPL_OPTN_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_TMPL_OPTN_T` VALUES ('2000','1016','D','K',1),('2001','1016','A','true',1),('2002','1016','K','true',1),('2003','1016','F','true',1),('2004','1016','C','true',1),('2005','1016','I','some instructions',1);
/*!40000 ALTER TABLE `KREW_RULE_TMPL_OPTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_JOB_LISTENERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_JOB_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_JOB_LISTENERS` (
  `JOB_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_LISTENER` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`,`JOB_LISTENER`),
  CONSTRAINT `KRSB_QUARTZ_JOB_LISTENERS_TR1` FOREIGN KEY (`JOB_NAME`, `JOB_GROUP`) REFERENCES `KRSB_QRTZ_JOB_DETAILS` (`JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_JOB_LISTENERS`
--

LOCK TABLES `KRSB_QRTZ_JOB_LISTENERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_JOB_LISTENERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_JOB_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ACCT_DD_ATTR_DOC`
--

DROP TABLE IF EXISTS `ACCT_DD_ATTR_DOC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCT_DD_ATTR_DOC` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(14,0) DEFAULT NULL,
  `ACCT_NUM` decimal(14,0) NOT NULL,
  `ACCT_OWNR` varchar(50) COLLATE utf8_bin NOT NULL,
  `ACCT_BAL` decimal(16,2) NOT NULL,
  `ACCT_OPN_DAT` datetime NOT NULL,
  `ACCT_STAT` varchar(30) COLLATE utf8_bin NOT NULL,
  `ACCT_UPDATE_DT_TM` datetime DEFAULT NULL,
  `ACCT_AWAKE` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCT_DD_ATTR_DOC`
--

LOCK TABLES `ACCT_DD_ATTR_DOC` WRITE;
/*!40000 ALTER TABLE `ACCT_DD_ATTR_DOC` DISABLE KEYS */;
/*!40000 ALTER TABLE `ACCT_DD_ATTR_DOC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RVWER_T`
--

DROP TABLE IF EXISTS `KREN_RVWER_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RVWER_T` (
  `RVWER_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `CHNL_ID` decimal(8,0) NOT NULL,
  `TYP` varchar(10) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`RVWER_ID`),
  UNIQUE KEY `KREN_RVWER_TC0` (`CHNL_ID`,`TYP`,`PRNCPL_ID`),
  KEY `KREN_RVWER_TI1` (`CHNL_ID`),
  CONSTRAINT `NOTIFICATION_REVIEWERS_N_FK1` FOREIGN KEY (`CHNL_ID`) REFERENCES `KREN_CHNL_T` (`CHNL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RVWER_T`
--

LOCK TABLES `KREN_RVWER_T` WRITE;
/*!40000 ALTER TABLE `KREN_RVWER_T` DISABLE KEYS */;
INSERT INTO `KREN_RVWER_T` VALUES (1,1,'GROUP','RiceTeam',1,NULL),(2,5,'USER','testuser3',1,NULL),(3,5,'GROUP','TestGroup1',1,NULL);
/*!40000 ALTER TABLE `KREN_RVWER_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_DLGN_MBR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_DLGN_MBR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_DLGN_MBR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_DLGN_MBR_ID_S`
--

LOCK TABLES `KRIM_DLGN_MBR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_DLGN_MBR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_DLGN_MBR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_RSP_ACTN_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_RSP_ACTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_RSP_ACTN_T` (
  `ROLE_RSP_ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTN_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_NBR` decimal(3,0) DEFAULT NULL,
  `ACTN_PLCY_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `FRC_ACTN` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`ROLE_RSP_ACTN_ID`),
  UNIQUE KEY `KRIM_ROLE_RSP_ACTN_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ROLE_RSP_ACTN_TC1` (`ROLE_RSP_ID`,`ROLE_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_RSP_ACTN_T`
--

LOCK TABLES `KRIM_ROLE_RSP_ACTN_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_ACTN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_RSP_ACTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RVWER_S`
--

DROP TABLE IF EXISTS `KREN_RVWER_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RVWER_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RVWER_S`
--

LOCK TABLES `KREN_RVWER_S` WRITE;
/*!40000 ALTER TABLE `KREN_RVWER_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RVWER_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_SRCH_ATTR_S`
--

DROP TABLE IF EXISTS `KREW_SRCH_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_SRCH_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2060 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_SRCH_ATTR_S`
--

LOCK TABLES `KREW_SRCH_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KREW_SRCH_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_SRCH_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ADDR_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_ADDR_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ADDR_TYP_T` (
  `ADDR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ADDR_TYP_CD`),
  UNIQUE KEY `KRIM_ADDR_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ADDR_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ADDR_TYP_T`
--

LOCK TABLES `KRIM_ADDR_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ADDR_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_ADDR_TYP_T` VALUES ('HM','5B97C50B03706110E0404F8189D85213',1,'Home','Y','b','2008-11-13 14:06:29'),('OTH','5B97C50B03716110E0404F8189D85213',1,'Other','Y','c','2008-11-13 14:06:29'),('WRK','5B97C50B03726110E0404F8189D85213',1,'Work','Y','a','2008-11-13 14:06:30');
/*!40000 ALTER TABLE `KRIM_ADDR_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PERM_RQRD_ATTR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_PERM_RQRD_ATTR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERM_RQRD_ATTR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERM_RQRD_ATTR_ID_S`
--

LOCK TABLES `KRIM_PERM_RQRD_ATTR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_PERM_RQRD_ATTR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PERM_RQRD_ATTR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_USR_OPTN_T`
--

DROP TABLE IF EXISTS `KREW_USR_OPTN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_USR_OPTN_T` (
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRSN_OPTN_ID` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`PRNCPL_ID`,`PRSN_OPTN_ID`),
  KEY `KREW_USR_OPTN_TI1` (`PRNCPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_USR_OPTN_T`
--

LOCK TABLES `KREW_USR_OPTN_T` WRITE;
/*!40000 ALTER TABLE `KREW_USR_OPTN_T` DISABLE KEYS */;
INSERT INTO `KREW_USR_OPTN_T` VALUES ('admin','ACTION_LIST_SIZE_NEW','10',1),('admin','ACTION_REQUESTED_COL_SHOW_NEW','yes',1),('admin','APP_DOC_STATUS_COL_SHOW_NEW',NULL,1),('admin','CLEAR_FYI_COL_SHOW_NEW','yes',1),('admin','CURRENT_NODE_COL_SHOW_NEW','no',1),('admin','DATE_CREATED_COL_SHOW_NEW','yes',1),('admin','DELEGATOR_COL_SHOW_NEW','yes',1),('admin','DELEGATOR_FILTER','Secondary Delegators on Action List Page',1),('admin','DOCUMENT_STATUS_COLOR_A','white',1),('admin','DOCUMENT_STATUS_COLOR_C','white',1),('admin','DOCUMENT_STATUS_COLOR_D','white',1),('admin','DOCUMENT_STATUS_COLOR_E','white',1),('admin','DOCUMENT_STATUS_COLOR_F','white',1),('admin','DOCUMENT_STATUS_COLOR_I','white',1),('admin','DOCUMENT_STATUS_COLOR_P','white',1),('admin','DOCUMENT_STATUS_COLOR_R','white',1),('admin','DOCUMENT_STATUS_COLOR_S','white',1),('admin','DOCUMENT_STATUS_COLOR_X','white',1),('admin','DOCUMENT_STATUS_COL_SHOW_NEW','yes',1),('admin','DOC_TYPE_COL_SHOW_NEW','yes',1),('admin','EMAIL_NOTIFICATION','immediate',1),('admin','EMAIL_NOTIFY_PRIMARY','yes',1),('admin','EMAIL_NOTIFY_SECONDARY','no',1),('admin','INITIATOR_COL_SHOW_NEW',NULL,1),('admin','LAST_APPROVED_DATE_COL_SHOW_NEW','no',1),('admin','NOTIFY_ACKNOWLEDGE','yes',1),('admin','NOTIFY_APPROVE','yes',1),('admin','NOTIFY_COMPLETE','yes',1),('admin','NOTIFY_FYI','yes',1),('admin','OPEN_ITEMS_NEW_WINDOW','yes',1),('admin','PRIMARY_DELEGATE_FILTER','Primary Delegates on Action List Page',1),('admin','REFRESH_RATE','15',1),('admin','TITLE_COL_SHOW_NEW','yes',1),('admin','USE_OUT_BOX','yes',1),('admin','WORKGROUP_REQUEST_COL_SHOW_NEW','yes',1);
/*!40000 ALTER TABLE `KREW_USR_OPTN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_EXT_VAL_T`
--

DROP TABLE IF EXISTS `KREW_RULE_EXT_VAL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_EXT_VAL_T` (
  `RULE_EXT_VAL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_EXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(2000) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RULE_EXT_VAL_ID`),
  KEY `KREW_RULE_EXT_VAL_T1` (`RULE_EXT_ID`),
  KEY `KREW_RULE_EXT_VAL_T2` (`RULE_EXT_VAL_ID`,`KEY_CD`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_EXT_VAL_T`
--

LOCK TABLES `KREW_RULE_EXT_VAL_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_EXT_VAL_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_EXT_VAL_T` VALUES ('1048','1047','las vegas','destination',1),('1105','1104','IUB','campus',1),('1108','1107','IUPUI','campus',1);
/*!40000 ALTER TABLE `KREW_RULE_EXT_VAL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_ADHOC_RTE_ACTN_RECIP_T`
--

DROP TABLE IF EXISTS `KRNS_ADHOC_RTE_ACTN_RECIP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_ADHOC_RTE_ACTN_RECIP_T` (
  `RECIP_TYP_CD` decimal(1,0) NOT NULL DEFAULT '0',
  `ACTN_RQST_CD` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACTN_RQST_RECIP_ID` varchar(70) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`RECIP_TYP_CD`,`ACTN_RQST_CD`,`ACTN_RQST_RECIP_ID`,`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_ADHOC_RTE_ACTN_RECIP_TC0` (`OBJ_ID`),
  KEY `KRNS_ADHOC_RTE_ACTN_RECIP_T2` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_ADHOC_RTE_ACTN_RECIP_T`
--

LOCK TABLES `KRNS_ADHOC_RTE_ACTN_RECIP_T` WRITE;
/*!40000 ALTER TABLE `KRNS_ADHOC_RTE_ACTN_RECIP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_ADHOC_RTE_ACTN_RECIP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_EDL_FLD_DMP_S`
--

DROP TABLE IF EXISTS `KREW_EDL_FLD_DMP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_EDL_FLD_DMP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_EDL_FLD_DMP_S`
--

LOCK TABLES `KREW_EDL_FLD_DMP_S` WRITE;
/*!40000 ALTER TABLE `KREW_EDL_FLD_DMP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_EDL_FLD_DMP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_FUNC_PARM_S`
--

DROP TABLE IF EXISTS `KRMS_FUNC_PARM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_FUNC_PARM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_FUNC_PARM_S`
--

LOCK TABLES `KRMS_FUNC_PARM_S` WRITE;
/*!40000 ALTER TABLE `KRMS_FUNC_PARM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_FUNC_PARM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_FUNC_PARM_T`
--

DROP TABLE IF EXISTS `KRMS_FUNC_PARM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_FUNC_PARM_T` (
  `FUNC_PARM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `SEQ_NO` decimal(5,0) NOT NULL,
  PRIMARY KEY (`FUNC_PARM_ID`),
  KEY `KRMS_FUNC_PARM_TI1` (`FUNC_ID`),
  CONSTRAINT `KRMS_FUNC_PARM_FK1` FOREIGN KEY (`FUNC_ID`) REFERENCES `KRMS_FUNC_T` (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_FUNC_PARM_T`
--

LOCK TABLES `KRMS_FUNC_PARM_T` WRITE;
/*!40000 ALTER TABLE `KRMS_FUNC_PARM_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_FUNC_PARM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_EDL_FLD_DMP_T`
--

DROP TABLE IF EXISTS `KREW_EDL_FLD_DMP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_EDL_FLD_DMP_T` (
  `EDL_FIELD_DMP_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `FLD_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `FLD_VAL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`EDL_FIELD_DMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_EDL_FLD_DMP_T`
--

LOCK TABLES `KREW_EDL_FLD_DMP_T` WRITE;
/*!40000 ALTER TABLE `KREW_EDL_FLD_DMP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_EDL_FLD_DMP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_T`
--

DROP TABLE IF EXISTS `KREW_RULE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_T` (
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RULE_EXPR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `RULE_BASE_VAL_DESC` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `FRC_ACTN` decimal(1,0) NOT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `TMPL_RULE_IND` decimal(1,0) DEFAULT NULL,
  `FRM_DT` datetime DEFAULT NULL,
  `TO_DT` datetime DEFAULT NULL,
  `DACTVN_DT` datetime DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT '0',
  `RULE_VER_NBR` decimal(8,0) DEFAULT '0',
  `DLGN_IND` decimal(1,0) DEFAULT NULL,
  `PREV_VER_RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTVN_DT` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_ID`),
  UNIQUE KEY `KREW_RULE_TC0` (`OBJ_ID`),
  KEY `KREW_RULE_TR1` (`RULE_EXPR_ID`),
  CONSTRAINT `KREW_RULE_TR1` FOREIGN KEY (`RULE_EXPR_ID`) REFERENCES `KREW_RULE_EXPR_T` (`RULE_EXPR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_T`
--

LOCK TABLES `KREW_RULE_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_T` VALUES ('1044','SendNotificationRequest.Reviewers','1023',NULL,1,'Notification Request Reviewers',1,'SendNotificationRequest',NULL,0,'2008-08-01 15:59:02','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:02',0,'6166CBA1BBE9644DE0404F8189D86C09'),('1046','TravelRequest.Destination.LasVegas','1026',NULL,1,'Destination - Las Vegas',0,'TravelRequest',NULL,0,'2008-08-01 15:59:02','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:02',0,'6166CBA1BBEA644DE0404F8189D86C09'),('1049','TravelRequest.Supervisor','1028',NULL,1,'Supervisor Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:02','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:02',0,'6166CBA1BBEB644DE0404F8189D86C09'),('1050','TravelRequest.DeanDirector','1030',NULL,1,'Dean/Director Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:03','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:03',0,'6166CBA1BBEC644DE0404F8189D86C09'),('1051','TravelRequest.FiscalOfficer','1030',NULL,1,'Fiscal Officer Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:03','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:03',0,'6166CBA1BBED644DE0404F8189D86C09'),('1052','659D86718DD514C7E0404F8189D877C3','1032',NULL,1,'Fiscal Officer Routing',0,'TravelRequest',NULL,0,'2008-08-01 15:59:03','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-08-01 15:59:03',0,'6166CBA1BBEE644DE0404F8189D86C09'),('1103','eDoc.Example1Doctype.IUB','1101',NULL,1,'Routing rule for EDocLite Example with IUB selected.',0,'eDoc.Example1Doctype',NULL,0,'2008-09-16 12:26:15','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-09-16 12:26:15',0,'6166CBA1BBEF644DE0404F8189D86C09'),('1106','eDoc.Example1Doctype.IUPUI','1101',NULL,1,'Routing rule for EDocLite Example with IUPUI selected.',0,'eDoc.Example1Doctype',NULL,0,'2008-09-16 12:26:16','2100-01-01 00:00:00','2100-01-01 00:00:00',1,0,0,NULL,'2008-09-16 12:26:16',0,'6166CBA1BBF0644DE0404F8189D86C09'),('1642','RecipeMastersGroupApproval',NULL,NULL,1,'This rule requires an approval from the RecipeMasters workgroup.',1,'RecipeParentMaintenanceDocument',NULL,0,NULL,NULL,NULL,1,0,0,NULL,'2009-05-15 12:22:09',0,'D1216F1E-EAB3-68F8-FF50-1B20357669A4'),('1643','ChickenRecipeMastersGroupApproval',NULL,'2000',1,'This rule requires an approval from the ChickenRecipeMasters workgroup if the ingredients for the recipe contains Chicken.',1,'RecipeMaintenanceDocument',NULL,0,NULL,NULL,NULL,1,0,0,NULL,'2009-05-15 12:22:09',0,'8E72AF5C-609C-9337-2606-62D941A7D3FF'),('1644','MagazineGroupApproval',NULL,'2001',1,'This rule requires an approval from the Magazine workgroup if any of the sources lists one of the Magazine System\'s managed magazines.',1,'RecipeMaintenanceDocument',NULL,0,NULL,NULL,NULL,1,0,0,NULL,'2009-05-15 12:22:09',0,'CF9FBB5A-942F-0DEB-327F-BE402D55AF51');
/*!40000 ALTER TABLE `KREW_RULE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_S`
--

DROP TABLE IF EXISTS `KREN_RECIP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_S`
--

LOCK TABLES `KREN_RECIP_S` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RECIP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_MBR_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_MBR_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_MBR_ATTR_DATA_T` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_ROLE_MBR_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_MBR_ATTR_DATA_TI1` (`ROLE_MBR_ID`),
  KEY `KRIM_ROLE_MBR_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_ROLE_MBR_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_ROLE_MBR_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `KRIM_ATTR_DEFN_T` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_ROLE_MBR_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_MBR_ATTR_DATA_T`
--

LOCK TABLES `KRIM_ROLE_MBR_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_MBR_ATTR_DATA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_MBR_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_JOB_DETAILS` (
  `JOB_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `JOB_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(128) COLLATE utf8_bin NOT NULL,
  `IS_DURABLE` varchar(1) COLLATE utf8_bin NOT NULL,
  `IS_VOLATILE` varchar(1) COLLATE utf8_bin NOT NULL,
  `IS_STATEFUL` varchar(1) COLLATE utf8_bin NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) COLLATE utf8_bin NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`JOB_NAME`,`JOB_GROUP`),
  KEY `KRSB_QRTZ_JOB_DETAILS_TI1` (`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_JOB_DETAILS`
--

LOCK TABLES `KRSB_QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_GRP_MBR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_GRP_MBR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_MBR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_MBR_ID_S`
--

LOCK TABLES `KRIM_GRP_MBR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_MBR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_GRP_MBR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ATTR_DEFN_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ATTR_DEFN_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ATTR_DEFN_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ATTR_DEFN_ID_S`
--

LOCK TABLES `KRIM_ATTR_DEFN_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ATTR_DEFN_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ATTR_DEFN_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_RECIP_T`
--

DROP TABLE IF EXISTS `KREN_RECIP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_RECIP_T` (
  `RECIP_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NTFCTN_ID` decimal(8,0) NOT NULL,
  `RECIP_TYP_CD` varchar(10) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT NULL,
  PRIMARY KEY (`RECIP_ID`),
  UNIQUE KEY `KREN_RECIP_TC0` (`NTFCTN_ID`,`RECIP_TYP_CD`,`PRNCPL_ID`),
  KEY `KREN_RECIP_TI1` (`NTFCTN_ID`),
  CONSTRAINT `KREN_RECIP_FK1` FOREIGN KEY (`NTFCTN_ID`) REFERENCES `KREN_NTFCTN_T` (`NTFCTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_RECIP_T`
--

LOCK TABLES `KREN_RECIP_T` WRITE;
/*!40000 ALTER TABLE `KREN_RECIP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_RECIP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_MSG_DELIV_S`
--

DROP TABLE IF EXISTS `KREN_MSG_DELIV_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_MSG_DELIV_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_MSG_DELIV_S`
--

LOCK TABLES `KREN_MSG_DELIV_S` WRITE;
/*!40000 ALTER TABLE `KREN_MSG_DELIV_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_MSG_DELIV_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_ACCT_USE_RT_T`
--

DROP TABLE IF EXISTS `TRV_ACCT_USE_RT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_ACCT_USE_RT_T` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_NUM` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `RATE` decimal(8,0) DEFAULT NULL,
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_ACCT_USE_RT_T`
--

LOCK TABLES `TRV_ACCT_USE_RT_T` WRITE;
/*!40000 ALTER TABLE `TRV_ACCT_USE_RT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRV_ACCT_USE_RT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_PHONE_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_PHONE_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_PHONE_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_PHONE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_NBR` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_EXTN_NBR` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_PHONE_MT`
--

LOCK TABLES `KRIM_PND_PHONE_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_PHONE_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_PHONE_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_MSG_DELIV_T`
--

DROP TABLE IF EXISTS `KREN_MSG_DELIV_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_MSG_DELIV_T` (
  `MSG_DELIV_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `MSG_ID` decimal(8,0) NOT NULL,
  `TYP_NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `SYS_ID` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `STAT_CD` varchar(15) COLLATE utf8_bin NOT NULL,
  `PROC_CNT` decimal(4,0) NOT NULL DEFAULT '0',
  `LOCKD_DTTM` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MSG_DELIV_ID`),
  UNIQUE KEY `KREN_MSG_DELIV_TC0` (`MSG_ID`,`TYP_NM`),
  KEY `KREN_MSG_DELIV_TI1` (`MSG_ID`),
  CONSTRAINT `KREN_MSG_DELIV_FK1` FOREIGN KEY (`MSG_ID`) REFERENCES `KREN_MSG_T` (`MSG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_MSG_DELIV_T`
--

LOCK TABLES `KREN_MSG_DELIV_T` WRITE;
/*!40000 ALTER TABLE `KREN_MSG_DELIV_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_MSG_DELIV_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_PRIO_T`
--

DROP TABLE IF EXISTS `KREN_PRIO_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_PRIO_T` (
  `PRIO_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(40) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(500) COLLATE utf8_bin NOT NULL,
  `PRIO_ORD` decimal(4,0) NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PRIO_ID`),
  UNIQUE KEY `KREN_PRIO_TC0` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_PRIO_T`
--

LOCK TABLES `KREN_PRIO_T` WRITE;
/*!40000 ALTER TABLE `KREN_PRIO_T` DISABLE KEYS */;
INSERT INTO `KREN_PRIO_T` VALUES (1,'Normal','Normal priority',2,1,NULL),(2,'Low','A low priority',3,1,NULL),(3,'High','A high priority',1,1,NULL);
/*!40000 ALTER TABLE `KREN_PRIO_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_rsp_role_v`
--

DROP TABLE IF EXISTS `krim_rsp_role_v`;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_rsp_role_v` (
  `rsp_tmpl_nmspc_cd` varchar(40),
  `rsp_tmpl_nm` varchar(100),
  `rsp_nmspc_cd` varchar(40),
  `rsp_nm` varchar(100),
  `rsp_id` varchar(40),
  `attr_nm` varchar(100),
  `attr_val` varchar(400),
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `ROLE_ID` varchar(40)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KREN_PRIO_S`
--

DROP TABLE IF EXISTS `KREN_PRIO_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_PRIO_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_PRIO_S`
--

LOCK TABLES `KREN_PRIO_S` WRITE;
/*!40000 ALTER TABLE `KREN_PRIO_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_PRIO_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_v`
--

DROP TABLE IF EXISTS `krim_role_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_v` (
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `ROLE_ID` varchar(40),
  `role_typ_nm` varchar(100),
  `SRVC_NM` varchar(200),
  `KIM_TYP_ID` varchar(40)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KRIM_PERM_T`
--

DROP TABLE IF EXISTS `KRIM_PERM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PERM_T` (
  `PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PERM_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`PERM_ID`),
  UNIQUE KEY `KRIM_PERM_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PERM_T_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_PERM_TI1` (`PERM_TMPL_ID`),
  KEY `KRIM_PERM_TI2` (`PERM_TMPL_ID`,`ACTV_IND`),
  CONSTRAINT `KRIM_PERM_TR1` FOREIGN KEY (`PERM_TMPL_ID`) REFERENCES `KRIM_PERM_TMPL_T` (`PERM_TMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PERM_T`
--

LOCK TABLES `KRIM_PERM_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PERM_T` DISABLE KEYS */;
INSERT INTO `KRIM_PERM_T` VALUES ('140','5B4F09744944EF33E0404F8189D84F24',1,'29','KR-WKFLW','Use Document Operation Screen','Allows users to access the Document Operation screen.','Y'),('141','5B4F09744945EF33E0404F8189D84F24',1,'29','KR-BUS','Use Java Security Management Screen','Allows users to access the Java Security Management screen.','Y'),('142','5B4F09744946EF33E0404F8189D84F24',1,'29','KR-BUS','Use Message Queue Screen','Allows users to access the Message Queue screen.','Y'),('143','5B4F09744947EF33E0404F8189D84F24',1,'29','KR-BUS','Use Service Registry Screen','Allows users to access the Service Registry screen.','Y'),('144','5B4F09744948EF33E0404F8189D84F24',1,'29','KR-BUS','Use Thread Pool Screen','Allows users to access the Thread Pool screen.','Y'),('145','5B4F09744949EF33E0404F8189D84F24',1,'29','KR-BUS','Use Quartz Queue Screen','Allows users to access the Quartz Queue screen.','Y'),('146','5B4F0974494AEF33E0404F8189D84F24',1,'9','KR-SYS','Ad Hoc Review RICE Document','Allows a user to receive ad hoc requests for RICE Documents.','Y'),('147','5B4F0974494BEF33E0404F8189D84F24',1,'3','KR-SYS','Administer Routing RICE Document','Allows users to open RICE Documents via the Super search option in Document Search and take Administrative workflow actions on them (such as approving the document, approving individual requests, or sending the document to a specified route node).','Y'),('148','5B4F0974494CEF33E0404F8189D84F24',1,'4','KR-SYS','Blanket Approve RICE Document','Allows access to the Blanket Approval button on RICE Documents.','Y'),('149','5B4F0974494DEF33E0404F8189D84F24',1,'10','KR-SYS','Initiate RICE Document','Authorizes the initiation of RICE Documents.','Y'),('150','5B4F0974494EEF33E0404F8189D84F24',1,'35','KR-SYS','Assign Role','Authorizes users to modify the information on the Assignees Tab of the Role Document and the Roles section of the Membership Tab on the Person Document for Roles with a Module Code beginning with KR.','Y'),('151','5B4F0974494FEF33E0404F8189D84F24',1,'36','KR-SYS','Grant Permission','Authorizes users to modify the information on the Permissions tab of the Role Document for roles with a module code beginning with KR.','Y'),('152','5B4F09744950EF33E0404F8189D84F24',1,'37','KR-SYS','Grant Responsibility','Authorizes users to modify the information on the Responsibility tab of the Role Document for roles with a Module Code that begins with KR.','Y'),('155','5B4F09744953EF33E0404F8189D84F24',1,'38','KR-SYS','Populate Group','Authorizes users to modify the information on the Assignees Tab of the Group Document and the Group section of the Membership Tab on the Person Document for groups with namespaces beginning with KR.','Y'),('156','5B4F09744954EF33E0404F8189D84F24',1,'2','KR-SYS','Copy RICE Document','Authorizes users to copy RICE Documents.','Y'),('161','5B4F09744959EF33E0404F8189D84F24',1,'24','KR-SYS','Inquire Into RICE Records','Allows users to access Kuali RICE inquiries.','Y'),('162','5B4F0974495AEF33E0404F8189D84F24',1,'23','KR-SYS','Look Up RICE Records','Allow users to access Kuali RICE lookups.','Y'),('163','5B4F0974495BEF33E0404F8189D84F24',1,'34','KR-SYS','Maintain System Parameter','Authorizes to initiate and edit the Parameter document for parameters with a module code beginning with KR.','Y'),('164','5B4F0974495CEF33E0404F8189D84F24',1,'32','KR-SYS','Modify Batch Job','Allows users to access and run Batch Jobs associated with KR modules via the Schedule link.','Y'),('165','5B4F0974495DEF33E0404F8189D84F24',1,'40','KR-SYS','Open RICE Document','Authorizes users to open RICE Documents.','Y'),('166','5B4F0974495EEF33E0404F8189D84F24',1,'29','KR-SYS','Use all RICE Screen','Allows users to access all RICE screens.','Y'),('167','5B4F0974495FEF33E0404F8189D84F24',1,'14','KUALI','Cancel Document','Authorizes users to cancel a document prior to it being submitted for routing.','Y'),('168','5B4F09744960EF33E0404F8189D84F24',1,'5','KUALI','Route Document','Authorizes users to submit a document for routing.','Y'),('170','5B4F09744962EF33E0404F8189D84F24',1,'8','KUALI','Take Requested Apprive Action','Authorizes users to take the Approve action on documents routed to them.','Y'),('172','5B4F09744964EF33E0404F8189D84F24',1,'8','KUALI','Take Requested FYI Action','Authorizes users to take the FYI action on documents routed to them.','Y'),('173','5B4F09744965EF33E0404F8189D84F24',1,'8','KUALI','Take Requested Acknowledge Action','Authorizes users to take the Acknowledge action on documents routed to them.','Y'),('174','5B4F09744966EF33E0404F8189D84F24',1,'1','KUALI','Log In Kuali Portal','Authorizes users to login to the Kuali portal.','Y'),('181','5B4F0974496DEF33E0404F8189D84F24',1,'16','KUALI','Edit Kuali ENROUTE Document Route Status Code R','Allows users to edit Kuali documents that are in ENROUTE status.','Y'),('183','5B4F0974496FEF33E0404F8189D84F24',1,'27','KR-SYS','Full Unmask Tax Identification Number Payee ACH Document','Authorizes users to view the entire Tax Identification Number on the Payee ACH document and Inquiry.','Y'),('259','606763510FC396D3E0404F8189D857A2',1,'45','KUALI','Add Note / Attachment Kuali Document','Users who can add notes and attachments to any document answering to the Kuali Document parent document type.','Y'),('261','606763510FC696D3E0404F8189D857A2',1,'46','KUALI','View Note / Attachment Kuali Document','Authorizes users to view notes and attachments on documents answering to the KualiDocument parent document type.','Y'),('264','606763510FCD96D3E0404F8189D857A2',1,'47','KR-SYS','Delete Note / Attachment Kuali Document','Authorizes users to delete notes and attachments created by any user on documents answering to the RICE Document parent document type.','Y'),('265','606763510FF296D3E0404F8189D857A2',1,'29','KR-WKFLW','Use Screen XML Ingester Screen','Allows users to access the XML Ingester screen.','Y'),('289','611BE30E404E5818E0404F8189D801C2',1,'1','KR-NS','Administer Pessimistic Locking','Administer Pessimistic Locking','Y'),('290','5B4F09744961EF33E0404F8189D84F24',1,'15','KR-SYS','Save RICE Document','Users who can save RICE documents','Y'),('298','641E580969E31B49E0404F8189D86190',1,'1','KR-WKFLW','View Other Action List','Authorizes users to access other users action lists via the Help Desk Action List Login.','Y'),('299','641E580969E51B49E0404F8189D86190',1,'1','KR-WKFLW','Unrestricted Document Search','Users who can perform a document search with no criteria or result limits.','Y'),('306','6314CC58CF58B7B5E0404F8189D84439',1,'27','KR-SYS','Full Unmask Tax Identification Number Person Document','Authorizes users to view the entire Tax Identification Number on the Person document and inquiry.','Y'),('307','638DD46953F9BCD5E0404F8189D86240',1,'1','KR-IDM','Modify Entity','Users who can modify entity records in Kuali Identity Management.','Y'),('332','662384B381B967A1E0404F8189D868A6',1,'49','KR-SYS','Send FYI Request Kuali Document','Authorizes users to send FYI ad hoc requests for Kuali Documents','Y'),('333','662384B381BD67A1E0404F8189D868A6',1,'49','KR-SYS','Send Acknowledge Request Kuali Document','Authorizes users to send Acknowledge ad hoc requests for Kuali Documents','Y'),('334','662384B381C167A1E0404F8189D868A6',1,'49','KR-SYS','Send Approve Request Kuali Document','Authorizes users to send Approve ad hoc requests for Kuali Documents','Y'),('378','5B4F09744953EF33E0404F8189D84F29',1,'1','KR-IDM','Override Entity Privacy Preferences','Allows a user to override entity privacy preferences','Y'),('701','04C7706012554535AF8DC48DC6CC331C',1,'23','KR-WKFLW','Look Up Rule Template','Allow users to access the Rule Template lookup.','Y'),('702','471FF4B19A4648D4B84194530AE22158',1,'23','KR-WKFLW','Look Up Stylesheet','Allow users to access the Stylesheet lookup.','Y'),('703','E6875070DC5B4FD59193F7445C33E7AB',1,'23','KR-WKFLW','Look Up eDocLite','Allow users to access the eDocLite lookup.','Y'),('707','28CE0127B8A14AB4BFD39920C5398A69',1,'23','KR-WKFLW','Look Up Rule Attribute','Allow users to access the Rule Attribute lookup.','Y'),('719','45F0E8E1B9784756A3C0582980912991',1,'23','KR-NS','Look Up Parameter Component','Allow users to access the Parameter Component lookup.','Y'),('720','FFF2C6639C6041F1B148AA9901C8A1F7',1,'23','KR-NS','Look Up Namespace','Allow users to access the Namespace lookup.','Y'),('721','B1BD57EE64274E62AC9425C7FF185A44',1,'23','KR-NS','Look Up Parameter Type','Allow users to access the Parameter Type lookup.','Y'),('801','606763510FD196D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into Rule Template','Allow users to access the Rule Template inquiry.','Y'),('802','606763510FD496D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into Stylesheet','Allow users to access the Stylesheet inquiry.','Y'),('803','606763510FD796D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into eDocLite','Allow users to access the eDocLite inquiry.','Y'),('807','606763510FDA96D3E0404F8189D857A2',1,'24','KR-WKFLW','Inquire Into Rule Attribute','Allow users to access the Rule Attribute inquiry.','Y'),('814','606763510FE196D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Pessimistic','Allow users to access the Pessimistic Lock inquiry.','Y'),('819','606763510FE496D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Parameter Component','Allow users to access the Parameter Component inquiry.','Y'),('820','606763510FE796D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Namespace','Allow users to access the Namespace inquiry.','Y'),('821','606763510FEA96D3E0404F8189D857A2',1,'24','KR-NS','Inquire Into Parameter Type','Allow users to access the Parameter Type inquiry.','Y'),('833','5B4F09744953EF33E0404F8189D84F25',1,'38','KR-SYS','Populate Group KUALI Namespace','Authorizes users to modify the information on the Assignees Tab of the Group Document and the Group section of the Membership Tab on the Person Document for groups with the KUALI namespace.','Y'),('834','5B4F09744953EF33E0404F8189D84F26',1,'35','KR-SYS','Assign Role KUALI Namespace','Authorizes users to modify the information on the Assignees Tab of the Role Document and the Roles section of the Membership Tab on the Person Document for Roles with the KUALI namespace.','Y'),('835','5B4F09744953EF33E0404F8189D84F27',1,'36','KR-SYS','Grant Permission KUALI Namespace','Authorizes users to modify the information on the Permissions tab of the Role Document for roles with the KUALI namespace.','Y'),('836','5B4F09744953EF33E0404F8189D84F28',1,'37','KR-SYS','Grant Responsibility KUALI Namespace','Authorizes users to modify the information on the Responsibility tab of the Role Document for roles with the KUALI namespace.','Y'),('840','97469975-D110-9A65-5EE5-F21FD1BEB5B2',1,'29','KR-BUS','Use Configuration Viewer Screen','Allows users to access the Configuration Viewer screen','Y'),('841','65677409-89e4-11df-98b1-1300c9ee50c1',1,'51','KUALI','Add Message to Route Log',NULL,'Y'),('842','B6FDEDA86F967F26E0402E0AA9D728AF',1,'29','KR-SYS','Use Cache Adminstration Screen','Allows use of the cache administration screen','Y'),('843','B7DBFABEFD2B8CBFE0402E0AA9D757C9',1,'52','KR-RULE-TEST','Maintain KRMS Agenda','Allows creation and modification of agendas via the agenda editor','Y'),('844','0dbce939-4f22-4e9b-a4bb-1615c0f411a2',1,'42','KR-NS','Create Term Maintenance Document','Allows user to create a new Term maintainence document','Y'),('845','cefeed6d-b5e2-40aa-9034-137db317b532',1,'42','KR-NS','Create Context Maintenance Document','Allows user to create a new Context maintainence document','Y'),('846','02bd9acd-48d9-4fec-acbd-6a441c5ea8c2',1,'42','KR-NS','Create TermSpecification Maintenance Document','Allows user to create a new TermSpecification maintainence document','Y'),('847','BD74D7B702AB02CEE0402E0AA9D75B2D',1,'68','KR-WKFLW','Recall Document',NULL,'Y'),('848','BFCADCB34017249AE0402E0AA9D7065D',1,'49','KR-SYS','Send Complete Request Kuali Document','Authorizes users to send Complete ad hoc requests for Kuali Documents','Y'),('KR1000','D0C2892F47EB9142E0406E0AC31D23D6',1,'8','KUALI','Take Requested Complete Action','Authorizes users to take the Complete action on documents routed to them.','Y'),('KR1001','E3EF4C83B4BB5C9EE0406E0AC31D4562',1,'16','KUALI','Edit Kuali ENROUTE Document Route Status Code I','Allows users to edit Kuali documents that are in INITIATED status.','Y'),('KR1002','E3EF4C83B4BF5C9EE0406E0AC31D4562',1,'16','KUALI','Edit Kuali ENROUTE Document Route Status Code S','Allows users to edit Kuali documents that are in SAVED status.','Y'),('KRSAP10003','CDD8032915D6BF1FE040F90A05B94313',1,'58','KR-SAP','View Kitchen Sink Group','Allows users to view the group in kitchen sink page 9.','Y'),('KRSAP10004','CDD8032915DABF1FE040F90A05B94313',1,'58','KR-SAP','View Kitchen Sink Page','Allows users to view page 9 in the kitchen sink','Y'),('KRSAP10005','CDD8032915DEBF1FE040F90A05B94313',1,'59','KR-SAP','Edit Kitchen Sink Group','Allows users to edit the group in page 9 of the kitchen sink','Y'),('KRSAP10006','CDD8032915E2BF1FE040F90A05B94313',1,'56','KR-SAP','View Kitchen Sink Field','Allows users to view the field in page 9 of the kitchen sink','Y'),('KRSAP10007','CDD8032915E6BF1FE040F90A05B94313',1,'57','KR-SAP','Edit Kitchen Sink Field','Allows users to edit the field in page 9 of the kitchen sink','Y'),('KRSAP10008','CDD8032915EABF1FE040F90A05B94313',1,'56','KR-SAP','View Kitchen Sink Field Group','Allows users to view the field group in page 9 of the kitchen sink','Y'),('KRSAP10009','CDD8032915EEBF1FE040F90A05B94313',1,'57','KR-SAP','Edit Kitchen Sink Field Group','Allows users to edit the field group in page 9 of the kitchen sink','Y'),('KRSAP10010','CDD8032915F2BF1FE040F90A05B94313',1,'62','KR-SAP','Perform Kitchen Sink Action','Allows users to perform the save action in page 9 of the kitchen sink','Y'),('KRSAP10011','CDD8032915F6BF1FE040F90A05B94313',1,'60','KR-SAP','View Kitchen Sink Widget','Allows users to view the quickfinder widget in page 9 of the kitchen sink','Y'),('KRSAP10012','CDD8032915FABF1FE040F90A05B94313',1,'63','KR-SAP','View Kitchen Sink Line','Allows users to view the collection line in page 9 of the kitchen sink','Y'),('KRSAP10013','CDD8032915FEBF1FE040F90A05B94313',1,'64','KR-SAP','Edit Kitchen Sink Line','Allows users to edit the collection line in page 9 of the kitchen sink','Y'),('KRSAP10014','CDD803291602BF1FE040F90A05B94313',1,'65','KR-SAP','View Kitchen Sink Line Field','Allows users to view the collection line field in page 9 of the kitchen sink','Y'),('KRSAP10015','CDD803291607BF1FE040F90A05B94313',1,'66','KR-SAP','Edit Kitchen Sink Line Field','Allows users to edit the collection line field in page 9 of the kitchen sink','Y'),('KRSAP10016','CDD80329160CBF1FE040F90A05B94313',1,'67','KR-SAP','Perform Kitchen Sink Line Action','Allows users to perform the delete line action in page 9 of the kitchen sink','Y');
/*!40000 ALTER TABLE `KRIM_PERM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_perm_v`
--

DROP TABLE IF EXISTS `krim_role_perm_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_perm_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_perm_v` (
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `role_id` varchar(40),
  `tmpl_nmspc_cd` varchar(40),
  `tmpl_nm` varchar(100),
  `PERM_TMPL_ID` varchar(40),
  `perm_nmpsc_cd` varchar(40),
  `perm_nm` varchar(100),
  `PERM_ID` varchar(40),
  `attr_nm` varchar(100),
  `attr_val` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `BK_ADDRESS_TYP_T`
--

DROP TABLE IF EXISTS `BK_ADDRESS_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_ADDRESS_TYP_T` (
  `ADDR_TYP` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ADDR_TYP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_ADDRESS_TYP_T`
--

LOCK TABLES `BK_ADDRESS_TYP_T` WRITE;
/*!40000 ALTER TABLE `BK_ADDRESS_TYP_T` DISABLE KEYS */;
INSERT INTO `BK_ADDRESS_TYP_T` VALUES ('Office','Official Address','Y','a03ad608-84fa-4c89-8410-0a91ed56cb66',1),('Residence','Residential Address','Y','b8190679-7cfe-49c9-bd99-6b264f700f0d',1);
/*!40000 ALTER TABLE `BK_ADDRESS_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_NMSPC_T`
--

DROP TABLE IF EXISTS `KRCR_NMSPC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_NMSPC_T` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `APPL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NMSPC_CD`),
  UNIQUE KEY `KRNS_NMSPC_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_NMSPC_T`
--

LOCK TABLES `KRCR_NMSPC_T` WRITE;
/*!40000 ALTER TABLE `KRCR_NMSPC_T` DISABLE KEYS */;
INSERT INTO `KRCR_NMSPC_T` VALUES ('KR-BUS','5B960CFDBB370FDFE0404F8189D83CBD',1,'Service Bus','Y','RICE'),('KR-IDM','61645D045B0005D7E0404F8189D849B1',1,'Identity Management','Y','RICE'),('KR-KRAD','B5BA065471F8326EE0404F8189D87F9A',1,'Kuali Rapid Application Development','Y','RICE'),('KR-NS','53680C68F595AD9BE0404F8189D80A6C',1,'Kuali Nervous System','Y','RICE'),('KR-NTFCN','5B960CFDBB360FDFE0404F8189D83CBD',1,'Notification','Y','RICE'),('KR-RULE','AE3195EDFF2300E2E0404F8189D822AE',1,'Kuali Rules','Y','RICE'),('KR-RULE-TEST','5a83c912-94b9-4b4d-ac3f-88c53380a4a3',1,'Kuali Rules Test','Y','RICE'),('KR-SAP','27035960-3755-482e-a2ae-7fac13cc5f45',1,'Sample App','Y','RICE'),('KR-SYS','5B960CFDBB390FDFE0404F8189D83CBD',1,'Enterprise Infrastructure','Y','RICE'),('KR-WKFLW','5E1D690C419B3E2EE0404F8189D82677',0,'Workflow','Y','RICE'),('KUALI','5ADF18B6D4817954E0404F8189D85002',1,'Kuali Systems','Y',NULL);
/*!40000 ALTER TABLE `KRCR_NMSPC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_RESIDENCY_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_RESIDENCY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_RESIDENCY_T` (
  `ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DETERMINATION_METHOD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `IN_STATE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KRIM_ENTITY_RESIDENCY_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_RESIDENCY_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_RESIDENCY_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_RESIDENCY_T`
--

LOCK TABLES `KRIM_ENTITY_RESIDENCY_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_RESIDENCY_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_RESIDENCY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_INSTN_LNK_T`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_INSTN_LNK_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_INSTN_LNK_T` (
  `FROM_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TO_RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FROM_RTE_NODE_INSTN_ID`,`TO_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_LNK_TI1` (`FROM_RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_LNK_TI2` (`TO_RTE_NODE_INSTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_INSTN_LNK_T`
--

LOCK TABLES `KREW_RTE_NODE_INSTN_LNK_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_INSTN_LNK_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_NODE_INSTN_LNK_T` VALUES ('2072','2073'),('2101','2102'),('2165','2166'),('2170','2171'),('2171','2172'),('2172','2173'),('2173','2174'),('2221','2222'),('2263','2264'),('2268','2269'),('2321','2322'),('2504','2505'),('2519','2520'),('2525','2526'),('2526','2527'),('2527','2528'),('2528','2529'),('2536','2539'),('2539','2540'),('2540','2541'),('2541','2542'),('2631','2632'),('2632','2633'),('2633','2634'),('2634','2635'),('2638','2639'),('2639','2640'),('2640','2641'),('2641','2642'),('2645','2646'),('2646','2647'),('2647','2648'),('2648','2649'),('2666','2667'),('2667','2668'),('2668','2669'),('2669','2670'),('2685','2686'),('2686','2687'),('2687','2688'),('2688','2689'),('2801','2802'),('2802','2803'),('2803','2804'),('2804','2805'),('2875','2876'),('2876','2877'),('2877','2878'),('2878','2879'),('2890','2891');
/*!40000 ALTER TABLE `KREW_RTE_NODE_INSTN_LNK_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_AUTHOR_T`
--

DROP TABLE IF EXISTS `BK_AUTHOR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_AUTHOR_T` (
  `AUTHOR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ADDRESS` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `PHONE_NBR` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_AUTHOR_T`
--

LOCK TABLES `BK_AUTHOR_T` WRITE;
/*!40000 ALTER TABLE `BK_AUTHOR_T` DISABLE KEYS */;
INSERT INTO `BK_AUTHOR_T` VALUES (1,'Roshan Mahanama',NULL,'roshan@jimail.com','123-123-1233','Y','a03ad608-84fa-4c89-8410-0a91ed56cb66',1),(2,'James Franklin',NULL,'jfranklin@jimail.com','999-433-4323','Y','a03ad608-84fa-4c89-8410-0a91ed56cb32',1);
/*!40000 ALTER TABLE `BK_AUTHOR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_grp_v`
--

DROP TABLE IF EXISTS `krim_grp_v`;
/*!50001 DROP VIEW IF EXISTS `krim_grp_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_grp_v` (
  `NMSPC_CD` varchar(40),
  `grp_nm` varchar(80),
  `GRP_ID` varchar(40),
  `grp_typ_nm` varchar(100),
  `attr_nm` varchar(100),
  `attr_val` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KRIM_GRP_ATTR_DATA_ID_S`
--

DROP TABLE IF EXISTS `KRIM_GRP_ATTR_DATA_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_ATTR_DATA_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_ATTR_DATA_ID_S`
--

LOCK TABLES `KRIM_GRP_ATTR_DATA_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_ATTR_DATA_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_GRP_ATTR_DATA_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_RSP_T`
--

DROP TABLE IF EXISTS `KRIM_RSP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_RSP_T` (
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `RSP_TMPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`RSP_ID`),
  UNIQUE KEY `KRIM_RSP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_RSP_T_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_RSP_TR1` (`RSP_TMPL_ID`),
  CONSTRAINT `KRIM_RSP_TR1` FOREIGN KEY (`RSP_TMPL_ID`) REFERENCES `KRIM_RSP_TMPL_T` (`RSP_TMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_RSP_T`
--

LOCK TABLES `KRIM_RSP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_RSP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_RSP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_PARM_TYP_T`
--

DROP TABLE IF EXISTS `KRCR_PARM_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_PARM_TYP_T` (
  `PARM_TYP_CD` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`PARM_TYP_CD`),
  UNIQUE KEY `KRNS_PARM_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_PARM_TYP_T`
--

LOCK TABLES `KRCR_PARM_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRCR_PARM_TYP_T` DISABLE KEYS */;
INSERT INTO `KRCR_PARM_TYP_T` VALUES ('AUTH','53680C68F593AD9BE0404F8189D80A6C',1,'Authorization','Y'),('CONFG','53680C68F591AD9BE0404F8189D80A6C',1,'Config','Y'),('HELP','53680C68F594AD9BE0404F8189D80A6C',1,'Help','Y'),('VALID','53680C68F592AD9BE0404F8189D80A6C',1,'Document Validation','Y');
/*!40000 ALTER TABLE `KRCR_PARM_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRLC_CNTRY_T`
--

DROP TABLE IF EXISTS `KRLC_CNTRY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRLC_CNTRY_T` (
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_CNTRY_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PSTL_CNTRY_RSTRC_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `ALT_POSTAL_CNTRY_CD` varchar(3) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_COUNTRY_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRLC_CNTRY_T`
--

LOCK TABLES `KRLC_CNTRY_T` WRITE;
/*!40000 ALTER TABLE `KRLC_CNTRY_T` DISABLE KEYS */;
INSERT INTO `KRLC_CNTRY_T` VALUES ('AD','56908AA37904661BE0404F8189D81F46',1,'Andorra','N','Y','AND'),('AE','56908AA379DE661BE0404F8189D81F46',1,'United Arab Emirates','N','Y','ARE'),('AF','56908AA378FF661BE0404F8189D81F46',1,'Afghanistan','N','Y','AFG'),('AG','56908AA378FE661BE0404F8189D81F46',1,'Antigua and Barbuda','N','Y','ATG'),('AI','56908AA3790B661BE0404F8189D81F46',1,'Anguilla','N','Y','AIA'),('AL','56908AA37902661BE0404F8189D81F46',1,'Albania','N','Y','ALB'),('AM','56908AA37903661BE0404F8189D81F46',1,'Armenia','N','Y','ARM'),('AN','56908AA379A7661BE0404F8189D81F46',1,'Netherlands Antilles','N','Y','ANT'),('AO','56908AA37905661BE0404F8189D81F46',1,'Angola','N','Y','AGO'),('AQ','56908AA3790C661BE0404F8189D81F46',1,'Antarctica','N','Y','ATA'),('AR','56908AA37907661BE0404F8189D81F46',1,'Argentina','N','Y','ARG'),('AS','56908AA37906661BE0404F8189D81F46',1,'American Samoa','N','Y','ASM'),('AT','56908AA3790A661BE0404F8189D81F46',1,'Austria','N','Y','AUT'),('AU','56908AA37908661BE0404F8189D81F46',1,'Australia','N','Y','AUS'),('AW','56908AA378FD661BE0404F8189D81F46',1,'Aruba','N','Y','ABW'),('AX','56908AA3794E661BE0404F8189D81F46',1,'Ã¿land Islands','N','Y','ALA'),('AZ','56908AA37901661BE0404F8189D81F46',1,'Azerbaijan','N','Y','AZE'),('BA','56908AA37915661BE0404F8189D81F46',1,'Bosnia and Herzegovina','N','Y','BIH'),('BB','56908AA3790E661BE0404F8189D81F46',1,'Barbados','N','Y','BRB'),('BD','56908AA37913661BE0404F8189D81F46',1,'Bangladesh','N','Y','BGD'),('BE','56908AA37911661BE0404F8189D81F46',1,'Belgium','N','Y','BEL'),('BF','56908AA37909661BE0404F8189D81F46',1,'Burkina Faso','N','Y','BFA'),('BG','56908AA3791F661BE0404F8189D81F46',1,'Bulgaria','N','Y','BGR'),('BH','56908AA3790D661BE0404F8189D81F46',1,'Bahrain','N','Y','BHR'),('BI','56908AA37922661BE0404F8189D81F46',1,'Burundi','N','Y','BDI'),('BJ','56908AA37918661BE0404F8189D81F46',1,'Benin','N','Y','BEN'),('BL','56908AA3791B661BE0404F8189D81F46',1,'Saint BarthÃ©lemy','N','Y','BLM'),('BM','56908AA37910661BE0404F8189D81F46',1,'Bermuda','N','Y','BMU'),('BN','56908AA37921661BE0404F8189D81F46',1,'Brunei Darussalam','N','Y','BRN'),('BO','56908AA37916661BE0404F8189D81F46',1,'Bolivia, Plurinational State Of','N','Y','BOL'),('BR','56908AA3791C661BE0404F8189D81F46',1,'Brazil','N','Y','BRA'),('BS','56908AA37912661BE0404F8189D81F46',1,'Bahamas','N','Y','BHS'),('BT','56908AA3791E661BE0404F8189D81F46',1,'Bhutan','N','Y','BTN'),('BV','56908AA37920661BE0404F8189D81F46',1,'Bouvet Island','N','Y','BVT'),('BW','56908AA3790F661BE0404F8189D81F46',1,'Botswana','N','Y','BWA'),('BY','56908AA37919661BE0404F8189D81F46',1,'Belarus','N','Y','BLR'),('BZ','56908AA37914661BE0404F8189D81F46',1,'Belize','N','Y','BLZ'),('CA','56908AA37923661BE0404F8189D81F46',1,'Canada','N','Y','CAN'),('CC','56908AA3792C661BE0404F8189D81F46',1,'Cocos (Keeling) Islands','N','Y','CCK'),('CD','56908AA37928661BE0404F8189D81F46',1,'Congo, The Democratic Republic Of The','N','Y','COD'),('CF','56908AA37933661BE0404F8189D81F46',1,'Central African Republic','N','Y','CAF'),('CG','56908AA37927661BE0404F8189D81F46',1,'Congo','N','Y','COG'),('CH','56908AA379DD661BE0404F8189D81F46',1,'Switzerland','N','Y','CHE'),('CI','56908AA37973661BE0404F8189D81F46',1,'CÃ´te D\'Ivoire','N','Y','CIV'),('CK','56908AA37936661BE0404F8189D81F46',1,'Cook Islands','N','Y','COK'),('CL','56908AA3792A661BE0404F8189D81F46',1,'Chile','N','Y','CHL'),('CM','56908AA3792D661BE0404F8189D81F46',1,'Cameroon','N','Y','CMR'),('CN','56908AA37929661BE0404F8189D81F46',1,'China','N','Y','CHN'),('CO','56908AA3792F661BE0404F8189D81F46',1,'Colombia','N','Y','COL'),('CR','56908AA37932661BE0404F8189D81F46',1,'Costa Rica','N','Y','CRI'),('CU','56908AA37934661BE0404F8189D81F46',1,'Cuba','N','Y','CUB'),('CV','56908AA37935661BE0404F8189D81F46',1,'Cape Verde','N','Y','CPV'),('CX','56908AA37983661BE0404F8189D81F46',1,'Christmas Island','N','Y','CXR'),('CY','56908AA37937661BE0404F8189D81F46',1,'Cyprus','N','Y','CYP'),('CZ','56908AA37946661BE0404F8189D81F46',1,'Czech Republic','N','Y','CZE'),('DE','56908AA3795A661BE0404F8189D81F46',1,'Germany','N','Y','DEU'),('DJ','56908AA3793A661BE0404F8189D81F46',1,'Djibouti','N','Y','DJI'),('DK','56908AA37939661BE0404F8189D81F46',1,'Denmark','N','Y','DNK'),('DM','56908AA3793B661BE0404F8189D81F46',1,'Dominica','N','Y','DMA'),('DO','56908AA3793C661BE0404F8189D81F46',1,'Dominican Republic','N','Y','DOM'),('DZ','56908AA37900661BE0404F8189D81F46',1,'Algeria','N','Y','DZA'),('EC','56908AA3793D661BE0404F8189D81F46',1,'Ecuador','N','Y','ECU'),('EE','56908AA37941661BE0404F8189D81F46',1,'Estonia','N','Y','EST'),('EG','56908AA3793E661BE0404F8189D81F46',1,'Egypt','N','Y','EGY'),('EH','56908AA379FE661BE0404F8189D81F46',1,'Western Sahara','N','Y','ESH'),('ER','56908AA37942661BE0404F8189D81F46',1,'Eritrea','N','Y','ERI'),('ES','56908AA379D6661BE0404F8189D81F46',1,'Spain','N','Y','ESP'),('ET','56908AA37944661BE0404F8189D81F46',1,'Ethiopia','N','Y','ETH'),('FI','56908AA37949661BE0404F8189D81F46',1,'Finland','N','Y','FIN'),('FJ','56908AA3794A661BE0404F8189D81F46',1,'Fiji','N','Y','FJI'),('FK','56908AA37947661BE0404F8189D81F46',1,'Falkland Islands (Malvinas)','N','Y','FLK'),('FM','56908AA3794B661BE0404F8189D81F46',1,'Micronesia, Federated States Of','N','Y','FSM'),('FO','56908AA3794C661BE0404F8189D81F46',1,'Faroe Islands','N','Y','FRO'),('FR','56908AA3794F661BE0404F8189D81F46',1,'France','N','Y','FRA'),('GA','56908AA37952661BE0404F8189D81F46',1,'Gabon','N','Y','GAB'),('GB','56908AA379EF661BE0404F8189D81F46',1,'United Kingdom','N','Y','GBR'),('GD','56908AA37957661BE0404F8189D81F46',1,'Grenada','N','Y','GRD'),('GE','56908AA37954661BE0404F8189D81F46',1,'Georgia','N','Y','GEO'),('GF','56908AA37948661BE0404F8189D81F46',1,'French Guiana','N','Y','GUF'),('GG','56908AA37958661BE0404F8189D81F46',1,'Guernsey','N','Y','GGY'),('GH','56908AA37955661BE0404F8189D81F46',1,'Ghana','N','Y','GHA'),('GI','56908AA37956661BE0404F8189D81F46',1,'Gibraltar','N','Y','GIB'),('GL','56908AA37959661BE0404F8189D81F46',1,'Greenland','N','Y','GRL'),('GM','56908AA37951661BE0404F8189D81F46',1,'Gambia','N','Y','GMB'),('GN','56908AA37960661BE0404F8189D81F46',1,'Guinea','N','Y','GIN'),('GP','56908AA3795C661BE0404F8189D81F46',1,'Guadeloupe','N','Y','GLP'),('GQ','56908AA37940661BE0404F8189D81F46',1,'Equatorial Guinea','N','Y','GNQ'),('GR','56908AA3795E661BE0404F8189D81F46',1,'Greece','N','Y','GRC'),('GS','56908AA37931661BE0404F8189D81F46',1,'South Georgia and South Sandwich Islands','N','Y','SGS'),('GT','56908AA3795F661BE0404F8189D81F46',1,'Guatemala','N','Y','GTM'),('GU','56908AA3795D661BE0404F8189D81F46',1,'Guam','N','Y','GUM'),('GW','56908AA379C1661BE0404F8189D81F46',1,'Guinea-Bissau','N','Y','GNB'),('GY','56908AA37961661BE0404F8189D81F46',1,'Guyana','N','Y','GUY'),('HK','56908AA37964661BE0404F8189D81F46',1,'Hong Kong','N','Y','HKG'),('HM','56908AA37965661BE0404F8189D81F46',1,'Heard and McDonald Islands','N','Y','HMD'),('HN','56908AA37966661BE0404F8189D81F46',1,'Honduras','N','Y','HND'),('HR','56908AA37968661BE0404F8189D81F46',1,'Croatia','N','Y','HRV'),('HT','56908AA37963661BE0404F8189D81F46',1,'Haiti','N','Y','HTI'),('HU','56908AA37969661BE0404F8189D81F46',1,'Hungary','N','Y','HUN'),('ID','56908AA3796B661BE0404F8189D81F46',1,'Indonesia','N','Y','IDN'),('IE','56908AA3793F661BE0404F8189D81F46',1,'Ireland','N','Y','IRL'),('IL','56908AA37971661BE0404F8189D81F46',1,'Israel','N','Y','ISR'),('IM','56908AA3796C661BE0404F8189D81F46',1,'Isle of Man','N','Y','IMN'),('IN','56908AA3796D661BE0404F8189D81F46',1,'India','N','Y','IND'),('IO','56908AA3796E661BE0404F8189D81F46',1,'British Indian Ocean Territory','N','Y','IOT'),('IQ','56908AA37975661BE0404F8189D81F46',1,'Iraq','N','Y','IRQ'),('IR','56908AA37970661BE0404F8189D81F46',1,'Iran, Islamic Republic Of','N','Y','IRN'),('IS','56908AA3796A661BE0404F8189D81F46',1,'Iceland','N','Y','ISL'),('IT','56908AA37972661BE0404F8189D81F46',1,'Italy','N','Y','ITA'),('JE','56908AA37977661BE0404F8189D81F46',1,'Jersey','N','Y','JEY'),('JM','56908AA37978661BE0404F8189D81F46',1,'Jamaica','N','Y','JAM'),('JO','56908AA3797A661BE0404F8189D81F46',1,'Jordan','N','Y','JOR'),('JP','56908AA37976661BE0404F8189D81F46',1,'Japan','N','Y','JPN'),('KE','56908AA3797D661BE0404F8189D81F46',1,'Kenya','N','Y','KEN'),('KG','56908AA3797E661BE0404F8189D81F46',1,'Kyrgyzstan','N','Y','KGZ'),('KH','56908AA37924661BE0404F8189D81F46',1,'Cambodia','N','Y','KHM'),('KI','56908AA37981661BE0404F8189D81F46',1,'Kiribati','N','Y','KIR'),('KM','56908AA3792E661BE0404F8189D81F46',1,'Comoros','N','Y','COM'),('KN','56908AA379CC661BE0404F8189D81F46',1,'Saint Kitts And Nevis','N','Y','KNA'),('KP','56908AA3797F661BE0404F8189D81F46',1,'Korea, Democratic People\'s Republic Of','N','Y','PRK'),('KR','56908AA37982661BE0404F8189D81F46',1,'Korea, Republic of','N','Y','KOR'),('KW','56908AA37984661BE0404F8189D81F46',1,'Kuwait','N','Y','KWT'),('KY','56908AA3792B661BE0404F8189D81F46',1,'Cayman Islands','N','Y','CYM'),('KZ','56908AA37985661BE0404F8189D81F46',1,'Kazakhstan','N','Y','KAZ'),('LA','56908AA37986661BE0404F8189D81F46',1,'Lao People\'s Democratic Republic','N','Y','LAO'),('LB','56908AA37987661BE0404F8189D81F46',1,'Lebanon','N','Y','LBN'),('LC','56908AA379D8661BE0404F8189D81F46',1,'Saint Lucia','N','Y','LCA'),('LI','56908AA3798D661BE0404F8189D81F46',1,'Liechtenstein','N','Y','LIE'),('LK','56908AA37926661BE0404F8189D81F46',1,'Sri Lanka','N','Y','LKA'),('LR','56908AA3798A661BE0404F8189D81F46',1,'Liberia','N','Y','LBR'),('LS','56908AA3798E661BE0404F8189D81F46',1,'Lesotho','N','Y','LSO'),('LT','56908AA37989661BE0404F8189D81F46',1,'Lithuania','N','Y','LTU'),('LU','56908AA3798F661BE0404F8189D81F46',1,'Luxembourg','N','Y','LUX'),('LV','56908AA37988661BE0404F8189D81F46',1,'Latvia','N','Y','LVA'),('LY','56908AA37990661BE0404F8189D81F46',1,'Libyan Arab Jamahiriya','N','Y','LBY'),('MA','56908AA3799C661BE0404F8189D81F46',1,'Morocco','N','Y','MAR'),('MC','56908AA3799B661BE0404F8189D81F46',1,'Monaco','N','Y','MCO'),('MD','56908AA37994661BE0404F8189D81F46',1,'Moldova, Republic of','N','Y','MDA'),('ME','56908AA379A3661BE0404F8189D81F46',1,'Montenegro','N','Y','MNE'),('MF','56908AA3791D661BE0404F8189D81F46',1,'Saint Martin','N','Y','MAF'),('MG','56908AA37991661BE0404F8189D81F46',1,'Madagascar','N','Y','MDG'),('MH','56908AA379C4661BE0404F8189D81F46',1,'Marshall Islands','N','Y','MHL'),('MK','56908AA37999661BE0404F8189D81F46',1,'Macedonia, the Fmr. Yugoslav Republic Of','N','Y','MKD'),('ML','56908AA3799A661BE0404F8189D81F46',1,'Mali','N','Y','MLI'),('MM','56908AA37917661BE0404F8189D81F46',1,'Myanmar','N','Y','MMR'),('MN','56908AA37996661BE0404F8189D81F46',1,'Mongolia','N','Y','MNG'),('MO','56908AA37993661BE0404F8189D81F46',1,'Macao','N','Y','MAC'),('MP','56908AA37930661BE0404F8189D81F46',1,'Northern Mariana Islands','N','Y','MNP'),('MQ','56908AA37992661BE0404F8189D81F46',1,'Martinique','N','Y','MTQ'),('MR','56908AA3799F661BE0404F8189D81F46',1,'Mauritania','N','Y','MRT'),('MS','56908AA37997661BE0404F8189D81F46',1,'Montserrat','N','Y','MSR'),('MT','56908AA379A0661BE0404F8189D81F46',1,'Malta','N','Y','MLT'),('MU','56908AA3799D661BE0404F8189D81F46',1,'Mauritius','N','Y','MUS'),('MV','56908AA379A2661BE0404F8189D81F46',1,'Maldives','N','Y','MDV'),('MW','56908AA37998661BE0404F8189D81F46',1,'Malawi','N','Y','MWI'),('MX','56908AA379A4661BE0404F8189D81F46',1,'Mexico','N','Y','MEX'),('MY','56908AA379A5661BE0404F8189D81F46',1,'Malaysia','N','Y','MYS'),('MZ','56908AA379A6661BE0404F8189D81F46',1,'Mozambique','N','Y','MOZ'),('NA','56908AA379FB661BE0404F8189D81F46',1,'Namibia','N','Y','NAM'),('NC','56908AA379A8661BE0404F8189D81F46',1,'New Caledonia','N','Y','NCL'),('NE','56908AA379AB661BE0404F8189D81F46',1,'Niger','N','Y','NER'),('NF','56908AA379AA661BE0404F8189D81F46',1,'Norfolk Island','N','Y','NFK'),('NG','56908AA379AD661BE0404F8189D81F46',1,'Nigeria','N','Y','NGA'),('NI','56908AA379B3661BE0404F8189D81F46',1,'Nicaragua','N','Y','NIC'),('NL','56908AA379AE661BE0404F8189D81F46',1,'Netherlands','N','Y','NLD'),('NO','56908AA379AF661BE0404F8189D81F46',1,'Norway','N','Y','NOR'),('NP','56908AA379B0661BE0404F8189D81F46',1,'Nepal','N','Y','NPL'),('NR','56908AA379B1661BE0404F8189D81F46',1,'Nauru','N','Y','NRU'),('NU','56908AA379A9661BE0404F8189D81F46',1,'Niue','N','Y','NIU'),('NZ','56908AA379B4661BE0404F8189D81F46',1,'New Zealand','N','Y','NZL'),('OM','56908AA379A1661BE0404F8189D81F46',1,'Oman','N','Y','OMN'),('PA','56908AA379BD661BE0404F8189D81F46',1,'Panama','N','Y','PAN'),('PE','56908AA379B8661BE0404F8189D81F46',1,'Peru','N','Y','PER'),('PF','56908AA3794D661BE0404F8189D81F46',1,'French Polynesia','N','Y','PYF'),('PG','56908AA379BF661BE0404F8189D81F46',1,'Papua New Guinea','N','Y','PNG'),('PH','56908AA379C6661BE0404F8189D81F46',1,'Philippines','N','Y','PHL'),('PK','56908AA379BB661BE0404F8189D81F46',1,'Pakistan','N','Y','PAK'),('PL','56908AA379BC661BE0404F8189D81F46',1,'Poland','N','Y','POL'),('PM','56908AA379CB661BE0404F8189D81F46',1,'Saint Pierre And Miquelon','N','Y','SPM'),('PN','56908AA379B7661BE0404F8189D81F46',1,'Pitcairn','N','Y','PCN'),('PR','56908AA379C7661BE0404F8189D81F46',1,'Puerto Rico','N','Y','PRI'),('PS','56908AA37962661BE0404F8189D81F46',1,'Palestinian Territory, Occupied','N','Y','PSE'),('PT','56908AA379BE661BE0404F8189D81F46',1,'Portugal','N','Y','PRT'),('PW','56908AA379C0661BE0404F8189D81F46',1,'Palau','N','Y','PLW'),('PY','56908AA379B6661BE0404F8189D81F46',1,'Paraguay','N','Y','PRY'),('QA','56908AA379C2661BE0404F8189D81F46',1,'Qatar','N','Y','QAT'),('RE','56908AA379C3661BE0404F8189D81F46',1,'RÃ©union','N','Y','REU'),('RO','56908AA379C5661BE0404F8189D81F46',1,'Romania','N','Y','ROU'),('RS','56908AA379D7661BE0404F8189D81F46',1,'Serbia','N','Y','SRB'),('RU','56908AA379C8661BE0404F8189D81F46',1,'Russian Federation','N','Y','RUS'),('RW','56908AA379C9661BE0404F8189D81F46',1,'Rwanda','N','Y','RWA'),('SA','56908AA379CA661BE0404F8189D81F46',1,'Saudi Arabia','N','Y','SAU'),('SB','56908AA3791A661BE0404F8189D81F46',1,'Solomon Islands','N','Y','SLB'),('SC','56908AA379CD661BE0404F8189D81F46',1,'Seychelles','N','Y','SYC'),('SD','56908AA379D9661BE0404F8189D81F46',1,'Sudan','N','Y','SDN'),('SE','56908AA379DB661BE0404F8189D81F46',1,'Sweden','N','Y','SWE'),('SG','56908AA379D4661BE0404F8189D81F46',1,'Singapore','N','Y','SGP'),('SH','56908AA379D0661BE0404F8189D81F46',1,'St. Helena, Ascension, Tristan Da Cunha','N','Y','SHN'),('SI','56908AA379D1661BE0404F8189D81F46',1,'Slovenia','N','Y','SVN'),('SJ','56908AA379DA661BE0404F8189D81F46',1,'Svalbard And Jan Mayen','N','Y','SJM'),('SK','56908AA3798B661BE0404F8189D81F46',1,'Slovakia','N','Y','SVK'),('SL','56908AA379D2661BE0404F8189D81F46',1,'Sierra Leone','N','Y','SLE'),('SM','56908AA379D3661BE0404F8189D81F46',1,'San Marino','N','Y','SMR'),('SN','56908AA379CF661BE0404F8189D81F46',1,'Senegal','N','Y','SEN'),('SO','56908AA379D5661BE0404F8189D81F46',1,'Somalia','N','Y','SOM'),('SR','56908AA379B2661BE0404F8189D81F46',1,'Suriname','N','Y','SUR'),('ST','56908AA379E7661BE0404F8189D81F46',1,'Sao Tome and Principe','N','Y','STP'),('SV','56908AA37943661BE0404F8189D81F46',1,'El Salvador','N','Y','SLV'),('SY','56908AA379DC661BE0404F8189D81F46',1,'Syrian Arab Republic','N','Y','SYR'),('SZ','56908AA37A01661BE0404F8189D81F46',1,'Swaziland','N','Y','SWZ'),('TC','56908AA379E3661BE0404F8189D81F46',1,'Turks and Caicos Islands','N','Y','TCA'),('TD','56908AA37925661BE0404F8189D81F46',1,'Chad','N','Y','TCD'),('TF','56908AA37950661BE0404F8189D81F46',1,'French Southern Territories','N','Y','ATF'),('TG','56908AA379E6661BE0404F8189D81F46',1,'Togo','N','Y','TGO'),('TH','56908AA379E1661BE0404F8189D81F46',1,'Thailand','N','Y','THA'),('TJ','56908AA379E2661BE0404F8189D81F46',1,'Tajikistan','N','Y','TJK'),('TK','56908AA379E4661BE0404F8189D81F46',1,'Tokelau','N','Y','TKL'),('TL','56908AA37945661BE0404F8189D81F46',1,'Timor-Leste','N','Y','TLS'),('TM','56908AA379EC661BE0404F8189D81F46',1,'Turkmenistan','N','Y','TKM'),('TN','56908AA379E8661BE0404F8189D81F46',1,'Tunisia','N','Y','TUN'),('TO','56908AA379E5661BE0404F8189D81F46',1,'Tonga','N','Y','TON'),('TR','56908AA379E9661BE0404F8189D81F46',1,'Turkey','N','Y','TUR'),('TT','56908AA379DF661BE0404F8189D81F46',1,'Trinidad and Tobago','N','Y','TTO'),('TV','56908AA379EA661BE0404F8189D81F46',1,'Tuvalu','N','Y','TUV'),('TW','56908AA379EB661BE0404F8189D81F46',1,'Taiwan, Province Of China','N','Y','TWN'),('TZ','56908AA379ED661BE0404F8189D81F46',1,'Tanzania, United Republic of','N','Y','TZA'),('UA','56908AA379F0661BE0404F8189D81F46',1,'Ukraine','N','Y','UKR'),('UG','56908AA379EE661BE0404F8189D81F46',1,'Uganda','N','Y','UGA'),('UM','56908AA3799E661BE0404F8189D81F46',1,'United States Minor Outlying Islands','N','Y','UMI'),('US','56908AA379F2661BE0404F8189D81F46',1,'United States','N','Y','USA'),('UY','56908AA379F3661BE0404F8189D81F46',1,'Uruguay','N','Y','URY'),('UZ','56908AA379F4661BE0404F8189D81F46',1,'Uzbekistan','N','Y','UZB'),('VA','56908AA379FA661BE0404F8189D81F46',1,'Holy See (Vatican City State)','N','Y','VAT'),('VC','56908AA379F5661BE0404F8189D81F46',1,'Saint Vincent And The Grenedines','N','Y','VCT'),('VE','56908AA379F6661BE0404F8189D81F46',1,'Venezuela, Bolivarian Republic of','N','Y','VEN'),('VG','56908AA379F7661BE0404F8189D81F46',1,'Virgin Islands, British','N','Y','VGB'),('VI','56908AA379F9661BE0404F8189D81F46',1,'Virgin Islands, U.S.','N','Y','VIR'),('VN','56908AA379F8661BE0404F8189D81F46',1,'Viet Nam','N','Y','VNM'),('VU','56908AA379AC661BE0404F8189D81F46',1,'Vanuatu','N','Y','VUT'),('WF','56908AA379FD661BE0404F8189D81F46',1,'Wallis and Futuna','N','Y','WLF'),('WS','56908AA37A00661BE0404F8189D81F46',1,'Samoa','N','Y','WSM'),('YE','56908AA37A02661BE0404F8189D81F46',1,'Yemen','N','Y','YEM'),('YT','56908AA37995661BE0404F8189D81F46',1,'Mayotte','N','Y','MYT'),('ZA','56908AA379CE661BE0404F8189D81F46',1,'South Africa','N','Y','ZAF'),('ZM','56908AA37A04661BE0404F8189D81F46',1,'Zambia','N','Y','ZMB'),('ZW','56908AA37A05661BE0404F8189D81F46',1,'Zimbabwe','N','Y','ZWE'),('ZZ','56908AA379B5661BE0404F8189D81F46',1,'Other Countries','N','Y','ZZZ');
/*!40000 ALTER TABLE `KRLC_CNTRY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_LOOKUP_RSLT_S`
--

DROP TABLE IF EXISTS `KRNS_LOOKUP_RSLT_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_LOOKUP_RSLT_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_LOOKUP_RSLT_S`
--

LOCK TABLES `KRNS_LOOKUP_RSLT_S` WRITE;
/*!40000 ALTER TABLE `KRNS_LOOKUP_RSLT_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_LOOKUP_RSLT_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_EMP_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_EMP_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_EMP_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_EMP_ID_S`
--

LOCK TABLES `KRIM_ENTITY_EMP_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMP_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMP_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_ACTN_TYP_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_ACTN_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_ACTN_TYP_T` (
  `CNTXT_VLD_ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTN_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CNTXT_VLD_ACTN_ID`),
  KEY `KRMS_CNTXT_VLD_ACTN_TYP_TI1` (`CNTXT_ID`),
  CONSTRAINT `KRMS_CNTXT_VLD_ACTN_TYP_FK1` FOREIGN KEY (`CNTXT_ID`) REFERENCES `KRMS_CNTXT_T` (`CNTXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_ACTN_TYP_T`
--

LOCK TABLES `KRMS_CNTXT_VLD_ACTN_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_ACTN_TYP_T` DISABLE KEYS */;
INSERT INTO `KRMS_CNTXT_VLD_ACTN_TYP_T` VALUES ('T1000','CONTEXT1','T1002',1),('T1001','CONTEXT1','1000',1),('T1002','CONTEXT1','1001',1),('T1003','CONTEXT1','1003',1);
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_ACTN_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_S`
--

LOCK TABLES `KRMS_TERM_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_VLD_ACTN_TYP_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_VLD_ACTN_TYP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_VLD_ACTN_TYP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_VLD_ACTN_TYP_S`
--

LOCK TABLES `KRMS_CNTXT_VLD_ACTN_TYP_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_ACTN_TYP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_VLD_ACTN_TYP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_prncpl_v`
--

DROP TABLE IF EXISTS `krim_role_prncpl_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_prncpl_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_prncpl_v` (
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `ROLE_ID` varchar(40),
  `PRNCPL_NM` varchar(100),
  `PRNCPL_ID` varchar(40),
  `FIRST_NM` varchar(40),
  `LAST_NM` varchar(80),
  `ROLE_MBR_ID` varchar(40),
  `attr_nm` varchar(100),
  `attr_val` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KRMS_TERM_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_T` (
  `TERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  PRIMARY KEY (`TERM_ID`),
  KEY `KRMS_TERM_TI1` (`TERM_SPEC_ID`),
  CONSTRAINT `KRMS_TERM_T__FK1` FOREIGN KEY (`TERM_SPEC_ID`) REFERENCES `KRMS_TERM_SPEC_T` (`TERM_SPEC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_T`
--

LOCK TABLES `KRMS_TERM_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_T` DISABLE KEYS */;
INSERT INTO `KRMS_TERM_T` VALUES ('T1000','T1000',1,'Bloomington Campus Size'),('T1002','T1002',1,'null'),('T1003','T1003',1,'Fund Name'),('T1004','T1004',1,'PO Value'),('T1005','T1005',1,'PO Item Type'),('T1006','T1006',1,'Account'),('T1007','T1007',1,'Occasion');
/*!40000 ALTER TABLE `KRMS_TERM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_HDR_EXT_FLT_T`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_EXT_FLT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_EXT_FLT_T` (
  `DOC_HDR_EXT_FLT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(256) COLLATE utf8_bin NOT NULL,
  `VAL` decimal(30,15) DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_FLT_ID`),
  KEY `KREW_DOC_HDR_EXT_FLT_TI1` (`KEY_CD`(255),`VAL`),
  KEY `KREW_DOC_HDR_EXT_FLT_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_FLT_TI3` (`VAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_EXT_FLT_T`
--

LOCK TABLES `KREW_DOC_HDR_EXT_FLT_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_FLT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_FLT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_RQST_T`
--

DROP TABLE IF EXISTS `KREW_ACTN_RQST_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_RQST_T` (
  `ACTN_RQST_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PARNT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTN_RQST_CD` char(1) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `QUAL_ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `QUAL_ROLE_NM_LBL_TXT` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `RECIP_TYP_CD` char(1) COLLATE utf8_bin DEFAULT NULL,
  `PRIO_NBR` decimal(8,0) NOT NULL,
  `RTE_TYP_NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTE_LVL_NBR` decimal(8,0) NOT NULL,
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTN_TKN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_VER_NBR` decimal(8,0) NOT NULL,
  `CRTE_DT` datetime NOT NULL,
  `RSP_DESC_TXT` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `FRC_ACTN` decimal(1,0) DEFAULT '0',
  `ACTN_RQST_ANNOTN_TXT` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_TYP` char(1) COLLATE utf8_bin DEFAULT NULL,
  `APPR_PLCY` char(1) COLLATE utf8_bin DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT '1',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RQST_LBL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_RQST_ID`),
  KEY `KREW_ACTN_RQST_T11` (`DOC_HDR_ID`),
  KEY `KREW_ACTN_RQST_T12` (`PRNCPL_ID`),
  KEY `KREW_ACTN_RQST_T13` (`ACTN_TKN_ID`),
  KEY `KREW_ACTN_RQST_T14` (`PARNT_ID`),
  KEY `KREW_ACTN_RQST_T15` (`RSP_ID`),
  KEY `KREW_ACTN_RQST_T16` (`STAT_CD`,`RSP_ID`),
  KEY `KREW_ACTN_RQST_T17` (`RTE_NODE_INSTN_ID`),
  KEY `KREW_ACTN_RQST_T19` (`STAT_CD`,`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_RQST_T`
--

LOCK TABLES `KREW_ACTN_RQST_T` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_RQST_T` DISABLE KEYS */;
INSERT INTO `KREW_ACTN_RQST_T` VALUES ('2360',NULL,'A','2695','1046','D','2022','user4',NULL,NULL,NULL,'U',1,NULL,1,'2876','2324',1,'2008-12-22 13:24:25','Destination Rule',0,NULL,NULL,'F',1,0,NULL,NULL),('2361',NULL,'A','2695','1049','D','2024',NULL,'employee','employee employee','employee','R',1,NULL,2,'2877','2325',1,'2008-12-22 13:26:05','Traveler Routing',0,NULL,NULL,'F',1,0,NULL,NULL),('2362','2361','A','2695','1049','D','2024','employee','employee','employee employee','employee','U',1,NULL,2,'2877','2325',1,'2008-12-22 13:26:05','Traveler Routing',0,NULL,NULL,'F',1,0,NULL,NULL),('2363',NULL,'A','2695','1050','D','2026',NULL,'supervisr','supervisr supervisr','supervisr','R',1,NULL,3,'2878','2326',1,'2008-12-22 13:26:35','Supervisor Routing',0,NULL,NULL,'F',1,0,NULL,NULL),('2364','2363','A','2695','1050','D','2026','supervisor','supervisr','supervisr supervisr','supervisr','U',1,NULL,3,'2878','2326',1,'2008-12-22 13:26:35','Supervisor Routing',0,NULL,NULL,'F',1,0,NULL,NULL),('2365',NULL,'K','2695','1051','A','2028',NULL,'director','director director','director','R',1,NULL,3,'2878',NULL,1,'2008-12-22 13:26:35','Dean/Director Routing',0,NULL,NULL,'F',1,0,NULL,NULL),('2366','2365','K','2695','1051','A','2028','director','director','director director','director','U',1,NULL,3,'2878',NULL,1,'2008-12-22 13:26:35','Dean/Director Routing',0,NULL,NULL,'F',1,0,NULL,NULL),('2367',NULL,'A','2701',NULL,'A','2022','user4',NULL,NULL,NULL,'U',1,NULL,1,'2891',NULL,1,'2009-03-17 10:14:41','Destination Rule',0,NULL,NULL,'F',1,0,NULL,NULL),('2368','2367','A','2701',NULL,'A','2061','user2',NULL,NULL,NULL,'U',1,NULL,1,'2891',NULL,1,'2009-03-17 10:14:41','User4 Destination Routing Secondary Delegation',1,NULL,'S','F',1,0,NULL,NULL);
/*!40000 ALTER TABLE `KREW_ACTN_RQST_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_GRP_MBR_T`
--

DROP TABLE IF EXISTS `KRIM_PND_GRP_MBR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_GRP_MBR_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GRP_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`GRP_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_GRP_MBR_T`
--

LOCK TABLES `KRIM_PND_GRP_MBR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_GRP_MBR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_GRP_MBR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_TYP_T` (
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SRVC_NM` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`KIM_TYP_ID`),
  UNIQUE KEY `KRIM_TYP_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_TYP_T`
--

LOCK TABLES `KRIM_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_TYP_T` VALUES ('1','5ADF18B6D4827954E0404F8189D85002',1,'Default',NULL,'Y','KUALI'),('10','5ADF18B6D4D77954E0404F8189D85002',1,'Namespace or Component','namespaceOrComponentPermissionTypeService','Y','KR-NS'),('11','5ADF18B6D4DC7954E0404F8189D85002',1,'Component Field','componentFieldPermissionTypeService','Y','KR-NS'),('12','5ADF18B6D4E37954E0404F8189D85002',1,'Namespace or Action','namespaceOrActionPermissionTypeService','Y','KR-NS'),('13','5ADF18B6D4E77954E0404F8189D85002',1,'Button','buttonPermissionTypeService','Y','KR-NS'),('14','5ADF18B6D4EA7954E0404F8189D85002',1,'Edit Mode & Document Type','documentTypeAndEditModePermissionTypeService','Y','KR-NS'),('15','5ADF18B6D4ED7954E0404F8189D85002',1,'Batch Feed or Job','batchFeedOrJobPermissionTypeService','Y','KR-NS'),('16','5ADF18B6D4F27954E0404F8189D85002',1,'Parameter','parameterPermissionTypeService','Y','KR-NS'),('17','5ADF18B6D4F77954E0404F8189D85002',1,'Campus','campusRoleService','Y','KR-NS'),('18','5ADF18B6D4F97954E0404F8189D85002',1,'Role','rolePermissionTypeService','Y','KR-IDM'),('19','5ADF18B6D4FD7954E0404F8189D85002',1,'Permission','permissionPermissionTypeService','Y','KR-IDM'),('2','5ADF18B6D4837954E0404F8189D85002',1,'Derived Role: Principal','activePrincipalRoleTypeService','Y','KR-IDM'),('20','5ADF18B6D5017954E0404F8189D85002',1,'Responsibility','responsibilityPermissionTypeService','Y','KR-IDM'),('21','5ADF18B6D5057954E0404F8189D85002',1,'Group','groupPermissionTypeService','Y','KR-IDM'),('3','5ADF18B6D4AC7954E0404F8189D85002',1,'Document Type (Permission)','documentTypePermissionTypeService','Y','KR-SYS'),('4','5ADF18B6D4B57954E0404F8189D85002',1,'Action Request Type','actionRequestTypePermissionTypeService','Y','KR-WKFLW'),('42','5ADF18B6D53B7954E0404F8189D85002',1,'Derived Role: Action Request','actionRequestDerivedRoleTypeService','Y','KR-WKFLW'),('43','5ADF18B6D53C7954E0404F8189D85002',1,'Derived Role: Route Log','routeLogDerivedRoleTypeService','Y','KR-WKFLW'),('45','5B6013B3AD131A9CE0404F8189D87094',1,'Derived Role: Permission (Edit Document)','documentEditorRoleTypeService','Y','KR-NS'),('5','5ADF18B6D4B87954E0404F8189D85002',1,'Ad Hoc Review','adhocReviewPermissionTypeService','Y','KR-WKFLW'),('52','5C997D14EAC2FE40E0404F8189D87DC5',1,'Document Type, Routing Node & Field(s)','documentTypeAndNodeAndFieldsPermissionTypeService','Y','KR-SYS'),('54','60432A73A6A29F65E0404F8189D86AA4',1,'Document Type (Responsibility)','documentTypeResponsibilityTypeService','Y','KR-KEW'),('56','603B735FA6B9FE21E0404F8189D8083B',1,'Document Type & Existing Records Only','documentTypeAndExistingRecordsOnlyPermissionTypeService','Y','KR-NS'),('57','603B735FA6BDFE21E0404F8189D8083B',1,'Component Section','componentSectionPermissionTypeService','Y','KR-NS'),('59','606763510FBB96D3E0404F8189D857A2',1,'Document Type & Relationship to Note Author','documentTypeAndRelationshipToNoteAuthorPermissionTypeService','Y','KR-NS'),('60','606763510FBC96D3E0404F8189D857A2',1,'Derived Role: Permission (Open Document)','documentOpenerRoleTypeService','Y','KR-NS'),('66','67F145466E8A9160E0404F8189D86771',1,'Derived Role: Permission (Initiate Document)','documentInitiatorRoleTypeService','Y','KR-SYS'),('67','67F145466E8F9160E0404F8189D86771',1,'Namespace','namespacePermissionTypeService','Y','KR-NS'),('68','B7DBFABEFD378CBFE0402E0AA9D757C9',1,'View','viewPermissionTypeService','Y','KR-KRAD'),('69','B7DBFABEFD388CBFE0402E0AA9D757C9',1,'View Edit Mode','viewEditModePermissionTypeService','Y','KR-KRAD'),('7','5ADF18B6D4C07954E0404F8189D85002',1,'Document Type, Routing Node & Action Information','reviewResponsibilityTypeService','Y','KR-WKFLW'),('70','B7DBFABEFD398CBFE0402E0AA9D757C9',1,'View Field','viewFieldPermissionTypeService','Y','KR-KRAD'),('71','B7DBFABEFD3A8CBFE0402E0AA9D757C9',1,'View Group','viewGroupPermissionTypeService','Y','KR-KRAD'),('72','B7DBFABEFD3B8CBFE0402E0AA9D757C9',1,'View Widget','viewWidgetPermissionTypeService','Y','KR-KRAD'),('73','B7DBFABEFD3C8CBFE0402E0AA9D757C9',1,'View Action','viewActionPermissionTypeService','Y','KR-KRAD'),('74','B7DBFABEFD3D8CBFE0402E0AA9D757C9',1,'View Line Field','viewLineFieldPermissionTypeService','Y','KR-KRAD'),('75','B7DBFABEFD3E8CBFE0402E0AA9D757C9',1,'View Line Action','viewLineActionPermissionTypeService','Y','KR-KRAD'),('76','BD82F716EFEEF706E0402E0AA9D70A27',1,'Derived Role: Permission (Route Document)','documentRouterRoleTypeService','Y','KR-WKFLW'),('8','5ADF18B6D4C67954E0404F8189D85002',1,'Document Type & Routing Node or State','documentTypeAndNodeOrStatePermissionTypeService','Y','KR-SYS'),('9','5ADF18B6D4CD7954E0404F8189D85002',1,'Document Type & Attachment Type','documentTypeAndAttachmentTypePermissionTypeService','Y','KR-NS'),('KR1000','CDC48BA7E67687DFE040F90A05B92A31',1,'Document Type, Route Node, and Route Status','documentTypeAndNodeAndRouteStatusPermissionTypeService','Y','KR-SYS'),('KR1001','CEA27F2DB2D93593E040F90A05B924DB',1,'Backdoor Restriction','backdoorRestrictionPermissionTypeService','Y','KR-SYS');
/*!40000 ALTER TABLE `KRIM_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ROLE_RSP_T`
--

DROP TABLE IF EXISTS `KRIM_PND_ROLE_RSP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ROLE_RSP_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_RSP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ROLE_RSP_T`
--

LOCK TABLES `KRIM_PND_ROLE_RSP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_RSP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_RSP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PRNCPL_ID_S`
--

DROP TABLE IF EXISTS `KRIM_PRNCPL_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PRNCPL_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PRNCPL_ID_S`
--

LOCK TABLES `KRIM_PRNCPL_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_PRNCPL_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PRNCPL_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_EMAIL_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_EMAIL_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_EMAIL_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_EMAIL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_ADDR` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_EMAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_EMAIL_MT`
--

LOCK TABLES `KRIM_PND_EMAIL_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_EMAIL_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_EMAIL_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_DOC_ACCT`
--

DROP TABLE IF EXISTS `TRV_DOC_ACCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_DOC_ACCT` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`DOC_HDR_ID`,`ACCT_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_DOC_ACCT`
--

LOCK TABLES `TRV_DOC_ACCT` WRITE;
/*!40000 ALTER TABLE `TRV_DOC_ACCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRV_DOC_ACCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_DLGN_MBR_T`
--

DROP TABLE IF EXISTS `KRIM_PND_DLGN_MBR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_DLGN_MBR_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DLGN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`DLGN_MBR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_DLGN_MBR_T`
--

LOCK TABLES `KRIM_PND_DLGN_MBR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_DLGN_MBR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_DLGN_MBR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_DOCUMENT_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_DOCUMENT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_DOCUMENT_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ROLE_NMSPC` varchar(100) COLLATE utf8_bin NOT NULL,
  `ROLE_NM` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_DOCUMENT_T`
--

LOCK TABLES `KRIM_ROLE_DOCUMENT_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_DOCUMENT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_DOCUMENT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_TMPL_ATTR_T`
--

DROP TABLE IF EXISTS `KREW_RULE_TMPL_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_TMPL_ATTR_T` (
  `RULE_TMPL_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `REQ_IND` decimal(1,0) NOT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `DSPL_ORD` decimal(5,0) NOT NULL,
  `DFLT_VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`RULE_TMPL_ATTR_ID`),
  UNIQUE KEY `KREW_RULE_TMPL_ATTR_TC0` (`OBJ_ID`),
  KEY `KREW_RULE_TMPL_ATTR_TI1` (`RULE_TMPL_ID`),
  KEY `KREW_RULE_TMPL_ATTR_TI2` (`RULE_ATTR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_TMPL_ATTR_T`
--

LOCK TABLES `KREW_RULE_TMPL_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_TMPL_ATTR_T` DISABLE KEYS */;
INSERT INTO `KREW_RULE_TMPL_ATTR_T` VALUES ('1024','1023','1010',1,1,2,NULL,2,'6166CBA1BB16644DE0404F8189D86C09'),('1027','1026','1011',1,1,3,NULL,8,'6166CBA1BB17644DE0404F8189D86C09'),('1029','1028','1012',1,1,4,NULL,2,'6166CBA1BB18644DE0404F8189D86C09'),('1031','1030','1012',1,1,5,NULL,2,'6166CBA1BB19644DE0404F8189D86C09'),('1033','1032','1013',1,1,6,NULL,2,'6166CBA1BB1A644DE0404F8189D86C09'),('1102','1101','1100',0,1,0,NULL,2,'6166CBA1BB1C644DE0404F8189D86C09'),('1321','1320','1000',1,1,3,NULL,2,'6166CBA1BB20644DE0404F8189D86C09');
/*!40000 ALTER TABLE `KREW_RULE_TMPL_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_ENT_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_ENT_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_ENT_TYP_T` (
  `ENT_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENT_TYP_CD`,`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_ENT_TYP_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_ENT_TYP_TI1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_ENTITY_ENT_TYP_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_ENT_TYP_TR2` FOREIGN KEY (`ENT_TYP_CD`) REFERENCES `KRIM_ENT_TYP_T` (`ENT_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_ENT_TYP_T`
--

LOCK TABLES `KRIM_ENTITY_ENT_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_ENT_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENTITY_ENT_TYP_T` VALUES ('PERSON','1100','5B97C50B03E06110E0404F8189D85213',1,'Y','2008-11-13 14:06:49'),('PERSON','1101','5B97C50B03E16110E0404F8189D85213',1,'Y','2008-11-13 14:06:49'),('PERSON','1102','5B97C50B03E26110E0404F8189D85213',1,'Y','2008-11-13 14:06:49'),('PERSON','1103','5B97C50B03E36110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1104','5B97C50B03E46110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1105','5B97C50B03E56110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1106','5B97C50B03E66110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1107','5B97C50B03E76110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1108','5B97C50B03E86110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1109','5B97C50B03E96110E0404F8189D85213',1,'Y','2008-11-13 14:06:50'),('PERSON','1110','5B97C50B03EA6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1111','5B97C50B03EB6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1112','5B97C50B03EC6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1113','5B97C50B03ED6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1114','5B97C50B03EE6110E0404F8189D85213',1,'Y','2008-11-13 14:06:51'),('PERSON','1115','5B97C50B03EF6110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1116','5B97C50B03F06110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1117','5B97C50B03F16110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1118','5B97C50B03F26110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1119','5B97C50B03F36110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1120','5B97C50B03F46110E0404F8189D85213',1,'Y','2008-11-13 14:06:52'),('PERSON','1121','5B97C50B03F56110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1122','5B97C50B03F66110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1123','5B97C50B03F76110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1124','5B97C50B03F86110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1125','5B97C50B03F96110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1126','5B97C50B03FA6110E0404F8189D85213',1,'Y','2008-11-13 14:06:53'),('PERSON','1127','5B97C50B03FB6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1128','5B97C50B03FC6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1129','5B97C50B03FD6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1130','5B97C50B03FE6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1131','5B97C50B03FF6110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1132','5B97C50B04006110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1133','5B97C50B04016110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1134','5B97C50B04026110E0404F8189D85213',1,'Y','2008-11-13 14:06:54'),('PERSON','1135','5B97C50B04036110E0404F8189D85213',1,'Y','2008-11-13 14:06:55'),('PERSON','1136','5B97C50B04046110E0404F8189D85213',1,'Y','2008-11-13 14:06:55'),('PERSON','1137','5B97C50B04056110E0404F8189D85213',1,'Y','2008-11-13 14:06:55'),('PERSON','KR1000','CFBAA6F5F0D15D07E0406E0AC31D229B',1,'Y','2012-11-30 17:23:21'),('SYSTEM','1','5B1B6B919CCB6496E0404F8189D822F2',1,'Y','2008-11-07 09:49:02');
/*!40000 ALTER TABLE `KRIM_ENTITY_ENT_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRLC_ST_T`
--

DROP TABLE IF EXISTS `KRLC_ST_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRLC_ST_T` (
  `POSTAL_STATE_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT 'US',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `POSTAL_STATE_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`POSTAL_STATE_CD`,`POSTAL_CNTRY_CD`),
  UNIQUE KEY `KR_STATE_TC0` (`OBJ_ID`),
  KEY `KR_STATE_TR1` (`POSTAL_CNTRY_CD`),
  CONSTRAINT `KR_STATE_TR1` FOREIGN KEY (`POSTAL_CNTRY_CD`) REFERENCES `KRLC_CNTRY_T` (`POSTAL_CNTRY_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRLC_ST_T`
--

LOCK TABLES `KRLC_ST_T` WRITE;
/*!40000 ALTER TABLE `KRLC_ST_T` DISABLE KEYS */;
INSERT INTO `KRLC_ST_T` VALUES ('--','US','56908AA37A06661BE0404F8189D81F46',1,'OUT OF COUNTRY','Y'),('AA','US','56908AA37A3B661BE0404F8189D81F46',1,'ARMED FORCES AMERICAS (EXCEPT CANADA)','Y'),('AE','US','56908AA37A3C661BE0404F8189D81F46',1,'ARMED FORCES EURO/CANADA/AFRICA/MID EAST','Y'),('AK','US','56908AA37A07661BE0404F8189D81F46',1,'ALASKA','Y'),('AL','US','56908AA37A08661BE0404F8189D81F46',1,'ALABAMA','Y'),('AP','US','56908AA37A3D661BE0404F8189D81F46',1,'ARMED FORCES PACIFIC','Y'),('AR','US','56908AA37A09661BE0404F8189D81F46',1,'ARKANSAS','Y'),('AS','US','56908AA37A3E661BE0404F8189D81F46',1,'AMERICAN SAMOA','Y'),('AZ','US','56908AA37A0A661BE0404F8189D81F46',1,'ARIZONA','Y'),('CA','US','56908AA37A0B661BE0404F8189D81F46',1,'CALIFORNIA','Y'),('CO','US','56908AA37A0C661BE0404F8189D81F46',1,'COLORADO','Y'),('CT','US','56908AA37A0D661BE0404F8189D81F46',1,'CONNECTICUT','Y'),('DC','US','56908AA37A0E661BE0404F8189D81F46',1,'DISTRICT OF COLUMBIA','Y'),('DE','US','56908AA37A0F661BE0404F8189D81F46',1,'DELAWARE','Y'),('FL','US','56908AA37A10661BE0404F8189D81F46',1,'FLORIDA','Y'),('FM','US','56908AA37A3F661BE0404F8189D81F46',1,'FEDERATED STATES OF MICRONESIA','Y'),('GA','US','56908AA37A11661BE0404F8189D81F46',1,'GEORGIA','Y'),('GU','US','56908AA37A40661BE0404F8189D81F46',1,'GUAM','Y'),('HI','US','56908AA37A12661BE0404F8189D81F46',1,'HAWAII','Y'),('IA','US','56908AA37A13661BE0404F8189D81F46',1,'IOWA','Y'),('ID','US','56908AA37A14661BE0404F8189D81F46',1,'IDAHO','Y'),('IL','US','56908AA37A15661BE0404F8189D81F46',1,'ILLINOIS','Y'),('IN','US','56908AA37A16661BE0404F8189D81F46',1,'INDIANA','Y'),('KS','US','56908AA37A17661BE0404F8189D81F46',1,'KANSAS','Y'),('KY','US','56908AA37A18661BE0404F8189D81F46',1,'KENTUCKY','Y'),('LA','US','56908AA37A19661BE0404F8189D81F46',1,'LOUISIANA','Y'),('MA','US','56908AA37A1A661BE0404F8189D81F46',1,'MASSACHUSETTS','Y'),('MD','US','56908AA37A1B661BE0404F8189D81F46',1,'MARYLAND','Y'),('ME','US','56908AA37A1C661BE0404F8189D81F46',1,'MAINE','Y'),('MH','US','56908AA37A41661BE0404F8189D81F46',1,'MARSHALL ISLANDS','Y'),('MI','US','56908AA37A1D661BE0404F8189D81F46',1,'MICHIGAN','Y'),('MN','US','56908AA37A1E661BE0404F8189D81F46',1,'MINNESOTA','Y'),('MO','US','56908AA37A1F661BE0404F8189D81F46',1,'MISSOURI','Y'),('MP','US','56908AA37A42661BE0404F8189D81F46',1,'NORTHERN MARIANA ISLANDS','Y'),('MS','US','56908AA37A20661BE0404F8189D81F46',1,'MISSISSIPPI','Y'),('MT','US','56908AA37A21661BE0404F8189D81F46',1,'MONTANA','Y'),('NC','US','56908AA37A22661BE0404F8189D81F46',1,'NORTH CAROLINA','Y'),('ND','US','56908AA37A23661BE0404F8189D81F46',1,'NORTH DAKOTA','Y'),('NE','US','56908AA37A24661BE0404F8189D81F46',1,'NEBRASKA','Y'),('NH','US','56908AA37A25661BE0404F8189D81F46',1,'NEW HAMPSHIRE','Y'),('NJ','US','56908AA37A26661BE0404F8189D81F46',1,'NEW JERSEY','Y'),('NM','US','56908AA37A27661BE0404F8189D81F46',1,'NEW MEXICO','Y'),('NV','US','56908AA37A28661BE0404F8189D81F46',1,'NEVADA','Y'),('NY','US','56908AA37A29661BE0404F8189D81F46',1,'NEW YORK','Y'),('OH','US','56908AA37A2A661BE0404F8189D81F46',1,'OHIO','Y'),('OK','US','56908AA37A2B661BE0404F8189D81F46',1,'OKLAHOMA','Y'),('OR','US','56908AA37A2C661BE0404F8189D81F46',1,'OREGON','Y'),('PA','US','56908AA37A2D661BE0404F8189D81F46',1,'PENNSYLVANIA','Y'),('PR','US','56908AA37A2E661BE0404F8189D81F46',1,'PUERTO RICO','Y'),('PW','US','56908AA37A43661BE0404F8189D81F46',1,'PALAU','Y'),('RI','US','56908AA37A2F661BE0404F8189D81F46',1,'RHODE ISLAND','Y'),('SC','US','56908AA37A30661BE0404F8189D81F46',1,'SOUTH CAROLINA','Y'),('SD','US','56908AA37A31661BE0404F8189D81F46',1,'SOUTH DAKOTA','Y'),('TN','US','56908AA37A32661BE0404F8189D81F46',1,'TENNESSEE','Y'),('TX','US','56908AA37A33661BE0404F8189D81F46',1,'TEXAS','Y'),('UT','US','56908AA37A34661BE0404F8189D81F46',1,'UTAH','Y'),('VA','US','56908AA37A35661BE0404F8189D81F46',1,'VIRGINIA','Y'),('VI','US','56908AA37A44661BE0404F8189D81F46',1,'VIRGIN ISLANDS','Y'),('VT','US','56908AA37A36661BE0404F8189D81F46',1,'VERMONT','Y'),('WA','US','56908AA37A37661BE0404F8189D81F46',1,'WASHINGTON','Y'),('WI','US','56908AA37A38661BE0404F8189D81F46',1,'WISCONSIN','Y'),('WV','US','56908AA37A39661BE0404F8189D81F46',1,'WEST VIRGINIA','Y'),('WY','US','56908AA37A3A661BE0404F8189D81F46',1,'WYOMING','Y');
/*!40000 ALTER TABLE `KRLC_ST_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PRNCPL_T`
--

DROP TABLE IF EXISTS `KRIM_PRNCPL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PRNCPL_T` (
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PRNCPL_NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRNCPL_PSWD` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`PRNCPL_ID`),
  UNIQUE KEY `KRIM_PRNCPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PRNCPL_TC1` (`PRNCPL_NM`),
  KEY `KRIM_PRNCPL_TR1` (`ENTITY_ID`),
  CONSTRAINT `KRIM_PRNCPL_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PRNCPL_T`
--

LOCK TABLES `KRIM_PRNCPL_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PRNCPL_T` DISABLE KEYS */;
INSERT INTO `KRIM_PRNCPL_T` VALUES ('1','5B1B6B919CCA6496E0404F8189D822F2',1,'kr','1',NULL,'Y','2008-11-07 09:49:02'),('admin','5B97C50B03C56110E0404F8189D85213',1,'admin','1100',NULL,'Y','2008-11-13 14:06:43'),('admin1','5B97C50B03C66110E0404F8189D85213',1,'admin1','1125',NULL,'Y','2008-11-13 14:06:44'),('admin2','5B97C50B03C76110E0404F8189D85213',1,'admin2','1126',NULL,'Y','2008-11-13 14:06:44'),('dev1','5B97C50B03C86110E0404F8189D85213',1,'dev1','1129',NULL,'Y','2008-11-13 14:06:44'),('dev2','5B97C50B03C96110E0404F8189D85213',1,'dev2','1130',NULL,'Y','2008-11-13 14:06:44'),('director','5B97C50B03CA6110E0404F8189D85213',1,'director','1135',NULL,'Y','2008-11-13 14:06:44'),('doug','5B97C50B03CB6110E0404F8189D85213',1,'doug','1121',NULL,'Y','2008-11-13 14:06:44'),('earl','5B97C50B03CC6110E0404F8189D85213',1,'earl','1116',NULL,'Y','2008-11-13 14:06:45'),('edna','5B97C50B03CD6110E0404F8189D85213',1,'edna','1114',NULL,'Y','2008-11-13 14:06:45'),('employee','5B97C50B03CE6110E0404F8189D85213',1,'employee','1137',NULL,'Y','2008-11-13 14:06:45'),('eric','5B97C50B03CF6110E0404F8189D85213',1,'eric','1115',NULL,'Y','2008-11-13 14:06:45'),('erin','5B97C50B03D06110E0404F8189D85213',1,'erin','1117',NULL,'Y','2008-11-13 14:06:45'),('fran','5B97C50B03D16110E0404F8189D85213',1,'fran','1119',NULL,'Y','2008-11-13 14:06:45'),('frank','5B97C50B03D26110E0404F8189D85213',1,'frank','1120',NULL,'Y','2008-11-13 14:06:45'),('fred','5B97C50B03D36110E0404F8189D85213',1,'fred','1118',NULL,'Y','2008-11-13 14:06:46'),('guest','CADAFF9BD4F44598E040F90A05B96699',1,'guest','KR1000',NULL,'Y','2012-09-29 16:53:51'),('idm1','5B97C50B03D46110E0404F8189D85213',1,'idm1','1122',NULL,'Y','2008-11-13 14:06:46'),('idm2','5B97C50B03D56110E0404F8189D85213',1,'idm2','1123',NULL,'Y','2008-11-13 14:06:46'),('idm3','5B97C50B03D66110E0404F8189D85213',1,'idm3','1124',NULL,'Y','2008-11-13 14:06:46'),('kuluser','5B97C50B03BA6110E0404F8189D85213',1,'kuluser','1136',NULL,'Y','2008-11-13 14:06:42'),('newaccountuser','5B97C50B03D76110E0404F8189D85213',1,'newacctusr','1133',NULL,'Y','2008-11-13 14:06:46'),('notsys','5B97C50B03BB6110E0404F8189D85213',1,'notsys','1131',NULL,'Y','2008-11-13 14:06:42'),('notsysadm','5B97C50B03BC6110E0404F8189D85213',1,'notsysadm','1132',NULL,'Y','2008-11-13 14:06:42'),('quickstart','5B97C50B03D86110E0404F8189D85213',1,'quickstart','1109',NULL,'Y','2008-11-13 14:06:46'),('supervisor','5B97C50B03D96110E0404F8189D85213',1,'supervisr','1134',NULL,'Y','2008-11-13 14:06:47'),('test1','5B97C50B03DA6110E0404F8189D85213',1,'test1','1127',NULL,'Y','2008-11-13 14:06:47'),('test2','5B97C50B03DB6110E0404F8189D85213',1,'test2','1128',NULL,'Y','2008-11-13 14:06:47'),('testadmin1','5B97C50B03BD6110E0404F8189D85213',1,'testadmin1','1101',NULL,'Y','2008-11-13 14:06:42'),('testadmin2','5B97C50B03BE6110E0404F8189D85213',1,'testadmin2','1102',NULL,'Y','2008-11-13 14:06:42'),('testuser1','5B97C50B03BF6110E0404F8189D85213',1,'testuser1','1103',NULL,'Y','2008-11-13 14:06:42'),('testuser2','5B97C50B03C06110E0404F8189D85213',1,'testuser2','1104',NULL,'Y','2008-11-13 14:06:43'),('testuser3','5B97C50B03C16110E0404F8189D85213',1,'testuser3','1105',NULL,'Y','2008-11-13 14:06:43'),('testuser4','5B97C50B03C26110E0404F8189D85213',1,'testuser4','1106',NULL,'Y','2008-11-13 14:06:43'),('testuser5','5B97C50B03C36110E0404F8189D85213',1,'testuser5','1107',NULL,'Y','2008-11-13 14:06:43'),('testuser6','5B97C50B03C46110E0404F8189D85213',1,'testuser6','1108',NULL,'Y','2008-11-13 14:06:43'),('user1','5B97C50B03DC6110E0404F8189D85213',1,'user1','1110',NULL,'Y','2008-11-13 14:06:47'),('user2','5B97C50B03DD6110E0404F8189D85213',1,'user2','1111',NULL,'Y','2008-11-13 14:06:47'),('user3','5B97C50B03DE6110E0404F8189D85213',1,'user3','1112',NULL,'Y','2008-11-13 14:06:47'),('user4','5B97C50B03DF6110E0404F8189D85213',1,'user4','1113',NULL,'Y','2008-11-13 14:06:48');
/*!40000 ALTER TABLE `KRIM_PRNCPL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_ADDR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_ADDR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_ADDR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_ADDR_ID_S`
--

LOCK TABLES `KRIM_ENTITY_ADDR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_ADDR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_ADDR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_CMPNT_T`
--

DROP TABLE IF EXISTS `KRCR_CMPNT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_CMPNT_T` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`),
  UNIQUE KEY `KRNS_PARM_DTL_TYP_TC0` (`OBJ_ID`),
  CONSTRAINT `KRNS_PARM_DTL_TYP_TR1` FOREIGN KEY (`NMSPC_CD`) REFERENCES `KRCR_NMSPC_T` (`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_CMPNT_T`
--

LOCK TABLES `KRCR_CMPNT_T` WRITE;
/*!40000 ALTER TABLE `KRCR_CMPNT_T` DISABLE KEYS */;
INSERT INTO `KRCR_CMPNT_T` VALUES ('KR-IDM','All','69A9BABE4A0BBD56E0404F8189D82B0F',1,'All','Y'),('KR-IDM','Batch','69A9BABE4A0CBD56E0404F8189D82B0F',1,'Batch','Y'),('KR-IDM','Document','69A9BABE4A0DBD56E0404F8189D82B0F',1,'Document','Y'),('KR-IDM','Lookup','69A9BABE4A0EBD56E0404F8189D82B0F',1,'Lookup','Y'),('KR-IDM','PurgePendingAttachmentsStep','69A9BABE4A0FBD56E0404F8189D82B0F',1,'Purge Pending Attachments Step','Y'),('KR-IDM','PurgeSessionDocumentsStep','69A9BABE4A10BD56E0404F8189D82B0F',1,'Purge Session Documents Step','Y'),('KR-IDM','ScheduleStep','69A9BABE4A11BD56E0404F8189D82B0F',1,'Schedule Step','Y'),('KR-KRAD','Lookup','E40693F368DCC301E0406E0AC31D7203',1,'Lookup','Y'),('KR-NS','All','53680C68F596AD9BE0404F8189D80A6C',1,'All','Y'),('KR-NS','Batch','53680C68F597AD9BE0404F8189D80A6C',1,'Batch','Y'),('KR-NS','Document','53680C68F598AD9BE0404F8189D80A6C',1,'Document','Y'),('KR-NS','Lookup','53680C68F599AD9BE0404F8189D80A6C',1,'Lookup','Y'),('KR-NS','PurgePendingAttachmentsStep','5A689075D3577AEBE0404F8189D80321',1,'Purge Pending Attachments Step','Y'),('KR-NS','PurgeSessionDocumentsStep','5A689075D3567AEBE0404F8189D80321',1,'Purge Session Documents Step','Y'),('KR-NS','ScheduleStep','5A689075D3587AEBE0404F8189D80321',1,'Schedule Step','Y'),('KR-WKFLW','ActionList','1821D8BAB21E498F9FB1ECCA25C37F9B',1,'Action List','Y'),('KR-WKFLW','All','705611FB54134417E0404F8189D8453B',1,'All','Y'),('KR-WKFLW','Backdoor','F7E44233C2C440FFB1A399548951160A',1,'Backdoor','Y'),('KR-WKFLW','DocumentSearch','B0255911E83C4FF3E0404F8189D86E3E',1,'Document Search','Y'),('KR-WKFLW','EDocLite','51DD5B9FACDD4EDAA9CA8D53A82FCCCA',1,'eDocLite','Y'),('KR-WKFLW','Feature','BBD9976498A4441F904013004F3D70B3',1,'Feature','Y'),('KR-WKFLW','GlobalReviewer','C21B0C6229144F6FBC52A10A38E51E3B',1,'Global Reviewer','Y'),('KR-WKFLW','Mailer','5DB9D1433E214325BE380C82762A223B',1,'Mailer','Y'),('KR-WKFLW','Note','868D39EC269B4402B3136C74C2342F22',1,'Note','Y'),('KR-WKFLW','Notification','D04AFB1812E34723ABEB64986AC61DC9',1,'Notification','Y'),('KR-WKFLW','QuickLinks','3E26DA76458A46D68CBAF209DA036157',1,'Quick Link','Y'),('KR-WKFLW','Route','583C2D3562D44DBAA5FEA998EB601DC9',1,'Routing','Y'),('KR-WKFLW','RouteQueue','D4F6DDEF69B24265AA2A170A62A1CADB',1,'Route Queue','Y'),('KR-WKFLW','Rule','B0360A1EA62D3636E0404F8189D8579F',1,'Rule','Y');
/*!40000 ALTER TABLE `KRCR_CMPNT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_SPEC_T`
--

DROP TABLE IF EXISTS `KRMS_TERM_SPEC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_SPEC_T` (
  `TERM_SPEC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`TERM_SPEC_ID`),
  UNIQUE KEY `KRMS_TERM_SPEC_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_SPEC_T`
--

LOCK TABLES `KRMS_TERM_SPEC_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_SPEC_T` DISABLE KEYS */;
INSERT INTO `KRMS_TERM_SPEC_T` VALUES ('T1000','campusSize','java.lang.Integer','Y',1,'Size in # of students of the campus','KR-RULE-TEST'),('T1001','orgMember','java.lang.Boolean','Y',1,'is the principal in the organization','KR-RULE-TEST'),('T1002','Campus Code','java.lang.String','Y',1,'null','KR-RULE-TEST'),('T1003','bogusFundTermSpec','java.lang.String','Y',1,'null','KR-RULE-TEST'),('T1004','PO Value','java.lang.Integer','Y',1,'Purchase Order Value','KR-RULE-TEST'),('T1005','PO Item Type','java.lang.String','Y',1,'Purchased Item Type','KR-RULE-TEST'),('T1006','Account','java.lang.String','Y',1,'Charged To Account','KR-RULE-TEST'),('T1007','Occasion','java.lang.String','Y',1,'Special Event','KR-RULE-TEST'),('T1008','campusCode','java.lang.String','Y',1,'null','KR-RULE-TEST');
/*!40000 ALTER TABLE `KRMS_TERM_SPEC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TERM_SPEC_S`
--

DROP TABLE IF EXISTS `KRMS_TERM_SPEC_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TERM_SPEC_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TERM_SPEC_S`
--

LOCK TABLES `KRMS_TERM_SPEC_S` WRITE;
/*!40000 ALTER TABLE `KRMS_TERM_SPEC_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_TERM_SPEC_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RSP_S`
--

DROP TABLE IF EXISTS `KREW_RSP_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RSP_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2065 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RSP_S`
--

LOCK TABLES `KREW_RSP_S` WRITE;
/*!40000 ALTER TABLE `KREW_RSP_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RSP_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_APP_DOC_STAT_TRAN_T`
--

DROP TABLE IF EXISTS `KREW_APP_DOC_STAT_TRAN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_APP_DOC_STAT_TRAN_T` (
  `APP_DOC_STAT_TRAN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_STAT_FROM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `APP_DOC_STAT_TO` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `STAT_TRANS_DATE` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`APP_DOC_STAT_TRAN_ID`),
  UNIQUE KEY `KREW_APP_DOC_STAT_TRAN_TC0` (`OBJ_ID`),
  KEY `KREW_APP_DOC_STAT_TI1` (`DOC_HDR_ID`,`STAT_TRANS_DATE`),
  KEY `KREW_APP_DOC_STAT_TI2` (`DOC_HDR_ID`,`APP_DOC_STAT_FROM`),
  KEY `KREW_APP_DOC_STAT_TI3` (`DOC_HDR_ID`,`APP_DOC_STAT_TO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_APP_DOC_STAT_TRAN_T`
--

LOCK TABLES `KREW_APP_DOC_STAT_TRAN_T` WRITE;
/*!40000 ALTER TABLE `KREW_APP_DOC_STAT_TRAN_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_APP_DOC_STAT_TRAN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CMPND_PROP_PROPS_T`
--

DROP TABLE IF EXISTS `KRMS_CMPND_PROP_PROPS_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CMPND_PROP_PROPS_T` (
  `CMPND_PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PROP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`CMPND_PROP_ID`,`PROP_ID`),
  KEY `KRMS_CMPND_PROP_PROPS_FK2` (`CMPND_PROP_ID`),
  KEY `KRMS_CMPND_PROP_PROPS_TI1` (`PROP_ID`),
  CONSTRAINT `KRMS_CMPND_PROP_PROPS_FK2` FOREIGN KEY (`CMPND_PROP_ID`) REFERENCES `KRMS_PROP_T` (`PROP_ID`),
  CONSTRAINT `KRMS_CMPND_PROP_PROPS_FK1` FOREIGN KEY (`PROP_ID`) REFERENCES `KRMS_PROP_T` (`PROP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CMPND_PROP_PROPS_T`
--

LOCK TABLES `KRMS_CMPND_PROP_PROPS_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CMPND_PROP_PROPS_T` DISABLE KEYS */;
INSERT INTO `KRMS_CMPND_PROP_PROPS_T` VALUES ('T1007','T1008'),('T1007','T1009'),('T1007','T1010'),('T1011','T1012'),('T1011','T1013'),('T1011','T1014'),('T1013','T1015'),('T1013','T1016'),('T1013','T1017'),('T1014','T1018'),('T1014','T1019');
/*!40000 ALTER TABLE `KRMS_CMPND_PROP_PROPS_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_ATTR_DEFN_S`
--

DROP TABLE IF EXISTS `KRMS_ATTR_DEFN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_ATTR_DEFN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_ATTR_DEFN_S`
--

LOCK TABLES `KRMS_ATTR_DEFN_S` WRITE;
/*!40000 ALTER TABLE `KRMS_ATTR_DEFN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_ATTR_DEFN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_GRP_MBR_T`
--

DROP TABLE IF EXISTS `KRIM_GRP_MBR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_GRP_MBR_T` (
  `GRP_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` char(1) COLLATE utf8_bin NOT NULL DEFAULT 'P',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`GRP_MBR_ID`),
  UNIQUE KEY `KRIM_GRP_MBR_TC0` (`OBJ_ID`),
  KEY `KRIM_GRP_MBR_TI1` (`MBR_ID`),
  KEY `KRIM_GRP_MBR_TR1` (`GRP_ID`),
  CONSTRAINT `KRIM_GRP_MBR_TR1` FOREIGN KEY (`GRP_ID`) REFERENCES `KRIM_GRP_T` (`GRP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_GRP_MBR_T`
--

LOCK TABLES `KRIM_GRP_MBR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_GRP_MBR_T` DISABLE KEYS */;
INSERT INTO `KRIM_GRP_MBR_T` VALUES ('1100',1,'5B97C50B04B56110E0404F8189D85213','2001','testuser1','P',NULL,NULL,'2008-12-08 12:49:57'),('1101',1,'5B97C50B04B66110E0404F8189D85213','2001','testuser2','P',NULL,NULL,'2008-12-08 12:49:57'),('1102',1,'5B97C50B04B76110E0404F8189D85213','2002','testuser2','P',NULL,NULL,'2008-12-08 12:49:57'),('1103',1,'5B97C50B04B86110E0404F8189D85213','2002','testuser3','P',NULL,NULL,'2008-12-08 12:49:57'),('1104',1,'5B97C50B04B96110E0404F8189D85213','2003','testuser1','P',NULL,NULL,'2008-12-08 12:49:57'),('1105',1,'5B97C50B04BA6110E0404F8189D85213','2003','testuser2','P',NULL,NULL,'2008-12-08 12:49:57'),('1106',1,'5B97C50B04BB6110E0404F8189D85213','2003','testuser6','P',NULL,NULL,'2008-12-08 12:49:57'),('1107',1,'5B97C50B04BC6110E0404F8189D85213','2003','testuser4','P',NULL,NULL,'2008-12-08 12:49:57'),('1108',1,'5B97C50B04BD6110E0404F8189D85213','2003','testuser5','P',NULL,NULL,'2008-12-08 12:49:57'),('1109',1,'5B97C50B04BE6110E0404F8189D85213','2003','quickstart','P',NULL,NULL,'2008-12-08 12:49:57'),('1110',1,'5B97C50B04BF6110E0404F8189D85213','2004','quickstart','P',NULL,NULL,'2008-12-08 12:49:57'),('1111',1,'5B97C50B04C06110E0404F8189D85213','2004','user1','P',NULL,NULL,'2008-12-08 12:49:57'),('1112',1,'5B97C50B04C16110E0404F8189D85213','2004','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1113',1,'5B97C50B04C26110E0404F8189D85213','2005','user3','P',NULL,NULL,'2008-12-08 12:49:57'),('1114',1,'5B97C50B04C36110E0404F8189D85213','2006','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1115',1,'5B97C50B04C46110E0404F8189D85213','2007','idm1','P',NULL,NULL,'2008-12-08 12:49:57'),('1116',1,'5B97C50B04C56110E0404F8189D85213','2007','idm2','P',NULL,NULL,'2008-12-08 12:49:57'),('1117',1,'5B97C50B04C66110E0404F8189D85213','2007','idm3','P',NULL,NULL,'2008-12-08 12:49:57'),('1118',1,'5B97C50B04C76110E0404F8189D85213','2008','admin1','P',NULL,NULL,'2008-12-08 12:49:57'),('1119',1,'5B97C50B04C86110E0404F8189D85213','2008','admin2','P',NULL,NULL,'2008-12-08 12:49:57'),('1120',1,'5B97C50B04C96110E0404F8189D85213','2009','dev1','P',NULL,NULL,'2008-12-08 12:49:57'),('1121',1,'5B97C50B04CA6110E0404F8189D85213','2009','dev2','P',NULL,NULL,'2008-12-08 12:49:57'),('1122',1,'5B97C50B04CB6110E0404F8189D85213','2000','notsysadm','P',NULL,NULL,'2008-12-08 12:49:57'),('1123',1,'5B97C50B04CC6110E0404F8189D85213','1','admin','P',NULL,NULL,'2008-12-08 12:49:57'),('1124',1,'5B97C50B04CD6110E0404F8189D85213','1','notsys','P',NULL,NULL,'2008-12-08 12:49:57'),('1130',1,'5B97C50B04D36110E0404F8189D85213','2200','user1','P',NULL,NULL,'2008-12-08 12:49:57'),('1131',1,'5B97C50B04D46110E0404F8189D85213','2200','user3','P',NULL,NULL,'2008-12-08 12:49:57'),('1132',1,'5B97C50B04D56110E0404F8189D85213','2201','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1133',1,'5B97C50B04D66110E0404F8189D85213','2201','user4','P',NULL,NULL,'2008-12-08 12:49:57'),('1134',1,'5B97C50B04D76110E0404F8189D85213','2202','user1','P',NULL,NULL,'2008-12-08 12:49:57'),('1135',1,'5B97C50B04D86110E0404F8189D85213','2202','user2','P',NULL,NULL,'2008-12-08 12:49:57'),('1136',1,'5B97C50B04D96110E0404F8189D85213','2203','user3','P',NULL,NULL,'2008-12-08 12:49:57'),('1137',1,'5B97C50B04DA6110E0404F8189D85213','2203','user4','P',NULL,NULL,'2008-12-08 12:49:57'),('1200',1,'B64D2DB6-0985-764A-5E91-54BB144910B6','9997','fred','P',NULL,NULL,'2009-05-15 12:21:55'),('1201',1,'EC0A39A7-5DC2-90FE-F404-C8978F55C4E4','9997','fran','P',NULL,NULL,'2009-05-15 12:21:55'),('1202',1,'4AC6FA43-9979-0FBB-EA90-23BAC017EC78','9997','frank','P',NULL,NULL,'2009-05-15 12:21:55'),('1203',1,'A03D25AA-447F-0C4F-3A59-34E4B5C8B373','9998','user4','P',NULL,NULL,'2009-05-15 12:21:56'),('1204',1,'14374618-61BF-2F53-F50E-06C86B53CF62','9998','director','P',NULL,NULL,'2009-05-15 12:21:56'),('1205',1,'66236DC2-1780-E315-3217-CB963BA68533','9999','user2','P',NULL,NULL,'2009-05-15 12:21:56'),('1206',1,'1E2DC1FE-38AD-6EB3-39F4-9A525780F33E','9999','user3','P',NULL,NULL,'2009-05-15 12:21:56'),('1207',1,'6798B3E6C3C49827AE62E5F7A275A1A3','2000','admin','P',NULL,NULL,'2009-08-11 08:59:07');
/*!40000 ALTER TABLE `KRIM_GRP_MBR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_NTFCTN_S`
--

DROP TABLE IF EXISTS `KREN_NTFCTN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_NTFCTN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_NTFCTN_S`
--

LOCK TABLES `KREN_NTFCTN_S` WRITE;
/*!40000 ALTER TABLE `KREN_NTFCTN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_NTFCTN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_T` (
  `ENTITY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENTITY_ID`),
  UNIQUE KEY `KRIM_ENTITY_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_T`
--

LOCK TABLES `KRIM_ENTITY_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENTITY_T` VALUES ('1','5B1B6B919CC96496E0404F8189D822F2',1,'Y','2008-11-07 09:49:02'),('1100','5B97C50B03946110E0404F8189D85213',1,'Y','2008-11-13 14:06:35'),('1101','5B97C50B03956110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1102','5B97C50B03966110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1103','5B97C50B03976110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1104','5B97C50B03986110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1105','5B97C50B03996110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1106','5B97C50B039A6110E0404F8189D85213',1,'Y','2008-11-13 14:06:36'),('1107','5B97C50B039B6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1108','5B97C50B039C6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1109','5B97C50B039D6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1110','5B97C50B039E6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1111','5B97C50B039F6110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1112','5B97C50B03A06110E0404F8189D85213',1,'Y','2008-11-13 14:06:37'),('1113','5B97C50B03A16110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1114','5B97C50B03A26110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1115','5B97C50B03A36110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1116','5B97C50B03A46110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1117','5B97C50B03A56110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1118','5B97C50B03A66110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1119','5B97C50B03A76110E0404F8189D85213',1,'Y','2008-11-13 14:06:38'),('1120','5B97C50B03A86110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1121','5B97C50B03A96110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1122','5B97C50B03AA6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1123','5B97C50B03AB6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1124','5B97C50B03AC6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1125','5B97C50B03AD6110E0404F8189D85213',1,'Y','2008-11-13 14:06:39'),('1126','5B97C50B03AE6110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1127','5B97C50B03AF6110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1128','5B97C50B03B06110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1129','5B97C50B03B16110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1130','5B97C50B03B26110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1131','5B97C50B03B36110E0404F8189D85213',1,'Y','2008-11-13 14:06:40'),('1132','5B97C50B03B46110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1133','5B97C50B03B56110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1134','5B97C50B03B66110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1135','5B97C50B03B76110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1136','5B97C50B03B86110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('1137','5B97C50B03B96110E0404F8189D85213',1,'Y','2008-11-13 14:06:41'),('KR1000','CFBAA6F5F0D05D07E0406E0AC31D229B',1,'Y','2012-11-30 17:23:03');
/*!40000 ALTER TABLE `KRIM_ENTITY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_ATTR_DEFN_T`
--

DROP TABLE IF EXISTS `KRMS_ATTR_DEFN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_ATTR_DEFN_T` (
  `ATTR_DEFN_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `LBL` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `CMPNT_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  PRIMARY KEY (`ATTR_DEFN_ID`),
  UNIQUE KEY `KRMS_ATTR_DEFN_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_ATTR_DEFN_T`
--

LOCK TABLES `KRMS_ATTR_DEFN_T` WRITE;
/*!40000 ALTER TABLE `KRMS_ATTR_DEFN_T` DISABLE KEYS */;
INSERT INTO `KRMS_ATTR_DEFN_T` VALUES ('1000','peopleFlowId','KR-RULE','PeopleFlow','Y',NULL,0,'An identifier for a PeopleFlow'),('1001','ruleTypeCode','KR-RULE','Invalid Rule','Y',NULL,1,'If true, execute the action'),('1004','actionTypeCode','KR-RULE','Error Action','Y',NULL,1,'Error'),('1005','actionMessage','KR-RULE','Action Message','Y',NULL,1,'Message validation action returns'),('1006','peopleFlowName','KR-RULE','PeopleFlow Name','Y',NULL,1,'PeopleFlow Name'),('T1000','Context1Qualifier','KR-RULE-TEST','Context 1 Qualifier','Y',NULL,1,'null'),('T1001','Event','KR-RULE-TEST','Event Name','Y',NULL,1,'null'),('T1002','Optional Test Attribute','KR-RULE-TEST','label','Y',NULL,0,'this is an optional attribute for testing'),('T1003','Campus','KR-RULE-TEST','campus label','Y',NULL,0,'the campus which this agenda is valid for');
/*!40000 ALTER TABLE `KRMS_ATTR_DEFN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_PERM_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_PERM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_PERM_T` (
  `ROLE_PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PERM_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`ROLE_PERM_ID`),
  UNIQUE KEY `KRIM_ROLE_PERM_TC0` (`OBJ_ID`),
  KEY `KRIM_ROLE_PERM_TI1` (`PERM_ID`),
  KEY `KRIM_ROLE_PERM_TI2` (`PERM_ID`,`ACTV_IND`),
  CONSTRAINT `KRIM_ROLE_PERM_TR1` FOREIGN KEY (`PERM_ID`) REFERENCES `KRIM_PERM_T` (`PERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_PERM_T`
--

LOCK TABLES `KRIM_ROLE_PERM_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_PERM_T` DISABLE KEYS */;
INSERT INTO `KRIM_ROLE_PERM_T` VALUES ('183','5C27A267EF5C7417E0404F8189D830A9',1,'63','140','Y'),('184','5C27A267EF5D7417E0404F8189D830A9',1,'63','141','Y'),('185','5C27A267EF5E7417E0404F8189D830A9',1,'63','142','Y'),('186','5C27A267EF5F7417E0404F8189D830A9',1,'63','143','Y'),('187','5C27A267EF607417E0404F8189D830A9',1,'63','144','Y'),('188','5C27A267EF617417E0404F8189D830A9',1,'63','145','Y'),('189','5C27A267EF627417E0404F8189D830A9',1,'1','146','Y'),('190','5C27A267EF637417E0404F8189D830A9',1,'63','147','Y'),('191','5C27A267EF647417E0404F8189D830A9',1,'63','148','Y'),('193','5C27A267EF667417E0404F8189D830A9',1,'1','149','Y'),('194','5C27A267EF677417E0404F8189D830A9',1,'63','150','Y'),('195','5C27A267EF687417E0404F8189D830A9',1,'63','151','Y'),('196','5C27A267EF697417E0404F8189D830A9',1,'63','152','Y'),('200','5C27A267EF6D7417E0404F8189D830A9',1,'63','155','Y'),('201','5C27A267EF6E7417E0404F8189D830A9',1,'1','156','Y'),('206','5C27A267EF737417E0404F8189D830A9',1,'1','161','Y'),('207','5C27A267EF747417E0404F8189D830A9',1,'1','162','Y'),('208','5C27A267EF757417E0404F8189D830A9',1,'63','163','Y'),('210','5C27A267EF777417E0404F8189D830A9',1,'63','164','Y'),('211','5C27A267EF787417E0404F8189D830A9',1,'1','165','Y'),('212','5C27A267EF797417E0404F8189D830A9',1,'66','167','Y'),('213','5C27A267EF7A7417E0404F8189D830A9',1,'66','168','Y'),('214','5C27A267EF7B7417E0404F8189D830A9',1,'60','290','Y'),('216','5C27A267EF7D7417E0404F8189D830A9',1,'59','170','Y'),('218','5C27A267EF7F7417E0404F8189D830A9',1,'89','172','Y'),('219','5C27A267EF807417E0404F8189D830A9',1,'88','173','Y'),('220','5C27A267EF817417E0404F8189D830A9',1,'1','174','Y'),('227','5C27A267EF887417E0404F8189D830A9',1,'59','181','Y'),('229','5C27A267EF8A7417E0404F8189D830A9',1,'63','183','Y'),('230','5C27A267EF5C7417E0404F8189D830AA',1,'63','378','Y'),('250','70086A2DF17D62E4E0404F8189D863CD',1,'95','156','Y'),('251','70086A2DF17E62E4E0404F8189D863CD',1,'97','181','Y'),('512','606763510FC596D3E0404F8189D857A2',1,'61','259','Y'),('516','606763510FC896D3E0404F8189D857A2',1,'83','261','Y'),('519','606763510FD096D3E0404F8189D857A2',1,'63','264','Y'),('550','611BE30E404F5818E0404F8189D801C2',1,'63','289','Y'),('552','61815E6C62D3B647E0404F8189D873B3',1,'90','290','Y'),('564','641E580969E41B49E0404F8189D86190',1,'63','298','Y'),('566','641E580969E61B49E0404F8189D86190',1,'63','299','Y'),('578','6314CC58CF5BB7B5E0404F8189D84439',1,'63','306','Y'),('616','662384B381C067A1E0404F8189D868A6',1,'83','333','Y'),('617','662384B381C467A1E0404F8189D868A6',1,'66','334','Y'),('618','662384B381BC67A1E0404F8189D868A6',1,'83','332','Y'),('683','6A869257B306EB49E0404F8189D8697A',1,'59','334','Y'),('701','C7C5063258494135A27DFDA4868F1D8B',1,'63','701','Y'),('702','6F5D842F42DC4018B6D9E8909A841062',1,'63','702','Y'),('703','70D86205B39A411F8A179555254E3737',1,'63','703','Y'),('707','B27306E137C94947BA8AFFD2892722D8',1,'63','707','Y'),('719','4B02BCD0AA764732997C77D139300784',1,'63','719','Y'),('720','7B920FA6145B47F6BF1B67B8EF3E96F4',1,'63','720','Y'),('721','A2794759AE9E47CB970DEABA625EA64C',1,'63','721','Y'),('730','05993B68C8034FD2A758E3441C6AD961',1,'1','161','Y'),('731','25F3589FEFFE4FFCBB4C0577AD722538',1,'1','162','Y'),('732','5AFD381C59B34E9D9BA26B70A739C9A2',1,'1','163','Y'),('808','606763510FDD96D3E0404F8189D857A2',1,'63','801','Y'),('809','606763510FDE96D3E0404F8189D857A2',1,'63','802','Y'),('810','606763510FDF96D3E0404F8189D857A2',1,'63','803','Y'),('811','606763510FE096D3E0404F8189D857A2',1,'63','807','Y'),('814','606763510FED96D3E0404F8189D857A2',1,'63','814','Y'),('819','606763510FEE96D3E0404F8189D857A2',1,'63','819','Y'),('820','606763510FEF96D3E0404F8189D857A2',1,'63','820','Y'),('821','606763510FF096D3E0404F8189D857A2',1,'63','821','Y'),('826','606763510FF196D3E0404F8189D857A2',1,'1','166','Y'),('827','606763510FF596D3E0404F8189D857A2',1,'63','265','Y'),('828','606763510FF696D3E0404F8189D857A2',1,'63','140','Y'),('829','606763510FF796D3E0404F8189D857A2',1,'63','141','Y'),('830','606763510FF896D3E0404F8189D857A2',1,'63','142','Y'),('831','606763510FF996D3E0404F8189D857A2',1,'63','143','Y'),('832','606763510FFA96D3E0404F8189D857A2',1,'63','144','Y'),('833','606763510FFB96D3E0404F8189D857A2',1,'63','145','Y'),('838','5C27A267EF6D7417E0404F8189D830AA',1,'63','833','Y'),('839','5C27A267EF6D7417E0404F8189D830AB',1,'63','834','Y'),('840','5C27A267EF6D7417E0404F8189D830AC',1,'63','835','Y'),('841','5C27A267EF6D7417E0404F8189D830AD',1,'63','835','Y'),('850','70086A2DF17C62E4E0404F8189D863CD',1,'63','307','Y'),('855','E83AB210-EB48-3BDE-2D6F-F6177869AE27',1,'63','840','Y'),('857','B6FDEDA86F987F26E0402E0AA9D728AF',1,'63','842','Y'),('858','B7DBFABEFD2F8CBFE0402E0AA9D757C9',1,'98','843','Y'),('859','45f8f55e-23d9-4278-ade8-ddfc870852e6',1,'98','844','Y'),('860','cd7cbc67-c0b2-4785-afa8-8c8d073b78df',1,'98','845','Y'),('861','83a270a0-1cdb-4440-ab8b-41cd8afc41d9',1,'98','846','Y'),('862','BD74D7B702AD02CEE0402E0AA9D75B2D',1,'60','847','Y'),('863','BFCADCB3401A249AE0402E0AA9D7065D',1,'83','848','Y'),('865','BFCADCB3401C249AE0402E0AA9D7065D',1,'61','167','Y'),('KR1000','D0C2892F47EE9142E0406E0AC31D23D6',1,'KR1001','KR1000','Y'),('KR1001','D0C2892F47EF9142E0406E0AC31D23D6',1,'KR1001','181','Y'),('KR1002','E3EF4C83B4BE5C9EE0406E0AC31D4562',1,'60','KR1001','Y'),('KR1003','E3EF4C83B4C25C9EE0406E0AC31D4562',1,'60','KR1002','Y'),('KRSAP1003','CDD8032915D9BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10003','Y'),('KRSAP1004','CDD8032915DDBF1FE040F90A05B94313',1,'KRSAP10004','KRSAP10004','Y'),('KRSAP1005','CDD8032915E1BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10005','Y'),('KRSAP1006','CDD8032915E5BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10006','Y'),('KRSAP1007','CDD8032915E9BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10007','Y'),('KRSAP1008','CDD8032915EDBF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10008','Y'),('KRSAP1009','CDD8032915F1BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10009','Y'),('KRSAP1010','CDD8032915F5BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10010','Y'),('KRSAP1011','CDD8032915F9BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10011','Y'),('KRSAP1012','CDD8032915FDBF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10012','Y'),('KRSAP1013','CDD803291601BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10013','Y'),('KRSAP1014','CDD803291606BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10014','Y'),('KRSAP1015','CDD80329160BBF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10015','Y'),('KRSAP1016','CDD803291610BF1FE040F90A05B94313',1,'KRSAP10003','KRSAP10016','Y');
/*!40000 ALTER TABLE `KRIM_ROLE_PERM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_DOC_TYP_ATTR_S`
--

DROP TABLE IF EXISTS `KRNS_DOC_TYP_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_DOC_TYP_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_DOC_TYP_ATTR_S`
--

LOCK TABLES `KRNS_DOC_TYP_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRNS_DOC_TYP_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_DOC_TYP_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_DOC_2`
--

DROP TABLE IF EXISTS `TRV_DOC_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_DOC_2` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `FDOC_EXPLAIN_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `REQUEST_TRAV` varchar(30) COLLATE utf8_bin NOT NULL,
  `TRAVELER` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `ORG` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  `DEST` varchar(60) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_DOC_2`
--

LOCK TABLES `TRV_DOC_2` WRITE;
/*!40000 ALTER TABLE `TRV_DOC_2` DISABLE KEYS */;
INSERT INTO `TRV_DOC_2` VALUES ('2123','7BE537BD-643C-9F20-8A66-2FE1D398BADA',4,NULL,'TRT2','Eric','eb','dre'),('2387','44C40877-A234-D6C5-1D3B-EFC98A11A8BF',2,NULL,'TRT2','nate','here','there'),('2388','B2120A67-431C-1A9B-7B63-65DD544E910B',2,NULL,'TRT2','nate','here','there'),('2389','86594949-89E0-8D63-AF50-B7E13D568B09',2,NULL,'TRT1','nate','here','there'),('2390','9CFEB3AC-A4F5-4585-FCAB-0018F282364C',2,NULL,'TRT1','nate','here','there'),('2391','5299F048-19E5-D56D-14EE-568EE3F85BA3',3,NULL,'TRT1','nate','here','there'),('2393','5D5E1CFD-EE46-73B4-700A-A9DD8E498EC2',2,NULL,'TRT1','nate','here','there'),('2396','1D299A9B-C473-375A-69C4-C1E03CFBFC68',2,NULL,'TRT2','nate','here','there'),('2400','3625336D-1D41-F979-B899-E8D7CF9E68AC',2,NULL,'TRT1','nate','here','there'),('2401','D74C0680-F93C-7D41-62F3-E2C455AFC102',2,NULL,'TRT2','nate','here','there'),('2402','55C56249-11AC-EE98-0256-5B71D5CAE40D',2,NULL,'TRT1','sadf','here','there'),('2403','BADEA3CA-19C7-BC2B-4E88-2A4777F11A55',2,NULL,'TRT1','asdf','dsffr','dsfgdsf'),('2404','38CC4CD9-A1F3-78DD-1E2C-35A81E989739',2,NULL,'TRT2','nate','here','there'),('2405','A412B4FF-7D46-9212-05DA-B774F4370944',4,NULL,'TRT2','sdf','sdfq','h'),('2407','D4556EA2-EDA7-6BF9-1855-3040F14816CB',4,NULL,'TRT2','asdf','klj','dkl'),('2480','CA80CCD3-8C01-3D68-3830-A449AF528952',2,NULL,'TRT2','1','2','3'),('2481','16422C26-6BEB-8AD7-0F51-9FEBADD37D0A',2,NULL,'TRT1','sdf','kj','lkj'),('2482','56EA88B6-A372-1D39-831D-5B962962CA78',4,NULL,'TRT2','dsf','sadf','sdf'),('2483','C3C6C93C-5358-A267-F8AE-91E38BA39F05',4,NULL,'TRT2','dsf','jkh','jkh'),('2484','577CA8E5-1140-37BB-695E-0EB011E77D81',4,NULL,'TRT1','dsf','sadf','sdfs'),('2500','E92080BD-902C-B68D-ECB4-C9D7DAFC4D86',2,NULL,'TRT2','safd','dfgqdfg','dfg'),('2501','1E53D48D-BFBA-FBF9-4B9F-1677CAD28B2E',4,NULL,'TRT2','asdf','sdf','saf'),('2520','78085595-7BFC-A0CF-65E4-D1499166ECD8',2,NULL,'TRT2','dsf','dfgqdfg','df'),('2521','5CD9F7B7-07F7-0645-2F97-006E06B958A7',2,NULL,'TRT2','dsf','sadfsaf','asdf'),('2522','5440866A-A30E-3860-F788-B45A4978C68A',4,NULL,'TRT3','sdf','sadf','sdf'),('2584','397B1AD0-93E3-9827-52ED-A8D24B98C4F2',2,NULL,'TRT1','sadsadasdsa','dsfdsfdsfds','sdfdsfdsfsd'),('2600','502B559E-2A0E-0C58-3DBE-DF866D8CC503',2,NULL,'TRT1','sadsads','asadasd','sadsadas'),('2601','3CDBACBF-4DEC-AE23-DC47-FCF79F2F42ED',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2621','956AC95F-7366-4241-215F-A910C2E5E4C6',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2622','132C00E3-B5FB-0527-BBF3-7129EF1158E1',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2623','CAB011C5-4090-A694-D2C5-49573918385B',1,NULL,'TRT1','asdsadsa','asdsadsa','asdsadas'),('2640','39FC71CC-FB05-D612-D5B6-B3AAC6B26CF2',4,NULL,'TRT1','asdf','df','ettt'),('2692','BFBAF94B-E145-6303-045D-ABE304FFC7C8',2,NULL,'TRT2','asdf','asdf','sdaf'),('2693','70ADFFDB-0851-9BCF-013E-284A47A43A1A',2,NULL,'TRT2','sdf','asdf','daf'),('2694','7768CE1B-AF56-0711-E6CD-8744DA71A4D5',2,NULL,'TRT2','asdf','asd','asdasd'),('2695','BE8EC6F0-FA55-5532-883A-4553E3F289BB',7,NULL,'TRT2','ad','asd','asdf'),('2701','153C9F24-DDDC-ECFF-A3AE-D0A628939C23',2,NULL,'TRT2','asdf','asdf','asdf');
/*!40000 ALTER TABLE `TRV_DOC_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ATTR_DEFN_T`
--

DROP TABLE IF EXISTS `KRIM_ATTR_DEFN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ATTR_DEFN_T` (
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LBL` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `CMPNT_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`KIM_ATTR_DEFN_ID`),
  UNIQUE KEY `KRIM_ATTR_DEFN_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ATTR_DEFN_T`
--

LOCK TABLES `KRIM_ATTR_DEFN_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ATTR_DEFN_T` DISABLE KEYS */;
INSERT INTO `KRIM_ATTR_DEFN_T` VALUES ('1','5ADF18B6D4887954E0404F8189D85002',1,'beanName',NULL,'Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('10','5ADF18B6D4917954E0404F8189D85002',1,'editMode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('11','5ADF18B6D4927954E0404F8189D85002',1,'parameterName',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('12','5ADF18B6D4937954E0404F8189D85002',1,'campusCode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('13','5ADF18B6D4947954E0404F8189D85002',1,'documentTypeName',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('14','5ADF18B6D4957954E0404F8189D85002',1,'actionRequestCd',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('15','5ADF18B6D4967954E0404F8189D85002',1,'routeStatusCode',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('16','5ADF18B6D4977954E0404F8189D85002',1,'routeNodeName',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('18','5ADF18B6D4997954E0404F8189D85002',1,'roleName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('19','5ADF18B6D49A7954E0404F8189D85002',1,'permissionName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('2','5ADF18B6D4897954E0404F8189D85002',1,'actionClass',NULL,'Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('20','5ADF18B6D49B7954E0404F8189D85002',1,'responsibilityName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('21','5ADF18B6D49C7954E0404F8189D85002',1,'groupName',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('3','5ADF18B6D48A7954E0404F8189D85002',1,'buttonName',NULL,'Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('4','5ADF18B6D48B7954E0404F8189D85002',1,'namespaceCode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('40','5C4970B2B2DF8277E0404F8189D80B30',1,'required',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('41','5C4970B2B2E08277E0404F8189D80B30',1,'actionDetailsAtRoleMemberLevel',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('42','5C7D997640635002E0404F8189D86F11',1,'documentNumber',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('44','603B735FA6BCFE21E0404F8189D8083B',1,'sectionId',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('46','69FA55ACC2EE2598E0404F8189D86880',1,'qualifierResolverProvidedIdentifier',NULL,'Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes'),('47','B7DBFABEFD308CBFE0402E0AA9D757C9',1,'viewId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('48','B7DBFABEFD318CBFE0402E0AA9D757C9',1,'actionEvent',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('49','B7DBFABEFD328CBFE0402E0AA9D757C9',1,'collectionPropertyName',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('5','5ADF18B6D48C7954E0404F8189D85002',1,'componentName',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('50','B7DBFABEFD338CBFE0402E0AA9D757C9',1,'fieldId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('51','B7DBFABEFD348CBFE0402E0AA9D757C9',1,'groupId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('52','B7DBFABEFD358CBFE0402E0AA9D757C9',1,'widgetId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('53','B7DBFABEFD368CBFE0402E0AA9D757C9',1,'actionId',NULL,'Y','KR-KRAD','org.kuali.rice.kim.bo.impl.KimAttributes'),('54','BC5444677C22328CE0402E0AA9D77D80',1,'appDocStatus',NULL,'Y','KR-WKFLW','org.kuali.rice.kim.bo.impl.KimAttributes'),('6','5ADF18B6D48D7954E0404F8189D85002',1,'propertyName',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('7','603B735FA6BAFE21E0404F8189D8083B',1,'existingRecordsOnly',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('8','5ADF18B6D48F7954E0404F8189D85002',1,'createdBySelfOnly',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('9','5ADF18B6D4907954E0404F8189D85002',1,'attachmentTypeCode',NULL,'Y','KR-NS','org.kuali.rice.kim.bo.impl.KimAttributes'),('KR1000','CEA27F2DB2DA3593E040F90A05B924DB',1,'appCode','Application Code','Y','KR-SYS','org.kuali.rice.kim.bo.impl.KimAttributes'),('KR1001','CEA27F2DB2DD3593E040F90A05B924DB',1,'kimTypeName','Kim Type Name','Y','KR-IDM','org.kuali.rice.kim.bo.impl.KimAttributes');
/*!40000 ALTER TABLE `KRIM_ATTR_DEFN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_DLGN_MBR_T`
--

DROP TABLE IF EXISTS `KRIM_DLGN_MBR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_DLGN_MBR_T` (
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `DLGN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `MBR_TYP_CD` char(1) COLLATE utf8_bin DEFAULT 'P',
  `ACTV_FRM_DT` datetime DEFAULT NULL,
  `ACTV_TO_DT` datetime DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `ROLE_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DLGN_MBR_ID`),
  UNIQUE KEY `KRIM_DLGN_MBR_TC0` (`OBJ_ID`),
  KEY `KRIM_DLGN_MBR_TR2` (`DLGN_ID`),
  CONSTRAINT `KRIM_DLGN_MBR_TR2` FOREIGN KEY (`DLGN_ID`) REFERENCES `KRIM_DLGN_T` (`DLGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_DLGN_MBR_T`
--

LOCK TABLES `KRIM_DLGN_MBR_T` WRITE;
/*!40000 ALTER TABLE `KRIM_DLGN_MBR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_DLGN_MBR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RULE_TMPL_OPTN_S`
--

DROP TABLE IF EXISTS `KREW_RULE_TMPL_OPTN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RULE_TMPL_OPTN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RULE_TMPL_OPTN_S`
--

LOCK TABLES `KREW_RULE_TMPL_OPTN_S` WRITE;
/*!40000 ALTER TABLE `KREW_RULE_TMPL_OPTN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RULE_TMPL_OPTN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ATTR_DATA_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ATTR_DATA_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ATTR_DATA_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ATTR_DATA_ID_S`
--

LOCK TABLES `KRIM_ATTR_DATA_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ATTR_DATA_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ATTR_DATA_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_USAGE_T`
--

DROP TABLE IF EXISTS `KRMS_NL_USAGE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_USAGE_T` (
  `NL_USAGE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_USAGE_ID`),
  UNIQUE KEY `KRMS_NL_USAGE_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_USAGE_T`
--

LOCK TABLES `KRMS_NL_USAGE_T` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CMPND_PROP_PROPS_S`
--

DROP TABLE IF EXISTS `KRMS_CMPND_PROP_PROPS_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CMPND_PROP_PROPS_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CMPND_PROP_PROPS_S`
--

LOCK TABLES `KRMS_CMPND_PROP_PROPS_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CMPND_PROP_PROPS_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CMPND_PROP_PROPS_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_LNK_S`
--

DROP TABLE IF EXISTS `KREW_DOC_LNK_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_LNK_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_LNK_S`
--

LOCK TABLES `KREW_DOC_LNK_S` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_LNK_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_LNK_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_EMP_INFO_T`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_EMP_INFO_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_EMP_INFO_T` (
  `ENTITY_EMP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ENTITY_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENTITY_AFLTN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_STAT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `BASE_SLRY_AMT` decimal(15,2) DEFAULT NULL,
  `PRMRY_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `PRMRY_DEPT_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EMP_REC_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ENTITY_EMP_ID`),
  UNIQUE KEY `KRIM_ENTITY_EMP_INFO_TC0` (`OBJ_ID`),
  KEY `KRIM_ENTITY_EMP_INFO_TI1` (`ENTITY_ID`),
  KEY `KRIM_ENTITY_EMP_INFO_TI2` (`ENTITY_AFLTN_ID`),
  KEY `KRIM_ENTITY_EMP_INFO_TR2` (`EMP_STAT_CD`),
  KEY `KRIM_ENTITY_EMP_INFO_TR3` (`EMP_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR3` FOREIGN KEY (`EMP_TYP_CD`) REFERENCES `KRIM_EMP_TYP_T` (`EMP_TYP_CD`),
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR1` FOREIGN KEY (`ENTITY_ID`) REFERENCES `KRIM_ENTITY_T` (`ENTITY_ID`) ON DELETE CASCADE,
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR2` FOREIGN KEY (`EMP_STAT_CD`) REFERENCES `KRIM_EMP_STAT_T` (`EMP_STAT_CD`),
  CONSTRAINT `KRIM_ENTITY_EMP_INFO_TR4` FOREIGN KEY (`ENTITY_AFLTN_ID`) REFERENCES `KRIM_ENTITY_AFLTN_T` (`ENTITY_AFLTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_EMP_INFO_T`
--

LOCK TABLES `KRIM_ENTITY_EMP_INFO_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMP_INFO_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_EMP_INFO_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_PARM_T`
--

DROP TABLE IF EXISTS `KRCR_PARM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_PARM_T` (
  `NMSPC_CD` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CMPNT_CD` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PARM_NM` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PARM_TYP_CD` varchar(5) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PARM_DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `EVAL_OPRTR_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'KUALI',
  PRIMARY KEY (`NMSPC_CD`,`CMPNT_CD`,`PARM_NM`,`APPL_ID`),
  UNIQUE KEY `KRNS_PARM_TC0` (`OBJ_ID`),
  KEY `KRNS_PARM_TR2` (`PARM_TYP_CD`),
  CONSTRAINT `KRNS_PARM_TR1` FOREIGN KEY (`NMSPC_CD`) REFERENCES `KRCR_NMSPC_T` (`NMSPC_CD`),
  CONSTRAINT `KRNS_PARM_TR2` FOREIGN KEY (`PARM_TYP_CD`) REFERENCES `KRCR_PARM_TYP_T` (`PARM_TYP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_PARM_T`
--

LOCK TABLES `KRCR_PARM_T` WRITE;
/*!40000 ALTER TABLE `KRCR_PARM_T` DISABLE KEYS */;
INSERT INTO `KRCR_PARM_T` VALUES ('KR-IDM','Document','MAX_MEMBERS_PER_PAGE','2238b58e-8fb9-102c-9461-def224dad9b3',1,'CONFG','20','The maximum number of role or group members to display at once on their documents. If the number is above this value, the document will switch into a paging mode with only this many rows displayed at a time.','A','KUALI'),('KR-IDM','PersonDocumentName','PREFIXES','61645D045B0105D7E0404F8189D849B1',1,'CONFG','Ms;Mrs;Mr;Dr',NULL,'A','KUALI'),('KR-IDM','PersonDocumentName','SUFFIXES','61645D045B0205D7E0404F8189D849B1',1,'CONFG','Jr;Sr;Mr;Md',NULL,'A','KUALI'),('KR-KRAD','Lookup','RESULTS_LIMIT','E3F2146BBD179481E0406E0AC31D69DB',1,'CONFG','200','Maximum number of results returned in a look-up query.','A','KUALI'),('KR-NS','All','CHECK_ENCRYPTION_SERVICE_OVERRIDE_IND','53680C68F59AAD9BE0404F8189D80A6C',1,'CONFG','Y','Flag for enabling/disabling (Y/N) the demonstration encryption check.','A','KUALI'),('KR-NS','All','DATE_TO_STRING_FORMAT_FOR_USER_INTERFACE','664F8ABEC725DBCDE0404F8189D85427',1,'CONFG','MM/dd/yyyy','A single date format string that the DateTimeService will use to format a date to be displayed on a web page. For a more technical description of how characters in the parameter value will be interpreted, please consult the javadocs for java.text.SimpleDateFormat. Any changes will be applied when the application is restarted.','A','KUALI'),('KR-NS','All','DEFAULT_COUNTRY','64B87B4C5E3B8F4CE0404F8189D8291A',1,'CONFG','US','Used as the default country code when relating records that do not have a country code to records that do have a country code, e.g. validating a zip code where the country is not collected.','A','KUALI'),('KR-NS','All','DEFAULT_LOCALE_CODE','CAA025BC0FFDC4F9E040F90A05B912C4',1,'CONFG','en-US','The locale code that should be used within the application when otherwise not specified.','A','KUALI'),('KR-NS','All','ENABLE_DIRECT_INQUIRIES_IND','53680C68F59BAD9BE0404F8189D80A6C',1,'CONFG','Y','Flag for enabling/disabling direct inquiries on screens that are drawn by the nervous system (i.e. lookups and maintenance documents)','A','KUALI'),('KR-NS','All','ENABLE_FIELD_LEVEL_HELP_IND','53680C68F59CAD9BE0404F8189D80A6C',1,'CONFG','N','Indicates whether field level help links are enabled on lookup pages and documents.','A','KUALI'),('KR-NS','All','MAX_FILE_SIZE_DEFAULT_UPLOAD','53680C68F59DAD9BE0404F8189D80A6C',1,'CONFG','5M','Maximum file upload size for the application. Used by PojoFormBase. Must be an integer, optionally followed by \"K\", \"M\", or \"G\". Only used if no other upload limits are in effect.','A','KUALI'),('KR-NS','All','OLTP_LOCKOUT_DEFAULT_MESSAGE','CF90C87BE340C290E0406E0AC31D4F3F',1,'CONFG','The module you are attempting to access has been locked for maintenance.','Default message to display when a module is locked','A','KUALI'),('KR-NS','All','SENSITIVE_DATA_PATTERNS','5a5fbe94-846f-102c-8db0-c405cae621f3',1,'CONFG','[0-9]{9};[0-9]{3}-[0-9]{2}-[0-9]{4}','A semi-colon delimted list of regular expressions that identify \npotentially sensitive data in strings.  These patterns will be matched \nagainst notes, document explanations, and routing annotations.','A','KUALI'),('KR-NS','All','SENSITIVE_DATA_PATTERNS_WARNING_IND','e7d133f3-b5fe-11df-ad0a-d18f5709259f',1,'CONFG','N','If set to \'Y\' when sensitive data is found the user will be prompted to continue the action or cancel. If this is set to \'N\' the user will be presented with an error message and will not be allowed to continue with the action until the sensitive data is removed.','A','KUALI'),('KR-NS','Batch','ACTIVE_FILE_TYPES','5A689075D35E7AEBE0404F8189D80321',1,'CONFG','collectorInputFileType;procurementCardInputFileType;enterpriseFeederFileSetType;assetBarcodeInventoryInputFileType;customerLoadInputFileType','Batch file types that are active options for the file upload screen.','A','KUALI'),('KR-NS','Document','ALLOW_ENROUTE_BLANKET_APPROVE_WITHOUT_APPROVAL_REQUEST_IND','70CAE9473BBBD1A8E0404F8189D83B6E',1,'CONFG','N','Controls whether the nervous system will show the blanket approve button to a user who is authorized for blanket approval but is neither the initiator of the particular document nor the recipient of an active, pending, approve action request.','A','KUALI'),('KR-NS','Document','DEFAULT_CAN_PERFORM_ROUTE_REPORT_IND','53680C68F59EAD9BE0404F8189D80A6C',1,'CONFG','N','If Y, the Route Report button will be displayed on the document actions bar if the document is using the default DocumentAuthorizerBase.getDocumentActionFlags to set the canPerformRouteReport property of the returned DocumentActionFlags instance.','A','KUALI'),('KR-NS','Document','MAX_FILE_SIZE_ATTACHMENT','53680C68F5A0AD9BE0404F8189D80A6C',1,'CONFG','5M','Maximum attachment upload size for the application. Used by KualiDocumentFormBase. Must be an integer, optionally followed by \"K\", \"M\", or \"G\".','A','KUALI'),('KR-NS','Document','SEND_NOTE_WORKFLOW_NOTIFICATION_ACTIONS','53680C68F5A1AD9BE0404F8189D80A6C',1,'CONFG','K','Some documents provide the functionality to send notes to another user using a workflow FYI or acknowledge functionality. This parameter specifies the default action that will be used when sending notes. This parameter should be one of the following 2 values: \"K\" for acknowledge or \"F\" for fyi. Depending on the notes and workflow service implementation, other values may be possible.','A','KUALI'),('KR-NS','Document','SESSION_TIMEOUT_WARNING_MESSAGE_TIME','53680C68F5A4AD9BE0404F8189D80A6C',1,'CONFG','5','The number of minutes before a session expires that user should be warned when a document uses pessimistic locking.','A','KUALI'),('KR-NS','Lookup','MULTIPLE_VALUE_RESULTS_EXPIRATION_SECONDS','53680C68F5A3AD9BE0404F8189D80A6C',1,'CONFG','86400','Lookup results may continue to be persisted in the DB long after they are needed. This parameter represents the maximum amount of time, in seconds, that the results will be allowed to persist in the DB before they are deleted from the DB.','A','KUALI'),('KR-NS','Lookup','MULTIPLE_VALUE_RESULTS_PER_PAGE','53680C68F5A6AD9BE0404F8189D80A6C',1,'CONFG','100','Maximum number of rows that will be displayed on a look-up results screen.','A','KUALI'),('KR-NS','Lookup','RESULTS_DEFAULT_MAX_COLUMN_LENGTH','53680C68F5A7AD9BE0404F8189D80A6C',1,'CONFG','70','If a maxLength attribute has not been set on a lookup result field in the data dictionary, then the result column\'s max length will be the value of this parameter. Set this parameter to 0 for an unlimited default length or a positive value (i.e. greater than 0) for a finite max length.','A','KUALI'),('KR-NS','Lookup','RESULTS_LIMIT','53680C68F5A8AD9BE0404F8189D80A6C',1,'CONFG','200','Maximum number of results returned in a look-up query.','A','KUALI'),('KR-NS','PurgePendingAttachmentsStep','MAX_AGE','5A689075D35A7AEBE0404F8189D80321',1,'CONFG','86400','Pending attachments are attachments that do not yet have a permanent link with the associated Business Object (BO). These pending attachments are stored in the attachments.pending.directory (defined in the configuration service). If the BO is never persisted, then this attachment will become orphaned (i.e. not associated with any BO), but will remain in this directory. The PurgePendingAttachmentsStep batch step deletes these pending attachment files that are older than the value of this parameter. The unit of this value is seconds. Do not set this value too short, as this will cause problems attaching files to BOs.','A','KUALI'),('KR-NS','PurgeSessionDocumentsStep','NUMBER_OF_DAYS_SINCE_LAST_UPDATE','5A689075D3597AEBE0404F8189D80321',1,'CONFG','1','Determines the age of the session document records that the the step will operate on, e.g. if this param is set to 4, the rows with a last update timestamp older that 4 days prior to when the job is running will be deleted.','A','KUALI'),('KR-NS','ScheduleStep','CUTOFF_TIME','5A689075D35C7AEBE0404F8189D80321',1,'CONFG','02:00:00:AM','Controls when the daily batch schedule should terminate. The scheduler service implementation compares the start time of the schedule job from quartz with this time on day after the schedule job started running.','A','KUALI'),('KR-NS','ScheduleStep','CUTOFF_TIME_NEXT_DAY_IND','5A689075D35D7AEBE0404F8189D80321',1,'CONFG','Y','Controls whether when the system is comparing the schedule start day & time with the scheduleStep_CUTOFF_TIME parameter, it considers the specified time to apply to the day after the schedule starts.','A','KUALI'),('KR-NS','ScheduleStep','STATUS_CHECK_INTERVAL','5A689075D35B7AEBE0404F8189D80321',1,'CONFG','30000','Time in milliseconds that the scheduleStep should wait between iterations.','A','KUALI'),('KR-SAP','TEST_COMPONENT','TEST_PARAM','B6A90093AB168D60E040DC0A1F8A1116',1,'HELP','http://www.kuali.org/?system_parm',NULL,'A','TRAVEL'),('KR-WKFLW','ActionList','ACTION_LIST_DOCUMENT_POPUP_IND','290E45BA032F4F4FB423CE5F78AC52E1',1,'CONFG','Y','Flag to specify if clicking on a Document ID from the Action List will load the Document in a new window.','A','KUALI'),('KR-WKFLW','ActionList','ACTION_LIST_ROUTE_LOG_POPUP_IND','967B0311A5E94F7191B2C544FA7DE095',1,'CONFG','N','Flag to specify if clicking on a Route Log from the Action List will load the Route Log in a new window.','A','KUALI'),('KR-WKFLW','ActionList','EMAIL_NOTIFICATION_TEST_ADDRESS','340789CDF30F4252A1A2A42AD39B90B2',1,'CONFG',NULL,'Default email address used for testing.','A','KUALI'),('KR-WKFLW','ActionList','PAGE_SIZE_THROTTLE','2CE075BC0C59435CA6DEFF724492DE3F',1,'CONFG',NULL,'Throttles the number of results returned on all users Action Lists, regardless of their user preferences.  This is intended to be used in a situation where excessively large Action Lists are causing performance issues.','A','KUALI'),('KR-WKFLW','ActionList','SEND_EMAIL_NOTIFICATION_IND','A87659E198214A8B90BE5BEF41630411',1,'CONFG','N','Flag to determine whether or not to send email notification.','A','KUALI'),('KR-WKFLW','All','KIM_PRIORITY_ON_DOC_TYP_PERMS_IND','5C731F2968A3689AE0404F8189D86653',1,'CONFG','N','Flag for enabling/disabling document type permission checks to use KIM Permissions as priority over Document Type policies.','A','KUALI'),('KR-WKFLW','All','MAXIMUM_NODES_BEFORE_RUNAWAY','4656B6E7E9844E2C9E2255014AFC86B5',1,'CONFG',NULL,'The maximum number of nodes the workflow engine will process before it determines the process is a runaway process.  This is prevent infinite \"loops\" in the workflow engine.','A','KUALI'),('KR-WKFLW','All','SHOW_ATTACHMENTS_IND','8A37388A2D7A46EF9E6BF3FA8D08A03A',1,'CONFG','Y','Flag to specify whether or not a file upload box is displayed for KEW notes which allows for uploading of an attachment with the note.','A','KUALI'),('KR-WKFLW','Backdoor','SHOW_BACK_DOOR_LOGIN_IND','9BD6785416434C4D9E5F05AF077DB9B7',1,'CONFG','Y','Flag to show the backdoor login.','A','KUALI'),('KR-WKFLW','DocumentSearch','DOCUMENT_SEARCH_POPUP_IND','E78100F6F14C4932B54F7719FA5C27E9',1,'CONFG','Y','Flag to specify if clicking on a Document ID from Document Search will load the Document in a new window.','A','KUALI'),('KR-WKFLW','DocumentSearch','DOCUMENT_SEARCH_ROUTE_LOG_POPUP_IND','632680DDE9A7478CBD379FAF90C7AE72',1,'CONFG','N','Flag to specify if clicking on a Route Log from Document Search will load the Route Log in a new window.','A','KUALI'),('KR-WKFLW','DocumentSearch','FETCH_MORE_ITERATION_LIMIT','D43459D143FC46C6BF83C71AC2383B76',1,'CONFG',NULL,'Limit of fetch more iterations for document searches.','A','KUALI'),('KR-WKFLW','DocumentSearch','RESULT_CAP','E324D85082184EB6967537B3EE1F655B',1,'CONFG',NULL,'Maximum number of documents to return from a search.','A','KUALI'),('KR-WKFLW','EDocLite','DEBUG_TRANSFORM_IND','68B2EA08E13A4FF3B9EDBD5415818C93',1,'CONFG','N','Defines whether the debug transform is enabled for eDcoLite.','A','KUALI'),('KR-WKFLW','EDocLite','USE_XSLTC_IND','FCAEE745A7E64AF5982937C47EBC2698',1,'CONFG','N','Defines whether XSLTC is used for eDocLite.','A','KUALI'),('KR-WKFLW','Feature','IS_LAST_APPROVER_ACTIVATE_FIRST_IND','BEBDBCFA74A5458EADE2CF075FFF206E',1,'CONFG',NULL,'A flag to specify whether the WorkflowInfo.isLastApproverAtNode(...) API method attempts to active requests first, prior to execution.','A','KUALI'),('KR-WKFLW','Mailer','FROM_ADDRESS','700AB6A6E23740D0B3E00E02A8FB6347',1,'CONFG','rice.test@kuali.org','Default from email address for notifications.','A','KUALI'),('KR-WKFLW','Notification','NOTIFY_GROUPS','08280F2575904F3586CF48BB97907506',1,'CONFG',NULL,'Defines a group name (in the format \"namespace:name\") which contains members who should never receive \"notifications\" action requests from KEW.','D','KUALI'),('KR-WKFLW','QuickLinks','RESTRICT_DOCUMENT_TYPES','5292CFD9A0EA48BEB22A2EB3B3BD3CDA',1,'CONFG',NULL,'Comma seperated list of Document Types to exclude from the Rule Quicklinks.','A','KUALI'),('KR-WKFLW','Rule','CUSTOM_DOCUMENT_TYPES','BDE964269F2743338C00A4326B676195',1,'CONFG',NULL,'Defines custom Document Type processes to use for certain types of routing rules.','A','KUALI'),('KR-WKFLW','Rule','DELEGATE_LIMIT','21EA54B9A9E846709E76C176DE0AF47C',1,'CONFG','20','Specifies that maximum number of delegation rules that will be displayed on a Rule inquiry before the screen shows a count of delegate rules and provides a link for the user to show them.','A','KUALI'),('KR-WKFLW','Rule','GENERATE_ACTION_REQUESTS_IND','96868C896B4B4A8BA87AD20E42948431',1,'CONFG','Y','Flag to determine whether or not a change to a routing rule should be applied retroactively to existing documents.','A','KUALI'),('KR-WKFLW','Rule','RULE_CACHE_REQUEUE_DELAY','8AE796DB88484468830A8879630CCF5D',1,'CONFG','5000','Amount of time after a rule change is made before the rule cache update message is sent.','A','KUALI');
/*!40000 ALTER TABLE `KRCR_PARM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_LNK_T`
--

DROP TABLE IF EXISTS `KREW_DOC_LNK_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_LNK_T` (
  `DOC_LNK_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ORGN_DOC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DEST_DOC_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DOC_LNK_ID`),
  KEY `KREW_DOC_LNK_TI1` (`ORGN_DOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_LNK_T`
--

LOCK TABLES `KREW_DOC_LNK_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_LNK_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_LNK_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_TYP_PLCY_RELN_T`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_PLCY_RELN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_PLCY_RELN_T` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_PLCY_NM` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PLCY_NM` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `PLCY_VAL` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_TYP_ID`,`DOC_PLCY_NM`),
  UNIQUE KEY `KREW_DOC_TYP_PLCY_RELN_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_PLCY_RELN_T`
--

LOCK TABLES `KREW_DOC_TYP_PLCY_RELN_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_PLCY_RELN_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_TYP_PLCY_RELN_T` VALUES ('2024','DEFAULT_APPROVE',1,1,'61BA2DCF3BE658EEE0404F8189D80CAE',NULL),('2024','LOOK_FUTURE',1,1,'61BA2DCF3BE758EEE0404F8189D80CAE',NULL),('2680','DEFAULT_APPROVE',1,2,'61BA2DCF3BE858EEE0404F8189D80CAE',NULL),('2680','LOOK_FUTURE',1,2,'61BA2DCF3BE958EEE0404F8189D80CAE',NULL);
/*!40000 ALTER TABLE `KREW_DOC_TYP_PLCY_RELN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_OUT_BOX_ITM_T`
--

DROP TABLE IF EXISTS `KREW_OUT_BOX_ITM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_OUT_BOX_ITM_T` (
  `ACTN_ITM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ASND_DT` datetime NOT NULL,
  `RQST_CD` char(1) COLLATE utf8_bin NOT NULL,
  `ACTN_RQST_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ROLE_NM` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_LBL` varchar(128) COLLATE utf8_bin NOT NULL,
  `DOC_HDLR_URL` varchar(255) COLLATE utf8_bin NOT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGN_TYP` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DLGN_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RQST_LBL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_ITM_ID`),
  KEY `KREW_OUT_BOX_ITM_TI1` (`PRNCPL_ID`),
  KEY `KREW_OUT_BOX_ITM_TI2` (`DOC_HDR_ID`),
  KEY `KREW_OUT_BOX_ITM_TI3` (`ACTN_RQST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_OUT_BOX_ITM_T`
--

LOCK TABLES `KREW_OUT_BOX_ITM_T` WRITE;
/*!40000 ALTER TABLE `KREW_OUT_BOX_ITM_T` DISABLE KEYS */;
INSERT INTO `KREW_OUT_BOX_ITM_T` VALUES ('10040','user4','2008-12-22 13:24:25','A','2360','2695',NULL,NULL,'Travel Doc 2 - dfads','Travel Request','http://localhost:8080/kr-dev/travelDocument2.do?methodToCall=docHandler','TravelRequest','2022',NULL,1,NULL,NULL,NULL),('10041','employee','2008-12-22 13:26:05','A','2362','2695','employee employee',NULL,'Travel Doc 2 - dfads','Travel Request','http://localhost:8080/kr-dev/travelDocument2.do?methodToCall=docHandler','TravelRequest','2024',NULL,1,NULL,NULL,NULL),('10042','supervisor','2008-12-22 13:26:36','A','2364','2695','supervisr supervisr',NULL,'Travel Doc 2 - dfads','Travel Request','http://localhost:8080/kr-dev/travelDocument2.do?methodToCall=docHandler','TravelRequest','2026',NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KREW_OUT_BOX_ITM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ADDR_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_ADDR_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ADDR_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ADDR_TYP_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_1` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_LINE_3` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CITY` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `STATE_PVC_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CD` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `POSTAL_CNTRY_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DFLT_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `ENTITY_ADDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ATTN_LINE` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `ADDR_FMT` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `MOD_DT` datetime DEFAULT NULL,
  `VALID_DT` datetime DEFAULT NULL,
  `VALID_IND` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `NOTE_MSG` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`FDOC_NBR`,`ENTITY_ADDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ADDR_MT`
--

LOCK TABLES `KRIM_PND_ADDR_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ADDR_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ADDR_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_OUT_BOX_ITM_S`
--

DROP TABLE IF EXISTS `KREW_OUT_BOX_ITM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_OUT_BOX_ITM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10043 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_OUT_BOX_ITM_S`
--

LOCK TABLES `KREW_OUT_BOX_ITM_S` WRITE;
/*!40000 ALTER TABLE `KREW_OUT_BOX_ITM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_OUT_BOX_ITM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KR_KIM_TEST_BO`
--

DROP TABLE IF EXISTS `KR_KIM_TEST_BO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KR_KIM_TEST_BO` (
  `PK` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KR_KIM_TEST_BO`
--

LOCK TABLES `KR_KIM_TEST_BO` WRITE;
/*!40000 ALTER TABLE `KR_KIM_TEST_BO` DISABLE KEYS */;
/*!40000 ALTER TABLE `KR_KIM_TEST_BO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRVL_ID_SEQ`
--

DROP TABLE IF EXISTS `TRVL_ID_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRVL_ID_SEQ` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRVL_ID_SEQ`
--

LOCK TABLES `TRVL_ID_SEQ` WRITE;
/*!40000 ALTER TABLE `TRVL_ID_SEQ` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRVL_ID_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_AGENDA_ITM_S`
--

DROP TABLE IF EXISTS `KRMS_AGENDA_ITM_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_AGENDA_ITM_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_AGENDA_ITM_S`
--

LOCK TABLES `KRMS_AGENDA_ITM_S` WRITE;
/*!40000 ALTER TABLE `KRMS_AGENDA_ITM_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_AGENDA_ITM_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_DLGN_MBR_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_DLGN_MBR_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_DLGN_MBR_ATTR_DATA_T` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_DLGN_MBR_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_DLGN_MBR_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  KEY `KRIM_DLGN_MBR_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_MBR_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_DLGN_MBR_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `KRIM_ATTR_DEFN_T` (`KIM_ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_DLGN_MBR_ATTR_DATA_T`
--

LOCK TABLES `KRIM_DLGN_MBR_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_DLGN_MBR_ATTR_DATA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_DLGN_MBR_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_AGENDA_ITM_T`
--

DROP TABLE IF EXISTS `KRMS_AGENDA_ITM_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_AGENDA_ITM_T` (
  `AGENDA_ITM_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `SUB_AGENDA_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `WHEN_TRUE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `WHEN_FALSE` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ALWAYS` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AGENDA_ITM_ID`),
  KEY `KRMS_AGENDA_ITM_TI1` (`RULE_ID`),
  KEY `KRMS_AGENDA_ITM_TI2` (`AGENDA_ID`),
  KEY `KRMS_AGENDA_ITM_TI3` (`SUB_AGENDA_ID`),
  KEY `KRMS_AGENDA_ITM_TI4` (`WHEN_TRUE`),
  KEY `KRMS_AGENDA_ITM_TI5` (`WHEN_FALSE`),
  KEY `KRMS_AGENDA_ITM_TI6` (`ALWAYS`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK1` FOREIGN KEY (`RULE_ID`) REFERENCES `KRMS_RULE_T` (`RULE_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK2` FOREIGN KEY (`AGENDA_ID`) REFERENCES `KRMS_AGENDA_T` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK3` FOREIGN KEY (`SUB_AGENDA_ID`) REFERENCES `KRMS_AGENDA_T` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK4` FOREIGN KEY (`WHEN_TRUE`) REFERENCES `KRMS_AGENDA_ITM_T` (`AGENDA_ITM_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK5` FOREIGN KEY (`WHEN_FALSE`) REFERENCES `KRMS_AGENDA_ITM_T` (`AGENDA_ITM_ID`),
  CONSTRAINT `KRMS_AGENDA_ITM_FK6` FOREIGN KEY (`ALWAYS`) REFERENCES `KRMS_AGENDA_ITM_T` (`AGENDA_ITM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_AGENDA_ITM_T`
--

LOCK TABLES `KRMS_AGENDA_ITM_T` WRITE;
/*!40000 ALTER TABLE `KRMS_AGENDA_ITM_T` DISABLE KEYS */;
INSERT INTO `KRMS_AGENDA_ITM_T` VALUES ('T1000','T1000',NULL,'T1000',1,'T1001','T1004','T1005'),('T1001','T1001',NULL,'T1000',1,NULL,NULL,'T1002'),('T1002','T1002',NULL,'T1000',1,NULL,'T1006','T1003'),('T1003','T1003',NULL,'T1000',1,NULL,NULL,NULL),('T1004','T1004',NULL,'T1000',1,NULL,NULL,NULL),('T1005','T1005',NULL,'T1000',1,NULL,NULL,NULL),('T1006','T1006',NULL,'T1000',1,NULL,NULL,NULL),('T1007','T1007',NULL,'T1001',1,NULL,NULL,NULL),('T1008','T1008',NULL,'T1002',1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KRMS_AGENDA_ITM_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ROLE_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_ID_S`
--

LOCK TABLES `KRIM_ROLE_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_FUNC_CTGRY_T`
--

DROP TABLE IF EXISTS `KRMS_FUNC_CTGRY_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_FUNC_CTGRY_T` (
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CTGRY_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`FUNC_ID`,`CTGRY_ID`),
  KEY `KRMS_FUNC_CTGRY_FK2` (`CTGRY_ID`),
  CONSTRAINT `KRMS_FUNC_CTGRY_FK2` FOREIGN KEY (`CTGRY_ID`) REFERENCES `KRMS_CTGRY_T` (`CTGRY_ID`),
  CONSTRAINT `KRMS_FUNC_CTGRY_FK1` FOREIGN KEY (`FUNC_ID`) REFERENCES `KRMS_FUNC_T` (`FUNC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_FUNC_CTGRY_T`
--

LOCK TABLES `KRMS_FUNC_CTGRY_T` WRITE;
/*!40000 ALTER TABLE `KRMS_FUNC_CTGRY_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_FUNC_CTGRY_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_MAINT_DOC_ATT_S`
--

DROP TABLE IF EXISTS `KRNS_MAINT_DOC_ATT_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_MAINT_DOC_ATT_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_MAINT_DOC_ATT_S`
--

LOCK TABLES `KRNS_MAINT_DOC_ATT_S` WRITE;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_ATT_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_ATT_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_MAINT_DOC_ATT_T`
--

DROP TABLE IF EXISTS `KRNS_MAINT_DOC_ATT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_MAINT_DOC_ATT_T` (
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATT_CNTNT` longblob NOT NULL,
  `FILE_NM` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT_TYP` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  PRIMARY KEY (`DOC_HDR_ID`),
  UNIQUE KEY `KRNS_MAINT_DOC_ATT_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_MAINT_DOC_ATT_T`
--

LOCK TABLES `KRNS_MAINT_DOC_ATT_T` WRITE;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_ATT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_MAINT_DOC_ATT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_RESIDENCY_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_RESIDENCY_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_RESIDENCY_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_RESIDENCY_ID_S`
--

LOCK TABLES `KRIM_ENTITY_RESIDENCY_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_RESIDENCY_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_RESIDENCY_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_NODE_INSTN_ST_T`
--

DROP TABLE IF EXISTS `KREW_RTE_NODE_INSTN_ST_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_NODE_INSTN_ST_T` (
  `RTE_NODE_INSTN_ST_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RTE_NODE_INSTN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAL` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_NODE_INSTN_ST_ID`),
  KEY `KREW_RTE_NODE_INSTN_ST_TI1` (`RTE_NODE_INSTN_ID`,`KEY_CD`),
  KEY `KREW_RTE_NODE_INSTN_ST_TI2` (`RTE_NODE_INSTN_ID`),
  KEY `KREW_RTE_NODE_INSTN_ST_TI3` (`KEY_CD`,`VAL`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_NODE_INSTN_ST_T`
--

LOCK TABLES `KREW_RTE_NODE_INSTN_ST_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_NODE_INSTN_ST_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_RTE_NODE_INSTN_ST_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_RSP_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_RSP_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_RSP_ATTR_DATA_T` (
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `RSP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DATA_ID`),
  UNIQUE KEY `KRIM_RSP_ATTR_DATA_TC0` (`OBJ_ID`),
  KEY `KRIM_RSP_ATTR_DATA_TR3` (`RSP_ID`),
  KEY `KRIM_RSP_ATTR_DATA_TR1` (`KIM_TYP_ID`),
  KEY `KRIM_RSP_ATTR_DATA_TR2` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_RSP_ATTR_DATA_TR2` FOREIGN KEY (`KIM_ATTR_DEFN_ID`) REFERENCES `KRIM_ATTR_DEFN_T` (`KIM_ATTR_DEFN_ID`),
  CONSTRAINT `KRIM_RSP_ATTR_DATA_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_RSP_ATTR_DATA_TR3` FOREIGN KEY (`RSP_ID`) REFERENCES `KRIM_RSP_T` (`RSP_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_RSP_ATTR_DATA_T`
--

LOCK TABLES `KRIM_RSP_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_RSP_ATTR_DATA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_RSP_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENT_NM_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_ENT_NM_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENT_NM_TYP_T` (
  `ENT_NM_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ENT_NM_TYP_CD`),
  UNIQUE KEY `KRIM_ENT_NM_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ENT_NM_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENT_NM_TYP_T`
--

LOCK TABLES `KRIM_ENT_NM_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ENT_NM_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_ENT_NM_TYP_T` VALUES ('OTH','5B97C50B03856110E0404F8189D85213',1,'Other','Y','c','2008-11-13 14:06:33'),('PRFR','5B97C50B03866110E0404F8189D85213',1,'Preferred','Y','b','2008-11-13 14:06:33'),('PRM','5B97C50B03876110E0404F8189D85213',1,'Primary','Y','a','2008-11-13 14:06:33');
/*!40000 ALTER TABLE `KRIM_ENT_NM_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_VISA_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_VISA_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_VISA_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_VISA_ID_S`
--

LOCK TABLES `KRIM_ENTITY_VISA_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_VISA_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_VISA_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_NTFCTN_MSG_DELIV_S`
--

DROP TABLE IF EXISTS `KREN_NTFCTN_MSG_DELIV_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_NTFCTN_MSG_DELIV_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_NTFCTN_MSG_DELIV_S`
--

LOCK TABLES `KREN_NTFCTN_MSG_DELIV_S` WRITE;
/*!40000 ALTER TABLE `KREN_NTFCTN_MSG_DELIV_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_NTFCTN_MSG_DELIV_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_SIMPLE_TRIGGERS` (
  `TRIGGER_NAME` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `TRIGGER_GROUP` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REPEAT_COUNT` decimal(7,0) NOT NULL,
  `REPEAT_INTERVAL` decimal(12,0) NOT NULL,
  `TIMES_TRIGGERED` decimal(7,0) NOT NULL,
  PRIMARY KEY (`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `KRSB_QRTZ_SIMPLE_TRIGGERS_TR1` FOREIGN KEY (`TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `KRSB_QRTZ_TRIGGERS` (`TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `KRSB_QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRSB_QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRV_ACCT_EXT`
--

DROP TABLE IF EXISTS `TRV_ACCT_EXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRV_ACCT_EXT` (
  `ACCT_NUM` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACCT_TYPE` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`ACCT_NUM`,`ACCT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRV_ACCT_EXT`
--

LOCK TABLES `TRV_ACCT_EXT` WRITE;
/*!40000 ALTER TABLE `TRV_ACCT_EXT` DISABLE KEYS */;
INSERT INTO `TRV_ACCT_EXT` VALUES ('a1','IAT',NULL,0),('a14','CAT',NULL,0),('a2','EAT',NULL,0),('a3','IAT',NULL,0),('a6','CAT',NULL,0),('a8','EAT',NULL,0),('a9','CAT',NULL,0);
/*!40000 ALTER TABLE `TRV_ACCT_EXT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_NTFCTN_MSG_DELIV_T`
--

DROP TABLE IF EXISTS `KREN_NTFCTN_MSG_DELIV_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_NTFCTN_MSG_DELIV_T` (
  `NTFCTN_MSG_DELIV_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NTFCTN_ID` decimal(8,0) NOT NULL,
  `RECIP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `STAT_CD` varchar(15) COLLATE utf8_bin NOT NULL,
  `SYS_ID` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `LOCKD_DTTM` datetime DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`NTFCTN_MSG_DELIV_ID`),
  UNIQUE KEY `KREN_NTFCTN_MSG_DELIV_TC0` (`NTFCTN_ID`,`RECIP_ID`),
  KEY `KREN_MSG_DELIVSI1` (`NTFCTN_ID`),
  CONSTRAINT `KREN_NTFCTN_MSG_DELIV_FK1` FOREIGN KEY (`NTFCTN_ID`) REFERENCES `KREN_NTFCTN_T` (`NTFCTN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_NTFCTN_MSG_DELIV_T`
--

LOCK TABLES `KREN_NTFCTN_MSG_DELIV_T` WRITE;
/*!40000 ALTER TABLE `KREN_NTFCTN_MSG_DELIV_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_NTFCTN_MSG_DELIV_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_RULE_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_RULE_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_RULE_ATTR_T` (
  `RULE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `RULE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RULE_ATTR_ID`),
  KEY `KRMS_RULE_ATTR_TI1` (`RULE_ID`),
  KEY `KRMS_RULE_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_RULE_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_RULE_ATTR_FK1` FOREIGN KEY (`RULE_ID`) REFERENCES `KRMS_RULE_T` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_RULE_ATTR_T`
--

LOCK TABLES `KRMS_RULE_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_RULE_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_RULE_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_RULE_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_RULE_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_RULE_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_RULE_ATTR_S`
--

LOCK TABLES `KRMS_RULE_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_RULE_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_RULE_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRCR_STYLE_T`
--

DROP TABLE IF EXISTS `KRCR_STYLE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRCR_STYLE_T` (
  `STYLE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `XML` longtext COLLATE utf8_bin NOT NULL,
  `ACTV_IND` decimal(1,0) NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`STYLE_ID`),
  UNIQUE KEY `KRCR_STYLE_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRCR_STYLE_T`
--

LOCK TABLES `KRCR_STYLE_T` WRITE;
/*!40000 ALTER TABLE `KRCR_STYLE_T` DISABLE KEYS */;
INSERT INTO `KRCR_STYLE_T` VALUES ('2009','eDoc.Example1.Style','<xsl:stylesheet xmlns:my-class=\"xalan://org.kuali.rice.edl.framework.util.EDLFunctions\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n        <!-- widgets is simply more xslt that contains common functionality that greatly simplifies html rendering. It is somewhat complicated but does not require changes or full understanding unless enhancements are required.  -->\n        <xsl:include href=\"widgets\"/>\n        <xsl:output indent=\"yes\" method=\"html\" omit-xml-declaration=\"yes\" version=\"4.01\"/>\n        <!-- variables in the current version of xslt cannot be changed once set. Below they are set to various values often fed by java classes or to values contained in workflow xml. Not all of these are used in this form but are shown because often they can be useful. The ones prefixed with my-class are methods that are exposed by workflow to Edoclite.-->\n        <xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable\"/>\n        <xsl:variable name=\"docHeaderId\" select=\"/documentContent/documentState/docId\"/>\n        <xsl:variable name=\"editable\" select=\"/documentContent/documentState/editable\"/>\n        <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>\n        <xsl:variable name=\"docStatus\" select=\"//documentState/workflowDocumentState/status\"/>\n        <xsl:variable name=\"isAtNodeInitiated\" select=\"my-class:isAtNode($docHeaderId, \'Initiated\')\"/>\n        <xsl:variable name=\"isPastInitiated\" select=\"my-class:isNodeInPreviousNodeList(\'Initiated\', $docHeaderId)\"/>\n        <xsl:variable name=\"isUserInitiator\" select=\"my-class:isUserInitiator($docHeaderId)\"/>\n        <xsl:param name=\"overrideMain\" select=\"\'true\'\"/>\n        <!-- mainForm begins here. Execution of stylesheet begins here. It calls other templates which can call other templates. Position of templates beyond this point do not matter. -->\n        <xsl:template name=\"mainForm\">\n          <html xmlns=\"\">\n            <head>\n              <script language=\"javascript\"/>\n              <xsl:call-template name=\"htmlHead\"/>\n            </head>\n            <body onload=\"onPageLoad()\">\n              <xsl:call-template name=\"errors\"/>\n              <!-- the header is usefule because it tells the user whether they are in \'Editing\' mode or \'Read Only\' mode. -->\n              <xsl:call-template name=\"header\"/>\n              <xsl:call-template name=\"instructions\"/>\n              <xsl:variable name=\"formTarget\" select=\"\'EDocLite\'\"/>\n              <!-- validateOnSubmit is a function in edoclite1.js which also supports edloclite forms and can be somewhat complicated but does not require modification unless enhancements are required. -->\n              <form action=\"{$formTarget}\" enctype=\"multipart/form-data\" id=\"edoclite\" method=\"post\" onsubmit=\"return validateOnSubmit(this)\">\n                <xsl:call-template name=\"hidden-params\"/>\n                <xsl:call-template name=\"mainBody\"/>\n                <xsl:call-template name=\"notes\"/>\n                <br/>\n                <xsl:call-template name=\"buttons\"/>\n                <br/>\n              </form>\n              <xsl:call-template name=\"footer\"/>\n            </body>\n          </html>\n        </xsl:template>\n        <!-- mainBody template begins here. It calls other templates which can call other templates. Position of templates do not matter. -->\n        <xsl:template name=\"mainBody\">\n          <!--\nto debug, or see values of previously created, the uncomment the following line to see value of $docStatus rendered on form. -->\n          <!-- $docStatus=<xsl:value-of select=\"$docStatus\" />\n-->\n          <!-- rest of this all is within the form table -->\n          <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\" xmlns=\"\">\n            <tr>\n              <td align=\"left\" border=\"3\" class=\"thnormal\" colspan=\"1\">\n                <br/>\n                <h3>\n                  Indiana University\n                  <br/>\n                  EDL EDoclite Example\n                </h3>\n                <br/>\n              </td>\n              <td align=\"center\" border=\"3\" class=\"thnormal\" colspan=\"2\">\n                <br/>\n                <h2>eDocLite Example 1 Form</h2>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell5\" colspan=\"100%\">\n                <b>User Information</b>\n              </td>\n            </tr>\n            <tr>\n              <!-- IU usually autofills initiator name from Authentication system, and makes it readOnly. See other examples for this type of behavior. -->\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'userName\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'userName\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell5\" colspan=\"100%\">\n                <b>Other Information</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'rqstDate\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'rqstDate\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'campus\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'campus\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'description\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'description\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\" colspan=\"2\">\n                <b>(Check all that apply)</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"datacell\" colspan=\"2\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'fundedBy\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n                <br/>\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'researchHumans\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n                <br/>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell1\" colspan=\"100%\">\n                <b>Supporting Materials</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\" colspan=\"100%\">Use the Create Note box below to attach supporting materials to your request. Notes may be added with or without attachments. Click the red \'save\' button on the right.</td>\n            </tr>\n          </table>\n          <br xmlns=\"\"/>\n        </xsl:template>\n        <xsl:template name=\"nbsp\">\n          <xsl:text disable-output-escaping=\"yes\">&amp;nbsp;</xsl:text>\n        </xsl:template>\n      </xsl:stylesheet>\n',0,2,'6166CBA1BC08644DE0404F8189D86C09'),('2020','widgets','<xsl:stylesheet xmlns:my-class=\"xalan://org.kuali.rice.edl.framework.util.EDLFunctions\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n				<xsl:output method=\"html\" version=\"4.01\"/>\n				<xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>\n				<!-- determined by an appconstant -->\n				<xsl:variable name=\"showAttachments\" select=\"/documentContent/documentState/showAttachments\"/>\n				<xsl:strip-space elements=\"*\"/>\n\n				<xsl:template name=\"widget_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:param name=\"default\"/>\n					<xsl:for-each select=\"//fieldDef[@name=$fieldName]\">\n						<xsl:choose>\n							<xsl:when test=\"position() != 1\">\n								<h4>\n									<font color=\"#FF0000\"> fieldDef Name:  <xsl:value-of select=\"$fieldName\"/> is  duplicated ! </font>\n								</h4>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:variable name=\"input_type\" select=\"display/type\"/>\n								<xsl:variable name=\"render\">\n									<xsl:choose>\n										<xsl:when test=\"$renderCmd\">\n											<xsl:value-of select=\"$renderCmd\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"\'all\'\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:variable name=\"vAlign\">\n									<xsl:choose>\n										<xsl:when test=\"$align\">\n											<xsl:value-of select=\"$align\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"\'horizontal\'\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:comment>* For JavaScript validation</xsl:comment>\n								<xsl:variable name=\"fieldDisplayName\">\n									<xsl:choose>\n										<xsl:when test=\"@title\">\n											<xsl:value-of select=\"@title\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"@name\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:variable name=\"regex\" select=\"my-class:escapeJavascript(validation/regex)\"/>\n								<xsl:variable name=\"customValidator\" select=\"validation/customValidator\"/>\n								<xsl:variable name=\"validation_required\" select=\"validation/@required = \'true\'\"/>\n								<xsl:variable name=\"message\">\n									<!-- <xsl:if test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]\"> -->\n									<xsl:choose>\n										<xsl:when test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\">\n											<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\"/>\n										</xsl:when>\n										<xsl:when test=\"//documentState/fieldError[@key=current()/@name]\">\n											<xsl:value-of select=\"//documentState/fieldError[@key=current()/@name]\"/>\n										</xsl:when>\n										<xsl:when test=\"validation/message\">\n											<xsl:value-of select=\"validation/message\"/>\n										</xsl:when>\n										<xsl:when test=\"validation/regex\">\n											<xsl:value-of select=\"$fieldDisplayName\"/> (<xsl:value-of select=\"@name\"/>) <xsl:text> does not match \'</xsl:text> <xsl:value-of select=\"$regex\"/> <xsl:text>\'</xsl:text>\n										</xsl:when>\n										<xsl:otherwise>\n									    <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name]\"/>\n											<xsl:comment>* Dropped Through and Hit Otherwise</xsl:comment>								\n										</xsl:otherwise>\n									</xsl:choose>\n									<!-- </xsl:if> -->\n								</xsl:variable>\n								<xsl:variable name=\"custommessage\">\n									<xsl:choose>\n										<xsl:when test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\">\n											<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/errorMessage\"/>\n										</xsl:when>\n										<xsl:otherwise>NONE</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								\n								<xsl:comment>* custom message: <xsl:value-of select=\"$custommessage\"/>\n</xsl:comment>\n								<xsl:comment>* validation/message: <xsl:value-of select=\"validation/message\"/>\n</xsl:comment>\n								<xsl:comment>* message: <xsl:value-of select=\"$message\"/>\n</xsl:comment>\n								<xsl:variable name=\"hasFieldError\" select=\"//documentState/fieldError[@key=current()/@name]\"/>\n								<xsl:variable name=\"invalid\" select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/@invalid\"/>\n								<!--\n									determine value to display: use the value specified in the current version	if it exists, otherwise use the \'default\' \n									value defined in the field or if specified use data from userSession\n								-->\n								<xsl:variable name=\"userValue\" select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/@name]/value\"/>\n								<xsl:variable name=\"hasUserValue\" select=\"boolean($userValue)\"/>\n								<xsl:variable name=\"value\">\n									<xsl:choose>\n										<xsl:when test=\"$hasUserValue\">\n											<xsl:value-of select=\"$userValue\"/>\n										</xsl:when>\n										<xsl:when test=\"$default\">\n											<xsl:value-of select=\"$default\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\"value\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<!-- message row -->\n								<xsl:variable name=\"type\">\n									<xsl:choose>\n										<xsl:when test=\"($invalid and $validation_required) or $hasFieldError\">error</xsl:when>\n										<xsl:when test=\"$invalid and not($validation_required)\">warning</xsl:when>\n										<xsl:otherwise>empty</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<xsl:comment>* type: <xsl:value-of select=\"$type\"/>\n</xsl:comment>\n								<!-- \n									<tr class=\"{$type}_messageRow\" id=\"{@name}_messageRow\">\n										<td class=\"{$type}_messageHeaderCell\" id=\"{@name}_messageHeaderCell\">\n											<xsl:value-of select=\"$type\"/>\n										</td>\n										<td class=\"{$type}_messageDataCell\" id=\"{@name}_messageDataCell\">\n											<span id=\"{@name}_message\">\n												<xsl:value-of select=\"$message\"/>\n											</span>\n										</td>\n									</tr>\n								-->\n                                \n                                \n								<xsl:choose>\n									<xsl:when test=\"$input_type=\'text\'\">\n										<xsl:comment>* input_type \'text\'</xsl:comment>						\n										<xsl:call-template name=\"textbox_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\">\n                                                <xsl:choose>\n                                                    <xsl:when test=\"//fieldDef[@name=$fieldName]/lookup/lookupReadOnly = \'true\'\">true</xsl:when>\n                                                    <xsl:otherwise>\n<xsl:value-of select=\"$readOnly\"/>\n</xsl:otherwise>\n                                                </xsl:choose>\n                                            </xsl:with-param>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'password\'\">\n										<xsl:call-template name=\"textbox_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'radio\'\">\n										<xsl:call-template name=\"radio_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'checkbox\'\">\n										<xsl:call-template name=\"checkbox_render\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'select\'\">\n										<xsl:call-template name=\"select_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'select_refresh\'\">\n										<xsl:call-template name=\"select_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$render\"/>\n											<xsl:with-param name=\"align\" select=\"$vAlign\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"refreshPage\" select=\"\'true\'\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'textarea\'\">\n										<xsl:call-template name=\"textarea_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$renderCmd\"/>\n											<xsl:with-param name=\"align\" select=\"$align\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n											<xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n											<xsl:with-param name=\"customFunction\" select=\"$customFunction\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'button\'\">\n										<xsl:call-template name=\"button_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$renderCmd\"/>\n											<xsl:with-param name=\"align\" select=\"$align\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'submit button\'\">\n										<xsl:call-template name=\"submitbutton_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"renderCmd\" select=\"$renderCmd\"/>\n											<xsl:with-param name=\"align\" select=\"$align\"/>\n											<xsl:with-param name=\"hasUserValue\" select=\"$hasUserValue\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n											<xsl:with-param name=\"invalid\" select=\"$invalid\"/>\n											<xsl:with-param name=\"regex\" select=\"$regex\"/>\n											<xsl:with-param name=\"customValidator\" select=\"$customValidator\"/>\n											<xsl:with-param name=\"message\" select=\"$message\"/>\n											<xsl:with-param name=\"validation_required\" select=\"$validation_required\"/>\n										</xsl:call-template>\n									</xsl:when>\n									<xsl:when test=\"$input_type=\'hidden\'\">\n										<xsl:call-template name=\"hidden_input\">\n											<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n											<xsl:with-param name=\"value\" select=\"$value\"/>\n										</xsl:call-template>\n									</xsl:when>\n								</xsl:choose>\n								<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n                                    <xsl:call-template name=\"lookup\">\n                                      <xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n                                      <xsl:with-param name=\"readOnly\" select=\"$readOnly\"/>\n                                    </xsl:call-template>\n									<span class=\"{$type}Message\" id=\"{@name}_messageHeaderCell\">\n										<xsl:text> </xsl:text>\n<xsl:value-of select=\"$type\"/>\n<xsl:text>: </xsl:text>\n									</span>\n									<span class=\"{$type}Message\" id=\"{@name}_message\">\n										<xsl:value-of select=\"$message\"/>\n									</span>\n									<xsl:if test=\"validation/regex or validation/customValidator or validation[@required=\'true\']\">\n										<xsl:if test=\"not(validation/customValidator)\">\n											<script type=\"text/javascript\">\n												// register field for regex checking\n												register(\"<xsl:value-of select=\"@name\"/>\",\"<xsl:value-of select=\"$fieldDisplayName\"/>\",\"<xsl:value-of select=\"$regex\"/>\",\"<xsl:value-of select=\"$message\"/>\",\"<xsl:value-of select=\"$validation_required\"/>\");\n											</script>\n										</xsl:if>\n										<xsl:if test=\"validation/customValidator\">\n											<script type=\"text/javascript\">\n												// register field for custom field checking\n												register_custom(\"<xsl:value-of select=\"@name\"/>\",\"<xsl:value-of select=\"$fieldDisplayName\"/>\",\"<xsl:value-of select=\"$message\"/>\", \"<xsl:value-of select=\"$validation_required\"/>\", <xsl:value-of select=\"$customValidator\"/>);\n											</script>\n										</xsl:if>\n									</xsl:if>\n								</xsl:if>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:for-each>\n				</xsl:template>\n\n				<xsl:template name=\"textbox_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>				\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"regex\"/>\n					<xsl:param name=\"message\"/>\n					<xsl:param name=\"validation_required\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'all\' or  $renderCmd=\'title\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:if test=\"$align =\'horizontal\'\">\n							<xsl:text>          </xsl:text>\n						</xsl:if>\n						<xsl:if test=\"$align=\'vertical\'\">\n							<br/>\n						</xsl:if>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n						<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n							<xsl:call-template name=\"hidden_input\">\n								<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n								<xsl:with-param name=\"value\" select=\"$value\"/>\n							</xsl:call-template>\n						</xsl:if>\n						<input value=\"{$value}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onkeyup\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n							<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n								<xsl:attribute name=\"disabled\">\n								  disabled\n								</xsl:attribute>\n							</xsl:if>\n							<xsl:attribute name=\"type\">\n<xsl:value-of select=\"current()/display/type\"/>\n</xsl:attribute>\n							<xsl:attribute name=\"name\">\n<xsl:value-of select=\"$fieldName\"/>\n</xsl:attribute>\n							<xsl:attribute name=\"onkeydown\">return replaceEnter(event)</xsl:attribute>\n							<xsl:for-each select=\"current()/display/meta\">\n								<xsl:variable name=\"attrName\">\n									<xsl:value-of select=\"name\"/>\n								</xsl:variable>\n								<xsl:variable name=\"attrValue\">\n									<xsl:value-of select=\"value\"/>\n								</xsl:variable>\n								<xsl:attribute name=\"{$attrName}\">\n<xsl:value-of select=\"$attrValue\"/>\n</xsl:attribute>\n							</xsl:for-each>\n						</input>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"radio_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'all\' or  $renderCmd=\'title\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:if test=\"$align =\'horizontal\'\">\n							<xsl:text>            </xsl:text>\n						</xsl:if>\n						<xsl:if test=\"$align=\'vertical\'\">\n							<br/>\n						</xsl:if>\n					</xsl:if>\n					<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n						<xsl:call-template name=\"hidden_input\">			\n							<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n							<xsl:with-param name=\"value\" select=\"$value\"/>\n						</xsl:call-template>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n						<xsl:for-each select=\"current()/display/values\">\n							<xsl:variable name=\"title\">\n								<xsl:choose>\n									<xsl:when test=\"@title\">\n										<xsl:value-of select=\"@title\"/>\n									</xsl:when>\n									<xsl:otherwise>\n										<xsl:value-of select=\"@name\"/>\n									</xsl:otherwise>\n								</xsl:choose>\n							</xsl:variable>\n							<xsl:variable name=\"optionName\">\n								<xsl:value-of select=\"../../@name\"/>\n							</xsl:variable>\n							<input name=\"{$optionName}\" title=\"{$title}\" type=\"{../type}\" value=\"{.}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onClick\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n								<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n									<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n								</xsl:if>\n								<xsl:choose>\n									<xsl:when test=\"$hasUserValue\">\n										<xsl:if test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/../../@name and value=current()]\">\n											<xsl:attribute name=\"checked\">checked</xsl:attribute>\n										</xsl:if>\n									</xsl:when>\n									<xsl:otherwise>\n										<!-- use the default if no user values are specified -->\n										<xsl:if test=\". = ../../value\">\n											<xsl:attribute name=\"checked\">checked</xsl:attribute>\n										</xsl:if>\n									</xsl:otherwise>\n								</xsl:choose>\n							</input>\n							<xsl:value-of select=\"$title\"/>\n							<xsl:if test=\"$align =\'horizontal\'\">\n								<xsl:text>           </xsl:text>\n							</xsl:if>\n							<xsl:if test=\"$align=\'vertical\'\">\n								<br/>\n							</xsl:if>\n						</xsl:for-each>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"checkbox_render\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'all\' or  $renderCmd=\'title\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:if test=\"$align =\'horizontal\'\">\n							<xsl:text>          </xsl:text>\n						</xsl:if>\n						<xsl:if test=\"$align=\'vertical\'\">\n							<br/>\n						</xsl:if>\n					</xsl:if>\n					<!-- \n						<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n							<xsl:call-template name=\"hidden_input\">			\n								<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n								<xsl:with-param name=\"value\" select=\"$value\"/>\n							</xsl:call-template>\n						</xsl:if>\n					-->\n					<xsl:if test=\"$renderCmd=\'all\' or $renderCmd=\'input\'\">\n						<xsl:for-each select=\"current()/display/values\">\n							<xsl:variable name=\"title\">\n								<xsl:choose>\n									<xsl:when test=\"@title\">\n										<xsl:value-of select=\"@title\"/>\n									</xsl:when>\n									<xsl:otherwise>\n										<xsl:value-of select=\"@name\"/>\n									</xsl:otherwise>\n								</xsl:choose>\n							</xsl:variable>\n							<xsl:variable name=\"optionName\">\n								<xsl:value-of select=\"../../@name\"/>\n							</xsl:variable>\n							<xsl:variable name=\"checked\">\n								<xsl:choose>\n									<xsl:when test=\"$hasUserValue\">\n<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/../../@name and value=current()] = .\"/>\n</xsl:when>\n									<!-- use the default if no user values are specified -->\n									<xsl:when test=\". = ../../value\">true</xsl:when>\n									<xsl:otherwise>false</xsl:otherwise>\n								</xsl:choose>\n							</xsl:variable>\n							<xsl:if test=\"($globalReadOnly = \'true\'  or $readOnly = \'true\') and $checked = \'true\' \">\n								<xsl:call-template name=\"hidden_input\">			\n									<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n									<xsl:with-param name=\"value\" select=\".\"/>\n								</xsl:call-template>\n							</xsl:if>\n		  				<input name=\"{$optionName}\" type=\"{../type}\" value=\"{.}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onClick\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n								<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n									<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n								</xsl:if>\n								<xsl:if test=\"$checked = \'true\'\">\n									<xsl:attribute name=\"checked\">checked</xsl:attribute>\n								</xsl:if>\n							</input>\n							<xsl:value-of select=\"$title\"/>\n							<xsl:if test=\"$align =\'horizontal\'\">\n								<xsl:text>           </xsl:text>\n							</xsl:if>\n							<xsl:if test=\"$align=\'vertical\'\">\n								<br/>\n							</xsl:if>\n						</xsl:for-each>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"select_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"hasUserValue\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"refreshPage\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>       </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n						<xsl:call-template name=\"hidden_input\">\n							<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n							<xsl:with-param name=\"value\" select=\"$value\"/>\n						</xsl:call-template>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<select name=\"{$fieldName}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onChange\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n							<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n								<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n							</xsl:if>\n							<xsl:for-each select=\"current()/display/values\">\n								<xsl:variable name=\"title\">\n									<xsl:choose>\n										<xsl:when test=\"@title\">\n											<xsl:value-of select=\"@title\"/>\n										</xsl:when>\n										<xsl:when test=\"@name\">\n											<xsl:value-of select=\"@name\"/>\n										</xsl:when>\n										<xsl:otherwise>\n											<xsl:value-of select=\".\"/>\n										</xsl:otherwise>\n									</xsl:choose>\n								</xsl:variable>\n								<option title=\"{$title}\" value=\"{.}\">\n									<xsl:choose>\n										<xsl:when test=\"$hasUserValue\">\n											<xsl:if test=\"//edlContent/data/version[@current=\'true\']/field[@name=current()/../../@name and value=current()]\">\n												<!-- <xsl:if test=\"$value = current()\"> -->\n												<xsl:attribute name=\"selected\">selected</xsl:attribute>\n											</xsl:if>\n										</xsl:when>\n										<xsl:otherwise>\n											<!-- use the default if no user values are specified -->\n											<xsl:if test=\". = ../../value\">\n												<xsl:attribute name=\"selected\">selected</xsl:attribute>\n											</xsl:if>\n										</xsl:otherwise>\n									</xsl:choose>\n									<xsl:if test=\". = ../../value\">\n										<xsl:attribute name=\"selected\">selected</xsl:attribute>\n									</xsl:if>\n									<xsl:value-of select=\"$title\"/>\n								</option>\n							</xsl:for-each>\n						</select>\n						<xsl:if test=\"$refreshPage = \'true\'\">\n						  <script type=\"text/javascript\">\n						  	// register additional onchange event, use prototype to hide the main form and show a message so as to prevent changes while refreshing. \n						  	// programmers are to create the following divisions; html div; that wrap the main form and a seperate div wrapping the message that will show.\n							register_onchange(\'<xsl:value-of select=\"$fieldName\"/>\', function() { $(\'mainform-div\').hide(); $(\'refresh-message\').show(); document.forms[0].submit(); });\n						  </script>\n						</xsl:if>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"textarea_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"regex\"/>\n					<xsl:param name=\"message\"/>\n					<xsl:param name=\"validation_required\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$globalReadOnly = \'true\' or $readOnly = \'true\'\">\n						<xsl:call-template name=\"hidden_input\">\n							<xsl:with-param name=\"fieldName\" select=\"$fieldName\"/>\n							<xsl:with-param name=\"value\" select=\"$value\"/>\n						</xsl:call-template>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>       </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<xsl:variable name=\"metaCols\" select=\"display/meta[name=\'cols\']/value\"/>\n						<xsl:variable name=\"cols\">\n							<xsl:choose>\n								<xsl:when test=\"$metaCols\">\n									<xsl:value-of select=\"$metaCols\"/>\n								</xsl:when>\n								<xsl:otherwise>1</xsl:otherwise>\n							</xsl:choose>\n						</xsl:variable>\n						<xsl:variable name=\"metaRows\" select=\"display/meta[name=\'rows\']/value\"/>\n						<xsl:variable name=\"rows\">\n							<xsl:choose>\n								<xsl:when test=\"$metaRows\">\n									<xsl:value-of select=\"$metaRows\"/>\n								</xsl:when>\n								<xsl:otherwise>1</xsl:otherwise>\n							</xsl:choose>\n						</xsl:variable>\n						<textarea cols=\"{$cols}\" name=\"{@name}\" rows=\"{$rows}\">\n							<xsl:if test=\"$customFunction\">\n							  <xsl:variable name=\"customFunction_val\" select=\"$customFunction\"/>\n							  <xsl:attribute name=\"onkeyup\">\n							    <xsl:value-of select=\"$customFunction\"/>\n							  </xsl:attribute>\n							</xsl:if>\n							<xsl:if test=\"$globalReadOnly = \'true\'  or $readOnly = \'true\'\">\n								<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n							</xsl:if>\n							<!--\n								force a space if value is empty, or browsers (firefox) set the rest of the literal body content as the value\n								if the tag is a short-form close tag (!) \n							-->\n							<xsl:choose>\n								<xsl:when test=\"string-length($value) &gt; 0\">\n									<xsl:value-of select=\"$value\"/>\n								</xsl:when>\n								<xsl:otherwise>\n									<xsl:text/>\n								</xsl:otherwise>\n							</xsl:choose>\n						</textarea>\n					</xsl:if>\n				</xsl:template>\n	\n				<xsl:template name=\"button_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>    </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<button name=\"{$fieldName}\">\n							<xsl:variable name=\"value\" select=\"value\"/>\n							<xsl:if test=\"$value\">\n								<xsl:attribute name=\"value\">\n<xsl:value-of select=\"$value\"/>\n</xsl:attribute>\n							</xsl:if>\n							<xsl:for-each select=\"current()/display/meta\">\n								<xsl:variable name=\"attr_name\">\n									<xsl:value-of select=\"name\"/>\n								</xsl:variable>\n								<xsl:variable name=\"attr_value\">\n									<xsl:value-of select=\"value\"/>\n								</xsl:variable>\n								<xsl:attribute name=\"{$attr_name}\">\n<xsl:value-of select=\"$attr_value\"/>\n</xsl:attribute>\n							</xsl:for-each>\n							<xsl:value-of select=\"$value\"/>\n						</button>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"submitbutton_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"renderCmd\"/>\n					<xsl:param name=\"align\"/>\n					<xsl:param name=\"customFunction\"/>\n					<xsl:if test=\"$renderCmd=\'title\' or $renderCmd=\'all\'\">\n						<xsl:value-of select=\"current()/@title\"/>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'all\'\">\n						<xsl:choose>\n							<xsl:when test=\"$align=\'horizontal\'\">\n								<xsl:text>    </xsl:text>\n							</xsl:when>\n							<xsl:otherwise>\n								<br/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:if>\n					<xsl:if test=\"$renderCmd=\'input\' or $renderCmd=\'all\'\">\n						<input name=\"{$fieldName}\" type=\"submit\">\n							<xsl:variable name=\"value\" select=\"value\"/>\n							<xsl:if test=\"$value\">\n								<xsl:attribute name=\"value\">\n<xsl:value-of select=\"$value\"/>\n</xsl:attribute>\n							</xsl:if>\n							<xsl:for-each select=\"current()/display/meta\">\n								<xsl:variable name=\"attr_name\">\n									<xsl:value-of select=\"name\"/>\n								</xsl:variable>\n								<xsl:variable name=\"attr_value\">\n									<xsl:value-of select=\"value\"/>\n								</xsl:variable>\n								<xsl:attribute name=\"{$attr_name}\">\n<xsl:value-of select=\"$attr_value\"/>\n</xsl:attribute>\n							</xsl:for-each>\n						</input>\n					</xsl:if>\n				</xsl:template>\n				\n				<xsl:template name=\"hidden_input\">\n					<xsl:param name=\"fieldName\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:variable name=\"finalValue\">\n					  <xsl:choose>\n					    <xsl:when test=\"$value\">\n					      <xsl:value-of select=\"$value\"/>\n					    </xsl:when>\n					    <xsl:otherwise>\n						  <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=string($fieldName)]/value\"/>\n						</xsl:otherwise>\n					  </xsl:choose>\n					</xsl:variable>\n					<input name=\"{$fieldName}\" type=\"hidden\" value=\"{$finalValue}\"/>\n					<!-- <xsl:comment>\n					XPath: //edlContent/data/version[@current=\'true\']/field[@name={$fieldName}]/value\n					Escaped: <xsl:value-of select=\"my-class:escapeForXPath($fieldName)\"/>\n					What\'s my value? <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=$fieldName]/value\"/>\n					What\'s my value2? <xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/field[@name=my-class:escapeForXPath($fieldName)]/value\"/>\n					</xsl:comment> -->\n					\n				</xsl:template>\n				\n				<xsl:template name=\"page_button\">\n					<xsl:param name=\"pageName\"/>\n					<xsl:param name=\"value\"/>\n					<xsl:param name=\"readOnly\"/>\n					<xsl:param name=\"clickfunction\"/>\n					<xsl:param name=\"use_jsButton\"/>\n					<xsl:variable name=\"clickFunctionVal\" select=\"boolean(normalize-space($clickfunction))\"/>\n					<xsl:choose>\n						<xsl:when test=\"$readOnly=\'true\'\">\n						  <input disabled=\"disabled\" name=\"edl.gotoPage:{$pageName}\" type=\"submit\" value=\"{$value}\"/>\n						</xsl:when>\n						<xsl:when test=\"$clickFunctionVal\">\n						  <xsl:choose>\n							<xsl:when test=\"$use_jsButton = \'true\'\">\n								<input name=\"jsButton\" onClick=\"{$clickfunction}\" type=\"submit\" value=\"{$value}\"/>\n							</xsl:when>\n							<xsl:otherwise>\n								<input name=\"edl.gotoPage:{$pageName}\" onClick=\"{$clickfunction}\" type=\"submit\" value=\"{$value}\"/>\n							</xsl:otherwise>\n						  </xsl:choose>\n						</xsl:when>\n						<xsl:otherwise>\n						  <input name=\"edl.gotoPage:{$pageName}\" type=\"submit\" value=\"{$value}\"/>\n						</xsl:otherwise>\n					</xsl:choose>\n				</xsl:template>				\n				\n				<xsl:template name=\"header\">\n					<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"headertable\" width=\"100%\">\n						<tr>\n							<td align=\"left\" valign=\"top\" width=\"10%\">\n								<img alt=\"OneStart Workflow\" height=\"21\" hspace=\"5\" src=\"images/wf-logo.gif\" vspace=\"5\" width=\"150\"/>\n							</td>\n							<td align=\"right\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Document Type Name:</td>\n										<td align=\"left\" class=\"datacell1\">\n											<xsl:value-of select=\"/documentContent/documentState/docType\"/>\n										</td>\n									</tr>\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Document Status:</td>\n										<td align=\"left\" class=\"datacell1\" width=\"50\">\n											<xsl:value-of select=\"//documentState/workflowDocumentState/status\"/>\n										</td>\n									</tr>\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Create Date:</td>\n										<td align=\"left\" class=\"datacell1\">\n											<xsl:comment>[transient start]</xsl:comment>\n											<xsl:value-of select=\"//documentState/workflowDocumentState/createDate\"/>\n											<xsl:comment>[transient end]</xsl:comment>\n										</td>\n									</tr>\n									<tr>\n										<td align=\"right\" class=\"thnormal\">Document ID:</td>\n										<td align=\"left\" class=\"datacell1\">\n												<xsl:comment>[transient start]</xsl:comment>\n												<xsl:value-of select=\"/documentContent/documentState/docId\"/>\n												<xsl:comment>[transient end]</xsl:comment>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</xsl:template>\n	\n				<xsl:template name=\"htmlHead\">\n					<!-- whether the FIELDS can be edited -->\n					<!-- <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>-->\n					<!-- whether the form can be acted upon -->\n					<xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable = \'true\'\"/>\n					<xsl:variable name=\"docId\" select=\"/documentContent/documentState/docId\"/>\n					<xsl:variable name=\"def\" select=\"/documentContent/documentState/definition\"/>\n					<xsl:variable name=\"docType\" select=\"/documentContent/documentState/docType\"/>\n					<xsl:variable name=\"style\" select=\"/documentContent/documentState/style\"/>\n					<xsl:variable name=\"annotatable\" select=\"/documentContent/documentState/annotatable = \'true\'\"/>\n					<xsl:variable name=\"docTitle\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/@title\">\n								<xsl:value-of select=\"//edlContent/edl/@title\"/>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:value-of select=\"//edlContent/edl/@name\"/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"pageTitle\">\n						<xsl:choose>\n							<xsl:when test=\"$globalReadOnly = \'true\'\">\n								Viewing\n              </xsl:when>\n							<xsl:otherwise>\n								Editing\n              </xsl:otherwise>\n						</xsl:choose>\n\n\n          </xsl:variable>\n					<title>\n						<xsl:value-of select=\"$pageTitle\"/> Document\n					</title>\n					<xsl:comment>* Meta data block for automation/testing</xsl:comment>\n					<xsl:comment>* 	 [var editable_value=<xsl:value-of select=\"//documentState/editable\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var annotatable_value=<xsl:value-of select=\"//documentState/annotatable\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var globalReadOnly=<xsl:value-of select=\"$globalReadOnly\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var annotatable=<xsl:value-of select=\"$annotatable\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var annotation=<xsl:value-of select=\"//edlContent/data/version[@current=\'true\']/annotation\"/>]</xsl:comment>\n					<xsl:comment>* 	 [transient start]</xsl:comment>\n					<xsl:comment>* 	 [var docid=<xsl:value-of select=\"$docId\"/>]</xsl:comment>\n					<xsl:comment>* 	 [transient end]</xsl:comment>\n					<xsl:comment>* 	 [var doctype=<xsl:value-of select=\"$docType\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var def=<xsl:value-of select=\"$def\"/>]</xsl:comment>\n					<xsl:comment>* 	 [var style=<xsl:value-of select=\"$style\"/>]</xsl:comment>\n					<link href=\"css/screen.css\" rel=\"stylesheet\" type=\"text/css\"/>\n					<link href=\"css/edoclite1.css\" rel=\"stylesheet\" type=\"text/css\"/>\n					<script src=\"scripts/edoclite1.js\" type=\"text/javascript\"/>\n					<script src=\"scripts/prototype.js\" type=\"text/javascript\"/>				\n					<xsl:if test=\"//edlContent/edl/javascript\">\n						<script type=\"text/javascript\">\n							<xsl:value-of select=\"//edlContent/edl/javascript\"/>\n						</script>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"instructions\">\n					<!-- <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/> -->\n					<xsl:variable name=\"docType\" select=\"/documentContent/documentState/docType\"/>\n					<xsl:variable name=\"docTitle\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/@title\">\n								<xsl:value-of select=\"//edlContent/edl/@title\"/>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:value-of select=\"//edlContent/edl/@name\"/>\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"instructions\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/instructions\">\n								<xsl:value-of select=\"//edlContent/edl/instructions\"/>\n							</xsl:when>\n							<xsl:otherwise>\n\n								Reviewing Document\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"createInstructions\">\n						<xsl:choose>\n							<xsl:when test=\"//edlContent/edl/createInstructions\">\n								<xsl:value-of select=\"//edlContent/edl/createInstructions\"/>\n							</xsl:when>\n							<xsl:otherwise>\n\n								Filling out new Document\n							</xsl:otherwise>\n						</xsl:choose>\n					</xsl:variable>\n					<xsl:variable name=\"pageTitle\">\n						<xsl:choose>\n							<xsl:when test=\"$globalReadOnly = \'true\'\">\n								Viewing\n							</xsl:when>\n							<xsl:otherwise>\n								Editing \n							</xsl:otherwise>\n						</xsl:choose>\n\n\n						Document\n					</xsl:variable>\n					<table align=\"center\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"80%\">\n						<tr>\n							<td>\n								<strong>\n									<xsl:value-of select=\"$pageTitle\"/>\n								</strong>\n							</td>\n						</tr>\n						<tr>\n							<td>\n								<!-- if \'save\' action is present then this is a \"new\" document that has not been routed, and therefore we should display the create instructions -->\n								<xsl:choose>\n									<xsl:when test=\"//documentState/actionsPossible/save\">\n										<xsl:value-of select=\"$createInstructions\"/>\n									</xsl:when>\n									<xsl:otherwise>\n										<xsl:value-of select=\"$instructions\"/>\n									</xsl:otherwise>\n								</xsl:choose>\n							</td>\n						</tr>\n					</table>\n				</xsl:template>\n	\n				<xsl:template name=\"errors\">\n					<!--\n						<style type=\"text/css\">\n							.error-message {\n    						color: red;\n    						text-align: center;\n							}\n						</style> \n					-->\n					<table align=\"center\" border=\"0\" cellpadding=\"10\" cellspacing=\"0\" width=\"80%\">\n						<xsl:for-each select=\"//documentState/error\">\n							<tr>\n								<td>\n									<div class=\"error-message\">\n										<xsl:value-of select=\".\"/>\n									</div>\n								</td>\n							</tr>\n						</xsl:for-each>\n					</table>\n				</xsl:template>\n\n				<xsl:template name=\"footer\">\n					<xsl:if test=\"//documentState/userSession/backdoorUser\">\n						<center>\n							User\n							<xsl:choose>\n								<xsl:when test=\"//documentState/userSession/loggedInUser/displayName\">\n									<xsl:value-of select=\"//documentState/userSession/loggedInUser/displayName\"/>\n								</xsl:when>\n								<xsl:when test=\"//documentState/userSession/loggedInUser/networkId\">\n									<xsl:value-of select=\"//documentState/userSession/loggedInUser/networkId\"/>\n								</xsl:when>\n								<xsl:otherwise>\n									??Unknown user??\n								</xsl:otherwise>\n							</xsl:choose>\n							standing in for user\n							<xsl:choose>\n								<xsl:when test=\"//documentState/userSession/backdoorUser/backdoorDisplayName\">\n									<xsl:value-of select=\"//documentState/userSession/backdoorUser/backdoorDisplayName\"/>\n								</xsl:when>\n								<xsl:when test=\"//documentState/userSession/backdoorUser/backdoorNetworkId\">\n									<xsl:value-of select=\"//documentState/userSession/backdoorUser/backdoorNetworkId\"/>\n								</xsl:when>\n								<xsl:otherwise>\n									??Unknown user??\n								</xsl:otherwise>\n							</xsl:choose>\n						</center>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"hidden-params\">\n					<xsl:comment>* Hide this nastiness so we can concentrate on formating above</xsl:comment>\n					<xsl:variable name=\"docId\" select=\"/documentContent/documentState/docId\"/>\n					<xsl:variable name=\"def\" select=\"/documentContent/documentState/definition\"/>\n					<xsl:variable name=\"docType\" select=\"/documentContent/documentState/docType\"/>\n					<xsl:variable name=\"style\" select=\"/documentContent/documentState/style\"/>\n					<xsl:variable name=\"incrementVersion\" select=\"//edlContent/data/version[@current=\'true\']/incrementVersion\"/>\n					<xsl:variable name=\"currentPage\" select=\"//currentPage\"/>\n					<xsl:variable name=\"previousPage\" select=\"//previousPage\"/>\n					<div style=\"display: none\">\n						<xsl:if test=\"$incrementVersion = \'true\'\">\n							<input name=\"incrementVersion\" type=\"hidden\" value=\"{$incrementVersion}\"/>\n						</xsl:if>\n						<xsl:choose>\n							<xsl:when test=\"$docId\">\n								<!-- preserve the data for comparison without transient value -->\n								<xsl:comment>* input name=\"docId\" type=\"hidden\"</xsl:comment>\n								<!-- mark the entire input element transient because we can\'t insert comments in the middle of a tag just to omit a certain attribute -->\n								<xsl:comment>[transient start]</xsl:comment>\n								<input name=\"docId\" type=\"hidden\" value=\"{$docId}\"/>\n								<xsl:comment>[transient end]</xsl:comment>\n							</xsl:when>\n							<xsl:otherwise>\n								<xsl:if test=\"$docType\">\n									<input name=\"docType\" type=\"hidden\" value=\"{$docType}\"/>\n								</xsl:if>\n								<xsl:if test=\"$def\">\n									<input name=\"def\" type=\"hidden\" value=\"{$def}\"/>\n								</xsl:if>\n								<xsl:if test=\"$style\">\n									<input name=\"style\" type=\"hidden\" value=\"{$style}\"/>\n								</xsl:if>\n							</xsl:otherwise>\n						</xsl:choose>\n						<xsl:if test=\"$currentPage\">\n						  <input name=\"edl.currentPage\" type=\"hidden\" value=\"{$currentPage}\"/>\n						</xsl:if>\n						<xsl:if test=\"$previousPage\">\n						  <input name=\"edl.previousPage\" type=\"hidden\" value=\"{$previousPage}\"/>\n						</xsl:if>\n					</div>\n				</xsl:template>\n\n				<xsl:template name=\"annotation\">\n					<xsl:variable name=\"annotation\" select=\"//edlContent/data/version[@current=\'true\']/annotation\"/>\n					<xsl:variable name=\"currentAnnotation\" select=\"//edlContent/data/version[@current=\'true\']/currentAnnotation\"/>\n					<xsl:variable name=\"annotatable\" select=\"/documentContent/documentState/annotatable = \'true\'\"/>\n					<xsl:if test=\"$annotatable or $annotation or $currentAnnotation\">\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\">\n							<tr>\n								<td align=\"center\" class=\"thnormal\" colspan=\"2\">\n									<xsl:if test=\"$annotation\">\n										<div>\n<h4>Annotations</h4>\n											<xsl:for-each select=\"//edlContent/data/version[@current=\'true\']/annotation\">\n												<div>\n<xsl:value-of select=\".\"/>\n</div>\n											</xsl:for-each>\n										</div>\n										<br/>\n									</xsl:if>\n									<xsl:if test=\"$annotatable\">\n										Set annotation:<br/>\n										<textarea name=\"annotation\">\n											<xsl:value-of select=\"$currentAnnotation\"/>\n										</textarea>\n									</xsl:if>\n								</td>\n							</tr>\n						</table>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template name=\"buttons\">\n					<xsl:param name=\"fname\"/>\n					<xsl:param name=\"showRTP\"/>\n					<xsl:variable name=\"functionName\" select=\"$fname\"/>\n					<xsl:variable name=\"fxname\" select=\"boolean(normalize-space($fname))\"/>\n					<xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable = \'true\'\"/>\n					<xsl:variable name=\"apos\" select=\"&quot;\'&quot;\"/>					\n					<xsl:variable name=\"showRTPbutton\" select=\"$showRTP\"/>					\n					<xsl:if test=\"//documentState/actionsPossible/*\">\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\">\n							<tr>\n								<td align=\"center\" class=\"thnormal\" colspan=\"2\">\n									<xsl:text>									</xsl:text>\n										<xsl:for-each select=\"//documentState/actionsPossible/*[. != \'returnToPrevious\']\">\n											<xsl:variable name=\"actionTitle\">\n												<xsl:choose>\n													<xsl:when test=\"@title\">\n														<xsl:value-of select=\"@title\"/>\n													</xsl:when>\n													<xsl:otherwise>\n														<xsl:value-of select=\"local-name()\"/>\n													</xsl:otherwise>\n												</xsl:choose>\n											</xsl:variable>\n										<xsl:if test=\"local-name() != \'returnToPrevious\' or local-name() = \'returnToPrevious\' and not($showRTPbutton = \'false\')\">\n											<input name=\"userAction\" title=\"{$actionTitle}\" type=\"submit\">\n												<xsl:if test=\"not($actionable)\">\n													<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n												</xsl:if>												\n											 <xsl:choose>\n												<xsl:when test=\"$fxname\">\n												  <xsl:attribute name=\"onclick\">\n													  <xsl:value-of select=\"\'buttonClick(\'\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"$actionTitle\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"\'); \'\"/>\n													  <xsl:value-of select=\"\'buttonClickFunctionName(\'\"/>\n													  <xsl:value-of select=\"$functionName\"/>\n													  <xsl:value-of select=\"\')\'\"/>\n													</xsl:attribute>\n												</xsl:when>\n												<xsl:otherwise>\n													<xsl:attribute name=\"onclick\">\n													  <xsl:value-of select=\"\'buttonClick(\'\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"$actionTitle\"/>\n													  <xsl:value-of select=\"$apos\"/>\n													  <xsl:value-of select=\"\')\'\"/>\n													</xsl:attribute>\n												</xsl:otherwise>\n											  </xsl:choose>\n											  <xsl:choose>\n											    <xsl:when test=\"local-name() = \'route\'\">\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"\'submit\'\"/>\n											      </xsl:attribute>\n											    </xsl:when>\n											    <xsl:when test=\"local-name() = \'blanketApprove\'\">\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"\'blanket approve\'\"/>\n											      </xsl:attribute>\n											    </xsl:when>\n											    <xsl:when test=\"local-name() = \'returnToPrevious\'\">\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"\'return to previous\'\"/>\n											      </xsl:attribute>\n											    </xsl:when>\n											    <xsl:otherwise>\n											      <xsl:attribute name=\"value\">\n											        <xsl:value-of select=\"local-name()\"/>\n											      </xsl:attribute>\n											    </xsl:otherwise>\n											  </xsl:choose>\n											</input>\n										</xsl:if>\n											<xsl:text>                 					 </xsl:text>\n										</xsl:for-each>\n								\n								<xsl:if test=\"not($showRTPbutton = \'false\')\">\n									<xsl:if test=\"//documentState/actionsPossible/returnToPrevious\">\n										<select name=\"previousNode\">\n											<xsl:if test=\"not($actionable) or $showRTPbutton = \'false\'\">\n												<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n											</xsl:if>\n											<xsl:for-each select=\"//documentState/previousNodes/node\">\n												<option value=\"{.}\">\n													<xsl:value-of select=\".\"/>\n												</option>\n											</xsl:for-each>\n										</select>\n										<xsl:text>                 					 </xsl:text>\n									</xsl:if>\n								</xsl:if>\n								</td>\n							</tr>\n						</table>\n					</xsl:if>\n				</xsl:template>\n\n				<xsl:template match=\"/\">\n					<xsl:choose>\n						<xsl:when test=\"$overrideMain=\'true\'\">\n							<xsl:call-template name=\"mainForm\"/>\n						</xsl:when>\n						<xsl:otherwise>\n							<html>\n								<head>\n									<xsl:call-template name=\"htmlHead\"/>\n								</head>\n								<body onload=\"onPageLoad()\">\n									<xsl:call-template name=\"header\"/>\n									<xsl:call-template name=\"instructions\"/>\n									<xsl:call-template name=\"errors\"/>\n									<xsl:variable name=\"formTarget\" select=\"\'EDocLite\'\"/>\n									<form accept-charset=\"ISO-8859-1\" action=\"{$formTarget}\" enctype=\"multipart/form-data\" id=\"edoclite\" method=\"post\" onsubmit=\"return validateOnSubmit(this)\">\n										<xsl:call-template name=\"hidden-params\"/>\n										<xsl:call-template name=\"mainBody\"/>\n										<xsl:call-template name=\"annotation\"/>\n										<xsl:call-template name=\"buttons\"/>\n										<br/>\n										<xsl:call-template name=\"notes\"/>\n									</form>\n									<xsl:call-template name=\"footer\"/>\n								</body>\n							</html>\n						</xsl:otherwise>\n					</xsl:choose>\n				</xsl:template>\n\n				<xsl:template name=\"notes\">\n					<xsl:if test=\"//NoteForm\">\n						<xsl:variable name=\"showEdit\" select=\"//NoteForm/showEdit\"/>\n						<xsl:variable name=\"showAdd\" select=\"//NoteForm/showAdd\"/>\n						<input name=\"showEdit\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/showEdit\"/>\n</xsl:attribute>\n						</input>\n						<input name=\"showAdd\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/showAdd\"/>\n</xsl:attribute>\n						</input>\n						<input name=\"methodToCall\" type=\"hidden\"/>\n						<input name=\"sortNotes\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/sortNotes\"/>\n</xsl:attribute>\n						</input>\n						<input name=\"noteIdNumber\" type=\"hidden\">\n							<xsl:attribute name=\"value\">\n<xsl:value-of select=\"//NoteForm/noteIdNumber\"/>\n</xsl:attribute>\n						</input>\n						<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\">\n							<xsl:if test=\"$showAdd = \'true\'\">\n								<tr>\n									<td align=\"center\" class=\"thnormal2\" colspan=\"4\" scope=\"col\">\n										<b>Create Note </b>\n									</td>\n								</tr>\n								<tr>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Author</div>\n									</td>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Date</div>\n									</td>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Note</div>\n									</td>\n									<td class=\"thnormal\" scope=\"col\">\n										<div align=\"center\">Action</div>\n									</td>\n								</tr>\n								<tr valign=\"top\">\n									<td class=\"datacell\">\n										<xsl:if test=\"$globalReadOnly != \'true\'\">\n											<xsl:value-of select=\"//NoteForm/currentUserName\"/>\n										</xsl:if>\n									</td>\n									<td class=\"datacell\">\n										<xsl:if test=\"$globalReadOnly != \'true\'\">\n											<xsl:comment>[transient start]</xsl:comment>\n											<xsl:value-of select=\"//NoteForm/currentDate\"/>\n            				  <xsl:comment>[transient end]</xsl:comment>\n										</xsl:if>\n									</td>\n									<td class=\"datacell\">\n										<xsl:choose>\n											<xsl:when test=\"$showEdit = \'yes\'\">\n												<textarea cols=\"60\" disabled=\"true\" name=\"addText\" rows=\"3\"/>\n												<xsl:if test=\"$showAttachments = \'true\'\">\n													<br/>Attachment:	<input disabled=\"true\" name=\"file\" type=\"file\"/>\n												</xsl:if>\n											</xsl:when>\n											<xsl:otherwise>\n												<textarea cols=\"60\" name=\"addText\" rows=\"3\">\n													<xsl:if test=\"$globalReadOnly = \'true\'\">\n														<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n													</xsl:if>\n												</textarea>\n												<xsl:if test=\"$showAttachments = \'true\'\">\n													<br/>\n													Attachment:	\n													<input name=\"file\" type=\"file\">\n														<xsl:if test=\"$globalReadOnly = \'true\'\">\n															<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n														</xsl:if>\n													</input>\n												</xsl:if>\n											</xsl:otherwise>\n										</xsl:choose>\n									</td>\n									<td class=\"datacell\">\n										<xsl:choose>\n											<xsl:when test=\"$showEdit = \'yes\'\">\n												<div align=\"center\">\n													<img height=\"15\" hspace=\"3\" src=\"images/tinybutton-save-disable.gif\" vspace=\"3\" width=\"45\"/>\n												</div>\n											</xsl:when>\n											<xsl:otherwise>\n												<div align=\"center\">\n													<xsl:choose>\n														<xsl:when test=\"$globalReadOnly = \'true\'\">\n															<img height=\"15\" hspace=\"3\" src=\"images/tinybutton-save-disable.gif\" vspace=\"3\" width=\"45\"/>\n														</xsl:when>\n														<xsl:otherwise>\n															<img border=\"0\" height=\"15\" hspace=\"3\" onclick=\"document.forms[0].methodToCall.value=\'save\'; document.forms[0].submit();\" src=\"images/tinybutton-save.gif\" vspace=\"3\" width=\"45\"/>\n														</xsl:otherwise>\n													</xsl:choose>\n												</div>\n											</xsl:otherwise>\n										</xsl:choose>\n									</td>\n								</tr>\n							</xsl:if>\n							<xsl:choose>\n								<xsl:when test=\"//NoteForm/numberOfNotes &gt;0\">\n									<tr>\n										<td align=\"center\" class=\"thnormal2\" colspan=\"4\" scope=\"col\">\n											<b>View Notes </b>\n										</td>\n									</tr>\n									<tr>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">Author</div>\n										</td>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">\n												 <xsl:choose>\n													<xsl:when test=\"$globalReadOnly = \'true\'\">\n														Date\n													</xsl:when>\n													<xsl:otherwise>\n														<a href=\"javascript: document.forms[0].elements[\'methodToCall\'].value = \'sort\'; document.forms[0].elements[\'sortNotes\'].value = \'true\'; document.forms[0].submit();\">Date</a>\n														<img height=\"5\" src=\"images/arrow-expcol-down.gif\" width=\"9\"/>\n													</xsl:otherwise>\n												</xsl:choose>\n											</div>\n										</td>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">Note</div>\n										</td>\n										<td class=\"thnormal\" scope=\"col\">\n											<div align=\"center\">Action</div>\n										</td>\n									</tr>\n									<xsl:for-each select=\"//NoteForm/Notes/Note\">\n										<tr valign=\"top\">\n											<td class=\"datacell\">\n												<xsl:value-of select=\"noteAuthorFullName\"/>\n											</td>\n											<td class=\"datacell\">\n            			      <xsl:comment>[transient start]</xsl:comment>\n												<xsl:value-of select=\"formattedCreateDate\"/>\n              			    <xsl:comment>[transient end]</xsl:comment>\n												<br/>\n                			  <xsl:comment>[transient start]</xsl:comment>\n												<xsl:value-of select=\"formattedCreateTime\"/>\n												<xsl:comment>[transient end]</xsl:comment>\n											</td>\n											<td class=\"datacell\">\n												 <xsl:choose>\n													<xsl:when test=\"editingNote = \'true\' and authorizedToEdit = \'true\'\">\n														<textarea cols=\"60\" name=\"noteText\" rows=\"3\">\n															<xsl:if test=\"$globalReadOnly = \'true\'\">\n																<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n															</xsl:if>\n															<xsl:value-of select=\"noteText\"/>\n														</textarea>\n														<br/>\n														<xsl:if test=\"$showAttachments = \'true\'\">\n															<xsl:choose>\n																<xsl:when test=\"attachments/attachment\">\n																	<xsl:for-each select=\"attachments/attachment\">\n																		<xsl:value-of select=\"fileName\"/>   \n																		<input name=\"idInEdit\" type=\"hidden\">\n																			<xsl:attribute name=\"value\">\n<xsl:value-of select=\"../../noteId\"/>\n</xsl:attribute>\n																		</input>\n																		<xsl:choose>\n																			<xsl:when test=\"$globalReadOnly = \'true\'\">\n																			</xsl:when>\n																			<xsl:otherwise>\n																				<a href=\"javascript: document.forms[0].elements[\'methodToCall\'].value = \'deleteAttachment\'; document.forms[0].submit();\">delete</a>  \n	                    									<xsl:variable name=\"hrefStr\">attachment?attachmentId=<xsl:value-of select=\"attachmentId\"/>\n</xsl:variable>\n																				<a href=\"{$hrefStr}\">download</a>\n	                     								</xsl:otherwise>\n	                     							</xsl:choose>\n																	</xsl:for-each>\n																</xsl:when>\n																<xsl:otherwise>\n																	<br/>\n																	Attachment:	\n																	<input name=\"file\" type=\"file\">\n																		<xsl:if test=\"$globalReadOnly = \'true\'\">\n																			<xsl:attribute name=\"disabled\">disabled</xsl:attribute>\n																		</xsl:if>\n																	</input>\n																</xsl:otherwise>\n															</xsl:choose>\n														</xsl:if>\n													</xsl:when>\n													<xsl:otherwise>\n														<xsl:value-of select=\"noteText\"/>\n														<br/>\n														<br/>\n														<xsl:if test=\"$showAttachments = \'true\'\">\n															<xsl:for-each select=\"attachments/attachment\">\n																<xsl:value-of select=\"fileName\"/>   \n	                    					<xsl:variable name=\"hrefStr\">attachment?attachmentId=<xsl:value-of select=\"attachmentId\"/>\n</xsl:variable>\n																<a href=\"{$hrefStr}\">download</a>\n															</xsl:for-each>\n														</xsl:if>\n													</xsl:otherwise>\n												</xsl:choose>\n											</td>\n											<td class=\"datacell\">\n												<xsl:choose>\n													<xsl:when test=\"editingNote = \'true\' and authorizedToEdit = \'true\' and $globalReadOnly != \'true\'\">\n														<div align=\"center\">\n															<img border=\"0\" height=\"15\" hspace=\"3\" src=\"images/tinybutton-save.gif\" vspace=\"3\" width=\"40\">\n																<xsl:attribute name=\"onclick\">document.forms[0].elements[\'methodToCall\'].value = \'save\';\n																	document.forms[0].elements[\'noteIdNumber\'].value = <xsl:value-of select=\"noteId\"/>;\n																	document.forms[0].submit();\n																</xsl:attribute>\n															</img>\n															<img border=\"0\" height=\"15\" hspace=\"3\" onclick=\"document.forms[0].elements[\'methodToCall\'].value = \'cancel\'; document.forms[0].submit();\" src=\"images/tinybutton-cancel.gif\" vspace=\"3\" width=\"40\"/>\n														</div>\n													</xsl:when>\n													<xsl:otherwise>\n														<xsl:choose>\n															<xsl:when test=\"../../showEdit != \'yes\' and authorizedToEdit = \'true\' and $globalReadOnly !=\'true\'\">\n																<div align=\"center\">\n																	<img border=\"0\" height=\"15\" hspace=\"3\" src=\"images/tinybutton-edit1.gif\" vspace=\"3\" width=\"40\">\n																		<xsl:attribute name=\"onclick\">document.forms[0].elements[\'methodToCall\'].value = \'edit\';\n																			document.forms[0].elements[\'noteIdNumber\'].value = <xsl:value-of select=\"noteId\"/>;\n																			document.forms[0].submit();\n																		</xsl:attribute>\n																	</img>\n																	<img border=\"0\" height=\"15\" hspace=\"3\" src=\"images/tinybutton-delete1.gif\" vspace=\"3\" width=\"40\">\n																		<xsl:attribute name=\"onclick\">document.forms[0].elements[\'methodToCall\'].value = \'delete\';\n																			document.forms[0].elements[\'noteIdNumber\'].value = <xsl:value-of select=\"noteId\"/>;\n																			document.forms[0].submit();\n																		</xsl:attribute>\n																	</img>\n																</div>\n															</xsl:when>\n															<xsl:otherwise>\n																<div align=\"center\">\n																	<img height=\"15\" hspace=\"3\" src=\"images/tinybutton-edit1-disable.gif\" vspace=\"3\" width=\"40\"/>\n																	<img height=\"15\" src=\"images/tinybutton-delete1-disabled.gif\" vspace=\"3\" width=\"40\"/>\n																</div>\n															</xsl:otherwise>\n														</xsl:choose>\n													</xsl:otherwise>\n												</xsl:choose>\n											</td>\n										</tr>\n									</xsl:for-each>\n								</xsl:when>\n								<xsl:otherwise>\n									<xsl:if test=\"//NoteForm/showAdd != \'true\'\">\n										<tr>\n											<td class=\"thnormal2\">\n												<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\">\n													<tbody>\n														<tr>\n															<td align=\"center\" class=\"spacercell\" valign=\"middle\">\n																<div align=\"center\">\n																	<br/>\n																	<br/>\n																	<br/>\n																	<p>No notes available </p>\n																	<xsl:if test=\"//NoteForm/authorizedToAdd = \'true\'\">\n																		<p>\n																			<img border=\"0\" height=\"15\" hspace=\"3\" onclick=\"document.forms[0].elements[\'methodToCall\'].value = \'add\'; document.forms[0].submit();\" src=\"images/tinybutton-addnote.gif\" vspace=\"3\" width=\"66\"/>\n																		</p>\n																	</xsl:if>\n																</div>\n															</td>\n														</tr>\n													</tbody>\n												</table>\n											</td>\n										</tr>\n									</xsl:if>\n								</xsl:otherwise> \n							</xsl:choose> \n						</table>\n					</xsl:if>\n				</xsl:template> \n                <xsl:template name=\"lookup\">\n                  <xsl:param name=\"fieldName\"/>\n                  <xsl:param name=\"readOnly\"/>\n                  <xsl:if test=\"$globalReadOnly != \'true\' and $readOnly != \'true\'\">\n                    <xsl:if test=\"//fieldDef[@name=$fieldName]/lookup\">\n                      <input name=\"userAction.performLookup.{$fieldName}\" onclick=\"buttonClick(\'performLookup\');\" src=\"images/searchicon.gif\" type=\"image\" value=\"performLookup.{$fieldName}\"/>\n                    </xsl:if>\n                  </xsl:if>\n                </xsl:template>\n			</xsl:stylesheet>\n',1,1,'78f41de9-d148-4e84-855c-b3359f726650'),('2021','eDoc.Example1.Style','<xsl:stylesheet xmlns:my-class=\"xalan://org.kuali.rice.edl.framework.util.EDLFunctions\" xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" version=\"1.0\">\n        <!-- widgets is simply more xslt that contains common functionality that greatly simplifies html rendering. It is somewhat complicated but does not require changes or full understanding unless enhancements are required.  -->\n        <xsl:include href=\"widgets\"/>\n        <xsl:output indent=\"yes\" method=\"html\" omit-xml-declaration=\"yes\" version=\"4.01\"/>\n        <!-- variables in the current version of xslt cannot be changed once set. Below they are set to various values often fed by java classes or to values contained in workflow xml. Not all of these are used in this form but are shown because often they can be useful. The ones prefixed with my-class are methods that are exposed by workflow to Edoclite.-->\n        <xsl:variable name=\"actionable\" select=\"/documentContent/documentState/actionable\"/>\n        <xsl:variable name=\"docHeaderId\" select=\"/documentContent/documentState/docId\"/>\n        <xsl:variable name=\"editable\" select=\"/documentContent/documentState/editable\"/>\n        <xsl:variable name=\"globalReadOnly\" select=\"/documentContent/documentState/editable != \'true\'\"/>\n        <xsl:variable name=\"docStatus\" select=\"//documentState/workflowDocumentState/status\"/>\n        <xsl:variable name=\"isAtNodeInitiated\" select=\"my-class:isAtNode($docHeaderId, \'Initiated\')\"/>\n        <xsl:variable name=\"isPastInitiated\" select=\"my-class:isNodeInPreviousNodeList(\'Initiated\', $docHeaderId)\"/>\n        <xsl:variable name=\"isUserInitiator\" select=\"my-class:isUserInitiator($docHeaderId)\"/>\n        <xsl:param name=\"overrideMain\" select=\"\'true\'\"/>\n        <!-- mainForm begins here. Execution of stylesheet begins here. It calls other templates which can call other templates. Position of templates beyond this point do not matter. -->\n        <xsl:template name=\"mainForm\">\n          <html xmlns=\"\">\n            <head>\n              <script language=\"javascript\"/>\n              <xsl:call-template name=\"htmlHead\"/>\n            </head>\n            <body onload=\"onPageLoad()\">\n              <xsl:call-template name=\"errors\"/>\n              <!-- the header is usefule because it tells the user whether they are in \'Editing\' mode or \'Read Only\' mode. -->\n              <xsl:call-template name=\"header\"/>\n              <xsl:call-template name=\"instructions\"/>\n              <xsl:variable name=\"formTarget\" select=\"\'EDocLite\'\"/>\n              <!-- validateOnSubmit is a function in edoclite1.js which also supports edloclite forms and can be somewhat complicated but does not require modification unless enhancements are required. -->\n              <form action=\"{$formTarget}\" enctype=\"multipart/form-data\" id=\"edoclite\" method=\"post\" onsubmit=\"return validateOnSubmit(this)\">\n                <xsl:call-template name=\"hidden-params\"/>\n                <xsl:call-template name=\"mainBody\"/>\n                <xsl:call-template name=\"notes\"/>\n                <br/>\n                <xsl:call-template name=\"buttons\"/>\n                <br/>\n              </form>\n              <xsl:call-template name=\"footer\"/>\n            </body>\n          </html>\n        </xsl:template>\n        <!-- mainBody template begins here. It calls other templates which can call other templates. Position of templates do not matter. -->\n        <xsl:template name=\"mainBody\">\n          <!--\nto debug, or see values of previously created, the uncomment the following line to see value of $docStatus rendered on form. -->\n          <!-- $docStatus=<xsl:value-of select=\"$docStatus\" />\n-->\n          <!-- rest of this all is within the form table -->\n          <table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"bord-r-t\" width=\"80%\" xmlns=\"\">\n            <tr>\n              <td align=\"left\" border=\"3\" class=\"thnormal\" colspan=\"1\">\n                <br/>\n                <h3>\n                  Indiana University\n                  <br/>\n                  EDL EDoclite Example\n                </h3>\n                <br/>\n              </td>\n              <td align=\"center\" border=\"3\" class=\"thnormal\" colspan=\"2\">\n                <br/>\n                <h2>eDocLite Example 1 Form</h2>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell5\" colspan=\"100%\">\n                <b>User Information</b>\n              </td>\n            </tr>\n            <tr>\n              <!-- IU usually autofills initiator name from Authentication system, and makes it readOnly. See other examples for this type of behavior. -->\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'userName\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'userName\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell5\" colspan=\"100%\">\n                <b>Other Information</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'rqstDate\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'rqstDate\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'campus\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n                <font color=\"#ff0000\">*</font>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'campus\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'description\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'title\'\"/>\n                </xsl:call-template>\n              </td>\n              <td class=\"datacell\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'description\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\" colspan=\"2\">\n                <b>(Check all that apply)</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"datacell\" colspan=\"2\">\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'fundedBy\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n                <br/>\n                <xsl:call-template name=\"widget_render\">\n                  <xsl:with-param name=\"fieldName\" select=\"\'researchHumans\'\"/>\n                  <xsl:with-param name=\"renderCmd\" select=\"\'input\'\"/>\n                  <xsl:with-param name=\"readOnly\" select=\"$isPastInitiated\"/>\n                </xsl:call-template>\n                <br/>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"headercell1\" colspan=\"100%\">\n                <b>Supporting Materials</b>\n              </td>\n            </tr>\n            <tr>\n              <td class=\"thnormal\" colspan=\"100%\">Use the Create Note box below to attach supporting materials to your request. Notes may be added with or without attachments. Click the red \'save\' button on the right.</td>\n            </tr>\n          </table>\n          <br xmlns=\"\"/>\n        </xsl:template>\n        <xsl:template name=\"nbsp\">\n          <xsl:text disable-output-escaping=\"yes\">&amp;nbsp;</xsl:text>\n        </xsl:template>\n      </xsl:stylesheet>\n',1,1,'d7f09fa4-23f8-40b0-9346-18b532e640d1');
/*!40000 ALTER TABLE `KRCR_STYLE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_role_role_v`
--

DROP TABLE IF EXISTS `krim_role_role_v`;
/*!50001 DROP VIEW IF EXISTS `krim_role_role_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_role_role_v` (
  `NMSPC_CD` varchar(40),
  `ROLE_NM` varchar(80),
  `role_id` varchar(40),
  `mbr_role_nmspc_cd` varchar(40),
  `mbr_role_nm` varchar(80),
  `mbr_role_id` varchar(40),
  `role_mbr_id` varchar(40),
  `attr_nm` varchar(100),
  `attr_val` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KREW_EDL_S`
--

DROP TABLE IF EXISTS `KREW_EDL_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_EDL_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2022 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_EDL_S`
--

LOCK TABLES `KREW_EDL_S` WRITE;
/*!40000 ALTER TABLE `KREW_EDL_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_EDL_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_MBR_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ROLE_MBR_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_MBR_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_MBR_ID_S`
--

LOCK TABLES `KRIM_ROLE_MBR_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_MBR_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ROLE_MBR_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_T`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_T` (
  `PPL_FLW_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PPL_FLW_ID`),
  UNIQUE KEY `KREW_PPL_FLW_TC1` (`NM`,`NMSPC_CD`),
  KEY `KREW_PPL_FLW_FK1` (`TYP_ID`),
  CONSTRAINT `KREW_PPL_FLW_FK1` FOREIGN KEY (`TYP_ID`) REFERENCES `KREW_TYP_T` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_T`
--

LOCK TABLES `KREW_PPL_FLW_T` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_FUNC_T`
--

DROP TABLE IF EXISTS `KRMS_FUNC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_FUNC_T` (
  `FUNC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTRN_TYP` varchar(255) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FUNC_ID`),
  UNIQUE KEY `KRMS_FUNC_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRMS_FUNC_TI1` (`TYP_ID`),
  CONSTRAINT `KRMS_FUNC_FK1` FOREIGN KEY (`TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_FUNC_T`
--

LOCK TABLES `KRMS_FUNC_T` WRITE;
/*!40000 ALTER TABLE `KRMS_FUNC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_FUNC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_FUNC_S`
--

DROP TABLE IF EXISTS `KRMS_FUNC_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_FUNC_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_FUNC_S`
--

LOCK TABLES `KRMS_FUNC_S` WRITE;
/*!40000 ALTER TABLE `KRMS_FUNC_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_FUNC_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_S`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_S`
--

LOCK TABLES `KREW_PPL_FLW_S` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_TYP_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_TYP_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_TYP_ATTR_T` (
  `TYP_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SEQ_NO` decimal(5,0) NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(255) COLLATE utf8_bin NOT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TYP_ATTR_ID`),
  UNIQUE KEY `KRMS_TYP_ATTR_TC1` (`TYP_ID`,`ATTR_DEFN_ID`),
  KEY `KRMS_TYP_ATTR_TI1` (`ATTR_DEFN_ID`),
  KEY `KRMS_TYP_ATTR_TI2` (`TYP_ID`),
  CONSTRAINT `KRMS_TYP_ATTR_FK2` FOREIGN KEY (`TYP_ID`) REFERENCES `KRMS_TYP_T` (`TYP_ID`),
  CONSTRAINT `KRMS_TYP_ATTR_FK1` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_TYP_ATTR_T`
--

LOCK TABLES `KRMS_TYP_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_TYP_ATTR_T` DISABLE KEYS */;
INSERT INTO `KRMS_TYP_ATTR_T` VALUES ('1000',1,'1000','1000','Y',0),('1001',1,'1001','1000','Y',0),('1002',1,'1002','1001','Y',1),('1005',2,'1003','1004','Y',1),('1006',3,'1003','1005','Y',1),('1007',3,'1000','1006','Y',1),('1008',3,'1001','1006','Y',1),('T1000',1,'T1003','T1000','Y',1),('T1001',2,'T1005','T1002','Y',0),('T1002',1,'T1005','T1003','Y',0);
/*!40000 ALTER TABLE `KRMS_TYP_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_EXT_ID_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_EXT_ID_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_EXT_ID_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_EXT_ID_ID_S`
--

LOCK TABLES `KRIM_ENTITY_EXT_ID_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_EXT_ID_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_EXT_ID_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ATTR_DEFN_T`
--

DROP TABLE IF EXISTS `KREW_ATTR_DEFN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ATTR_DEFN_T` (
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `LBL` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `CMPNT_NM` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ATTR_DEFN_ID`),
  UNIQUE KEY `KREW_ATTR_DEFN_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ATTR_DEFN_T`
--

LOCK TABLES `KREW_ATTR_DEFN_T` WRITE;
/*!40000 ALTER TABLE `KREW_ATTR_DEFN_T` DISABLE KEYS */;
INSERT INTO `KREW_ATTR_DEFN_T` VALUES ('1','number','KR-SAP','Travel Number','Y','edu.sampleu.travel.bo.TravelAccount',1,NULL),('2','id','KR-SAP',NULL,'Y','edu.sampleu.travel.bo.FiscalOfficer',1,NULL);
/*!40000 ALTER TABLE `KREW_ATTR_DEFN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ATTR_DEFN_S`
--

DROP TABLE IF EXISTS `KREW_ATTR_DEFN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ATTR_DEFN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ATTR_DEFN_S`
--

LOCK TABLES `KREW_ATTR_DEFN_S` WRITE;
/*!40000 ALTER TABLE `KREW_ATTR_DEFN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_ATTR_DEFN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_MSG_S`
--

DROP TABLE IF EXISTS `KREN_MSG_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_MSG_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_MSG_S`
--

LOCK TABLES `KREN_MSG_S` WRITE;
/*!40000 ALTER TABLE `KREN_MSG_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_MSG_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ROLE_T`
--

DROP TABLE IF EXISTS `KRIM_ROLE_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ROLE_T` (
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_NM` varchar(80) COLLATE utf8_bin NOT NULL,
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `KRIM_ROLE_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_ROLE_TC1` (`ROLE_NM`,`NMSPC_CD`),
  KEY `KRIM_ROLE_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_ROLE_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ROLE_T`
--

LOCK TABLES `KRIM_ROLE_T` WRITE;
/*!40000 ALTER TABLE `KRIM_ROLE_T` DISABLE KEYS */;
INSERT INTO `KRIM_ROLE_T` VALUES ('1','5ADF18B6D4847954E0404F8189D85002',1,'User','KUALI','This role derives its members from the users in the Principal table. This role gives users high-level permissions to interact with RICE documents and to login to KUALI.','2','Y','2008-11-04 14:37:10'),('59','5BABFACC4F62A8EEE0404F8189D8770F',1,'Approve Request Recipient','KR-WKFLW','This role derives its members from users with that have received an action request for a given document.','42','Y','2008-11-14 14:10:17'),('60','5BABFACC4F63A8EEE0404F8189D8770F',1,'Initiator','KR-WKFLW','This role derives its members from the initiator listed within the route log of a given document.','43','Y','2008-11-14 14:10:17'),('61','5BABFACC4F64A8EEE0404F8189D8770F',1,'Initiator or Reviewer','KR-WKFLW','This role derives its members from the initiator and action request recipients listed within the route log of a given document.','43','Y','2008-11-14 14:10:17'),('63','5B31640F0105ADF1E0404F8189D84647',1,'Technical Administrator','KR-SYS','This role can take superuser actions and blanket approve RICE documents as well as being able to modify and assign permissions, responsibilities and roles belonging to the KR namespaces.','1','Y','2008-11-08 11:55:22'),('66','5BABFACC4F61A8EEE0404F8189D8770F',1,'Document Editor','KR-NS','This role derives its members from users with the Edit Document permission for a given document type.,','45','Y','2008-11-14 14:10:17'),('67','5BABFACC4F65A8EEE0404F8189D8770F',1,'Router','KR-WKFLW','This role derives its members from the user who took the Complete action on a given document.','43','Y','2008-11-14 14:10:17'),('83','606763510FBF96D3E0404F8189D857A2',1,'Document Opener','KR-NS','This role derives its members from users with the Open Document permission for a given document type.,','60','Y','2009-01-13 19:26:16'),('88','6102F3FA08CE45CFE0404F8189D8317E',1,'Acknowledge Request Recipient','KR-WKFLW','This role derives its members from users with an acknowledge action request in the route log of a given document.','42','Y','2009-01-21 13:02:02'),('89','6102F3FA08CF45CFE0404F8189D8317E',1,'FYI Request Recipient','KR-WKFLW','This role derives its members from users with an FYI action request in the route log of a given document.','42','Y','2009-01-21 13:02:03'),('90','61815E6C62D0B647E0404F8189D873B3',1,'System User','KR-SYS','This role represents the KR System User, that is the user ID RICE uses when it takes programmed actions.','1','Y','2009-08-21 03:52:58'),('95','67F145466E8B9160E0404F8189D86771',1,'Document Initiator','KR-SYS','This role derives its members from users with the Initiate Document permission for a given document type.','66','Y','2009-08-21 03:52:58'),('97','67F145466EB09160E0404F8189D86771',1,'Non-Ad Hoc Approve Request Recipient','KR-WKFLW','This role derives its members from users with an Approval action request (that was not generated via the ad-hoc recipients tab) in the route log of a given document.','42','Y','2009-08-21 03:52:58'),('98','B7DBFABEFD2D8CBFE0402E0AA9D757C9',1,'Kuali Rules Management System Administrator','KR-RULE','This role maintains KRMS agendas and rules.','1','Y','2012-01-31 16:04:04'),('99','BD82F716EFEFF706E0402E0AA9D70A27',1,'Document Router','KR-WKFLW','This role derives its members from users with the Route Document permission for a given document type.','76','Y','2012-04-12 21:23:24'),('KR1000','CFBAA6F5F0D25D07E0406E0AC31D229B',1,'GuestRole','KUALI','This role is used for no login guest users.','1','Y','2012-11-30 17:23:57'),('KR1001','D0C2892F47ED9142E0406E0AC31D23D6',1,'Complete Request Recipient','KR-WKFLW','This role derives its members from users with an complete action request in the route log of a given document.','42','Y',NULL),('KRSAP10003','CDD8032915D1BF1FE040F90A05B94313',1,'Sample App Admin','KR-SAP','Test role for the sample app','1','Y','2012-11-06 17:34:21'),('KRSAP10004','CDD8032915D3BF1FE040F90A05B94313',1,'Sample App Users','KR-SAP','Test role for the sample app','1','Y','2012-11-06 17:34:40');
/*!40000 ALTER TABLE `KRIM_ROLE_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_SESN_DOC_T`
--

DROP TABLE IF EXISTS `KRNS_SESN_DOC_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_SESN_DOC_T` (
  `SESN_DOC_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `IP_ADDR` varchar(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `SERIALZD_DOC_FRM` longblob,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  `CONTENT_ENCRYPTED_IND` char(1) COLLATE utf8_bin DEFAULT 'N',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`SESN_DOC_ID`,`DOC_HDR_ID`,`PRNCPL_ID`,`IP_ADDR`),
  KEY `KRNS_SESN_DOC_TI1` (`LAST_UPDT_DT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_SESN_DOC_T`
--

LOCK TABLES `KRNS_SESN_DOC_T` WRITE;
/*!40000 ALTER TABLE `KRNS_SESN_DOC_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_SESN_DOC_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BK_BOOK_AUTHOR_T`
--

DROP TABLE IF EXISTS `BK_BOOK_AUTHOR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BK_BOOK_AUTHOR_T` (
  `BOOK_ID` decimal(22,0) NOT NULL DEFAULT '0',
  `AUTHOR_ID` decimal(22,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`BOOK_ID`,`AUTHOR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BK_BOOK_AUTHOR_T`
--

LOCK TABLES `BK_BOOK_AUTHOR_T` WRITE;
/*!40000 ALTER TABLE `BK_BOOK_AUTHOR_T` DISABLE KEYS */;
INSERT INTO `BK_BOOK_AUTHOR_T` VALUES (1,1),(1,2),(2,1);
/*!40000 ALTER TABLE `BK_BOOK_AUTHOR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_MSG_T`
--

DROP TABLE IF EXISTS `KREN_MSG_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_MSG_T` (
  `MSG_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `ORGN_ID` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `DELIV_TYP` varchar(500) COLLATE utf8_bin NOT NULL,
  `CRTE_DTTM` datetime NOT NULL,
  `TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CHNL` varchar(300) COLLATE utf8_bin NOT NULL,
  `PRODCR` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `CNTNT` longtext COLLATE utf8_bin NOT NULL,
  `CNTNT_TYP` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `RECIP_ID` varchar(300) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`MSG_ID`),
  UNIQUE KEY `KREN_MSG_TC0` (`ORGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_MSG_T`
--

LOCK TABLES `KREN_MSG_T` WRITE;
/*!40000 ALTER TABLE `KREN_MSG_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_MSG_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRSB_QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `KRSB_QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRSB_QRTZ_LOCKS` (
  `LOCK_NAME` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRSB_QRTZ_LOCKS`
--

LOCK TABLES `KRSB_QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `KRSB_QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `KRSB_QRTZ_LOCKS` VALUES ('CALENDAR_ACCESS'),('JOB_ACCESS'),('MISFIRE_ACCESS'),('STATE_ACCESS'),('TRIGGER_ACCESS');
/*!40000 ALTER TABLE `KRSB_QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_T`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_T` (
  `CNTXT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'Y',
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `DESC_TXT` varchar(255) COLLATE utf8_bin DEFAULT 'null',
  PRIMARY KEY (`CNTXT_ID`),
  UNIQUE KEY `KRMS_CNTXT_TC1` (`NM`,`NMSPC_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_T`
--

LOCK TABLES `KRMS_CNTXT_T` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_T` DISABLE KEYS */;
INSERT INTO `KRMS_CNTXT_T` VALUES ('CONTEXT1','KR-RULE-TEST','Context1','T1003','Y',1,'null'),('CONTEXT_NO_PERMISSION','KRMS_TEST_VOID','Context with no premissions','T1003','Y',1,'null'),('trav-acct-test-ctxt','KR-SAP','Travel Account','T4','Y',1,'null');
/*!40000 ALTER TABLE `KRMS_CNTXT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_CNTXT_S`
--

DROP TABLE IF EXISTS `KRMS_CNTXT_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_CNTXT_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_CNTXT_S`
--

LOCK TABLES `KRMS_CNTXT_S` WRITE;
/*!40000 ALTER TABLE `KRMS_CNTXT_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_CNTXT_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_EDL_DMP_T`
--

DROP TABLE IF EXISTS `KREW_EDL_DMP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_EDL_DMP_T` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_STAT_CD` char(1) COLLATE utf8_bin NOT NULL,
  `DOC_HDR_MDFN_DT` datetime NOT NULL,
  `DOC_HDR_CRTE_DT` datetime NOT NULL,
  `DOC_HDR_TTL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_INITR_PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `CRNT_NODE_NM` varchar(30) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`DOC_HDR_ID`),
  KEY `KREW_EDL_DMP_TI1` (`DOC_TYP_NM`,`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_EDL_DMP_T`
--

LOCK TABLES `KREW_EDL_DMP_T` WRITE;
/*!40000 ALTER TABLE `KREW_EDL_DMP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_EDL_DMP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_HDR_EXT_DT_T`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_EXT_DT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_EXT_DT_T` (
  `DOC_HDR_EXT_DT_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `KEY_CD` varchar(256) COLLATE utf8_bin NOT NULL,
  `VAL` datetime DEFAULT NULL,
  PRIMARY KEY (`DOC_HDR_EXT_DT_ID`),
  KEY `KREW_DOC_HDR_EXT_DT_TI1` (`KEY_CD`(255),`VAL`),
  KEY `KREW_DOC_HDR_EXT_DT_TI2` (`DOC_HDR_ID`),
  KEY `KREW_DOC_HDR_EXT_DT_TI3` (`VAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_EXT_DT_T`
--

LOCK TABLES `KREW_DOC_HDR_EXT_DT_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_DT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_HDR_EXT_DT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_AGENDA_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_AGENDA_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_AGENDA_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_AGENDA_ATTR_S`
--

LOCK TABLES `KRMS_AGENDA_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_AGENDA_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_AGENDA_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_TKN_S`
--

DROP TABLE IF EXISTS `KREW_ACTN_TKN_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_TKN_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2329 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_TKN_S`
--

LOCK TABLES `KREW_ACTN_TKN_S` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_TKN_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_ACTN_TKN_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_ACTN_TKN_T`
--

DROP TABLE IF EXISTS `KREW_ACTN_TKN_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_ACTN_TKN_T` (
  `ACTN_TKN_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRNCPL_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `DLGTR_PRNCPL_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTN_CD` char(1) COLLATE utf8_bin NOT NULL,
  `ACTN_DT` datetime NOT NULL,
  `DOC_VER_NBR` decimal(8,0) NOT NULL,
  `ANNOTN` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT '1',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `DLGTR_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ACTN_TKN_ID`),
  KEY `KREW_ACTN_TKN_TI1` (`DOC_HDR_ID`,`PRNCPL_ID`),
  KEY `KREW_ACTN_TKN_TI2` (`DOC_HDR_ID`,`PRNCPL_ID`,`ACTN_CD`),
  KEY `KREW_ACTN_TKN_TI3` (`PRNCPL_ID`),
  KEY `KREW_ACTN_TKN_TI4` (`DLGTR_PRNCPL_ID`),
  KEY `KREW_ACTN_TKN_TI5` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_ACTN_TKN_T`
--

LOCK TABLES `KREW_ACTN_TKN_T` WRITE;
/*!40000 ALTER TABLE `KREW_ACTN_TKN_T` DISABLE KEYS */;
INSERT INTO `KREW_ACTN_TKN_T` VALUES ('2160','2381','admin',NULL,'B','2008-10-01 09:05:21',1,NULL,1,1,NULL),('2161','2382','admin',NULL,'B','2008-10-01 09:07:35',1,NULL,1,1,NULL),('2162','2383','admin',NULL,'B','2008-10-01 09:12:08',1,NULL,1,1,NULL),('2163','2384','admin',NULL,'B','2008-10-01 09:17:02',1,NULL,1,1,NULL),('2170','2392','admin',NULL,'B','2008-10-01 09:49:59',1,NULL,1,1,NULL),('2172','2394','admin',NULL,'B','2008-10-01 09:54:33',1,NULL,1,1,NULL),('2186','2406','admin',NULL,'B','2008-10-01 10:49:37',1,NULL,1,1,NULL),('2188','2410','admin',NULL,'B','2008-10-01 11:00:44',1,NULL,1,1,NULL),('2320','2692','admin',NULL,'C','2008-12-22 13:04:36',1,NULL,1,1,NULL),('2321','2693','admin',NULL,'C','2008-12-22 13:06:03',1,NULL,1,1,NULL),('2322','2694','admin',NULL,'C','2008-12-22 13:21:13',1,NULL,1,1,NULL),('2323','2695','admin',NULL,'C','2008-12-22 13:22:22',1,NULL,1,1,NULL),('2324','2695','user4',NULL,'A','2008-12-22 13:26:02',1,NULL,1,1,NULL),('2325','2695','employee',NULL,'A','2008-12-22 13:26:33',1,NULL,1,1,NULL),('2326','2695','supervisor',NULL,'A','2008-12-22 13:27:05',1,NULL,1,1,NULL),('2327','2700','admin',NULL,'B','2009-03-17 10:12:08',1,NULL,1,1,NULL),('2328','2701','admin',NULL,'C','2009-03-17 10:14:38',1,NULL,1,1,NULL);
/*!40000 ALTER TABLE `KREW_ACTN_TKN_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_RSP_TMPL_T`
--

DROP TABLE IF EXISTS `KRIM_RSP_TMPL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_RSP_TMPL_T` (
  `RSP_TMPL_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `KIM_TYP_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  PRIMARY KEY (`RSP_TMPL_ID`),
  UNIQUE KEY `KRIM_RSP_TMPL_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_RSP_TMPL_TC1` (`NM`,`NMSPC_CD`),
  KEY `KRIM_RSP_TMPL_TR1` (`KIM_TYP_ID`),
  CONSTRAINT `KRIM_RSP_TMPL_TR1` FOREIGN KEY (`KIM_TYP_ID`) REFERENCES `KRIM_TYP_T` (`KIM_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_RSP_TMPL_T`
--

LOCK TABLES `KRIM_RSP_TMPL_T` WRITE;
/*!40000 ALTER TABLE `KRIM_RSP_TMPL_T` DISABLE KEYS */;
INSERT INTO `KRIM_RSP_TMPL_T` VALUES ('1','5ADFE172441D6320E0404F8189D85169',1,'KR-WKFLW','Review','7',NULL,'Y'),('2','60432A73A6A49F65E0404F8189D86AA4',1,'KR-WKFLW','Resolve Exception','54',NULL,'Y');
/*!40000 ALTER TABLE `KRIM_RSP_TMPL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_RTE_BRCH_PROTO_T`
--

DROP TABLE IF EXISTS `KREW_RTE_BRCH_PROTO_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_RTE_BRCH_PROTO_T` (
  `RTE_BRCH_PROTO_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `BRCH_NM` varchar(255) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  PRIMARY KEY (`RTE_BRCH_PROTO_ID`),
  KEY `KREW_RTE_BRCH_PROTO_TI1` (`BRCH_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_RTE_BRCH_PROTO_T`
--

LOCK TABLES `KREW_RTE_BRCH_PROTO_T` WRITE;
/*!40000 ALTER TABLE `KREW_RTE_BRCH_PROTO_T` DISABLE KEYS */;
INSERT INTO `KREW_RTE_BRCH_PROTO_T` VALUES ('2422','ApprovalBranch',130);
/*!40000 ALTER TABLE `KREW_RTE_BRCH_PROTO_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_AGENDA_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_AGENDA_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_AGENDA_ATTR_T` (
  `AGENDA_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `AGENDA_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AGENDA_ATTR_ID`),
  KEY `KRMS_AGENDA_ATTR_T12` (`ATTR_DEFN_ID`),
  KEY `KRMS_AGENDA_ATTR_TI1` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ATTR_FK1` FOREIGN KEY (`AGENDA_ID`) REFERENCES `KRMS_AGENDA_T` (`AGENDA_ID`),
  CONSTRAINT `KRMS_AGENDA_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_AGENDA_ATTR_T`
--

LOCK TABLES `KRMS_AGENDA_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_AGENDA_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_AGENDA_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `krim_perm_attr_v`
--

DROP TABLE IF EXISTS `krim_perm_attr_v`;
/*!50001 DROP VIEW IF EXISTS `krim_perm_attr_v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `krim_perm_attr_v` (
  `tmpl_nmspc_cd` varchar(40),
  `tmpl_nm` varchar(100),
  `PERM_TMPL_ID` varchar(40),
  `perm_nmspc_cd` varchar(40),
  `perm_nm` varchar(100),
  `PERM_ID` varchar(40),
  `attr_nm` varchar(100),
  `attr_val` varchar(400)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `KREW_DOC_TYP_APP_STAT_CAT_T`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_APP_STAT_CAT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_APP_STAT_CAT_T` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `CAT_NM` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`DOC_TYP_ID`,`CAT_NM`),
  UNIQUE KEY `KREW_DOC_TYP_APP_STAT_CAT_TC1` (`OBJ_ID`),
  CONSTRAINT `KREW_DOC_TYP_APP_STAT_CAT_FK1` FOREIGN KEY (`DOC_TYP_ID`) REFERENCES `KREW_DOC_TYP_T` (`DOC_TYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_APP_STAT_CAT_T`
--

LOCK TABLES `KREW_DOC_TYP_APP_STAT_CAT_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_APP_STAT_CAT_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_DOC_TYP_APP_STAT_CAT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CHNL_T`
--

DROP TABLE IF EXISTS `KREN_CHNL_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CHNL_T` (
  `CHNL_ID` decimal(8,0) NOT NULL DEFAULT '0',
  `NM` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESC_TXT` varchar(4000) COLLATE utf8_bin NOT NULL,
  `SUBSCRB_IND` char(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`CHNL_ID`),
  UNIQUE KEY `KREN_CHNL_TC0` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CHNL_T`
--

LOCK TABLES `KREN_CHNL_T` WRITE;
/*!40000 ALTER TABLE `KREN_CHNL_T` DISABLE KEYS */;
INSERT INTO `KREN_CHNL_T` VALUES (1,'Kuali Rice Channel','This channel is used for sending out information about the Kuali Rice effort.','Y',1,NULL),(2,'Library Events Channel','This channel is used for sending out information about Library Events.','Y',1,NULL),(3,'Overdue Library Books','This channel is used for sending out information about your overdue books.','N',1,NULL),(4,'Concerts Coming to Campus','This channel broadcasts any concerts coming to campus.','Y',1,NULL),(5,'University Alerts','This channel broadcasts general announcements for the university.','N',1,NULL),(500,'KEW','Builtin channel for KEW','N',1,NULL);
/*!40000 ALTER TABLE `KREN_CHNL_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREN_CHNL_S`
--

DROP TABLE IF EXISTS `KREN_CHNL_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREN_CHNL_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREN_CHNL_S`
--

LOCK TABLES `KREN_CHNL_S` WRITE;
/*!40000 ALTER TABLE `KREN_CHNL_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREN_CHNL_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_EXT_ID_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_EXT_ID_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_EXT_ID_TYP_T` (
  `EXT_ID_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ENCR_REQ_IND` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`EXT_ID_TYP_CD`),
  UNIQUE KEY `KRIM_EXT_ID_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_EXT_ID_TYP_TC1` (`NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_EXT_ID_TYP_T`
--

LOCK TABLES `KRIM_EXT_ID_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_EXT_ID_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_EXT_ID_TYP_T` VALUES ('HR','5B97C50B038A6110E0404F8189D85213',1,'Human Resources ID','N','Y','05','2008-11-13 14:06:34'),('LICENSE','5B97C50B038B6110E0404F8189D85213',1,'Driver\'s License','N','Y','06','2008-11-13 14:06:34'),('LOGON','5B97C50B038C6110E0404F8189D85213',1,'Logon ID','N','Y','01','2008-11-13 14:06:34'),('RFID','5B97C50B038D6110E0404F8189D85213',1,'RFID Implant','N','Y','07','2008-11-13 14:06:34'),('SSN','5B97C50B038E6110E0404F8189D85213',1,'Social Security Number','Y','Y','02','2008-11-13 14:06:34'),('TAX','5B97C50B038F6110E0404F8189D85213',1,'Tax ID','Y','Y','03','2008-11-13 14:06:35');
/*!40000 ALTER TABLE `KRIM_EXT_ID_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_USAGE_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_NL_USAGE_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_USAGE_ATTR_T` (
  `NL_USAGE_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NL_USAGE_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`NL_USAGE_ATTR_ID`),
  UNIQUE KEY `KRMS_NL_USAGE_ATTR_TC1` (`NL_USAGE_ID`,`ATTR_DEFN_ID`),
  KEY `KRMS_NL_USAGE_ATTR_FK2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_NL_USAGE_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_NL_USAGE_ATTR_FK1` FOREIGN KEY (`NL_USAGE_ID`) REFERENCES `KRMS_NL_USAGE_T` (`NL_USAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_USAGE_ATTR_T`
--

LOCK TABLES `KRMS_NL_USAGE_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_NL_USAGE_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_NL_USAGE_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_NL_USAGE_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_NL_USAGE_ATTR_S`
--

LOCK TABLES `KRMS_NL_USAGE_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_NL_USAGE_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRVL_TRIP_TYP_T`
--

DROP TABLE IF EXISTS `TRVL_TRIP_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRVL_TRIP_TYP_T` (
  `CODE` varchar(3) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NM` varchar(40) COLLATE utf8_bin NOT NULL,
  `GEN_ENC_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `ENC_BAL_TYP` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ENC_OBJ_CD` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `CONT_INFO_REQ_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `BLANKET_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `AUTO_TR_LIMIT` decimal(19,2) NOT NULL,
  `USE_PER_DIEM` varchar(1) COLLATE utf8_bin NOT NULL,
  `TA_REQUIRED` varchar(1) COLLATE utf8_bin NOT NULL,
  `PER_DIEM_CALC_METHOD` varchar(1) COLLATE utf8_bin NOT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRVL_TRIP_TYP_T`
--

LOCK TABLES `TRVL_TRIP_TYP_T` WRITE;
/*!40000 ALTER TABLE `TRVL_TRIP_TYP_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `TRVL_TRIP_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_ROLE_MT`
--

DROP TABLE IF EXISTS `KRIM_PND_ROLE_MT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_ROLE_MT` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ROLE_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `ROLE_NM` varchar(100) COLLATE utf8_bin NOT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `NMSPC_CD` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_ROLE_MT`
--

LOCK TABLES `KRIM_PND_ROLE_MT` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_MT` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_ROLE_MT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_ACTN_ATTR_S`
--

DROP TABLE IF EXISTS `KRMS_ACTN_ATTR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_ACTN_ATTR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_ACTN_ATTR_S`
--

LOCK TABLES `KRMS_ACTN_ATTR_S` WRITE;
/*!40000 ALTER TABLE `KRMS_ACTN_ATTR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_ACTN_ATTR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_MAINT_LOCK_S`
--

DROP TABLE IF EXISTS `KRNS_MAINT_LOCK_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_MAINT_LOCK_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2020 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_MAINT_LOCK_S`
--

LOCK TABLES `KRNS_MAINT_LOCK_S` WRITE;
/*!40000 ALTER TABLE `KRNS_MAINT_LOCK_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRNS_MAINT_LOCK_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRNS_MAINT_LOCK_T`
--

DROP TABLE IF EXISTS `KRNS_MAINT_LOCK_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRNS_MAINT_LOCK_T` (
  `MAINT_LOCK_REP_TXT` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DOC_HDR_ID` varchar(14) COLLATE utf8_bin NOT NULL,
  `MAINT_LOCK_ID` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`MAINT_LOCK_ID`),
  UNIQUE KEY `KRNS_MAINT_LOCK_TC0` (`OBJ_ID`),
  KEY `KRNS_MAINT_LOCK_TI2` (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRNS_MAINT_LOCK_T`
--

LOCK TABLES `KRNS_MAINT_LOCK_T` WRITE;
/*!40000 ALTER TABLE `KRNS_MAINT_LOCK_T` DISABLE KEYS */;
INSERT INTO `KRNS_MAINT_LOCK_T` VALUES ('edu.sampleu.travel.bo.TravelAccount!!number^^a11','6B9BCFF0-45A8-43B6-B837-92DB714C4A5E',1,'2381','2006'),('edu.sampleu.travel.bo.TravelAccount!!number^^a4','7F487602-E290-87FD-A4EF-C2764B6586B7',1,'2382','2007'),('edu.sampleu.travel.bo.TravelAccount!!number^^a5','D39B8A9F-601C-6207-F440-0456442C7266',1,'2383','2008');
/*!40000 ALTER TABLE `KRNS_MAINT_LOCK_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_ATTR_T`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_ATTR_T` (
  `PPL_FLW_ATTR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PPL_FLW_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PPL_FLW_ATTR_ID`),
  KEY `KREW_PPL_FLW_ATTR_TI1` (`PPL_FLW_ID`),
  KEY `KREW_PPL_FLW_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KREW_PPL_FLW_ATTR_FK1` FOREIGN KEY (`PPL_FLW_ID`) REFERENCES `KREW_PPL_FLW_T` (`PPL_FLW_ID`),
  CONSTRAINT `KREW_PPL_FLW_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KREW_ATTR_DEFN_T` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_ATTR_T`
--

LOCK TABLES `KREW_PPL_FLW_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRMS_ACTN_ATTR_T`
--

DROP TABLE IF EXISTS `KRMS_ACTN_ATTR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRMS_ACTN_ATTR_T` (
  `ACTN_ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ACTN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ACTN_ATTR_DATA_ID`),
  KEY `KRMS_ACTN_ATTR_TI1` (`ACTN_ID`),
  KEY `KRMS_ACTN_ATTR_TI2` (`ATTR_DEFN_ID`),
  CONSTRAINT `KRMS_ACTN_ATTR_FK1` FOREIGN KEY (`ACTN_ID`) REFERENCES `KRMS_ACTN_T` (`ACTN_ID`),
  CONSTRAINT `KRMS_ACTN_ATTR_FK2` FOREIGN KEY (`ATTR_DEFN_ID`) REFERENCES `KRMS_ATTR_DEFN_T` (`ATTR_DEFN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRMS_ACTN_ATTR_T`
--

LOCK TABLES `KRMS_ACTN_ATTR_T` WRITE;
/*!40000 ALTER TABLE `KRMS_ACTN_ATTR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRMS_ACTN_ATTR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_HDR_CNTNT_T`
--

DROP TABLE IF EXISTS `KREW_DOC_HDR_CNTNT_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_HDR_CNTNT_T` (
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `DOC_CNTNT_TXT` longtext COLLATE utf8_bin,
  PRIMARY KEY (`DOC_HDR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_HDR_CNTNT_T`
--

LOCK TABLES `KREW_DOC_HDR_CNTNT_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_HDR_CNTNT_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_HDR_CNTNT_T` VALUES ('2160','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2161','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2220','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2221','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2222','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2223','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2224','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2300','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2340','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2380','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2381','NA7Gruc8vBE/uWeO7U8nzi6cDuVH/RZ3yZO8RaDV3mp1ILet3GX4VhgEXr/vjfBxU0Mp7ws3rXzja8lGm21u2rqESY5mZGiyakWVdZt3UlNFZsRmWKo3SEvwGO/WAoiAqS3FKR7LzQqHEUB9Sarpdx5Hc+ToE2hwzsOj/yUU3DBnI47JmDs2t8LaQk5WEVuXn6bDQ1N6+DhQph2Pqu/jFVUHrUKNS/LJvRGc3sWAD4V5RRZyl2vGZTgm8GpUoPnbkvZy2909JZfO4aeFDLI4B51VXxNbmHCI9jaXa2M4a04peDueFnDA0C0r1qZlH3jk0DT+WKhql1loj1XF9iDnJLDNPl1ZC8xaCR4yYJh4zZXniVcM/jvpYVqMPdSoZ3b23Ej//VUUd+73OArnPYPZowyHRRuxTcY0j5C1CQkdXOvaLqOwAejHSWH0h1PPJZ/zgrpirCzu458peDueFnDA0BtD9p1zEyVtubx+SSWaaFhfdoHJDATrtj5tLUnqHFpmIG4lHBtaPMn9+McYzLPUa1UHrUKNS/LJK4KZE3sHFITUE8C+PbBM5NBft30c1UMmDIdFG7FNxjQGqh5L9kEcgPK4Ra569/gHnphJaZLQUmcmat/BxquoET5tLUnqHFpmJkQhr6IVp2+ktAq+LcOPGaG+dGOZlvQqJkQhr6IVp2+ktAq+LcOPGfaX/umNusUSJkQhr6IVp2+ktAq+LcOPGUbYep1u8m0bJkQhr6IVp296oFH7qmXT8HlfsKEeK+XIKXg7nhZwwNAK11Zf4yzHtBo3CWrAUJTYrY6DCUWAOFGHuvxCBWP/UbGxYjJAJxtCCQq1QlkS04AJHjJgmHjNlQrULLHtk/pelHnbV7XJKhn7elSgCA+BIW1R2Ste426+8oLBDVNqqijtcYjfVygcCX1jgL/YmhH2d2I+t4CN1FHtr7LwrVEAipE9oFwOay+WoXSSwT8iEMdOXjX3kCuVv1UHrUKNS/LJiWNZoz+iLOVmxl5wmxtshHlFFnKXa8ZlwyqtgYhnEgYKjPYDxdceBincRSSOsjscItXqoR/Ud6nX1nWC39qO+pGcTIvkQtCImhIsVwVK5w8JHjJgmHjNla7U6vR9vJ1P+3pUoAgPgSFtUdkrXuNuvp9lPOzPnVqNPkx/tIBVXj6VhqmQ0k/3Bi2aH9gejh/oDscnFbXgQfLViA2InuZFbq2OgwlFgDhRRH2+6oP/BHtW+9R9+u3A/dO4qqyaG89aKXg7nhZwwNBS31zEv3WG40k9cSah48uzVQetQo1L8slgLsI7XsEJ21vBFDnNFt+Drd9WnlvvzDMJHjJgmHjNlVSIXcdSFIDOwjop2jm/mEOglSe73J9FQ7+v4oswuoamaYalti/x3T/rdmkbNOFxSVB4qlpATEEoNsknDW2z2BS72kbi7xN++ZdCaUOIrlJ88/Bp0NYroTxAMs6+wPiar8qnAUzGySGjgxBPjMJ2CMQzlugqnHV+qPJdDAqrOsxTsVPfpD9GAM3kOR0dG8rbnbskCjXTcecbOj39/v6bD2YvFI/38nFd+0GA4HEahmnWXxDyN7DOoQUrsojAv1dIfwUsB94c9Qc4b53FtKuVDY7yXQwKqzrMU7FT36Q/RgDNb+MhDH7oYHSLUO9vrMkd1VlLjaG0nn3doROkshqM4jKbUtZ+sKSVG1UHrUKNS/LJNA7Gruc8vBGXwQea5dVzo6ljCZp2ZPhp3uTqlvQkzlY1KwvrmB9gloBBCiLDXaygfSiu3/erlaBvncW0q5UNjujCdJafV5bztvl1Cg5Pb+uppFFD1zOKmm7eqKUUkhLbfzqRG6Gm5DEDKDPNaDugO1thuhB+RMlYJ8qdlfsxIQm19ADbX4cQiQ+WFE3I6OHZrNkSbvRcHQr6oesdEOMKiFUHrUKNS/LJeWR2au3FULOQCbVj9cDsnh2FPr73uBFPrmtC+7iGm94cwTsfYX7bgFvVVybk6rGI5K3Y9pJOnH/7dl2JOsKF4I2MwE6LbGYrPQdnRskR9jswnJbk3MZBKH6APQv8Z+dAgF1Jmgpxf256DSB+NaXKx6jI1LwAUzn7M/Ih68eVL1EJHjJgmHjNlRQWoG9Mxm6VrY6DCUWAOFEcUlHlN/h/dpWYYTflCoSMN3En5okB5oM3Awoo5l3FcpWYYTflCoSMhEIdX2pisc0JHjJgmHjNlfchhbwF2m/kfeerQbIROtRmTV5dGrm+FosXPZgQDjxJCR4yYJh4zZW2XjYue0uQ3G97Qi55b2OVxF/BMtP5lzCUxuQDoh3CnG97Qi55b2OVuTlChsdENOdTmAur6j1aTc0pvwpUdOKguTlChsdENOdQ5/5a3jYD0xP00Xwb+PDBccLZ/mljl/u+67RkTRNMYA0r+DqiTSLgvNI6wI12fFkTpvw8kf7bbJ8Z3aDIxHV5Oj39/v6bD2bio2fI53H5vaCCJNeexQxei1Dvb6zJHdUCH715uLh0YCr3+LhFtbNbs0mclFM+JjUYEBJ5Kzk9rKPfaAYKDwGWOCtA+mKo7aoNyigH3xoHlw6y7IIsVjCJUjTJtS9B/K42cJzcZA5UKO9BdI5utVmCg+W8c+QLNomDAQaOZDMaCAtshPRc0rWFuLMh18um+/IaAId6/oZFKH4z2nxqoLOHkT2gXA5rL5ZbYboQfkTJWAEOOg4DJ6a+qwUesJn/f1B6gc+ORLag+TPOr8mW85QY6sAIl4yGihpVFx56O9Ztxdo02n+/OwRfbkz6ehn1RPgAzFLWxXBfCQxJJDwpBzbGi1Dvb6zJHdXLx5zLQiDP5v9yzE6dtTnJgyc2SB7FY50hrqJ8FrsS2yuyiMC/V0h/BSwH3hz1BzgtuEC1z7MvhGs4XSA1n/zgDLm4BzxULn8zz1oYxCIXjnlFFnKXa8ZlOCbwalSg+ds0ogTdQhvj4LkQpvn/hNMyi3/m/hghtN9mkzPvm3vj3zwUfH2axT9LVcNiekH3mlfaNNp/vzsEXyj/9E0gS+a7B539nWPnjn/rdmkbNOFxSYzlrtkGRmZhVQetQo1L8sn/B2nm3elx9fXMi49lcbLgGXrQo+c2rXi1dpbwdtUCo9v9eDJ3Tycl/TJ/IEr6ip0jrO3i4nV1Y9xHNJ+G/nn9fy6bYEY4qTTfw6GK1OJPk1vaf/ZAuwSBVQetQo1L8snSeX69lHVU5laRz0n1QQbhrKPg2IKsKCRC9lyr2Y9G/5KKR+/wsoEmVQetQo1L8slQsR+zyLsDaOBVB3/jqD4gVQetQo1L8sk6lNk+jmkLNLiyS7Mf4IWGCR4yYJh4zZWxETmlRwe1HR96R8H9Kevp7LZ9p0BnlZuso+DYgqwoJMozDxpPkBYiToYIrHYn2k8nmNAxRrSzQt4GH3JHwJKcaxODU46yfThY2rcYkIRT4zs8wKi4pRQQEs1ndagbTaH3gjRj2Rl+IZUz3EOHO0mEzQ1TgKKWhsQDRxPgxyyGLw3ybvg1D9o60oTko4wc/OkJHjJgmHjNleuwfLMwO7rt74P/BvrmpjI7dVjOQ+t7362OgwlFgDhRKXg7nhZwwNAvtZuEGdST3wkeMmCYeM2VCPU/Q/FW+qfq/zIQ7jJVWwkeMmCYeM2VCR4yYJh4zZW8FxmOoZqu2Dt2N3AHcTJtz3T90Rx8HePF2BsscW9zVjqDayztyHOzAygzzWg7oDsJHjJgmHjNlf1Mqxo2dwn+dkv51Ru4AEuaMFyH1apKq13Aozsyf0WxCR4yYJh4zZUJHjJgmHjNlft5VORp+xz5hwG33g1QIe0JHjJgmHjNlQkeMmCYeM2VVE/+JExR6W/NNAiWXwQvdoVMHeME1ZaXGyIybge6rslx7VLM4pxehgkeMmCYeM2VCR4yYJh4zZX5lbWZCDGovr0euAjUF5k6NSsL65gfYJYJHjJgmHjNlQkeMmCYeM2V0nl+vZR1VOYjgM8fCH3+P1UHrUKNS/LJCR4yYJh4zZXeHU6u+GI7WlVXEBNYPlxCPk2MAXIT+hwJHjJgmHjNlQkeMmCYeM2VW2G6EH5EyVgnyp2V+zEhCbX0ANtfhxCJD5YUTcjo4dms2RJu9FwdCvqh6x0Q4wqIVQetQo1L8skJHjJgmHjNlW1R2Ste426++3ZdiTrCheBTizsPB7hUoB2q6dDdOABs8j/8jFI8e8eXSffWhN8D2NEysktBBY8IZyh85UyzCOZ+eamymkHrGgkeMmCYeM2VCR4yYJh4zZV/LptgRjipNGt0ycxfOdwOQmZOTVQfs74DKDPNaDugOwkeMmCYeM2VKXg7nhZwwNB11tDcXAc7b3nQ+Ccfzgn7/W3WXOEVqfYaZw06fcEqvaDnWG5DfpZECR4yYJh4zZUJHjJgmHjNlZYaOQRqRr+4GmcNOn3BKr1VB61CjUvyyQkeMmCYeM2VCR4yYJh4zZU9okgGocL3qNHDCJPPF35Qau11MHQmmld11tDcXAc7b3nQ+Ccfzgn7AygzzWg7oDsJHjJgmHjNlQkeMmCYeM2VvuvgEkEvFbq/e8vqrb0KWVQQfh8ZI4salXIR6DRDHmCso+DYgqwoJAkeMmCYeM2VCR4yYJh4zZWem/GhFcZxbXWSat+eAEEnQb/KuCVsjZLkSJekNnSlrjFeL1CDr7jWF5myjEMteC7ICsYsWGv2/AkeMmCYeM2VCR4yYJh4zZXS+iUtyWzThvpVwN1YAXaxCR4yYJh4zZUJHjJgmHjNlSl4O54WcMDQq63e6rvJ/K8OtaPqzRKqSTYGhseqAZdfq63e6rvJ/K8OtaPqzRKqSVUHrUKNS/LJCR4yYJh4zZUJHjJgmHjNlSsOjVgCfIPePsBIRSqlF94JHjJgmHjNlQkeMmCYeM2VPQdnRskR9jswnJbk3MZBKH6APQv8Z+dAgF1Jmgpxf256DSB+NaXKx6jI1LwAUzn7M/Ih68eVL1EJHjJgmHjNlQkeMmCYeM2V0volLcls04b6VcDdWAF2sQkeMmCYeM2VCR4yYJh4zZUcUlHlN/h/dpWYYTflCoSMN3En5okB5oM3Awoo5l3FcpWYYTflCoSMhEIdX2pisc0JHjJgmHjNlQkeMmCYeM2VKMO16oVZuXTceymM3Ovm0AMoM81oO6A7CR4yYJh4zZVmTV5dGrm+FosXPZgQDjxJCR4yYJh4zZUJHjJgmHjNlR1G7o37lnqozoSZe4SEypHel1Ifm26sZFbnZYpQ3ewDzoSZe4SEypHrVgxubT3PgQkeMmCYeM2VCR4yYJh4zZUs+WM3QYTTmbb5dQoOT2/rqaRRQ9czippu3qilFJIS252hrtkUTU45CR4yYJh4zZUJHjJgmHjNlYbVRFJ9kjQ5VQetQo1L8skJHjJgmHjNlUSevfBfxiRJXI2LGaqLza4JHjJgmHjNlTjJR1WRhh2xbiiUmD6EOmMJHjJgmHjNlQkeMmCYeM2VKUpUDfUEB44JHjJgmHjNlQkeMmCYeM2VhtVEUn2SNDlVB61CjUvyyQkeMmCYeM2VRJ698F/GJElcjYsZqovNrgkeMmCYeM2VOMlHVZGGHbFuKJSYPoQ6YwkeMmCYeM2VCR4yYJh4zZUpSlQN9QQHjgkeMmCYeM2VCR4yYJh4zZWG1URSfZI0OVUHrUKNS/LJCR4yYJh4zZUYywpvLsCHoXvqjCCeCxnkAygzzWg7oDspeDueFnDA0CGfBf7sdQTSVQetQo1L8snG1EOsVVg63C+1m4QZ1JPfCR4yYJh4zZUPdJnOcviHbiWPhISZWyVlGAvZhlZb1o44JcEa7pKt3DlOm31WEiwo2FvtD28SUwBlSBPS4wA14azZEm70XB0KaYalti/x3T8JHjJgmHjNlau49os4VTh2dCq5PrFgm/8JHjJgmHjNlZ5dx7xgGpPgNsNE255aOEwRSJNOfISN5lSthHhSm7ldCR4yYJh4zZXoQGavWCWbhqPmM8uDOoeUCR4yYJh4zZV0sR+6yIFrWMh0SFObSXztItsqP/p9tRifB0DnYLc2vnWSat+eAEEnr8fUwUXHsHNtPNySeUhf9nWSat+eAEEn1FhOt3NawBigKx0zQVJ0DFeovFA2osDeAygzzWg7oDuem/GhFcZxbXWSat+eAEEnQb/KuCVsjZLkSJekNnSlrjFeL1CDr7jWF5myjEMteC7ICsYsWGv2/DSz8aiYX3lt5fBIsdctdZ4DKDPNaDugOwJjJkLgzxNPG881vz1lH/BOpqLTtmKd6W+X1Ld/GYXsG881vz1lH/BTxMKoIic34sbUQ6xVWDrcoRz8nHwtJwR4n3NCcu+hWCl4O54WcMDQT1jV4Gmlv67mZ8JHIPtgQvX+PpNuqDwq7BZc9UMqTS5kKBd/2r5LVwhBKeRXkMt3CR4yYJh4zZUXaVDZvT2XpUHACONPOfYkixNtXhYc8mhxwtn+aWOX+77rtGRNE0xgDSv4OqJNIuBYqy5gICLz1+U7bnLc4tpnAygzzWg7oDtXVJHx8N3qiU3u8fN8Q0F69lXjoXl20/BDEJ/1pnmdXIhPWZelnGVnVQetQo1L8sn/Cx10AZXCl6zZEm70XB0K+qHrHRDjCog2BobHqgGXX09Y1eBppb+u5mfCRyD7YEKyEVyIKaMw9yl4O54WcMDQSMSUaD9UtQJVB61CjUvyyR1G7o37lnqozoSZe4SEypHel1Ifm26sZFbnZYpQ3ewDzoSZe4SEypHrVgxubT3PgSl4O54WcMDQq9VVH/8PWRpphqW2L/HdP9L6JS3JbNOG+lXA3VgBdrEpeDueFnDA0Kut3uq7yfyvDrWj6s0Sqkk2BobHqgGXX6ut3uq7yfyvDrWj6s0SqklVB61CjUvyyYiRCb4QKKj38qvW7fHB1oRVB61CjUvyyVtQkLR3Zobuz6ZlF01OQIvNNAiWXwQvdoVMHeME1ZaXGyIybge6rsk6LGcmGtq5KqgSBDTSb7nIMQUVY/+v/+GLUO9vrMkd1QIfvXm4uHRgie3FbDKw3YYp93kN3GPNaRFZT/qrbMj18/y8dgeHvIQiYEUPHW9P79mk0XeT+31nkf84csFwMUYG9agDHCVrEX9qwW8x0gWXumkUYgdHGoKRPaBcDmsvliMBtwyt6l+xd2jzmFN6Y++W42/HtgLjsaPfaAYKDwGWOCtA+mKo7aqqcBFilbvumb9imwgXQ3TjJBGAWWOxAh5VB61CjUvyyUpT7v3TGSbBSq/B2pBd6bniZY3zJirt9WIShH43h4Orq6fu8pJpfhIMVNm7nffEzPB/iQLcjf2w9PwKEmdXin73X/KkJ0o7ww0r+DqiTSLgNRGB52YLnhsp93kN3GPNaciGbTDL+syyfKSea8XrLz6IIQLlQydB6WQZvmcAMFh9nn+V29xqqLEFAfJ87UmT+tIXoyQInz8v+MZuzp2QB3XY0/9chZTF+w346SktYAM31q1RMzb7lucs2zu0M3hUf/0PWpyG7TQDwiGcmZ+X+YGNKxSMIuk7FbHLSBfED2gPc3Uzz77ujhEwt7RlZxDJ840rFIwi6TsVsctIF8QPaA8sGKBzT+N81to02n+/OwRfKP/0TSBL5rsHnf2dY+eOf+t2aRs04XFJjOWu2QZGZmHC2kJOVhFbl+2obRcF7FM+vugbWZinr1maIhBGCKnrbt7k6pb0JM5WuPzYkvSOzW4jGqCeMbNB4hnmUsclfovgzvn+/8D8SEdKS37olB6Sz6++RdeJu11xZs7AdYe1/YpvGNJcpgh/CNft89UEyISTRbSGszDhSZ8q9/i4RbWzW2AfQKeQDXI/yIZtMMv6zLJTizsPB7hUoOwAuaXzxcEA0G1rUyW89iMbeZD4iyNQWRJzJm3v5l0kyhiog2NK/hgl2YtH3DSpeYjP2fmVlmN8kOF3UgyokTrlYMi8y0sJlKv6wHsrmpojiM/Z+ZWWY3zPM1z4fxpuRQkeMmCYeM2VLX0H+4UBLrWx36IloJ3OKrRkwZ3Tb3QCfKJkfffWoi02LKLD8XDd1pmRXGgJDWPMXE8gCB319RcJHjJgmHjNlW8iDrnG7QQ+cCc97ZHf+ntVB61CjUvyyQFy/ITuMB/K8vucXpxjsqQJHjJgmHjNlTsZxN21yC2ZnhBxzcgVnCcJHjJgmHjNlbw8pNYSy41XyV7rco1zXg0BkdniN7ENpyWVlN4YYhFs8vucXpxjsqQJHjJgmHjNlQeUn8XrdTSAF1StEQbx6x3GzPNPz9gYa7239lyy8DaKpcfNP0ZveGIJHjJgmHjNlRi9xaQAx5qC8UNpykGXMnoJHjJgmHjNlT84cPXC0veB19Nui6i1lL8Sh334P6tpYfQgkyIesmpACR4yYJh4zZUtz18CXEtAeLa5wX9HFZRWvch9V39ayMTO0QoY+EPs86Not7Hztr0UMh0fkyzPhvcJHjJgmHjNlUk+wmCtoPGUL8FAszGw1o0fgGC4fgWFcyl4O54WcMDQuZnOMEKVh9Qh9A2UOuBxT1UHrUKNS/LJCR4yYJh4zZUkCVv/NGN/ptETUKBDqxRl+F0oGEdf5/+so+DYgqwoJAkeMmCYeM2VIj2H4HCsZqr/8eMnjL9u5N3yb+//1g07p4CDF01Ilr1hLOZJjOvFj6yj4NiCrCgkKXg7nhZwwNCQk+xdZ7beAUXQsKnqziQFH4BguH4FhXMpeDueFnDA0OZnGRVLkNU7zvn+/8D8SEcJHjJgmHjNlenCJH+6YFL/XHqLd698rJnOuLjfwuVgWKjY3sXhZdopCR4yYJh4zZUMocTvoILlta+hXF/GXWs+qNrK8CPNkxoJHjJgmHjNlav6wHsrmpojPbL4k0CNjWdfzTP4WTGCr2AfQKeQDXI/6J24jYzhrwUJHjJgmHjNleSIPdpv/c4T1seXRYjpoZCIREVeWrE78Pm5jeq78Eeg8cLCSDs+dmu86hKD30Mw5QkeMmCYeM2VclnSnshdsNWE5lGGIdMT4mjZIC0Dp3WdMzpawQaiugAJHjJgmHjNld4dTq74Yjtadm9RNANlkP1fzTP4WTGCrxtD9p1zEyVtrKPg2IKsKCQJHjJgmHjNlT6/2FnndGCsst1oOiP5MjEjqMmuSR4I05Dy8BAw2zwj4/3uqxr14i1MtiNuxLOLowkeMmCYeM2VrqOP09Te51yd/Poj1n2VF6la92CvbmG2DEkvuH+HoD2WHUFD8h4Vg2QMuI0m14S29ppQz3HJvl1GrYARTDZiPewl+F/1STNLCR4yYJh4zZVmcG4O+agxMCtYWbsTPh8pCR4yYJh4zZUlS7i694oMM0+BGRWprjzjDslDgAW5ZRBGj/HVbyuy8lUHrUKNS/LJkv58FNQ4p0rrxX/BxyTeYkFLEN7DdJmiEaVkqyh5wfubJnfjmAuAsFRNih3h8lmC9+4VlocKBX4KNe7dCTlN3QkeMmCYeM2VV3lzU2OnxGu2Uu7ayyXRpAepQ0D1nAPjsx8d0AZzyZ4JHjJgmHjNlYd+IH/6Q1FDSBnaBWUOfIQbIjJuB7quyT1IgHtkR0AIb1TwMSOUzQcdoU1Vt2LBkKKOEDY8qRhuERM5bKmLHUYJHjJgmHjNlYMQT4zCdgjEJrjdHv86ITpR95qJ+/cmkIwiGo2oJOp7ncGV3GX4VTnRF4EJSN0agDo9/f7+mw9m9GVwUd1jRmHDa/2smGd9PaINqwBBl/jrOlDiYGMYCVAKIW8Bfz1UtpJgx611lJ8tCR4yYJh4zZUPGxrV0QnhZAbLT6x6vyu6wlH4ytIols9EN5QJeIdd6R+AYLh+BYVzKXg7nhZwwNAOO///F38cM53y7ULEAKSA0phTVHoHxEHoKcJ2JnCINlUHrUKNS/LJiXVQEb8td+3oSXBt/Uc47vQ8nfP1fQkOaZyfOWjvo93oSXBt/Uc47vQ8nfP1fQkOAygzzWg7oDufYjlDXkWXHr5cAIGd5NrU9Dyd8/V9CQ7zVR6/8T1SL4+8yfEJZHMJ6CnCdiZwiDZVB61CjUvyybcUm0FWcKtRoVfFS3HFKQ/hSRteAJDYVxfQV5dywqpNrB0FWG8hbR00z5I7UDWQMhlGK8gXhHcWCR4yYJh4zZWHfiB/+kNRQzXbPRXuRmSaYljDVDt5oYn/pKb8G3GUmQkeMmCYeM2VdPzScubfuNSs7IS/93LMzwMoM81oO6A7KXg7nhZwwNC57Zi3ft/OoxvqsqjWvovm+xxqknb5q78DKDPNaDugOwkeMmCYeM2VLc8rc/NqZ7LjY9UNKY8kRE+hh2IGQ4TrCR4yYJh4zZXuvBf/CldDijFq2LBXB/SuB9XnaTNQtE8JHjJgmHjNlSl4O54WcMDQlXVUgHjaRQR6wGhbtAO/BVUHrUKNS/LJCR4yYJh4zZUyqUsXEU3idDhIawaVB3GCHt2F5k89u3sJHjJgmHjNlaXMJsSgPK3Cm1OV3aMIWHto/KURcGhqrgkeMmCYeM2VCR4yYJh4zZVYN0i+xVFLNWt7/LREeUoO/OwfJZMW188JHjJgmHjNleBE+IIzy22PqPs/25UwZGrmBtXsFl9ZlQkeMmCYeM2VDl5m34Ze9nibulvgKf7te81CnKtCldWQAygzzWg7oDsJHjJgmHjNlS3PK3Pzamey6L+FHv0BzUJPoYdiBkOE6wkeMmCYeM2V7rwX/wpXQ4pkDvmUqc7kEwfV52kzULRPCR4yYJh4zZUpeDueFnDA0KuRW7N0cUnmesBoW7QDvwVVB61CjUvyyQkeMmCYeM2VMqlLFxFN4nQ+Auao46xCbx7dheZPPbt7CR4yYJh4zZWlzCbEoDytwrC8Il16CdbdaPylEXBoaq4JHjJgmHjNlQkeMmCYeM2VWDdIvsVRSzVBg3cSxuQTN/zsHyWTFtfPCR4yYJh4zZXgRPiCM8ttjzHZ1kaEHXze5gbV7BZfWZUJHjJgmHjNlQ5eZt+GXvZ4IX3lC0heipXNQpyrQpXVkAMoM81oO6A7CR4yYJh4zZUtzytz82pnsjV9lUKg3xVaT6GHYgZDhOsJHjJgmHjNle68F/8KV0OK96wxDmuQwqsH1edpM1C0TwkeMmCYeM2Vibx+WVBDJqpCfrp+wlqI5/4j+SMI41IqYph0Hg5aB+wJHjJgmHjNlQdLL8CBkvlmV5yUfn05oflcsd6vhbgV7QkeMmCYeM2VdZOuXE4zmiNt3PWa5Ch60il4O54WcMDQ0b0XTJWzoBKeEHHNyBWcJwkeMmCYeM2VNA7Gruc8vBE/uWeO7U8nzkrTH62K3z+VcULDmTTeVytV5po/K7ufP9eyzh61gtwVE31edv8LV4eN7zrypioXBN7iWKNXgniNLvtJF/UKkLbt4Nx3LFjfUchqJ9TU4CceYxqqGijKifQq9/i4RbWzW7LSoyB8TNWp+cYfcXX8zR6Jccl/sAnKjn6esXmb308qdZVSVrxhI0dcdLF+9q6bjfX+LN1ocrrunxj6po7T53Zqfq7IijHmkVROnl/34jJz/tr6XqcpFQHiqZlPPd7UDzjJR1WRhh2xMV4vUIOvuNYXmbKMQy14LoRvuIucBG/UMhp5VSgfpI8nyp2V+zEhCRry5pBJL3hNZk1eXRq5vhaLFz2YEA48SYl1UBG/LXftI7XtCr0AyJTEz89ocxxqaWmcnzlo76PdI7XtCr0AyJTEz89ocxxqaTJ29iUihJat7ahtFwXsUz6+6BtZmKevWcSRwnb7EmsTxz/W1eu0X8SST3Bno6fzv5mLrHO1hZ4NqThMNRgC6vTPTpOW+Cwji9ih+tnnUHFM9B0+quCGbHaECTGnGFEXjVpOLsL4FAbgvCMTd2EwRGyGJqCWx36EJ+dROporDip6DAUiv8QKzlRgp5WJ40OoX+2yumVL5IwIBj3/LchWGdm6v/TKcwbWQsdR5lqUzyAb9Yv3V/vdlUfguUfG7YN+uFGMuP2JITR8npvxoRXGcW11kmrfngBBJ0G/yrglbI2S5EiXpDZ0pa4xXi9Qg6+41heZsoxDLXguyArGLFhr9vwUFqBvTMZulSypwiVTFGZlq63e6rvJ/K8OtaPqzRKqSTYGhseqAZdfq63e6rvJ/K8OtaPqzRKqSTFAoohBQxQ1zzNc+H8abkVNQQnJXjyYeKRVF/L17HHgZS+uULHdGVeMbthaE+vysSPiZhvIsmuLOfk1YCM16yOpt2NpwMbvUlO0cs+lANgLVdDaPCR+MLdBoApHaBWBbet2aRs04XFJx8bao/6XAYj9DFeTiERiRg=='),('2382','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'),('2383','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'),('2384','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'),('2385','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2386','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2392','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'),('2394','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'),('2395','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2406','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'),('2409','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2410','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'),('2460','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2540','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2541','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2545','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2546','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2560','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2561','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2684','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2685','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2686','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2687','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2688','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2689','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2690','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2691','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2692','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'),('2693','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'),('2694','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'),('2695','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'),('2696','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2698','NA7Gruc8vBE/uWeO7U8nztSkLe56jYCi'),('2700','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'),('2701','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');
/*!40000 ALTER TABLE `KREW_DOC_HDR_CNTNT_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PHONE_TYP_T`
--

DROP TABLE IF EXISTS `KRIM_PHONE_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PHONE_TYP_T` (
  `PHONE_TYP_CD` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `PHONE_TYP_NM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `DISPLAY_SORT_CD` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `LAST_UPDT_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`PHONE_TYP_CD`),
  UNIQUE KEY `KRIM_PHONE_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KRIM_PHONE_TYP_TC1` (`PHONE_TYP_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PHONE_TYP_T`
--

LOCK TABLES `KRIM_PHONE_TYP_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PHONE_TYP_T` DISABLE KEYS */;
INSERT INTO `KRIM_PHONE_TYP_T` VALUES ('HM','5B97C50B03906110E0404F8189D85213',1,'Home','Y','b','2008-11-13 14:06:35'),('MBL','5B97C50B03916110E0404F8189D85213',1,'Mobile','Y','c','2008-11-13 14:06:35'),('OTH','5B97C50B03926110E0404F8189D85213',1,'Other','Y','d','2008-11-13 14:06:35'),('WRK','5B97C50B03936110E0404F8189D85213',1,'Work','Y','a','2008-11-13 14:06:35');
/*!40000 ALTER TABLE `KRIM_PHONE_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_ENTITY_ID_S`
--

DROP TABLE IF EXISTS `KRIM_ENTITY_ID_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_ENTITY_ID_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_ENTITY_ID_S`
--

LOCK TABLES `KRIM_ENTITY_ID_S` WRITE;
/*!40000 ALTER TABLE `KRIM_ENTITY_ID_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_ENTITY_ID_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_DOC_TYP_T`
--

DROP TABLE IF EXISTS `KREW_DOC_TYP_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_DOC_TYP_T` (
  `DOC_TYP_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PARNT_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_NM` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_VER_NBR` decimal(10,0) DEFAULT '0',
  `ACTV_IND` decimal(1,0) DEFAULT NULL,
  `CUR_IND` decimal(1,0) DEFAULT NULL,
  `LBL` varchar(128) COLLATE utf8_bin NOT NULL,
  `PREV_DOC_TYP_VER_NBR` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOC_TYP_DESC` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDLR_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `POST_PRCSR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `JNDI_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `BLNKT_APPR_PLCY` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ADV_DOC_SRCH_URL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `RTE_VER_NBR` varchar(2) COLLATE utf8_bin DEFAULT '1',
  `NOTIFY_ADDR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `APPL_ID` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_XSL` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SEC_XML` longtext COLLATE utf8_bin,
  `VER_NBR` decimal(8,0) DEFAULT '0',
  `BLNKT_APPR_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `RPT_GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `GRP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `HELP_DEF_URL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `DOC_SEARCH_HELP_URL` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DOC_HDR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `AUTHORIZER` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`DOC_TYP_ID`),
  UNIQUE KEY `KREW_DOC_TYP_TC0` (`OBJ_ID`),
  UNIQUE KEY `KREW_DOC_TYP_TI1` (`DOC_TYP_NM`,`DOC_TYP_VER_NBR`),
  KEY `KREW_DOC_TYP_TI2` (`PARNT_ID`),
  KEY `KREW_DOC_TYP_TI3` (`DOC_TYP_ID`,`PARNT_ID`),
  KEY `KREW_DOC_TYP_TI4` (`PREV_DOC_TYP_VER_NBR`),
  KEY `KREW_DOC_TYP_TI5` (`CUR_IND`),
  KEY `KREW_DOC_TYP_TI6` (`DOC_TYP_NM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_DOC_TYP_T`
--

LOCK TABLES `KREW_DOC_TYP_T` WRITE;
/*!40000 ALTER TABLE `KREW_DOC_TYP_T` DISABLE KEYS */;
INSERT INTO `KREW_DOC_TYP_T` VALUES ('2011','2681','DocumentTypeDocument',0,1,1,'Workflow Maintenance Document Type Document',NULL,'Workflow Maintenance Document Type Document','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fdocumenttype.htm','6166CBA1BA5D644DE0404F8189D86C09',NULL,NULL,NULL),('2012','2681','RoutingRuleDocument',0,1,1,'Rule Maintenance Document Type Document',NULL,'Rule Maintenance Document Type Document','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA5E644DE0404F8189D86C09',NULL,NULL,NULL),('2023',NULL,'KualiNotification',0,1,1,'Notification',NULL,'This is the re-usable notification document type that will be used for delivering all notifications with KEW.','${ken.url}/DetailView.form','org.kuali.rice.ken.postprocessor.kew.NotificationPostProcessor',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,0,'1',NULL,'2000',NULL,'6166CBA1BA69644DE0404F8189D86C09',NULL,NULL,NULL),('2024',NULL,'SendNotificationRequest',0,1,1,'Send Notification Request',NULL,'Create a New Notification Request','${ken.url}/AdministerNotificationRequest.form','org.kuali.rice.ken.postprocessor.kew.NotificationSenderFormPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA6A644DE0404F8189D86C09',NULL,NULL,NULL),('2029','2681','TravelAccountMaintenanceDocument',0,1,0,'Travel Account Maintenance Document',NULL,'Create a New Travel Account Maintenance Document','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'6166CBA1BA6F644DE0404F8189D86C09',NULL,NULL,NULL),('2030','2681','FiscalOfficerMaintenanceDocument',0,1,1,'Travel Fiscal Officer',NULL,'Create a New Travel Fiscal Officer','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA70644DE0404F8189D86C09',NULL,NULL,NULL),('2031','2681','NamespaceMaintenanceDocument',0,1,1,'Namespace',NULL,'Create/edit parameter namespaces','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fnamespace.htm','6166CBA1BA71644DE0404F8189D86C09',NULL,NULL,NULL),('2032','2681','ParameterTypeMaintenanceDocument',0,1,1,'Parameter Type Maintenance Document',NULL,'Create/edit a parameter type','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparametertype.htm','6166CBA1BA72644DE0404F8189D86C09',NULL,NULL,NULL),('2033','2681','ParameterDetailTypeMaintenanceDocument',0,1,1,'Parameter Detail Type Maintenance Document',NULL,'Create/edit a parameter detail type','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparametercomponent.htm','6166CBA1BA73644DE0404F8189D86C09',NULL,NULL,NULL),('2034','2681','ParameterMaintenanceDocument',0,1,1,'Parameter Maintenance Document',NULL,'Create/edit a parameter','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparameter.htm','6166CBA1BA74644DE0404F8189D86C09',NULL,NULL,NULL),('2217',NULL,'eDoc.Example1.ParentDoctype',0,1,1,'eDoc.Example1 Parent Document',NULL,'eDoc.Example1 Parent Doctype','${workflow.url}/EDocLite','org.kuali.rice.edl.framework.workflow.EDocLitePostProcessor',NULL,'NONE',NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,'2200',NULL,'6166CBA1BA7B644DE0404F8189D86C09',NULL,NULL,NULL),('2282',NULL,'SampleThinClientDocument',0,1,1,'SampleThinClientDocument',NULL,'SampleThinClientDocument','none','org.kuali.rice.kew.postprocessor.DefaultPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA7D644DE0404F8189D86C09',NULL,NULL,NULL),('2440','2217','eDoc.Example1Doctype',0,1,1,'eDoc.Example1 Request DocumentType',NULL,'eDoc.Example1 Request DocumentType','${workflow.url}/EDocLite','org.kuali.rice.edl.framework.workflow.EDocLitePostProcessor',NULL,'NONE',NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,'2200',NULL,'6166CBA1BA80644DE0404F8189D86C09',NULL,NULL,NULL),('2680',NULL,'KualiDocument',0,1,1,'KualiDocument',NULL,'KualiDocument',NULL,'org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'6166CBA1BA81644DE0404F8189D86C09',NULL,NULL,NULL),('2681','2680','RiceDocument',0,1,1,'Rice Document',NULL,'Parent Document Type for all Rice Documents',NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,11,NULL,NULL,NULL,NULL,'6166CBA1BA82644DE0404F8189D86C09',NULL,NULL,NULL),('2683','2681','TravelRequest',0,1,1,'Travel Request',NULL,'Create a New Travel Request','${application.url}/travelDocument2.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,'1',NULL,'1',NULL,'6166CBA1BA84644DE0404F8189D86C09',NULL,NULL,NULL),('2697','2681','IdentityManagementPersonDocument',0,1,0,'Person Document',NULL,NULL,'${application.url}/kim/identityManagementPersonDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'6166CBA1BA85644DE0404F8189D86C09',NULL,NULL,NULL),('2699','2681','RoutingRuleDelegationMaintenanceDocument',0,1,1,'Routing Rule Delegation',NULL,'Routing Rule Delegation','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'A6DC8753-AF90-7A01-0EF7-E6D446529668',NULL,NULL,NULL),('2702','2681','IdentityManagementGroupDocument',0,1,0,'Group',NULL,NULL,'${application.url}/kim/identityManagementGroupDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'6BE7733A-643E-666C-CD18-E7439476C12E',NULL,NULL,NULL),('2703','2681','IdentityManagementRoleDocument',0,1,0,'Role',NULL,NULL,'${application.url}/kim/identityManagementRoleDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'EAF58989-D602-4CB1-961D-E31E0383B2D6',NULL,NULL,NULL),('2704','2681','RecipeParentMaintenanceDocument',0,1,1,'Recipe Maintenance Document Parent',NULL,'Parent Document for Recipe Maintenance Documents','${application.url}/kr/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'327B8EEB-BC71-4701-A9E8-B4FC878FFCA6',NULL,NULL,NULL),('2705','2704','RecipeCategoryMaintenanceDocument',0,1,1,'Recipe Category Maintenance',NULL,'Create or Update a Recipe Category','${application.url}/kr/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'E9CB1AAD-0015-16D5-9149-EC2A4AEDE932',NULL,NULL,NULL),('2706','2704','RecipeIngredientMaintenanceDocument',0,1,1,'Recipe Ingredient Maintenance',NULL,'Create or Update a Recipe Ingredient','${application.url}/kr/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'41800805-9154-D43E-785F-3E76255F7F97',NULL,NULL,NULL),('2707','2704','RecipeMaintenanceDocument',0,1,1,'Recipe Maintenance',NULL,'Create or Update a Recipe','${application.url}/kr/maintenance.do?methodToCall=docHandler','edu.sampleu.recipe.kew.RecipesPostProcessor',NULL,NULL,NULL,'2',NULL,'RECIPE',NULL,NULL,0,'1',NULL,'1',NULL,'C1CED233-6389-D07B-8ADD-B8043E50B599',NULL,NULL,NULL),('2708','2681','CampusMaintenanceDocument',0,1,1,'CampusMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcampus.htm','616D94CA-D08D-D036-E77D-4B53DB34CD95',NULL,NULL,NULL),('2709','2681','CampusTypeMaintenanceDocument',0,1,1,'CampusTypeMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcampustype.htm','DE0B8588-E459-C07A-87B8-6ACD693AE70C',NULL,NULL,NULL),('2710','2681','CountryMaintenanceDocument',0,1,1,'CountryMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcountry.htm','82EDB593-97BA-428E-C6E7-A7F3031CFAEB',NULL,NULL,NULL),('2711','2681','CountyMaintenanceDocument',0,1,1,'CountyMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fcounty.htm','C972E260-5552-BB63-72E6-A514301B0326',NULL,NULL,NULL),('2712','2681','PostalCodeMaintenanceDocument',0,1,1,'PostalCodeMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fpostalcode.htm','B79D1104-BC48-1597-AFBE-773EED31A110',NULL,NULL,NULL),('2713','2681','StateMaintenanceDocument',0,1,1,'StateMaintenanceDocument',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fstate.htm','EF2378F6-E770-D7BF-B7F1-C18881E3AFF0',NULL,NULL,NULL),('2994','2681','IdentityManagementDocument',0,1,1,'Identity Management Document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,NULL,'944596CD-A7FC-0DEE-EDE1-52A52BED85CC',NULL,NULL,NULL),('2995','2994','IdentityManagementRoleDocument',1,1,1,'Role','2703',NULL,'${kim.url}/identityManagementRoleDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Frole.htm','FEA8D9DD-0592-0525-B2BD-2F4BA811CF30',NULL,NULL,NULL),('2996','2994','IdentityManagementGroupDocument',1,1,1,'Group','2702',NULL,'${kim.url}/identityManagementGroupDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fgroup.htm','D9636763-7749-8F3F-4570-21181E977AE3',NULL,NULL,NULL),('2997','2994','IdentityManagementPersonDocument',1,1,1,'Person','2697',NULL,'${kim.url}/identityManagementPersonDocument.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fperson.htm','14C95FE4-1497-82C6-CBBD-BF16AD81B845',NULL,NULL,NULL),('2998','2994','IdentityManagementReviewResponsibilityMaintenanceDocument',0,1,1,'Review Responsibility',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fresponsibility.htm','66413887-3C82-B12D-9563-0A893E8D1910',NULL,NULL,NULL),('2999','2994','IdentityManagementGenericPermissionMaintenanceDocument',0,1,1,'Permission',NULL,NULL,'${kr.url}/maintenance.do?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,'default.htm?turl=WordDocuments%2Fpermission.htm','A3AE4787-018E-1F17-6EB6-F2F0F366774F',NULL,NULL,NULL),('3000','2681','AgendaEditorMaintenanceDocument',0,1,1,'KRMS Agenda Editor Maintenance Document',NULL,'Create a KRMS Agenda','${kr.krad.url}/krmsAgendaEditor?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'ebd70731-4d33-4c0b-a958-2b9ca047ae07',NULL,NULL,NULL),('3001','2681','AgendaMaintenanceDocument',0,1,1,'Agenda Maintenance Document',NULL,'Create a New Agenda','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'3198b708-6e29-4b19-bf35-51473cf8a3d1',NULL,NULL,NULL),('3002','2681','PeopleFlowMaintenanceDocument',0,1,1,'PeopleFlowMaintenanceDocument',NULL,NULL,'${kr.krad.url}/peopleFlowMaintenance?methodToCall=docHandler',NULL,NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2c0a1333-f60b-47c4-a9b0-76f32f1ed97d',NULL,NULL,NULL),('3003','2681','ContextMaintenanceDocument',0,1,1,'KRMS Context Maintenance Document',NULL,'Create a KRMS Context','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'87413487-8306-4130-b2df-a5d0e42243f9',NULL,NULL,NULL),('3004','2681','TermMaintenanceDocument',0,1,1,'KRMS Term Maintenance Document',NULL,'Create a KRMS Term','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'bc83f80b-85c4-40fd-998c-ef53fdd97e3f',NULL,NULL,NULL),('3005','2681','TermSpecificationMaintenanceDocument',0,1,1,'KRMS Term Specification Maintenance Document',NULL,'Create a KRMS Term Specification','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'57e7ee1d-e44a-4154-9ba4-ee562c434c98',NULL,NULL,NULL),('3006','2681','TravelAccountMaintenanceDocument',1,1,1,'Travel Account Maintenance Document','2029','Create a New Travel Account Maintenance Document','${kr.krad.url}/maintenance?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'0b89a795-8079-460a-b456-39c5c477938b',NULL,NULL,NULL),('3007','2681','ComponentMaintenanceDocument',0,1,1,'Component Maintenance Document',NULL,'Create/edit a component','${kr.url}/maintenance.do?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1','default.htm?turl=WordDocuments%2Fparametertype.htm','e9e0086b-30ce-4a9b-a2d6-564772076a1e',NULL,NULL,NULL),('3008','2681','TravelAuthorization',0,1,1,'Travel Authorization Document',NULL,'Create a New Travel Authorization Document','${application.url}/kr-krad/approval?methodToCall=docHandler','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'b9110d38-8fe0-4123-a65a-5df2336795fa',NULL,NULL,NULL),('3009','2681','FiscalOfficerInfoMaintenanceDocument',0,1,1,'Fiscal Officer Info Maintenance Document',NULL,'Create a New Fiscal Officer Maintenance Document','${application.url}/krad/maintenance?methodToCall=docHandler&dataObjectClassName=edu.sampleu.travel.dto.FiscalOfficerInfo','org.kuali.rice.krad.workflow.postprocessor.KualiPostProcessor',NULL,NULL,NULL,'2',NULL,NULL,NULL,NULL,1,'1',NULL,'1',NULL,'a4ecd35b-f35a-40ac-a9e1-ed47201281ec',NULL,NULL,NULL);
/*!40000 ALTER TABLE `KREW_DOC_TYP_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_MBR_S`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_MBR_S`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_MBR_S` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_MBR_S`
--

LOCK TABLES `KREW_PPL_FLW_MBR_S` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_MBR_S` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_MBR_S` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KREW_PPL_FLW_MBR_T`
--

DROP TABLE IF EXISTS `KREW_PPL_FLW_MBR_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KREW_PPL_FLW_MBR_T` (
  `PPL_FLW_MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `PPL_FLW_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `MBR_TYP_CD` varchar(1) COLLATE utf8_bin NOT NULL,
  `MBR_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  `PRIO` decimal(8,0) DEFAULT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '0',
  `ACTN_RQST_PLCY_CD` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `RSP_ID` varchar(40) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`PPL_FLW_MBR_ID`),
  KEY `KREW_PPL_FLW_MBR_TI1` (`PPL_FLW_ID`),
  KEY `KREW_PPL_FLW_MBR_TI2` (`PPL_FLW_ID`,`PRIO`),
  CONSTRAINT `KREW_PPL_FLW_MBR_FK1` FOREIGN KEY (`PPL_FLW_ID`) REFERENCES `KREW_PPL_FLW_T` (`PPL_FLW_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KREW_PPL_FLW_MBR_T`
--

LOCK TABLES `KREW_PPL_FLW_MBR_T` WRITE;
/*!40000 ALTER TABLE `KREW_PPL_FLW_MBR_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KREW_PPL_FLW_MBR_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KRIM_PND_DLGN_MBR_ATTR_DATA_T`
--

DROP TABLE IF EXISTS `KRIM_PND_DLGN_MBR_ATTR_DATA_T`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KRIM_PND_DLGN_MBR_ATTR_DATA_T` (
  `FDOC_NBR` varchar(14) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ATTR_DATA_ID` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `DLGN_MBR_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_TYP_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `KIM_ATTR_DEFN_ID` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `ATTR_VAL` varchar(400) COLLATE utf8_bin DEFAULT NULL,
  `ACTV_IND` varchar(1) COLLATE utf8_bin DEFAULT 'Y',
  `EDIT_FLAG` varchar(1) COLLATE utf8_bin DEFAULT 'N',
  PRIMARY KEY (`FDOC_NBR`,`ATTR_DATA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KRIM_PND_DLGN_MBR_ATTR_DATA_T`
--

LOCK TABLES `KRIM_PND_DLGN_MBR_ATTR_DATA_T` WRITE;
/*!40000 ALTER TABLE `KRIM_PND_DLGN_MBR_ATTR_DATA_T` DISABLE KEYS */;
/*!40000 ALTER TABLE `KRIM_PND_DLGN_MBR_ATTR_DATA_T` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `krim_grp_mbr_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_grp_mbr_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_grp_mbr_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_grp_mbr_v` AS select `g`.`NMSPC_CD` AS `NMSPC_CD`,`g`.`GRP_NM` AS `grp_nm`,`g`.`GRP_ID` AS `GRP_ID`,`p`.`PRNCPL_NM` AS `PRNCPL_NM`,`p`.`PRNCPL_ID` AS `PRNCPL_ID`,`mg`.`GRP_NM` AS `mbr_grp_nm`,`mg`.`GRP_ID` AS `mbr_grp_id` from ((((`krim_grp_mbr_t` `gm` left join `krim_grp_t` `g` on((`g`.`GRP_ID` = `gm`.`GRP_ID`))) left join `krim_grp_t` `mg` on(((`mg`.`GRP_ID` = `gm`.`MBR_ID`) and (`gm`.`MBR_TYP_CD` = 'G')))) left join `krim_prncpl_t` `p` on(((`p`.`PRNCPL_ID` = `gm`.`MBR_ID`) and (`gm`.`MBR_TYP_CD` = 'P')))) left join `krim_entity_nm_t` `en` on(((`en`.`ENTITY_ID` = `p`.`ENTITY_ID`) and (`en`.`DFLT_IND` = 'Y') and (`en`.`ACTV_IND` = 'Y')))) order by `g`.`NMSPC_CD`,`g`.`GRP_NM`,`p`.`PRNCPL_NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_rsp_role_actn_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_rsp_role_actn_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_actn_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_rsp_role_actn_v` AS select `rsp`.`NMSPC_CD` AS `rsp_nmspc_cd`,`rsp`.`RSP_ID` AS `rsp_id`,`r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`rr`.`ROLE_ID` AS `ROLE_ID`,`rm`.`MBR_ID` AS `MBR_ID`,`rm`.`MBR_TYP_CD` AS `MBR_TYP_CD`,`rm`.`ROLE_MBR_ID` AS `ROLE_MBR_ID`,`actn`.`ACTN_TYP_CD` AS `ACTN_TYP_CD`,`actn`.`ACTN_PLCY_CD` AS `ACTN_PLCY_CD`,`actn`.`FRC_ACTN` AS `FRC_ACTN`,`actn`.`PRIORITY_NBR` AS `PRIORITY_NBR` from (((((`krim_rsp_t` `rsp` left join `krim_rsp_tmpl_t` `rspt` on((`rsp`.`RSP_TMPL_ID` = `rspt`.`RSP_TMPL_ID`))) left join `krim_role_rsp_t` `rr` on((`rr`.`RSP_ID` = `rsp`.`RSP_ID`))) left join `krim_role_mbr_t` `rm` on((`rm`.`ROLE_ID` = `rr`.`ROLE_ID`))) left join `krim_role_rsp_actn_t` `actn` on(((`actn`.`ROLE_RSP_ID` = `rr`.`ROLE_RSP_ID`) and ((`actn`.`ROLE_MBR_ID` = `rm`.`ROLE_MBR_ID`) or (`actn`.`ROLE_MBR_ID` = '*'))))) left join `krim_role_t` `r` on((`rr`.`ROLE_ID` = `r`.`ROLE_ID`))) order by `rsp`.`NMSPC_CD`,`rsp`.`RSP_ID`,`rr`.`ROLE_ID`,`rm`.`ROLE_MBR_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_grp_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_grp_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_grp_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_grp_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `role_id`,`g`.`NMSPC_CD` AS `grp_nmspc_cd`,`g`.`GRP_NM` AS `GRP_NM`,`rm`.`ROLE_MBR_ID` AS `ROLE_MBR_ID`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val` from ((((`krim_role_mbr_t` `rm` left join `krim_role_t` `r` on((`r`.`ROLE_ID` = `rm`.`ROLE_ID`))) left join `krim_grp_t` `g` on((`g`.`GRP_ID` = `rm`.`MBR_ID`))) left join `krim_role_mbr_attr_data_t` `d` on((`d`.`ROLE_MBR_ID` = `rm`.`ROLE_MBR_ID`))) left join `krim_attr_defn_t` `a` on((`a`.`KIM_ATTR_DEFN_ID` = `d`.`KIM_ATTR_DEFN_ID`))) where (`rm`.`MBR_TYP_CD` = 'G') order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`g`.`NMSPC_CD`,`g`.`GRP_NM`,`rm`.`ROLE_MBR_ID`,`a`.`NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_prncpl_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_prncpl_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_prncpl_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_prncpl_v` AS select `p`.`PRNCPL_ID` AS `PRNCPL_ID`,`p`.`PRNCPL_NM` AS `PRNCPL_NM`,`en`.`FIRST_NM` AS `FIRST_NM`,`en`.`LAST_NM` AS `LAST_NM`,`ea`.`AFLTN_TYP_CD` AS `AFLTN_TYP_CD`,`ea`.`CAMPUS_CD` AS `CAMPUS_CD`,`eei`.`EMP_STAT_CD` AS `EMP_STAT_CD`,`eei`.`EMP_TYP_CD` AS `EMP_TYP_CD` from (((`krim_prncpl_t` `p` left join `krim_entity_emp_info_t` `eei` on((`eei`.`ENTITY_ID` = `p`.`ENTITY_ID`))) left join `krim_entity_afltn_t` `ea` on((`ea`.`ENTITY_ID` = `p`.`ENTITY_ID`))) left join `krim_entity_nm_t` `en` on(((`p`.`ENTITY_ID` = `en`.`ENTITY_ID`) and ('Y' = `en`.`DFLT_IND`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_perm_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_perm_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_perm_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_perm_v` AS select `t`.`NMSPC_CD` AS `tmpl_nmspc_cd`,`t`.`NM` AS `tmpl_nm`,`t`.`PERM_TMPL_ID` AS `PERM_TMPL_ID`,`p`.`NMSPC_CD` AS `perm_nmspc_cd`,`p`.`NM` AS `perm_nm`,`p`.`PERM_ID` AS `PERM_ID`,`typ`.`NM` AS `perm_typ_nm`,`typ`.`SRVC_NM` AS `SRVC_NM` from ((`krim_perm_t` `p` join `krim_perm_tmpl_t` `t` on((`p`.`PERM_TMPL_ID` = `t`.`PERM_TMPL_ID`))) left join `krim_typ_t` `typ` on((`t`.`KIM_TYP_ID` = `typ`.`KIM_TYP_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_rsp_attr_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_rsp_attr_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_attr_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_rsp_attr_v` AS select `krim_typ_t`.`NM` AS `responsibility_type_name`,`krim_rsp_tmpl_t`.`NM` AS `rsp_TEMPLATE_NAME`,`krim_rsp_t`.`NMSPC_CD` AS `rsp_namespace_code`,`krim_rsp_t`.`NM` AS `rsp_NAME`,`krim_rsp_t`.`RSP_ID` AS `rsp_id`,`krim_attr_defn_t`.`NM` AS `attribute_name`,`krim_rsp_attr_data_t`.`ATTR_VAL` AS `attribute_value` from ((((`krim_rsp_t` join `krim_rsp_attr_data_t` on((`krim_rsp_t`.`RSP_ID` = `krim_rsp_attr_data_t`.`RSP_ID`))) join `krim_attr_defn_t` on((`krim_rsp_attr_data_t`.`KIM_ATTR_DEFN_ID` = `krim_attr_defn_t`.`KIM_ATTR_DEFN_ID`))) join `krim_rsp_tmpl_t` on((`krim_rsp_t`.`RSP_TMPL_ID` = `krim_rsp_tmpl_t`.`RSP_TMPL_ID`))) join `krim_typ_t` on((`krim_rsp_tmpl_t`.`KIM_TYP_ID` = `krim_typ_t`.`KIM_TYP_ID`))) order by `krim_rsp_tmpl_t`.`NM`,`krim_rsp_t`.`NM`,`krim_attr_defn_t`.`NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_rsp_role_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_rsp_role_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_rsp_role_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_rsp_role_v` AS select `rspt`.`NMSPC_CD` AS `rsp_tmpl_nmspc_cd`,`rspt`.`NM` AS `rsp_tmpl_nm`,`rsp`.`NMSPC_CD` AS `rsp_nmspc_cd`,`rsp`.`NM` AS `rsp_nm`,`rsp`.`RSP_ID` AS `rsp_id`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val`,`r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`rr`.`ROLE_ID` AS `ROLE_ID` from (((((`krim_rsp_t` `rsp` left join `krim_rsp_tmpl_t` `rspt` on((`rsp`.`RSP_TMPL_ID` = `rspt`.`RSP_TMPL_ID`))) left join `krim_rsp_attr_data_t` `d` on((`rsp`.`RSP_ID` = `d`.`RSP_ID`))) left join `krim_attr_defn_t` `a` on((`d`.`KIM_ATTR_DEFN_ID` = `a`.`KIM_ATTR_DEFN_ID`))) left join `krim_role_rsp_t` `rr` on((`rr`.`RSP_ID` = `rsp`.`RSP_ID`))) left join `krim_role_t` `r` on((`rr`.`ROLE_ID` = `r`.`ROLE_ID`))) order by `rspt`.`NMSPC_CD`,`rspt`.`NM`,`rsp`.`NMSPC_CD`,`rsp`.`NM`,`rsp`.`RSP_ID`,`a`.`NM`,`d`.`ATTR_VAL` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `ROLE_ID`,`t`.`NM` AS `role_typ_nm`,`t`.`SRVC_NM` AS `SRVC_NM`,`t`.`KIM_TYP_ID` AS `KIM_TYP_ID` from (`krim_role_t` `r` join `krim_typ_t` `t`) where ((`t`.`KIM_TYP_ID` = `r`.`KIM_TYP_ID`) and (`r`.`ACTV_IND` = 'Y')) order by `r`.`NMSPC_CD`,`r`.`ROLE_NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_perm_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_perm_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_perm_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_perm_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `role_id`,`pt`.`NMSPC_CD` AS `tmpl_nmspc_cd`,`pt`.`NM` AS `tmpl_nm`,`pt`.`PERM_TMPL_ID` AS `PERM_TMPL_ID`,`p`.`NMSPC_CD` AS `perm_nmpsc_cd`,`p`.`NM` AS `perm_nm`,`p`.`PERM_ID` AS `PERM_ID`,`a`.`NM` AS `attr_nm`,`ad`.`ATTR_VAL` AS `attr_val` from (((((`krim_perm_t` `p` left join `krim_perm_tmpl_t` `pt` on((`p`.`PERM_TMPL_ID` = `pt`.`PERM_TMPL_ID`))) left join `krim_perm_attr_data_t` `ad` on((`p`.`PERM_ID` = `ad`.`PERM_ID`))) left join `krim_attr_defn_t` `a` on((`ad`.`KIM_ATTR_DEFN_ID` = `a`.`KIM_ATTR_DEFN_ID`))) left join `krim_role_perm_t` `rp` on((`rp`.`PERM_ID` = `p`.`PERM_ID`))) left join `krim_role_t` `r` on((`rp`.`ROLE_ID` = `r`.`ROLE_ID`))) order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`pt`.`NMSPC_CD`,`pt`.`NM`,`p`.`PERM_ID`,`a`.`NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_grp_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_grp_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_grp_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_grp_v` AS select `g`.`NMSPC_CD` AS `NMSPC_CD`,`g`.`GRP_NM` AS `grp_nm`,`g`.`GRP_ID` AS `GRP_ID`,`t`.`NM` AS `grp_typ_nm`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val` from (((`krim_grp_t` `g` left join `krim_grp_attr_data_t` `d` on((`d`.`GRP_ID` = `g`.`GRP_ID`))) left join `krim_attr_defn_t` `a` on((`a`.`KIM_ATTR_DEFN_ID` = `d`.`KIM_ATTR_DEFN_ID`))) left join `krim_typ_t` `t` on((`g`.`KIM_TYP_ID` = `t`.`KIM_TYP_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_prncpl_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_prncpl_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_prncpl_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_prncpl_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `ROLE_ID`,`p`.`PRNCPL_NM` AS `PRNCPL_NM`,`p`.`PRNCPL_ID` AS `PRNCPL_ID`,`en`.`FIRST_NM` AS `FIRST_NM`,`en`.`LAST_NM` AS `LAST_NM`,`rm`.`ROLE_MBR_ID` AS `ROLE_MBR_ID`,`ad`.`NM` AS `attr_nm`,`rmad`.`ATTR_VAL` AS `attr_val` from (((((`krim_role_t` `r` left join `krim_role_mbr_t` `rm` on((`r`.`ROLE_ID` = `rm`.`ROLE_ID`))) left join `krim_role_mbr_attr_data_t` `rmad` on((`rm`.`ROLE_MBR_ID` = `rmad`.`ROLE_MBR_ID`))) left join `krim_attr_defn_t` `ad` on((`rmad`.`KIM_ATTR_DEFN_ID` = `ad`.`KIM_ATTR_DEFN_ID`))) left join `krim_prncpl_t` `p` on(((`rm`.`MBR_ID` = `p`.`PRNCPL_ID`) and (`rm`.`MBR_TYP_CD` = 'P')))) left join `krim_entity_nm_t` `en` on((`p`.`ENTITY_ID` = `en`.`ENTITY_ID`))) where (`en`.`DFLT_IND` = 'Y') order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`p`.`PRNCPL_NM`,`rm`.`ROLE_MBR_ID`,`ad`.`NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_role_role_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_role_role_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_role_role_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_role_role_v` AS select `r`.`NMSPC_CD` AS `NMSPC_CD`,`r`.`ROLE_NM` AS `ROLE_NM`,`r`.`ROLE_ID` AS `role_id`,`mr`.`NMSPC_CD` AS `mbr_role_nmspc_cd`,`mr`.`ROLE_NM` AS `mbr_role_nm`,`mr`.`ROLE_ID` AS `mbr_role_id`,`rm`.`ROLE_MBR_ID` AS `role_mbr_id`,`a`.`NM` AS `attr_nm`,`d`.`ATTR_VAL` AS `attr_val` from ((((`krim_role_mbr_t` `rm` left join `krim_role_t` `r` on((`r`.`ROLE_ID` = `rm`.`ROLE_ID`))) left join `krim_role_t` `mr` on((`mr`.`ROLE_ID` = `rm`.`MBR_ID`))) left join `krim_role_mbr_attr_data_t` `d` on((`d`.`ROLE_MBR_ID` = `rm`.`ROLE_MBR_ID`))) left join `krim_attr_defn_t` `a` on((`a`.`KIM_ATTR_DEFN_ID` = `d`.`KIM_ATTR_DEFN_ID`))) where (`rm`.`MBR_TYP_CD` = 'R') order by `r`.`NMSPC_CD`,`r`.`ROLE_NM`,`mr`.`NMSPC_CD`,`mr`.`ROLE_NM`,`rm`.`ROLE_MBR_ID`,`a`.`NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `krim_perm_attr_v`
--

/*!50001 DROP TABLE IF EXISTS `krim_perm_attr_v`*/;
/*!50001 DROP VIEW IF EXISTS `krim_perm_attr_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ricetraining`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `krim_perm_attr_v` AS select `t`.`NMSPC_CD` AS `tmpl_nmspc_cd`,`t`.`NM` AS `tmpl_nm`,`t`.`PERM_TMPL_ID` AS `PERM_TMPL_ID`,`p`.`NMSPC_CD` AS `perm_nmspc_cd`,`p`.`NM` AS `perm_nm`,`p`.`PERM_ID` AS `PERM_ID`,`a`.`NM` AS `attr_nm`,`ad`.`ATTR_VAL` AS `attr_val` from (((`krim_perm_t` `p` left join `krim_perm_tmpl_t` `t` on((`p`.`PERM_TMPL_ID` = `t`.`PERM_TMPL_ID`))) left join `krim_perm_attr_data_t` `ad` on((`p`.`PERM_ID` = `ad`.`PERM_ID`))) left join `krim_attr_defn_t` `a` on((`ad`.`KIM_ATTR_DEFN_ID` = `a`.`KIM_ATTR_DEFN_ID`))) order by `t`.`NMSPC_CD`,`t`.`NM`,`p`.`NMSPC_CD`,`p`.`PERM_ID`,`a`.`NM` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-01 14:01:11
