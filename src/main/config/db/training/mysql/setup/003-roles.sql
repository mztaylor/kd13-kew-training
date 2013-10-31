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

INSERT INTO `KRIM_ROLE_T` (`ROLE_ID`,`OBJ_ID`,`VER_NBR`,`ROLE_NM`,`NMSPC_CD`,`DESC_TXT`,`KIM_TYP_ID`,`ACTV_IND`,`LAST_UPDT_DT`)
VALUES ('KRATRNG10001',uuid(),1,'Training App Admin','KRA-TRNG','Test role for the training app','1','Y',NOW());

INSERT INTO `KRIM_ROLE_T` (`ROLE_ID`,`OBJ_ID`,`VER_NBR`,`ROLE_NM`,`NMSPC_CD`,`DESC_TXT`,`KIM_TYP_ID`,`ACTV_IND`,`LAST_UPDT_DT`)
VALUES ('KRATRNG10002',uuid(),1,'Application Approver','KRA-TRNG','Provides a final decision on the application','1','Y',NOW());

INSERT INTO `KRIM_ROLE_T` (`ROLE_ID`,`OBJ_ID`,`VER_NBR`,`ROLE_NM`,`NMSPC_CD`,`DESC_TXT`,`KIM_TYP_ID`,`ACTV_IND`,`LAST_UPDT_DT`)
VALUES ('KRATRNG10003',uuid(),1,'Review Committee Member','KRA-TRNG','Reviews applications and provides notes','1','Y',NOW());
