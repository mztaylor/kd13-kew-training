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



-- Solution for Exercise 1

INSERT INTO KRIM_PERM_T(PERM_ID, NMSPC_CD, PERM_TMPL_ID, NM, DESC_TXT, ACTV_IND, OBJ_ID, VER_NBR)
  VALUES ('KRATRN-DEC_STATUS_PERM', 'KRA-TRNG', 57, 'Edit Decision Status Field', '', 'Y', UUID(), 1);

INSERT INTO KRIM_PERM_ATTR_DATA_T(ATTR_DATA_ID, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL, OBJ_ID, VER_NBR)
  VALUES ('KRATRN-DEC_STATUS_PERM-1', 'KRATRN-DEC_STATUS_PERM', 70, 47, 'Training*', UUID(), 1);

INSERT INTO KRIM_PERM_ATTR_DATA_T(ATTR_DATA_ID, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL, OBJ_ID, VER_NBR)
  VALUES ('KRATRN-DEC_STATUS_PERM-2', 'KRATRN-DEC_STATUS_PERM', 70, 6, 'decisionStatus', UUID(), 1);

INSERT INTO KRIM_ROLE_PERM_T(ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, OBJ_ID, VER_NBR)
  VALUES ('KRATRN-DEC_STATUS', 'KRATRN-ADMN_ROLE', 'KRATRN-DEC_STATUS_PERM', 'Y', UUID(), 1);
