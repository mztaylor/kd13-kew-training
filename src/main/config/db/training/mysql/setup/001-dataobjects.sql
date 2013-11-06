--
-- Copyright 2005-2013 The Kuali Foundation
--
-- Licensed under the Educational Community License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.opensource.org/licenses/ecl2.php
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--



-- Builds tables related to training application data objects

DROP TABLE IF EXISTS `TRNG_APP_DOC_T`;

CREATE TABLE `TRNG_APP_DOC_T` (
  `TRNG_APP_DOC_ID` varchar(40) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `TRM` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `COLL` varchar(40) COLLATE utf8_bin NOT NULL,
  `CAMPUS` varchar(40) COLLATE utf8_bin NOT NULL,
  `SCHOOL_COLOR` varchar(40) COLLATE utf8_bin NULL,
  `FIRST_NAME` varchar(40) COLLATE utf8_bin NULL,
  `LAST_NAME` varchar(40) COLLATE utf8_bin NULL,
  `EMAIL` varchar(40) COLLATE utf8_bin NOT NULL,
  `GENDER` varchar(1) COLLATE utf8_bin NOT NULL,
  `DOB_DT` datetime NOT NULL,
  `EMAIL_LIST_IND` varchar(40) COLLATE utf8_bin NOT NULL,
  `ETHN` varchar(40) COLLATE utf8_bin NOT NULL,
  `OTH_ETHN` varchar(40) COLLATE utf8_bin NULL,
  `ADDR_1` varchar(40) COLLATE utf8_bin NOT NULL,
  `ADDR_2` varchar(40) COLLATE utf8_bin NULL,
  `CITY` varchar(40) COLLATE utf8_bin NOT NULL,
  `ST_CD` varchar(40) COLLATE utf8_bin NOT NULL,
  `ZIP` varchar(40) COLLATE utf8_bin NOT NULL,
  `DEC_STATUS` varchar(40) COLLATE utf8_bin NULL,
  PRIMARY KEY (`TRNG_APP_DOC_ID`),
  UNIQUE KEY `TRNG_APP_DOC_TC0` (`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `TRNG_APP_DOC_ID_S`;

CREATE TABLE `TRNG_APP_DOC_ID_S` (
  `id` bigint(19) COLLATE utf8_bin NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `TRNG_APP_PREV_EXPER_T`;

CREATE TABLE `TRNG_APP_PREV_EXPER_T` (
  `TRNG_APP_PREV_EXPER_ID` varchar(40) NOT NULL DEFAULT '0',
  `TRNG_APP_DOC_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `UNIV` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `COLL` varchar(40) COLLATE utf8_bin NOT NULL,
  `CRS` varchar(40) COLLATE utf8_bin NOT NULL,
  `COMP_DT` datetime NULL,
  PRIMARY KEY (`TRNG_APP_PREV_EXPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `TRNG_APP_PREV_EXPER_ID_S`;

CREATE TABLE `TRNG_APP_PREV_EXPER_ID_S` (
  `id` bigint(19) COLLATE utf8_bin NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `TRNG_APP_APPLC_REF_T`;

CREATE TABLE `TRNG_APP_APPLC_REF_T` (
  `TRNG_APP_APPLC_REF_ID` varchar(40) NOT NULL DEFAULT '0',
  `TRNG_APP_DOC_ID` decimal(14,0) NOT NULL DEFAULT '0',
  `OBJ_ID` varchar(36) COLLATE utf8_bin NOT NULL,
  `VER_NBR` decimal(8,0) NOT NULL DEFAULT '1',
  `NAME` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `PHONE` varchar(40) COLLATE utf8_bin NOT NULL,
  `ADDR` varchar(40) COLLATE utf8_bin NOT NULL,
  `RELATN` varchar(40) COLLATE utf8_bin NULL,
  PRIMARY KEY (`TRNG_APP_APPLC_REF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

DROP TABLE IF EXISTS `TRNG_APP_APPLC_REF_ID_S`;

CREATE TABLE `TRNG_APP_APPLC_REF_ID_S` (
  `id` bigint(19) COLLATE utf8_bin NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
