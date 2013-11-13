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

-- Namespace Responsibilities

INSERT INTO KRIM_RSP_T(RSP_ID, OBJ_ID, RSP_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
    VALUES('KRTRN-1', UUID(), '1', 'KR-IDM', 'Review Namespace Document', '', 'Y');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-1-DOC', UUID(), 'KRTRN-1', '7', '13', 'NamespaceMaintenanceDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-1-NODE', UUID(), 'KRTRN-1', '7', '16', 'Namespace');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-1-REQ', UUID(), 'KRTRN-1', '7', '40', 'N');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
    VALUES('KRTRN-1-RML', UUID(), 'KRTRN-1', '7', '41', 'N');

INSERT INTO KRIM_ROLE_RSP_T(ROLE_RSP_ID, OBJ_ID, ROLE_ID, RSP_ID, ACTV_IND) 
    VALUES('KRTRN-1-KRTRN-NMSPC_ROLE', UUID(), 'KRTRN-NMSPC_ROLE', 'KRTRN-1', 'Y');

INSERT INTO KRIM_ROLE_RSP_ACTN_T(ROLE_RSP_ACTN_ID, OBJ_ID, ACTN_TYP_CD, PRIORITY_NBR, ACTN_PLCY_CD, ROLE_MBR_ID, ROLE_RSP_ID, FRC_ACTN) 
    VALUES('KRTRN-1-KRTRN-NMSPC_ROLE', UUID(), 'A', NULL, 'F', '*', 'KRTRN-1-KRTRN-NMSPC_ROLE', 'N');

-- Initial Review Responsibilities

INSERT INTO KRIM_RSP_T(RSP_ID, OBJ_ID, RSP_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND)
    VALUES('KRTRN-2', UUID(), '1', 'KR-IDM', 'Initial Review Admissions Document', '', 'Y');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
    VALUES('KRTRN-2-DOC', UUID(), 'KRTRN-2', '7', '13', 'AdmissionsWorkflowDocument');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
    VALUES('KRTRN-2-NODE', UUID(), 'KRTRN-2', '7', '16', 'InitialReview');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
    VALUES('KRTRN-2-REQ', UUID(), 'KRTRN-2', '7', '40', 'N');

INSERT INTO KRIM_RSP_ATTR_DATA_T(ATTR_DATA_ID, OBJ_ID, RSP_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL)
    VALUES('KRTRN-2-RML', UUID(), 'KRTRN-2', '7', '41', 'N');

INSERT INTO KRIM_ROLE_RSP_T(ROLE_RSP_ID, OBJ_ID, ROLE_ID, RSP_ID, ACTV_IND)
    VALUES('KRTRN-2-KRTRN-ADMN_ROLE', UUID(), 'KRATRN-ADMN_ROLE', 'KRTRN-2', 'Y');

INSERT INTO KRIM_ROLE_RSP_ACTN_T(ROLE_RSP_ACTN_ID, OBJ_ID, ACTN_TYP_CD, PRIORITY_NBR, ACTN_PLCY_CD, ROLE_MBR_ID, ROLE_RSP_ID, FRC_ACTN)
    VALUES('KRTRN-2-KRATRN-ADMN_ROLE', UUID(), 'A', NULL, 'F', '*', 'KRTRN-2-KRTRN-ADMN_ROLE', 'N');
