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
    VALUES('KRTRN-1-KRSAP10003', UUID(), 'KRSAP10003', 'KRTRN-1', 'Y');

INSERT INTO KRIM_ROLE_RSP_ACTN_T(ROLE_RSP_ACTN_ID, OBJ_ID, ACTN_TYP_CD, PRIORITY_NBR, ACTN_PLCY_CD, ROLE_MBR_ID, ROLE_RSP_ID, FRC_ACTN) 
    VALUES('KRTRN-1-KRSAP10003', UUID(), 'A', NULL, 'F', '*', 'KRTRN-1-KRSAP10003', 'N');
