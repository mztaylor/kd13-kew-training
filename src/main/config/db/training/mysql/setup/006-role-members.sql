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
	VALUES('KRTRN-ADMN-1', 1, UUID(), 'KRATRN-ADMN_ROLE', 'admin', 'P');

INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD)
	VALUES('KRTRN-NMSPC-1', 1, UUID(), 'KRTRN-NMSPC_ROLE', 'dev1', 'P');

INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
	VALUES('KRTRN-1-NMSPC', UUID(), 1, 'KRTRN-NMSPC-1', 'KRTRN-NMSPC', '4', 'KRA-*');

INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD) 
	VALUES('KRTRN-NMSPC-2', 1, UUID(), 'KRTRN-NMSPC_ROLE', 'dev2', 'P');

INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
	VALUES('KRTRN-2-NMSPC', UUID(), 1, 'KRTRN-NMSPC-2', 'KRTRN-NMSPC', '4', 'KR-*');

INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD) 
	VALUES('KRTRN-NMSPC-3', 1, UUID(), 'KRTRN-NMSPC_ROLE', 'idm1', 'P');

INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, VER_NBR, ROLE_MBR_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
	VALUES('KRTRN-3-NMSPC', UUID(), 1, 'KRTRN-NMSPC-3', 'KRTRN-NMSPC', '4', 'KR-IDM');

INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD) 
	VALUES('KRTRN-RVWR-1', 1, UUID(), 'KRATRN-RVWR_ROLE', 'edna', 'P');

INSERT INTO KRIM_ROLE_MBR_T(ROLE_MBR_ID, VER_NBR, OBJ_ID, ROLE_ID, MBR_ID, MBR_TYP_CD) 
	VALUES('KRTRN-RVWR-2', 1, UUID(), 'KRATRN-RVWR_ROLE', 'fred', 'P');
	