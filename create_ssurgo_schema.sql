--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.1
-- Dumped by pg_dump version 9.5beta2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: ssurgo; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ssurgo;


ALTER SCHEMA ssurgo OWNER TO postgres;

--
-- Name: SCHEMA ssurgo; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA ssurgo IS 'Soil Survey Geographic Database

http://www.nrcs.usda.gov/wps/portal/nrcs/detail/soils/survey/?cid=nrcs142p2_053627

"The SSURGO database contains information about soil as collected by the National Cooperative Soil Survey over the course of a century. The information can be displayed in tables or as maps and is available for most areas in the United States and the Territories, Commonwealths, and Island Nations served by the USDA-NRCS. The information was gathered by walking over the land and observing the soil. Many soil samples were analyzed in laboratories. The maps outline areas called map units. The map units describe soils and other components that have unique properties, interpretations, and productivity. The information was collected at scales ranging from 1:12,000 to 1:63,360. More details were gathered at a scale of 1:12,000 than at a scale of 1:63,360. The mapping is intended for natural resource planning and management by landowners, townships, and counties. Some knowledge of soils data and map scale is necessary to avoid misunderstandings.

The maps are linked in the database to information about the component soils and their properties for each map unit. Each map unit may contain one to three major components and some minor components. The map units are typically named for the major components. Examples of information available from the database include available water capacity, soil reaction, electrical conductivity, and frequency of flooding; yields for cropland, woodland, rangeland, and pastureland; and limitations affecting recreational development, building site development, and other engineering uses.

SSURGO datasets consist of map data, tabular data, and information about how the maps and tables were created. The extent of a SSURGO dataset is a soil survey area, which may consist of a single county, multiple counties, or parts of multiple counties. SSURGO map data can be viewed in the Web Soil Survey or downloaded in ESRI® Shapefile format. The coordinate systems are Geographic. Attribute data can be downloaded in text format that can be imported into a Microsoft® Access® database.
"

';


SET search_path = ssurgo, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: coecoclass; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE coecoclass (
    ecoclasstypename character varying(255),
    ecoclassref text,
    ecoclassid character varying(30),
    ecoclassname character varying(255),
    cokey character varying(30),
    coecoclasskey character varying(30)
);


ALTER TABLE coecoclass OWNER TO postgres;

--
-- Name: component; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE component (
    comppct_l integer,
    comppct_r integer,
    comppct_h integer,
    compname character varying(60),
    compkind character varying(254),
    majcompflag character(3),
    otherph character varying(40),
    localphase character varying(40),
    slope_l double precision,
    slope_r double precision,
    slope_h double precision,
    slopelenusle_l integer,
    slopelenusle_r integer,
    slopelenusle_h integer,
    runoff character varying(254),
    tfact integer,
    wei character varying(254),
    weg character varying(254),
    erocl character varying(254),
    earthcovkind1 character varying(254),
    earthcovkind2 character varying(254),
    hydricon character varying(254),
    hydricrating character varying(254),
    drainagecl character varying(254),
    elev_l double precision,
    elev_r double precision,
    elev_h double precision,
    aspectccwise integer,
    aspectrep integer,
    aspectcwise integer,
    geomdesc text,
    albedodry_l double precision,
    albedodry_r double precision,
    albedodry_h double precision,
    airtempa_l double precision,
    airtempa_r double precision,
    airtempa_h double precision,
    map_l integer,
    map_r integer,
    map_h integer,
    reannualprecip_l integer,
    reannualprecip_r integer,
    reannualprecip_h integer,
    ffd_l integer,
    ffd_r integer,
    ffd_h integer,
    nirrcapcl character varying(254),
    nirrcapscl character varying(254),
    nirrcapunit integer,
    irrcapcl character varying(254),
    irrcapscl character varying(254),
    irrcapunit integer,
    cropprodindex integer,
    constreeshrubgrp character varying(254),
    wndbrksuitgrp character varying(254),
    rsprod_l integer,
    rsprod_r integer,
    rsprod_h integer,
    foragesuitgrpid character varying(11),
    wlgrain character varying(254),
    wlgrass character varying(254),
    wlherbaceous character varying(254),
    wlshrub character varying(254),
    wlconiferous character varying(254),
    wlhardwood character varying(254),
    wlwetplant character varying(254),
    wlshallowwat character varying(254),
    wlrangeland character varying(254),
    wlopenland character varying(254),
    wlwoodland character varying(254),
    wlwetland character varying(254),
    soilslippot character varying(254),
    frostact character varying(254),
    initsub_l integer,
    initsub_r integer,
    initsub_h integer,
    totalsub_l integer,
    totalsub_r integer,
    totalsub_h integer,
    hydgrp character varying(254),
    corcon character varying(254),
    corsteel character varying(254),
    taxclname character varying(120),
    taxorder character varying(254),
    taxsuborder character varying(254),
    taxgrtgroup character varying(254),
    taxsubgrp character varying(254),
    taxpartsize character varying(254),
    taxpartsizemod character varying(254),
    taxceactcl character varying(254),
    taxreaction character varying(254),
    taxtempcl character varying(254),
    taxmoistscl character varying(254),
    taxtempregime character varying(254),
    soiltaxedition character varying(254),
    castorieindex integer,
    flecolcomnum character varying(5),
    flhe character(3),
    flphe character(3),
    flsoilleachpot character varying(254),
    flsoirunoffpot character varying(254),
    fltemik2use character(3),
    fltriumph2use character(3),
    indraingrp character(3),
    innitrateleachi integer,
    misoimgmtgrp character varying(254),
    vasoimgtgrp character varying(254),
    mukey character varying(30),
    cokey character varying(30) NOT NULL
);


ALTER TABLE component OWNER TO postgres;

--
-- Name: cotext; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE cotext (
    recdate timestamp without time zone,
    comptextkind character varying(254),
    textcat character varying(20),
    textsubcat character varying(20),
    text character varying,
    cokey character varying(30),
    cotextkey character varying(30)
);


ALTER TABLE cotext OWNER TO postgres;

--
-- Name: TABLE cotext; Type: COMMENT; Schema: ssurgo; Owner: postgres
--

COMMENT ON TABLE cotext IS 'The Component Text table contains notes and narrative descriptions for the referenced map unit component. In many cases, the table will be empty for a particular component.
';


--
-- Name: COLUMN cotext.comptextkind; Type: COMMENT; Schema: ssurgo; Owner: postgres
--

COMMENT ON COLUMN cotext.comptextkind IS 'domain: component_text_kind
';



--
-- Name: mapunit; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE mapunit (
    musym character varying(6),
    muname character varying(175),
    mukind character varying(254),
    mustatus character varying(254),
    muacres integer,
    mapunitlfw_l integer,
    mapunitlfw_r integer,
    mapunitlfw_h integer,
    mapunitpfa_l double precision,
    mapunitpfa_r double precision,
    mapunitpfa_h double precision,
    farmlndcl character varying(254),
    muhelcl character varying(254),
    muwathelcl character varying(254),
    muwndhelcl character varying(254),
    interpfocus character varying(30),
    invesintens character varying(254),
    iacornsr integer,
    nhiforsoigrp character varying(254),
    nhspiagr double precision,
    vtsepticsyscl character varying(254),
    mucertstat character varying(254),
    lkey character varying(30),
    mukey character varying(30) NOT NULL
);


ALTER TABLE mapunit OWNER TO postgres;

--
-- Name: muaggatt; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE muaggatt (
    musym character varying,
    muname character varying,
    mustatus character varying,
    slopegraddcp numeric,
    slopegradwta numeric,
    brockdepmin integer,
    wtdepannmin integer,
    wtdepaprjunmin integer,
    flodfreqdcd character varying,
    flodfreqmax character varying,
    pondfreqprs character varying,
    aws025wta numeric,
    aws050wta numeric,
    aws0100wta numeric,
    aws0150wta numeric,
    drclassdcd character varying,
    drclasswettest character varying,
    hydgrpdcd character varying,
    iccdcd character varying,
    iccdcdpct integer,
    niccdcd character varying,
    niccdcdpct integer,
    engdwobdcd character varying,
    engdwbdcd character varying,
    engdwbll character varying,
    engdwbml character varying,
    engstafdcd character varying,
    engstafll character varying,
    engstafml character varying,
    engsldcd character varying,
    engsldcp character varying,
    englrsdcd character varying,
    engcmssdcd character varying,
    engcmssmp character varying,
    urbrecptdcd character varying,
    urbrecptwta numeric,
    forpehrtdcp character varying,
    hydclprs character varying,
    awmmfpwwta numeric,
    mukey character varying
);


ALTER TABLE muaggatt OWNER TO postgres;

--
-- Name: TABLE muaggatt; Type: COMMENT; Schema: ssurgo; Owner: postgres
--

COMMENT ON TABLE muaggatt IS 'Mapunit Aggregated Attribute';


--
-- Name: mupolygon; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE mupolygon (
    gid integer,
    areasymbol character varying(20),
    spatialver numeric(10,0),
    musym character varying(6),
    mukey character varying(30),
    the_geom public.geometry
);


ALTER TABLE mupolygon OWNER TO postgres;

--
-- Name: soilmu_wm; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE soilmu_wm (
    id integer NOT NULL,
    geom public.geometry(MultiPolygon,3857),
    areasymbol character varying,
    spatialver integer,
    mysym character varying,
    mukey character varying,
    "Shape_Length" double precision,
    "Shape_Area" double precision
);


ALTER TABLE soilmu_wm OWNER TO postgres;

SET default_tablespace = pg_default;

--
-- Name: mv_soil_mapunit; Type: MATERIALIZED VIEW; Schema: ssurgo; Owner: postgres; Tablespace: pg_default
--

CREATE MATERIALIZED VIEW mv_soil_mapunit AS
 SELECT ply.id,
    ply.geom,
    ply.areasymbol,
    ply.spatialver,
    ply.mysym,
    ply.mukey,
    muagg.musym,
    muagg.muname,
    muagg.mustatus,
    muagg.hydgrpdcd
   FROM ((soilmu_wm ply
     LEFT JOIN mapunit mu ON (((ply.mukey)::text = (mu.mukey)::text)))
     LEFT JOIN muaggatt muagg ON (((ply.mukey)::text = (muagg.mukey)::text)))
  WITH NO DATA;


ALTER TABLE mv_soil_mapunit OWNER TO postgres;

--
-- Name: MATERIALIZED VIEW mv_soil_mapunit; Type: COMMENT; Schema: ssurgo; Owner: postgres
--

COMMENT ON MATERIALIZED VIEW mv_soil_mapunit IS 'Materialized spatial view that joins map unit geometry to the mapunit and map unit attributes.  The geometry is web mercator (3857)';


SET default_tablespace = pg_default;

--
-- Name: mv_technical_description; Type: MATERIALIZED VIEW; Schema: ssurgo; Owner: postgres; Tablespace: pg_default
--

CREATE MATERIALIZED VIEW mv_technical_description AS
 WITH cte AS (
         SELECT cotext.recdate,
            cotext.comptextkind,
            cotext.textcat,
            cotext.textsubcat,
            cotext.text,
            cotext.cokey,
            cotext.cotextkey,
            row_number() OVER (PARTITION BY cotext.cokey ORDER BY cotext.recdate DESC) AS nr
           FROM cotext
          WHERE ((cotext.comptextkind)::text = 'Nontechnical description'::text)
        )
 SELECT cte.recdate,
    cte.comptextkind,
    cte.textcat,
    cte.textsubcat,
    cte.text,
    cte.cokey,
    cte.cotextkey,
    cte.nr
   FROM cte
  WHERE (cte.nr = 1)
  WITH NO DATA;


ALTER TABLE mv_technical_description OWNER TO postgres;

--
-- Name: MATERIALIZED VIEW mv_technical_description; Type: COMMENT; Schema: ssurgo; Owner: postgres
--

COMMENT ON MATERIALIZED VIEW mv_technical_description IS 'Aggregated component technical descriptions.';


--
-- Name: soilmu_wm_id_seq; Type: SEQUENCE; Schema: ssurgo; Owner: postgres
--

CREATE SEQUENCE soilmu_wm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE soilmu_wm_id_seq OWNER TO postgres;

--
-- Name: soilmu_wm_id_seq; Type: SEQUENCE OWNED BY; Schema: ssurgo; Owner: postgres
--

ALTER SEQUENCE soilmu_wm_id_seq OWNED BY soilmu_wm.id;


--
-- Name: svw_lccd_soils; Type: VIEW; Schema: ssurgo; Owner: postgres
--

CREATE VIEW svw_lccd_soils AS
 SELECT ply.id,
    ply.geom,
    ply.areasymbol,
    ply.spatialver,
    muagg.musym,
    muagg.muname,
    muagg.mustatus,
    muagg.slopegraddcp,
    muagg.slopegradwta,
    muagg.brockdepmin,
    muagg.wtdepannmin,
    muagg.wtdepaprjunmin,
    muagg.flodfreqdcd,
    muagg.flodfreqmax,
    muagg.pondfreqprs,
    muagg.aws025wta,
    muagg.aws050wta,
    muagg.aws0100wta,
    muagg.aws0150wta,
    muagg.drclassdcd,
    muagg.drclasswettest,
    muagg.hydgrpdcd,
    muagg.iccdcd,
    muagg.iccdcdpct,
    muagg.niccdcd,
    muagg.niccdcdpct,
    muagg.engdwobdcd,
    muagg.engdwbdcd,
    muagg.engdwbll,
    muagg.engdwbml,
    muagg.engstafdcd,
    muagg.engstafll,
    muagg.engstafml,
    muagg.engsldcd,
    muagg.engsldcp,
    muagg.englrsdcd,
    muagg.engcmssdcd,
    muagg.engcmssmp,
    muagg.urbrecptdcd,
    muagg.urbrecptwta,
    muagg.forpehrtdcp,
    muagg.hydclprs,
    muagg.awmmfpwwta,
    muagg.mukey
   FROM ((soilmu_wm ply
     LEFT JOIN mapunit mu ON (((ply.mukey)::text = (mu.mukey)::text)))
     LEFT JOIN muaggatt muagg ON (((ply.mukey)::text = (muagg.mukey)::text)))
  WHERE public.st_intersects(ply.geom, public.st_transform(public.st_geomfromewkt('SRID=26918;POLYGON((348330.2881 4384093.4924,348330.2881 4472392.5335,438915.6896 4472392.5335,438915.6896 4384093.4924,348330.2881 4384093.4924))'::text), 3857));


ALTER TABLE svw_lccd_soils OWNER TO postgres;

--
-- Name: svw_soil_mapunit; Type: VIEW; Schema: ssurgo; Owner: postgres
--

CREATE VIEW svw_soil_mapunit AS
 SELECT row_number() OVER () AS id,
    ply.areasymbol,
    ply.spatialver,
    muagg.musym,
    muagg.muname,
    muagg.mustatus,
    c.compname,
    c.compkind,
    c.runoff,
    c.earthcovkind1,
    c.earthcovkind2,
    c.hydricon,
    c.hydricrating,
    c.drainagecl,
    c.geomdesc,
    c.taxclname,
    c.cokey,
    ply.geom,
    ct.textcat,
    ct.text
   FROM ((((soilmu_wm ply
     LEFT JOIN component c ON (((ply.mukey)::text = (c.mukey)::text)))
     LEFT JOIN mapunit mu ON (((ply.mukey)::text = (mu.mukey)::text)))
     LEFT JOIN muaggatt muagg ON (((ply.mukey)::text = (muagg.mukey)::text)))
     LEFT JOIN mv_technical_description ct ON (((c.cokey)::text = (ct.cokey)::text)))
  WHERE ((c.majcompflag = 'Yes'::bpchar) AND ((c.compkind)::text = 'Series'::text));


ALTER TABLE svw_soil_mapunit OWNER TO postgres;

--
-- Name: VIEW svw_soil_mapunit; Type: COMMENT; Schema: ssurgo; Owner: postgres
--

COMMENT ON VIEW svw_soil_mapunit IS 'SSURGO map units join to components and cotext (latest non-technical text).';


SET default_tablespace = '';

--
-- Name: test_geom; Type: TABLE; Schema: ssurgo; Owner: postgres
--

CREATE TABLE test_geom (
    id integer NOT NULL,
    geom public.geometry
);


ALTER TABLE test_geom OWNER TO postgres;

--
-- Name: test_geom_id_seq; Type: SEQUENCE; Schema: ssurgo; Owner: postgres
--

CREATE SEQUENCE test_geom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE test_geom_id_seq OWNER TO postgres;

--
-- Name: test_geom_id_seq; Type: SEQUENCE OWNED BY; Schema: ssurgo; Owner: postgres
--

ALTER SEQUENCE test_geom_id_seq OWNED BY test_geom.id;


--
-- Name: id; Type: DEFAULT; Schema: ssurgo; Owner: postgres
--

ALTER TABLE ONLY soilmu_wm ALTER COLUMN id SET DEFAULT nextval('soilmu_wm_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: ssurgo; Owner: postgres
--

ALTER TABLE ONLY test_geom ALTER COLUMN id SET DEFAULT nextval('test_geom_id_seq'::regclass);
 

--
-- Name: soilmu_wm_pkey; Type: CONSTRAINT; Schema: ssurgo; Owner: postgres
--

ALTER TABLE ONLY soilmu_wm
    ADD CONSTRAINT soilmu_wm_pkey PRIMARY KEY (id);


--
-- Name: test_geom_pkey; Type: CONSTRAINT; Schema: ssurgo; Owner: postgres
--

ALTER TABLE ONLY test_geom
    ADD CONSTRAINT test_geom_pkey PRIMARY KEY (id);


--
-- Name: component_majcompflag_mukey_cokey_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX component_majcompflag_mukey_cokey_idx ON component USING btree (majcompflag, mukey, cokey);


--
-- Name: cotext_cokey_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX cotext_cokey_idx ON cotext USING btree (cokey);


--
-- Name: cotext_comptextkind_cokey_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX cotext_comptextkind_cokey_idx ON cotext USING btree (comptextkind, cokey);


--
-- Name: mapunit_mukey_musym_muname_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX mapunit_mukey_musym_muname_idx ON mapunit USING btree (mukey, musym, muname);


SET default_tablespace = pg_default;

--
-- Name: mv_soil_mapunit_id_hydgrpdcd_areasymbol_spatialver_mysym_mu_idx; Type: INDEX; Schema: ssurgo; Owner: postgres; Tablespace: pg_default
--

CREATE UNIQUE INDEX mv_soil_mapunit_id_hydgrpdcd_areasymbol_spatialver_mysym_mu_idx ON mv_soil_mapunit USING btree (id, hydgrpdcd, areasymbol, spatialver, mysym, mukey, musym, muname, mustatus) WITH (fillfactor='100');


--
-- Name: mv_soil_mapunit_id_idx; Type: INDEX; Schema: ssurgo; Owner: postgres; Tablespace: pg_default
--

CREATE UNIQUE INDEX mv_soil_mapunit_id_idx ON mv_soil_mapunit USING btree (id);


SET default_tablespace = '';

--
-- Name: mv_technical_description_cokey_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX mv_technical_description_cokey_idx ON mv_technical_description USING btree (cokey);




--
-- Name: sidx_soilmu_wm_geom; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX sidx_soilmu_wm_geom ON soilmu_wm USING gist (geom);


--
-- Name: soilmu_wm_AREASYMBOL_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX "soilmu_wm_AREASYMBOL_idx" ON soilmu_wm USING btree (areasymbol);


--
-- Name: soilmu_wm_MUSYM_MUKEY_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX "soilmu_wm_MUSYM_MUKEY_idx" ON soilmu_wm USING btree (mysym, mukey);


--
-- Name: soilmu_wm_SPATIALVER_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX "soilmu_wm_SPATIALVER_idx" ON soilmu_wm USING btree (spatialver);


--
-- Name: soilmu_wm_id_idx; Type: INDEX; Schema: ssurgo; Owner: postgres
--

CREATE INDEX soilmu_wm_id_idx ON soilmu_wm USING btree (id);


SET default_tablespace = pg_default;

--
-- Name: ssurgo_mv_soil_mapunit_geom_sx; Type: INDEX; Schema: ssurgo; Owner: postgres; Tablespace: pg_default
--

CREATE INDEX ssurgo_mv_soil_mapunit_geom_sx ON mv_soil_mapunit USING gist (geom);


--
-- Name: ssurgo; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA ssurgo FROM PUBLIC;
REVOKE ALL ON SCHEMA ssurgo FROM postgres;
GRANT ALL ON SCHEMA ssurgo TO postgres;
GRANT USAGE ON SCHEMA ssurgo TO PUBLIC;
GRANT ALL ON SCHEMA ssurgo TO madmin;
GRANT USAGE ON SCHEMA ssurgo TO mtenant;


--
-- Name: coecoclass; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE coecoclass FROM PUBLIC;
REVOKE ALL ON TABLE coecoclass FROM postgres;
GRANT ALL ON TABLE coecoclass TO postgres;
GRANT SELECT,REFERENCES ON TABLE coecoclass TO ssurgo;


--
-- Name: component; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE component FROM PUBLIC;
REVOKE ALL ON TABLE component FROM postgres;
GRANT ALL ON TABLE component TO postgres;
GRANT SELECT,REFERENCES ON TABLE component TO ssurgo;


--
-- Name: cotext; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE cotext FROM PUBLIC;
REVOKE ALL ON TABLE cotext FROM postgres;
GRANT ALL ON TABLE cotext TO postgres;
GRANT SELECT,REFERENCES ON TABLE cotext TO ssurgo;



--
-- Name: mapunit; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE mapunit FROM PUBLIC;
REVOKE ALL ON TABLE mapunit FROM postgres;
GRANT ALL ON TABLE mapunit TO postgres;
GRANT SELECT,REFERENCES ON TABLE mapunit TO ssurgo;


--
-- Name: muaggatt; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE muaggatt FROM PUBLIC;
REVOKE ALL ON TABLE muaggatt FROM postgres;
GRANT ALL ON TABLE muaggatt TO postgres;
GRANT SELECT,REFERENCES ON TABLE muaggatt TO ssurgo;


--
-- Name: mupolygon; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE mupolygon FROM PUBLIC;
REVOKE ALL ON TABLE mupolygon FROM postgres;
GRANT ALL ON TABLE mupolygon TO postgres;
GRANT SELECT,REFERENCES ON TABLE mupolygon TO ssurgo;


--
-- Name: soilmu_wm; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE soilmu_wm FROM PUBLIC;
REVOKE ALL ON TABLE soilmu_wm FROM postgres;
GRANT ALL ON TABLE soilmu_wm TO postgres;
GRANT SELECT,REFERENCES ON TABLE soilmu_wm TO ssurgo;


--
-- Name: mv_soil_mapunit; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE mv_soil_mapunit FROM PUBLIC;
REVOKE ALL ON TABLE mv_soil_mapunit FROM postgres;
GRANT ALL ON TABLE mv_soil_mapunit TO postgres;
GRANT SELECT,REFERENCES ON TABLE mv_soil_mapunit TO ssurgo;


--
-- Name: mv_technical_description; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE mv_technical_description FROM PUBLIC;
REVOKE ALL ON TABLE mv_technical_description FROM postgres;
GRANT ALL ON TABLE mv_technical_description TO postgres;
GRANT SELECT,REFERENCES ON TABLE mv_technical_description TO ssurgo;


--
-- Name: soilmu_wm_id_seq; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON SEQUENCE soilmu_wm_id_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE soilmu_wm_id_seq FROM postgres;
GRANT ALL ON SEQUENCE soilmu_wm_id_seq TO postgres;
GRANT SELECT,USAGE ON SEQUENCE soilmu_wm_id_seq TO ssurgo;


--
-- Name: svw_lccd_soils; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE svw_lccd_soils FROM PUBLIC;
REVOKE ALL ON TABLE svw_lccd_soils FROM postgres;
GRANT ALL ON TABLE svw_lccd_soils TO postgres;
GRANT SELECT,REFERENCES ON TABLE svw_lccd_soils TO ssurgo;


--
-- Name: svw_soil_mapunit; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE svw_soil_mapunit FROM PUBLIC;
REVOKE ALL ON TABLE svw_soil_mapunit FROM postgres;
GRANT ALL ON TABLE svw_soil_mapunit TO postgres;
GRANT SELECT,REFERENCES ON TABLE svw_soil_mapunit TO ssurgo;


--
-- Name: test_geom; Type: ACL; Schema: ssurgo; Owner: postgres
--

REVOKE ALL ON TABLE test_geom FROM PUBLIC;
REVOKE ALL ON TABLE test_geom FROM postgres;
GRANT ALL ON TABLE test_geom TO postgres;
GRANT SELECT,REFERENCES ON TABLE test_geom TO ssurgo;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: ssurgo; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA ssurgo REVOKE ALL ON TABLES  FROM PUBLIC;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA ssurgo REVOKE ALL ON TABLES  FROM postgres;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA ssurgo GRANT SELECT,REFERENCES ON TABLES  TO ssurgo;


--
-- PostgreSQL database dump complete
--

