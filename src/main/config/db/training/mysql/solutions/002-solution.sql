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


-- Solution for Exercise 2

-- Builds responsibilities related to committee review

INSERT INTO KRIM_RSP_T(RSP_ID, OBJ_ID, RSP_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
    VALUES('KRTRN-4', UUID(), '1', 'KR-IDM', 'Perform Committee Review', '', 'Y');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-4-DOC', UUID(), 'KRTRN-4', '7', '13', 'AdmissionsWorkflowDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-4-NODE', UUID(), 'KRTRN-4', '7', '16', 'CommitteeReview');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-4-REQ', UUID(), 'KRTRN-4', '7', '40', 'N');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-4-RML', UUID(), 'KRTRN-4', '7', '41', 'N');
    
    
INSERT INTO KRIM_ROLE_RSP_T(ROLE_RSP_ID, OBJ_ID, ROLE_ID, RSP_ID, ACTV_IND) 
    VALUES('KRTRN-4-KRATRN-RVWR_ROLE', UUID(), 'KRATRN-RVWR_ROLE', 'KRTRN-4', 'Y');

INSERT INTO KRIM_ROLE_RSP_ACTN_T(ROLE_RSP_ACTN_ID, OBJ_ID, ACTN_TYP_CD, PRIORITY_NBR, ACTN_PLCY_CD, ROLE_MBR_ID, ROLE_RSP_ID, FRC_ACTN) 
    VALUES('KRTRN-4-KRATRN-RVWR_ROLE', UUID(), 'A', NULL, 'F', '*', 'KRTRN-4-KRATRN-RVWR_ROLE', 'N');
