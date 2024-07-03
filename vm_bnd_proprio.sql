CREATE MATERIALIZED VIEW IF NOT EXISTS fichiers_fonciers.vm_bnd_proprio
TABLESPACE pg_default
AS
 SELECT DISTINCT ON (l.idpk) l.idpk,
    p.idpar,
    p.idprocpte AS pidprocpte,
    l.idprocpte AS lidprocpte,
    l.dnulot,
    l.dcntlo,
    d25_fftp_2020_proprietaire_droit_non_ano.idpersonne,
        CASE
            WHEN d25_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '1'::text THEN 'M'::text
            WHEN d25_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '2'::text THEN 'Mme'::text
            ELSE NULL::text
        END AS genre,
    d25_fftp_2020_proprietaire_droit_non_ano.ddenom AS nom_naissance,
    d25_fftp_2020_proprietaire_droit_non_ano.dnomus AS nom_usuel,
    concat(d25_fftp_2020_proprietaire_droit_non_ano.jdatnss, ' à ', d25_fftp_2020_proprietaire_droit_non_ano.dldnss) AS ne_e,
    concat(d25_fftp_2020_proprietaire_droit_non_ano.dlign3, ' ', d25_fftp_2020_proprietaire_droit_non_ano.dlign4, ' ', d25_fftp_2020_proprietaire_droit_non_ano.dlign5, ' ', d25_fftp_2020_proprietaire_droit_non_ano.dlign6) AS adresse,
    d25_fftp_2020_proprietaire_droit_non_ano.ccogrmtxt AS type_pers_morale,
    p.geompar AS geom
   FROM fichiers_fonciers.d25_fftp_2020_pdl30_lots l
     LEFT JOIN fichiers_fonciers.d25_fftp_2020_pnb10_parcelle p ON p.idpar::text = l.idpar::text
     LEFT JOIN fichiers_fonciers.d25_fftp_2020_proprietaire_droit_non_ano ON l.idprocpte::text = d25_fftp_2020_proprietaire_droit_non_ano.idprocpte::text
  WHERE p.ctpdl::text = 'BND'::text
UNION
 SELECT DISTINCT ON (l.idpk) l.idpk,
    p.idpar,
    p.idprocpte AS pidprocpte,
    l.idprocpte AS lidprocpte,
    l.dnulot,
    l.dcntlo,
    d39_fftp_2020_proprietaire_droit_non_ano.idpersonne,
        CASE
            WHEN d39_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '1'::text THEN 'M'::text
            WHEN d39_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '2'::text THEN 'Mme'::text
            ELSE NULL::text
        END AS genre,
    d39_fftp_2020_proprietaire_droit_non_ano.ddenom AS nom_naissance,
    d39_fftp_2020_proprietaire_droit_non_ano.dnomus AS nom_usuel,
    concat(d39_fftp_2020_proprietaire_droit_non_ano.jdatnss, ' à ', d39_fftp_2020_proprietaire_droit_non_ano.dldnss) AS ne_e,
    concat(d39_fftp_2020_proprietaire_droit_non_ano.dlign3, ' ', d39_fftp_2020_proprietaire_droit_non_ano.dlign4, ' ', d39_fftp_2020_proprietaire_droit_non_ano.dlign5, ' ', d39_fftp_2020_proprietaire_droit_non_ano.dlign6) AS adresse,
    d39_fftp_2020_proprietaire_droit_non_ano.ccogrmtxt AS type_pers_morale,
    p.geompar AS geom
   FROM fichiers_fonciers.d39_fftp_2020_pdl30_lots l
     LEFT JOIN fichiers_fonciers.d39_fftp_2020_pnb10_parcelle p ON p.idpar::text = l.idpar::text
     LEFT JOIN fichiers_fonciers.d39_fftp_2020_proprietaire_droit_non_ano ON l.idprocpte::text = d39_fftp_2020_proprietaire_droit_non_ano.idprocpte::text
  WHERE p.ctpdl::text = 'BND'::text
UNION
 SELECT DISTINCT ON (l.idpk) l.idpk,
    p.idpar,
    p.idprocpte AS pidprocpte,
    l.idprocpte AS lidprocpte,
    l.dnulot,
    l.dcntlo,
    d70_fftp_2020_proprietaire_droit_non_ano.idpersonne,
        CASE
            WHEN d70_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '1'::text THEN 'M'::text
            WHEN d70_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '2'::text THEN 'Mme'::text
            ELSE NULL::text
        END AS genre,
    d70_fftp_2020_proprietaire_droit_non_ano.ddenom AS nom_naissance,
    d70_fftp_2020_proprietaire_droit_non_ano.dnomus AS nom_usuel,
    concat(d70_fftp_2020_proprietaire_droit_non_ano.jdatnss, ' à ', d70_fftp_2020_proprietaire_droit_non_ano.dldnss) AS ne_e,
    concat(d70_fftp_2020_proprietaire_droit_non_ano.dlign3, ' ', d70_fftp_2020_proprietaire_droit_non_ano.dlign4, ' ', d70_fftp_2020_proprietaire_droit_non_ano.dlign5, ' ', d70_fftp_2020_proprietaire_droit_non_ano.dlign6) AS adresse,
    d70_fftp_2020_proprietaire_droit_non_ano.ccogrmtxt AS type_pers_morale,
    p.geompar AS geom
   FROM fichiers_fonciers.d70_fftp_2020_pdl30_lots l
     LEFT JOIN fichiers_fonciers.d70_fftp_2020_pnb10_parcelle p ON p.idpar::text = l.idpar::text
     LEFT JOIN fichiers_fonciers.d70_fftp_2020_proprietaire_droit_non_ano ON l.idprocpte::text = d70_fftp_2020_proprietaire_droit_non_ano.idprocpte::text
  WHERE p.ctpdl::text = 'BND'::text
UNION
 SELECT DISTINCT ON (l.idpk) l.idpk,
    p.idpar,
    p.idprocpte AS pidprocpte,
    l.idprocpte AS lidprocpte,
    l.dnulot,
    l.dcntlo,
    d90_fftp_2020_proprietaire_droit_non_ano.idpersonne,
        CASE
            WHEN d90_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '1'::text THEN 'M'::text
            WHEN d90_fftp_2020_proprietaire_droit_non_ano.ccoqua::text = '2'::text THEN 'Mme'::text
            ELSE NULL::text
        END AS genre,
    d90_fftp_2020_proprietaire_droit_non_ano.ddenom AS nom_naissance,
    d90_fftp_2020_proprietaire_droit_non_ano.dnomus AS nom_usuel,
    concat(d90_fftp_2020_proprietaire_droit_non_ano.jdatnss, ' à ', d90_fftp_2020_proprietaire_droit_non_ano.dldnss) AS ne_e,
    concat(d90_fftp_2020_proprietaire_droit_non_ano.dlign3, ' ', d90_fftp_2020_proprietaire_droit_non_ano.dlign4, ' ', d90_fftp_2020_proprietaire_droit_non_ano.dlign5, ' ', d90_fftp_2020_proprietaire_droit_non_ano.dlign6) AS adresse,
    d90_fftp_2020_proprietaire_droit_non_ano.ccogrmtxt AS type_pers_morale,
    p.geompar AS geom
   FROM fichiers_fonciers.d90_fftp_2020_pdl30_lots l
     LEFT JOIN fichiers_fonciers.d90_fftp_2020_pnb10_parcelle p ON p.idpar::text = l.idpar::text
     LEFT JOIN fichiers_fonciers.d90_fftp_2020_proprietaire_droit_non_ano ON l.idprocpte::text = d90_fftp_2020_proprietaire_droit_non_ano.idprocpte::text
  WHERE p.ctpdl::text = 'BND'::text
  ORDER BY 1, 4
WITH DATA;


CREATE INDEX vm_bnd_proprio_geom_idx
    ON fichiers_fonciers.vm_bnd_proprio USING gist
    (geom)
    TABLESPACE pg_default;
CREATE INDEX vm_bnd_proprio_idpar_idx
    ON fichiers_fonciers.vm_bnd_proprio USING btree
    (idpar COLLATE pg_catalog."default")
    TABLESPACE pg_default;