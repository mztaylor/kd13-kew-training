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



-- Builds roles related to training application

INSERT INTO KRIM_ROLE_T(ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT)
  VALUES ('KRATRN-ADMN_ROLE',uuid(),1,'Training App Admin','KRA-TRNG','Administrator for the training app','1','Y',NOW());

INSERT INTO KRIM_ROLE_T(ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT)
  VALUES ('KRATRN-APVR_ROLE',uuid(),1,'Training App Approver','KRA-TRNG','Provides a final decision on the application','1','Y',NOW());

INSERT INTO KRIM_ROLE_T(ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT)
  VALUES ('KRATRN-RVWR_ROLE',uuid(),1,'Training App Reviewer','KRA-TRNG','Reviews applications and provides notes','1','Y',NOW());

INSERT INTO KRIM_TYP_T(KIM_TYP_ID, OBJ_ID, VER_NBR, NM, SRVC_NM, ACTV_IND, NMSPC_CD) 
	VALUES('KRTRN-NMSPC', UUID(), 1, 'Namespace Role', '{http://krworkshop.kuali.org/krworkshop/v0_0_1}namespaceRoleTypeService', 'Y', 'KR-NS');

INSERT INTO KRIM_TYP_ATTR_T(KIM_TYP_ATTR_ID, OBJ_ID, VER_NBR, SORT_CD, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ACTV_IND) 
	VALUES('KRTRN-NMSPC-NMSPC', UUID(), 1, 'a', 'KRTRN-NMSPC', '4', 'Y');

INSERT INTO KRIM_ROLE_T (ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, NMSPC_CD, DESC_TXT, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT)
	VALUES ('KRTRN-NMSPC_ROLE',uuid(),1,'Namespace Reviewer','KRA-TRNG','Reviewer of master namespace-based data','KRTRN-NMSPC','Y',NOW());
