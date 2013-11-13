-- All Training Roles and Types
SELECT
	r.NMSPC_CD  AS NMSPC_CD
	,r.ROLE_NM    AS ROLE_NM
	,t.NM         AS role_typ_nm
	,t.SRVC_NM    AS SRVC_NM
FROM
               krim_role_t r 
	INNER JOIN krim_typ_t t ON t.KIM_TYP_ID = r.KIM_TYP_ID
WHERE r.NMSPC_CD = 'KRA-TRNG'
ORDER BY
	r.NMSPC_CD
	,r.ROLE_NM
/

-- All Training Role Members and Attributes
SELECT
	 r.NMSPC_CD    AS NMSPC_CD
	,r.ROLE_NM      AS ROLE_NM
	,p.PRNCPL_NM    AS PRNCPL_NM
	,ad.NM          AS attr_nm
	,rmad.ATTR_VAL  AS attr_val 
FROM
	krim_role_t r 
		LEFT OUTER JOIN krim_role_mbr_t rm             ON r.ROLE_ID = rm.ROLE_ID
		LEFT OUTER JOIN krim_role_mbr_attr_data_t rmad ON rm.ROLE_MBR_ID = rmad.ROLE_MBR_ID
		LEFT OUTER JOIN krim_attr_defn_t ad            ON rmad.KIM_ATTR_DEFN_ID = ad.KIM_ATTR_DEFN_ID
		LEFT OUTER JOIN krim_prncpl_t p                ON rm.MBR_ID = p.PRNCPL_ID AND rm.MBR_TYP_CD = 'P'
    WHERE r.NMSPC_CD = 'KRA-TRNG'
ORDER BY
	 r.NMSPC_CD
	,r.ROLE_NM
	,p.PRNCPL_NM
	,ad.NM
/

-- Responsibility Data and Role Assignments
SELECT
	 r.ROLE_NM      AS ROLE_NM
	,rsp.NM         AS rsp_nm
	,a.NM           AS attr_nm
	,d.ATTR_VAL     AS attr_val
FROM
	krim_rsp_t rsp 
	LEFT JOIN krim_rsp_tmpl_t rspt    ON rsp.RSP_TMPL_ID = rspt.RSP_TMPL_ID
	LEFT JOIN krim_rsp_attr_data_t d  ON rsp.RSP_ID = d.RSP_ID
    LEFT JOIN krim_attr_defn_t a      ON d.KIM_ATTR_DEFN_ID = a.KIM_ATTR_DEFN_ID
    LEFT JOIN krim_role_rsp_t rr      ON rr.RSP_ID = rsp.RSP_ID
    LEFT JOIN krim_role_t r           ON rr.ROLE_ID = r.ROLE_ID
WHERE r.NMSPC_CD = 'KRA-TRNG'
ORDER BY
	 rsp.NMSPC_CD
	,rsp.NM
	,rsp.RSP_ID
	,a.NM
/

-- Responsibility Actions by Role Member
SELECT
	 rsp.NM            AS rsp_name
	,r.ROLE_NM         AS ROLE_NM
	,rm.MBR_ID         AS MBR_ID
	--,rm.ROLE_MBR_ID    AS ROLE_MBR_ID
	,actn.ACTN_TYP_CD  AS ACTN_TYP_CD
	,actn.ACTN_PLCY_CD AS ACTN_PLCY_CD
	,actn.FRC_ACTN     AS FRC_ACTN
	,actn.PRIORITY_NBR AS PRIORITY_NBR 
FROM
	krim_rsp_t rsp 
    LEFT JOIN krim_rsp_tmpl_t rspt ON rsp.RSP_TMPL_ID = rspt.RSP_TMPL_ID
	LEFT JOIN krim_role_rsp_t rr ON rr.RSP_ID = rsp.RSP_ID 
	LEFT JOIN krim_role_mbr_t rm ON rm.ROLE_ID = rr.ROLE_ID
	LEFT JOIN krim_role_rsp_actn_t actn ON actn.ROLE_RSP_ID = rr.ROLE_RSP_ID 
                        AND (actn.ROLE_MBR_ID = rm.ROLE_MBR_ID OR actn.ROLE_MBR_ID = '*')
	LEFT JOIN krim_role_t r ON rr.ROLE_ID = r.ROLE_ID
ORDER BY
	 rsp_name
	,role_nm
	,MBR_ID
/
