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



-- Builds responsibilities related to training application

INSERT INTO KRIM_RSP_T(RSP_ID, OBJ_ID, RSP_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
    VALUES('KRTRN-3', UUID(), '1', 'KR-IDM', 'Campus Application Review', '', 'Y');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-3-DOC', UUID(), 'KRTRN-3', '7', '13', 'AdmissionsWorkflowDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-3-NODE', UUID(), 'KRTRN-3', '7', '16', 'DepartmentApproval');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-3-REQ', UUID(), 'KRTRN-3', '7', '40', 'N');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-3-RML', UUID(), 'KRTRN-3', '7', '41', 'N');

INSERT INTO KRIM_ROLE_RSP_T(ROLE_RSP_ID, OBJ_ID, ROLE_ID, RSP_ID, ACTV_IND) 
    VALUES('KRTRN-3-KRATRN-APVR_ROLE', UUID(), 'KRATRN-APVR_ROLE', 'KRTRN-3', 'Y');

INSERT INTO KRIM_ROLE_RSP_ACTN_T(ROLE_RSP_ACTN_ID, OBJ_ID, ACTN_TYP_CD, PRIORITY_NBR, ACTN_PLCY_CD, ROLE_MBR_ID, ROLE_RSP_ID, FRC_ACTN) 
    VALUES('KRTRN-3-KRATRN-APVR_ROLE', UUID(), 'A', NULL, 'F', '*', 'KRTRN-3-KRATRN-APVR_ROLE', 'N');
