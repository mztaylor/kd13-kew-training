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



-- Builds role members related to training application

INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD)
	VALUES('KRTRN-CAMPUS-1', 1, UUID(), 'KRATRN-APVR_ROLE', 'dev1', 'P');

INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
	VALUES('KRTRN-1-CAMPUS', UUID(), 1, 'KRTRN-CAMPUS-1', '17', '12', 'KO');


INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD) 
	VALUES('KRTRN-CAMPUS-2', 1, UUID(), 'KRATRN-APVR_ROLE', 'dev2', 'P');

INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
	VALUES('KRTRN-2-CAMPUS', UUID(), 1, 'KRTRN-CAMPUS-2', '17', '12', 'BL');


INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD) 
	VALUES('KRTRN-CAMPUS-3', 1, UUID(), 'KRATRN-APVR_ROLE', 'idm1', 'P');

INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
	VALUES('KRTRN-3-CAMPUS', UUID(), 1, 'KRTRN-CAMPUS-3', '17', '12', 'BX');
