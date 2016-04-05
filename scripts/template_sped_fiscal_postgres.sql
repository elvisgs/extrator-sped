--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: :db_name; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE :"db_name";


\connect :"db_name"

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: reg_0000; Type: TABLE; Schema: public; Owner: -; Tablespace:
--

CREATE TABLE reg_0000 (
    id bigint NOT NULL,
    id_pai bigint,
    cod_ver character varying(3),
    cod_fin character varying(1),
    dt_ini date,
    dt_fin date,
    nome character varying(100),
    cnpj character varying(14),
    cpf character varying(11),
    uf character varying(2),
    ie character varying(14),
    cod_mun character varying(7),
    im character varying(255),
    suframa character varying(9),
    ind_perfil character varying(1),
    ind_ativ character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0005; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0005 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    fantasia character varying(60),
    cep character varying(8),
    endereco character varying(60),
    num character varying(10),
    compl character varying(60),
    bairro character varying(60),
    fone character varying(11),
    fax character varying(11),
    email character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0015; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0015 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    uf_st character varying(2),
    ie_st character varying(14),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0100; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nome character varying(60),
    cpf character varying(11),
    crc character varying(15),
    cnpj character varying(14),
    cep character varying(8),
    endereco character varying(60),
    num character varying(10),
    compl character varying(60),
    bairro character varying(60),
    fone character varying(11),
    fax character varying(11),
    email character varying(60),
    cod_mun character varying(7),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0150; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0150 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    nome character varying(100),
    cod_pais character varying(5),
    cnpj character varying(14),
    cpf character varying(11),
    ie character varying(14),
    cod_mun character varying(7),
    suframa character varying(9),
    endereco character varying(60),
    num character varying(10),
    compl character varying(60),
    bairro character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0175; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0175 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_alt date,
    nr_campo character varying(2),
    cont_ant character varying(100),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0190; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0190 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    unid character varying(6),
    descr character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0200; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    descr_item character varying(255),
    cod_barra character varying(20),
    cod_ant_item character varying(60),
    unid_inv character varying(6),
    tipo_item character varying(2),
    cod_ncm character varying(8),
    ex_ipi character varying(3),
    cod_gen character varying(2),
    cod_lst character varying(4),
    aliq_icms numeric(8,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0205; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0205 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    descr_ant_item character varying(255),
    dt_ini date,
    dt_fim date,
    cod_ant_item character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0206; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0206 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_comb character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0220; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0220 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    unid_conv character varying(6),
    fat_conv numeric(25,6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0300; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_ind_bem character varying(60),
    ident_merc character varying(1),
    descr_item character varying(255),
    cod_prnc character varying(60),
    cod_cta character varying(60),
    nr_parc character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0305; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0305 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_ccus character varying(60),
    func character varying(255),
    vida_util character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0400; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0400 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_nat character varying(10),
    descr_nat character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0450; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0450 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inf character varying(6),
    txt character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0460; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0460 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_obs character varying(6),
    txt character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0500; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_alt date,
    cod_nat_cc character varying(2),
    ind_cta character varying(1),
    nivel character varying(5),
    cod_cta character varying(60),
    nome_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0600; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_alt date,
    cod_ccus character varying(60),
    ccus character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_0990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_0 bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1010; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_exp character varying(1),
    ind_ccrf character varying(1),
    ind_comb character varying(1),
    ind_usina character varying(1),
    ind_va character varying(1),
    ind_ee character varying(1),
    ind_cart character varying(1),
    ind_form character varying(1),
    ind_aer character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1100; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_doc character varying(1),
    nro_de character varying(11),
    dt_de date,
    nat_exp character varying(1),
    nro_re character varying(12),
    dt_re date,
    chc_emb character varying(18),
    dt_chc date,
    dt_avb date,
    tp_chc character varying(2),
    pais character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1105; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1105 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(3),
    num_doc character varying(9),
    chv_nfe character varying(44),
    dt_doc date,
    cod_item character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1110; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    num_doc character varying(9),
    dt_doc date,
    chv_nfe character varying(44),
    nr_memo character varying(255),
    qtd numeric(22,3),
    unid character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1200; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_aj_apur character varying(8),
    sld_cred numeric(21,2),
    cred_apr numeric(21,2),
    cred_receb numeric(21,2),
    cred_util numeric(21,2),
    sld_cred_fim numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1210; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1210 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    tipo_util character varying(4),
    nr_doc character varying(255),
    vl_cred_util numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1300; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    dt_fech date,
    estq_abert numeric(22,3),
    vol_entr numeric(22,3),
    vol_disp numeric(22,3),
    vol_saidas numeric(22,3),
    estq_escr numeric(22,3),
    val_aj_perda numeric(22,3),
    val_aj_ganho numeric(22,3),
    fech_fisico numeric(22,3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1310; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1310 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_tanque character varying(3),
    estq_abert numeric(22,3),
    vol_entr numeric(22,3),
    vol_disp numeric(22,3),
    vol_saidas numeric(22,3),
    estq_escr numeric(22,3),
    val_aj_perda numeric(22,3),
    val_aj_ganho numeric(22,3),
    fech_fisico numeric(22,3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1320; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1320 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_bico character varying(255),
    nr_interv character varying(255),
    mot_interv character varying(50),
    nom_interv character varying(30),
    cnpj_interv character varying(14),
    cpf_interv character varying(11),
    val_fecha numeric(22,3),
    val_abert numeric(22,3),
    vol_aferi numeric(22,3),
    vol_vendas numeric(22,3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1350; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1350 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    serie character varying(255),
    fabricante character varying(60),
    modelo character varying(255),
    tipo_medicao character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1360; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1360 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_lacre character varying(20),
    dat_aplicacao date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1370; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1370 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_bico character varying(3),
    cod_item character varying(60),
    num_tanque character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1390; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1390 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_prod character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1391; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1391 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_registro date,
    qtd_moid numeric(21,2),
    estq_ini numeric(21,2),
    qtd_produz numeric(21,2),
    ent_anid_hid numeric(21,2),
    outr_entr numeric(21,2),
    perda numeric(21,2),
    cons numeric(21,2),
    sai_ani_hid numeric(21,2),
    saidas numeric(21,2),
    estq_fin numeric(21,2),
    estq_ini_mel numeric(21,2),
    prod_dia_mel numeric(21,2),
    util_mel numeric(21,2),
    prod_alc_mel numeric(21,2),
    obs character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1400; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1400 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    mun character varying(7),
    valor numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1500; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    cod_cons character varying(2),
    num_doc character varying(9),
    dt_doc date,
    dt_e_s date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    vl_forn numeric(21,2),
    vl_serv_nt numeric(21,2),
    vl_terc numeric(21,2),
    vl_da numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    cod_inf character varying(6),
    vl_pis numeric(21,2),
    vl_cofis numeric(21,2),
    tp_ligacao character varying(1),
    cod_grupo_tensao character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1510; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1510 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
    cod_item character varying(60),
    cod_class character varying(4),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_icms character varying(3),
    cfop character varying(4),
    vl_bc_icms numeric(21,2),
    aliq_icms numeric(8,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    aliq_st numeric(21,2),
    vl_icms_st numeric(21,2),
    ind_rec character varying(1),
    cod_part character varying(60),
    vl_pis numeric(21,2),
    vl_cofis numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1600; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    tot_credito numeric(21,2),
    tot_debito numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1700; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1700 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_disp character varying(2),
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc_ini character varying(12),
    num_doc_fin character varying(12),
    num_aut character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1710; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1710 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_doc_ini character varying(12),
    num_doc_fin character varying(12),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1800; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1800 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_carga numeric(21,2),
    vl_pass numeric(21,2),
    vl_fat numeric(21,2),
    ind_rat numeric(14,6),
    vl_icms_ant numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms_apur numeric(21,2),
    vl_bc_icms_apur numeric(21,2),
    vl_dif numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1900; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1900 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_apur_icms character varying(1),
    descr_compl_out_apur character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1910; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1910 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_ini date,
    dt_fin date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1920; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1920 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_tot_transf_debitos_oa numeric(21,2),
    vl_tot_aj_debitos_oa numeric(21,2),
    vl_estornos_cred_oa numeric(21,2),
    vl_tot_transf_creditos_oa numeric(21,2),
    vl_tot_aj_creditos_oa numeric(21,2),
    vl_estornos_deb_oa numeric(21,2),
    vl_sld_credor_ant_oa numeric(21,2),
    vl_sld_apurado_oa numeric(21,2),
    vl_tot_ded numeric(21,2),
    vl_icms_recolher_oa numeric(21,2),
    vl_sld_credor_transp_oa numeric(21,2),
    deb_esp_oa numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1921; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1921 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_aj_apur character varying(8),
    descr_compl_aj character varying(255),
    vl_aj_apur numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1922; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1922 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_da character varying(255),
    num_proc character varying(15),
    ind_proc character varying(1),
    proc character varying(255),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1923; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1923 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    dt_doc date,
    cod_item character varying(60),
    vl_aj_item numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1925; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1925 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inf_adic character varying(8),
    vl_inf_adic numeric(21,2),
    desc_compl_aj character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1926; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1926 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_or character varying(3),
    vl_or numeric(21,2),
    dt_vcto date,
    cod_rec character varying(255),
    num_proc character varying(15),
    ind_proc character varying(1),
    proc character varying(255),
    txt_compl character varying(255),
    mes_ref character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_1990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_1 bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_9001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_9001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_9900; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_9900 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    reg_blc character varying(4),
    qtd_reg_blc character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_9990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_9990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_9 bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_9999; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_9999 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c100; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(3),
    num_doc character varying(9),
    chv_nfe character varying(44),
    dt_doc date,
    dt_e_s date,
    vl_doc numeric(21,2),
    ind_pgto character varying(1),
    vl_desc numeric(21,2),
    vl_abat_nt numeric(21,2),
    vl_merc numeric(21,2),
    ind_frt character varying(1),
    vl_frt numeric(21,2),
    vl_seg numeric(21,2),
    vl_out_da numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_ipi numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    vl_pis_st numeric(21,2),
    vl_cofins_st numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c105; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c105 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    oper character varying(1),
    cod_uf character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c110; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inf character varying(6),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c111; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(15),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c112; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c112 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_da character varying(1),
    uf character varying(2),
    num_da character varying(255),
    cod_aut character varying(255),
    vl_da numeric(21,2),
    dt_vcto date,
    dt_pgto date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c113; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c113 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    dt_doc date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c114; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c114 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ecf_fab character varying(21),
    ecf_cx character varying(3),
    num_doc character varying(9),
    dt_doc date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c115; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c115 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_carga character varying(1),
    cnpj_col character varying(14),
    ie_col character varying(14),
    cpf_col character varying(11),
    cod_mun_col character varying(7),
    cnpj_entg character varying(14),
    ie_entg character varying(14),
    cpf_entg character varying(11),
    cod_mun_entg character varying(7),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c116; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c116 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    nr_sat character varying(9),
    chv_cfe character varying(44),
    num_cfe character varying(6),
    dt_doc character varying(8),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c120; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c120 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_doc_imp character varying(1),
    num_doc_imp character varying(12),
    pis_imp numeric(21,2),
    cofins_imp numeric(21,2),
    num_acdraw character varying(20),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c130; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c130 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_serv_nt numeric(21,2),
    vl_bc_issqn numeric(21,2),
    vl_issqn numeric(21,2),
    vl_bc_irrf numeric(21,2),
    vl_irrf numeric(21,2),
    vl_bc_prev numeric(21,2),
    vl_prev numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c140; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c140 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_emit character varying(1),
    ind_tit character varying(2),
    desc_tit character varying(255),
    num_tit character varying(255),
    qtd_parc character varying(2),
    vl_tit numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c141; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c141 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_parc character varying(2),
    dt_vcto date,
    vl_parc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c160; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c160 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    veic_id character varying(7),
    qtd_vol character varying(255),
    peso_brt numeric(21,2),
    peso_liq numeric(21,2),
    uf_id character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c165; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c165 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    veic_id character varying(7),
    cod_aut character varying(255),
    nr_passe character varying(255),
    hora character varying(6),
    temper numeric(20,1),
    qtd_vol character varying(255),
    peso_brt numeric(21,2),
    peso_liq numeric(21,2),
    nom_mot character varying(60),
    cpf character varying(11),
    uf_id character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c170; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c170 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(4),
    cod_item character varying(60),
    descr_compl character varying(255),
    qtd numeric(24,5),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    ind_mov character varying(1),
    cst_icms character varying(3),
    cfop character varying(4),
    cod_nat character varying(10),
    vl_bc_icms numeric(21,2),
    aliq_icms numeric(8,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    aliq_st numeric(8,2),
    vl_icms_st numeric(21,2),
    ind_apur character varying(1),
    cst_ipi character varying(2),
    cod_enq character varying(3),
    vl_bc_ipi numeric(21,2),
    aliq_ipi numeric(8,2),
    vl_ipi numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis_perc numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_reais numeric(23,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins_perc numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_reais numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    dar integer,
    dar_vlr_base_icms numeric(19,4),
    dar_vlr_icms_subs numeric(19,4),
    dar_vlr_base_subs numeric(19,4),
    dar_vlr_icms numeric(19,4),
    dar_perc_icms numeric(19,4),
    dar_perc_iva numeric(19,4),
    dar_vlr_icms_diferencial numeric(19,4),
    dar_vlr_custo numeric(19,4),
    dar_perc_red_base_icms numeric(19,4),
    dar_perc_red_base_subs numeric(19,4),
    dar_perc_icms_destino numeric(19,4),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c171; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c171 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_tanque character varying(3),
    qtde numeric(22,3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c172; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c172 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_bc_issqn numeric(21,2),
    aliq_issqn numeric(8,2),
    vl_issqn numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c173; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c173 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    lote_med character varying(255),
    qtd_item numeric(22,3),
    dt_fab date,
    dt_val date,
    ind_med character varying(1),
    tp_prod character varying(1),
    vl_tab_max numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c174; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c174 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_arm character varying(1),
    num_arm character varying(255),
    descr_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c175; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c175 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_veic_oper character varying(1),
    cnpj character varying(14),
    uf character varying(2),
    chassi_veic character varying(17),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c176; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c176 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod_ult_e character varying(2),
    num_doc_ult_e character varying(9),
    ser_ult_e character varying(3),
    dt_ult_e date,
    cod_part_ult_e character varying(60),
    quant_ult_e numeric(22,3),
    vl_unit_ult_e numeric(22,3),
    vl_unit_bc_st numeric(22,3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c177; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c177 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_selo_ipi character varying(6),
    qt_selo_ipi character varying(12),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c178; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c178 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cl_enq character varying(5),
    vl_unid numeric(21,2),
    quant_pad numeric(22,3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c179; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c179 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    bc_st_orig_dest numeric(21,2),
    icms_st_rep numeric(21,2),
    icms_st_compl numeric(21,2),
    bc_ret numeric(21,2),
    icms_ret numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c190; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c190 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    vl_ipi numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c195; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c195 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_obs character varying(6),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c197; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c197 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_aj character varying(10),
    descr_compl_aj character varying(255),
    cod_item character varying(60),
    vl_bc_icms numeric(21,2),
    aliq_icms numeric(8,2),
    vl_icms numeric(21,2),
    vl_outros numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c300; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc_ini character varying(6),
    num_doc_fin character varying(6),
    dt_doc date,
    vl_doc numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c310; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c310 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_doc_canc character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c320; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c320 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c321; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c321 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c350; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c350 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ser character varying(4),
    sub_ser character varying(3),
    num_doc character varying(6),
    dt_doc date,
    cnpj_cpf character varying(14),
    vl_merc numeric(21,2),
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofis numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c370; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c370 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
    cod_item character varying(60),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c390; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c390 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c400; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c400 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ecf_mod character varying(20),
    ecf_fab character varying(21),
    ecf_cx character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c405; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c405 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_doc date,
    cro character varying(3),
    crz character varying(6),
    num_coo_fin character varying(9),
    gt_fin numeric(21,2),
    vl_brt numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer,
    num_coo_ini character varying(9),
    gt_ini numeric(21,2)
);


--
-- Name: reg_c410; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c410 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c420; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c420 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_tot_par character varying(7),
    vlr_acum_tot numeric(21,2),
    nr_tot character varying(2),
    descr_nr_tot character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c425; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c425 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c460; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c460 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_sit character varying(2),
    num_doc character varying(9),
    dt_doc date,
    vl_doc numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cpf_cnpj character varying(14),
    nome_adq character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c465; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c465 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    chv_cfe character varying(44),
    num_ccf character varying(9),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c470; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c470 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    qtd numeric(22,3),
    qtd_canc numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c490; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c490 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c495; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c495 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    aliq_icms numeric(8,2),
    cod_item character varying(60),
    qtd numeric(22,3),
    qtd_canc numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    vl_canc numeric(21,2),
    vl_acmo numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_isen numeric(21,2),
    vl_nt numeric(21,2),
    vl_icms_st numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c500; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    cod_cons character varying(2),
    num_doc character varying(9),
    dt_doc date,
    dt_e_s date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    vl_forn numeric(21,2),
    vl_serv_nt numeric(21,2),
    vl_terc numeric(21,2),
    vl_da numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    cod_inf character varying(6),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    tp_ligacao character varying(1),
    cod_grupo_tensao character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c510; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c510 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
    cod_item character varying(60),
    cod_class character varying(4),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_icms character varying(3),
    cfop character varying(4),
    vl_bc_icms numeric(21,2),
    aliq_icms numeric(8,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    aliq_st numeric(8,2),
    vl_icms_st numeric(21,2),
    ind_rec character varying(1),
    cod_part character varying(60),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c590; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c590 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c600; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_mun character varying(7),
    ser character varying(4),
    sub character varying(3),
    cod_cons character varying(2),
    qtd_cons character varying(255),
    qtd_canc character varying(255),
    dt_doc date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    cons character varying(255),
    vl_forn numeric(21,2),
    vl_serv_nt numeric(21,2),
    vl_terc numeric(21,2),
    vl_da numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c601; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c601 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_doc_canc character varying(9),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c610; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c610 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_class character varying(4),
    cod_item character varying(60),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c690; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c690 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_red_bc numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c700; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c700 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    nro_ord_ini character varying(9),
    nro_ord_fin character varying(9),
    dt_doc_ini date,
    dt_doc_fin date,
    nom_mest character varying(15),
    chv_cod_dig character varying(32),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c790; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c790 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c791; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c791 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    uf character varying(2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c800; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c800 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_sit character varying(2),
    num_cfe character varying(6),
    dt_doc date,
    vl_cfe numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cnpj_cpf character varying(14),
    nr_sat character varying(9),
    chv_cfe character varying(44),
    vl_desc numeric(21,2),
    vl_merc numeric(21,2),
    vl_out_da numeric(21,2),
    vl_icms numeric(21,2),
    vl_pis_st numeric(21,2),
    vl_cofins_st numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c850; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c850 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c860; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c860 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    nr_sat character varying(9),
    dt_doc date,
    doc_ini character varying(6),
    doc_fim character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c890; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c890 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_c990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_c bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d100; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    chv_cte character varying(44),
    dt_doc date,
    dt_a_p date,
    tp_ct_e character varying(1),
    chv_cte_ref character varying(44),
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    ind_frt character varying(1),
    vl_serv numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_nt numeric(21,2),
    cod_inf character varying(60),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d110; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
    cod_item character varying(60),
    vl_serv numeric(21,2),
    vl_out numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d120; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d120 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mun_orig character varying(7),
    cod_mun_dest character varying(7),
    veic_id character varying(7),
    uf_id character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d130; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d130 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part_consg character varying(60),
    cod_part_red character varying(60),
    ind_frt_red character varying(1),
    cod_mun_orig character varying(7),
    cod_mun_dest character varying(7),
    veic_id character varying(7),
    vl_liq_frt numeric(21,2),
    vl_sec_cat numeric(21,2),
    vl_desp numeric(21,2),
    vl_pedg numeric(21,2),
    vl_out numeric(21,2),
    vl_frt numeric(21,2),
    uf_id character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d140; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d140 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part_consg character varying(60),
    cod_mun_orig character varying(7),
    cod_mun_dest character varying(7),
    ind_veic character varying(1),
    veic_id character varying(255),
    ind_nav character varying(1),
    viagem character varying(255),
    vl_frt_liq numeric(21,2),
    vl_desp_port numeric(21,2),
    vl_desp_car_desc numeric(21,2),
    vl_out numeric(21,2),
    vl_frt_brt numeric(21,2),
    vl_frt_mm numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d150; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d150 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mun_orig character varying(7),
    cod_mun_dest character varying(7),
    veic_id character varying(255),
    viagem character varying(255),
    ind_tfa character varying(1),
    vl_peso_tx numeric(21,2),
    vl_tx_terr numeric(21,2),
    vl_tx_red numeric(21,2),
    vl_out numeric(21,2),
    vl_tx_adv numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d160; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d160 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    despacho character varying(255),
    cnpj_cpf_rem character varying(14),
    ie_rem character varying(14),
    cod_mun_ori character varying(7),
    cnpj_cpf_dest character varying(14),
    ie_dest character varying(14),
    cod_mun_dest character varying(7),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d161; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d161 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_carga character varying(1),
    cnpj_cpf_col character varying(14),
    ie_col character varying(14),
    cod_mun_col character varying(7),
    cnpj_cpf_entg character varying(14),
    ie_entg character varying(14),
    cod_mun_entg character varying(7),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d162; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d162 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    num_doc character varying(9),
    dt_doc date,
    vl_doc numeric(21,2),
    vl_merc numeric(21,2),
    qtd_vol character varying(255),
    peso_brt numeric(21,2),
    peso_liq numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d170; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d170 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part_consg character varying(60),
    cod_part_red character varying(60),
    cod_mun_orig character varying(7),
    cod_mun_dest character varying(7),
    otm character varying(255),
    ind_nat_frt character varying(1),
    vl_liq_frt numeric(21,2),
    vl_gris numeric(21,2),
    vl_pdg numeric(21,2),
    vl_out numeric(21,2),
    vl_frt numeric(21,2),
    veic_id character varying(7),
    uf_id character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d180; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d180 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_seq character varying(255),
    ind_emit character varying(1),
    cnpj_cpf_emit character varying(14),
    uf_emit character varying(2),
    ie_emit character varying(14),
    cod_mun_orig character varying(7),
    cnpj_cpf_tom character varying(14),
    uf_tom character varying(2),
    ie_tom character varying(14),
    cod_mun_dest character varying(7),
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    dt_doc date,
    vl_doc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d190; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d190 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d195; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d195 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_obs character varying(6),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d197; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d197 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_aj character varying(10),
    descr_compl_aj character varying(255),
    cod_item character varying(60),
    vl_bc_icms numeric(21,2),
    aliq_icms numeric(8,2),
    vl_icms numeric(21,2),
    vl_outros numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d300; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(4),
    num_doc_ini character varying(6),
    num_doc_fin character varying(255),
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    dt_doc date,
    vl_opr numeric(21,2),
    vl_desc numeric(21,2),
    vl_serv numeric(21,2),
    vl_seg numeric(21,2),
    vl_out_desp numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d301; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d301 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_doc_canc character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d310; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d310 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mun_orig character varying(7),
    vl_serv numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d350; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d350 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ecf_mod character varying(20),
    ecf_fab character varying(21),
    ecf_cx character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d355; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d355 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_doc date,
    cro character varying(3),
    crz character varying(6),
    num_coo_fin character varying(9),
    gt_fin numeric(21,2),
    vl_brt numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d360; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d360 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d365; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d365 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_tot_par character varying(7),
    vlr_acum_tot numeric(21,2),
    nr_tot character varying(2),
    descr_nr_tot character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d370; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d370 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mun_orig character varying(7),
    vl_serv numeric(21,2),
    qtd_bilh character varying(255),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d390; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d390 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_issqn numeric(21,2),
    aliq_issqn numeric(8,2),
    vl_issqn numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d400; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d400 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(6),
    dt_doc date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    vl_serv numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d410; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d410 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc_ini character varying(6),
    num_doc_fin character varying(6),
    dt_doc date,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_desc numeric(21,2),
    vl_serv numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d411; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d411 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_doc_canc character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d420; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d420 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mun_orig character varying(7),
    vl_serv numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d500; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    dt_doc date,
    dt_a_p date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    vl_serv numeric(21,2),
    vl_serv_nt numeric(21,2),
    vl_terc numeric(21,2),
    vl_da numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    cod_inf character varying(6),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    tp_assinante character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d510; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d510 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
    cod_item character varying(60),
    cod_class character varying(4),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_icms character varying(3),
    cfop character varying(4),
    vl_bc_icms numeric(21,2),
    aliq_icms numeric(8,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    ind_rec character varying(1),
    cod_part character varying(60),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d530; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d530 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_serv character varying(1),
    dt_ini_serv date,
    dt_fin_serv date,
    per_fiscal character varying(6),
    cod_area character varying(255),
    terminal character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d590; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d590 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d600; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_mun character varying(7),
    ser character varying(4),
    sub character varying(3),
    cod_cons character varying(2),
    qtd_cons character varying(255),
    dt_doc date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    vl_serv numeric(21,2),
    vl_serv_nt numeric(21,2),
    vl_terc numeric(21,2),
    vl_da numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d610; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d610 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_class character varying(4),
    cod_item character varying(60),
    qtd numeric(22,3),
    unid character varying(6),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d690; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d690 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d695; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d695 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    nro_ord_ini character varying(255),
    nro_ord_fin character varying(255),
    dt_doc_ini date,
    dt_doc_fin date,
    nom_mest character varying(15),
    chv_cod_dig character varying(32),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d696; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d696 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    cfop character varying(4),
    aliq_icms numeric(8,2),
    vl_opr numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    vl_red_bc numeric(21,2),
    cod_obs character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d697; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d697 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    uf character varying(2),
    vl_bc_icms_st numeric(21,2),
    vl_icms_st numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_d990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_d bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e100; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_ini date,
    dt_fin date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e110; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_tot_debitos numeric(21,2),
    vl_aj_debitos numeric(21,2),
    vl_tot_aj_debitos numeric(21,2),
    vl_estornos_cred numeric(21,2),
    vl_tot_creditos numeric(21,2),
    vl_aj_creditos numeric(21,2),
    vl_tot_aj_creditos numeric(21,2),
    vl_estornos_deb numeric(21,2),
    vl_sld_credor_ant numeric(21,2),
    vl_sld_apurado numeric(21,2),
    vl_tot_ded numeric(21,2),
    vl_icms_recolher numeric(21,2),
    vl_sld_credor_transportar numeric(21,2),
    deb_esp numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e111; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_aj_apur character varying(8),
    descr_compl_aj character varying(255),
    vl_aj_apur numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e112; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e112 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_da character varying(255),
    num_proc character varying(15),
    ind_proc character varying(1),
    proc character varying(255),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e113; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e113 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    dt_doc date,
    cod_item character varying(60),
    vl_aj_item numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e115; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e115 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inf_adic character varying(8),
    vl_inf_adic numeric(21,2),
    descr_compl_aj character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e116; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e116 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_or character varying(3),
    vl_or numeric(21,2),
    dt_vcto date,
    cod_rec character varying(255),
    num_proc character varying(15),
    ind_proc character varying(1),
    proc character varying(255),
    txt_compl character varying(255),
    mes_ref character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e200; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    uf character varying(2),
    dt_ini date,
    dt_fin date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e210; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e210 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov_st character varying(1),
    vl_sld_cred_ant_st numeric(21,2),
    vl_devol_st numeric(21,2),
    vl_ressarc_st numeric(21,2),
    vl_out_cred_st numeric(21,2),
    vl_aj_creditos_st numeric(21,2),
    vl_retencao_st numeric(21,2),
    vl_out_deb_st numeric(21,2),
    vl_aj_debitos_st numeric(21,2),
    vl_sld_dev_ant_st numeric(21,2),
    vl_deducoes_st numeric(21,2),
    vl_icms_recol_st numeric(21,2),
    vl_sld_cred_st_transportar numeric(21,2),
    deb_esp_st numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e220; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e220 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_aj_apur character varying(8),
    descr_compl_aj character varying(255),
    vl_aj_apur numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e230; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e230 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_da character varying(255),
    num_proc character varying(15),
    ind_proc character varying(1),
    proc character varying(255),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e240; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e240 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(9),
    dt_doc date,
    cod_item character varying(60),
    vl_aj_item numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e250; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e250 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_or character varying(3),
    vl_or numeric(21,2),
    dt_vcto date,
    cod_rec character varying(255),
    num_proc character varying(15),
    ind_proc character varying(1),
    proc character varying(255),
    txt_compl character varying(255),
    mes_ref character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e500; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_apur character varying(1),
    dt_ini date,
    dt_fin date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e510; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e510 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cfop character varying(4),
    cst_ipi character varying(2),
    vl_cont_ipi numeric(21,2),
    vl_bc_ipi numeric(21,2),
    vl_ipi numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e520; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e520 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_sd_ant_ipi numeric(21,2),
    vl_deb_ipi numeric(21,2),
    vl_cred_ipi numeric(21,2),
    vl_od_ipi numeric(21,2),
    vl_oc_ipi numeric(21,2),
    vl_sc_ipi numeric(21,2),
    vl_sd_ipi numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e530; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e530 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_aj character varying(1),
    vl_aj numeric(21,2),
    cod_aj character varying(3),
    ind_doc character varying(1),
    num_doc character varying(255),
    descr_aj character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_e990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_e990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_e bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g110; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_ini date,
    dt_fin date,
    saldo_in_icms numeric(21,2),
    som_parc numeric(21,2),
    vl_trib_exp numeric(21,2),
    vl_total numeric(21,2),
    ind_per_sai numeric(27,8),
    icms_aprop numeric(21,2),
    som_icms_oc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g125; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g125 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_ind_bem character varying(60),
    dt_mov date,
    tipo_mov character varying(2),
    vl_imob_icms_op numeric(21,2),
    vl_imob_icms_st numeric(21,2),
    vl_imob_icms_frt numeric(21,2),
    vl_imob_icms_dif numeric(21,2),
    num_parc character varying(3),
    vl_parc_pass numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g126; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g126 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_ini date,
    dt_fin date,
    num_parc character varying(3),
    vl_parc_pass numeric(21,2),
    vl_trib_oc numeric(21,2),
    vl_total numeric(21,2),
    ind_per_sai numeric(27,8),
    vl_parc_aprop numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g130; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g130 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_mod character varying(2),
    serie character varying(3),
    num_doc character varying(9),
    chv_nfe_cte character varying(44),
    dt_doc date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g140; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g140 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
    cod_item character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_g990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_g990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_g bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_h001; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_h001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_h005; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_h005 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_inv date,
    vl_inv numeric(21,2),
    mot_inv character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_h010; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_h010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    unid character varying(6),
    qtd numeric(22,3),
    vl_unit numeric(25,6),
    vl_item numeric(21,2),
    ind_prop character varying(1),
    cod_part character varying(60),
    txt_compl character varying(255),
    cod_cta character varying(255),
    vl_item_ir numeric(18,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_h020; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_h020 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_icms character varying(3),
    bl_icms numeric(21,2),
    vl_icms numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_h990; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE reg_h990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_h bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


ALTER TABLE ONLY reg_0000
    ADD CONSTRAINT reg_0000_pkey PRIMARY KEY (id);


--
-- Name: reg_0001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0001
    ADD CONSTRAINT reg_0001_pkey PRIMARY KEY (id);


--
-- Name: reg_0005_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0005
    ADD CONSTRAINT reg_0005_pkey PRIMARY KEY (id);


--
-- Name: reg_0015_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0015
    ADD CONSTRAINT reg_0015_pkey PRIMARY KEY (id);


--
-- Name: reg_0100_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0100
    ADD CONSTRAINT reg_0100_pkey PRIMARY KEY (id);


--
-- Name: reg_0150_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0150
    ADD CONSTRAINT reg_0150_pkey PRIMARY KEY (id);


--
-- Name: reg_0175_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0175
    ADD CONSTRAINT reg_0175_pkey PRIMARY KEY (id);


--
-- Name: reg_0190_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0190
    ADD CONSTRAINT reg_0190_pkey PRIMARY KEY (id);


--
-- Name: reg_0200_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0200
    ADD CONSTRAINT reg_0200_pkey PRIMARY KEY (id);


--
-- Name: reg_0205_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0205
    ADD CONSTRAINT reg_0205_pkey PRIMARY KEY (id);


--
-- Name: reg_0206_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0206
    ADD CONSTRAINT reg_0206_pkey PRIMARY KEY (id);


--
-- Name: reg_0220_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0220
    ADD CONSTRAINT reg_0220_pkey PRIMARY KEY (id);


--
-- Name: reg_0300_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0300
    ADD CONSTRAINT reg_0300_pkey PRIMARY KEY (id);


--
-- Name: reg_0305_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0305
    ADD CONSTRAINT reg_0305_pkey PRIMARY KEY (id);


--
-- Name: reg_0400_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0400
    ADD CONSTRAINT reg_0400_pkey PRIMARY KEY (id);


--
-- Name: reg_0450_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0450
    ADD CONSTRAINT reg_0450_pkey PRIMARY KEY (id);


--
-- Name: reg_0460_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0460
    ADD CONSTRAINT reg_0460_pkey PRIMARY KEY (id);


--
-- Name: reg_0500_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0500
    ADD CONSTRAINT reg_0500_pkey PRIMARY KEY (id);


--
-- Name: reg_0600_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0600
    ADD CONSTRAINT reg_0600_pkey PRIMARY KEY (id);


--
-- Name: reg_0990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_0990
    ADD CONSTRAINT reg_0990_pkey PRIMARY KEY (id);


--
-- Name: reg_1001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1001
    ADD CONSTRAINT reg_1001_pkey PRIMARY KEY (id);


--
-- Name: reg_1010_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1010
    ADD CONSTRAINT reg_1010_pkey PRIMARY KEY (id);


--
-- Name: reg_1100_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1100
    ADD CONSTRAINT reg_1100_pkey PRIMARY KEY (id);


--
-- Name: reg_1105_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1105
    ADD CONSTRAINT reg_1105_pkey PRIMARY KEY (id);


--
-- Name: reg_1110_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1110
    ADD CONSTRAINT reg_1110_pkey PRIMARY KEY (id);


--
-- Name: reg_1200_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1200
    ADD CONSTRAINT reg_1200_pkey PRIMARY KEY (id);


--
-- Name: reg_1210_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1210
    ADD CONSTRAINT reg_1210_pkey PRIMARY KEY (id);


--
-- Name: reg_1300_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1300
    ADD CONSTRAINT reg_1300_pkey PRIMARY KEY (id);


--
-- Name: reg_1310_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1310
    ADD CONSTRAINT reg_1310_pkey PRIMARY KEY (id);


--
-- Name: reg_1320_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1320
    ADD CONSTRAINT reg_1320_pkey PRIMARY KEY (id);


--
-- Name: reg_1350_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1350
    ADD CONSTRAINT reg_1350_pkey PRIMARY KEY (id);


--
-- Name: reg_1360_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1360
    ADD CONSTRAINT reg_1360_pkey PRIMARY KEY (id);


--
-- Name: reg_1370_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1370
    ADD CONSTRAINT reg_1370_pkey PRIMARY KEY (id);


--
-- Name: reg_1390_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1390
    ADD CONSTRAINT reg_1390_pkey PRIMARY KEY (id);


--
-- Name: reg_1391_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1391
    ADD CONSTRAINT reg_1391_pkey PRIMARY KEY (id);


--
-- Name: reg_1400_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1400
    ADD CONSTRAINT reg_1400_pkey PRIMARY KEY (id);


--
-- Name: reg_1500_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1500
    ADD CONSTRAINT reg_1500_pkey PRIMARY KEY (id);


--
-- Name: reg_1510_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1510
    ADD CONSTRAINT reg_1510_pkey PRIMARY KEY (id);


--
-- Name: reg_1600_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1600
    ADD CONSTRAINT reg_1600_pkey PRIMARY KEY (id);


--
-- Name: reg_1700_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1700
    ADD CONSTRAINT reg_1700_pkey PRIMARY KEY (id);


--
-- Name: reg_1710_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1710
    ADD CONSTRAINT reg_1710_pkey PRIMARY KEY (id);


--
-- Name: reg_1800_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1800
    ADD CONSTRAINT reg_1800_pkey PRIMARY KEY (id);


--
-- Name: reg_1900_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1900
    ADD CONSTRAINT reg_1900_pkey PRIMARY KEY (id);


--
-- Name: reg_1910_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1910
    ADD CONSTRAINT reg_1910_pkey PRIMARY KEY (id);


--
-- Name: reg_1920_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1920
    ADD CONSTRAINT reg_1920_pkey PRIMARY KEY (id);


--
-- Name: reg_1921_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1921
    ADD CONSTRAINT reg_1921_pkey PRIMARY KEY (id);


--
-- Name: reg_1922_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1922
    ADD CONSTRAINT reg_1922_pkey PRIMARY KEY (id);


--
-- Name: reg_1923_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1923
    ADD CONSTRAINT reg_1923_pkey PRIMARY KEY (id);


--
-- Name: reg_1925_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1925
    ADD CONSTRAINT reg_1925_pkey PRIMARY KEY (id);


--
-- Name: reg_1926_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1926
    ADD CONSTRAINT reg_1926_pkey PRIMARY KEY (id);


--
-- Name: reg_1990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_1990
    ADD CONSTRAINT reg_1990_pkey PRIMARY KEY (id);


--
-- Name: reg_9001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_9001
    ADD CONSTRAINT reg_9001_pkey PRIMARY KEY (id);


--
-- Name: reg_9900_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_9900
    ADD CONSTRAINT reg_9900_pkey PRIMARY KEY (id);


--
-- Name: reg_9990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_9990
    ADD CONSTRAINT reg_9990_pkey PRIMARY KEY (id);


--
-- Name: reg_9999_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_9999
    ADD CONSTRAINT reg_9999_pkey PRIMARY KEY (id);


--
-- Name: reg_c001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c001
    ADD CONSTRAINT reg_c001_pkey PRIMARY KEY (id);


--
-- Name: reg_c100_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c100
    ADD CONSTRAINT reg_c100_pkey PRIMARY KEY (id);


--
-- Name: reg_c105_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c105
    ADD CONSTRAINT reg_c105_pkey PRIMARY KEY (id);


--
-- Name: reg_c110_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c110
    ADD CONSTRAINT reg_c110_pkey PRIMARY KEY (id);


--
-- Name: reg_c111_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c111
    ADD CONSTRAINT reg_c111_pkey PRIMARY KEY (id);


--
-- Name: reg_c112_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c112
    ADD CONSTRAINT reg_c112_pkey PRIMARY KEY (id);


--
-- Name: reg_c113_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c113
    ADD CONSTRAINT reg_c113_pkey PRIMARY KEY (id);


--
-- Name: reg_c114_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c114
    ADD CONSTRAINT reg_c114_pkey PRIMARY KEY (id);


--
-- Name: reg_c115_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c115
    ADD CONSTRAINT reg_c115_pkey PRIMARY KEY (id);


--
-- Name: reg_c116_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c116
    ADD CONSTRAINT reg_c116_pkey PRIMARY KEY (id);


--
-- Name: reg_c120_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c120
    ADD CONSTRAINT reg_c120_pkey PRIMARY KEY (id);


--
-- Name: reg_c130_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c130
    ADD CONSTRAINT reg_c130_pkey PRIMARY KEY (id);


--
-- Name: reg_c140_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c140
    ADD CONSTRAINT reg_c140_pkey PRIMARY KEY (id);


--
-- Name: reg_c141_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c141
    ADD CONSTRAINT reg_c141_pkey PRIMARY KEY (id);


--
-- Name: reg_c160_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c160
    ADD CONSTRAINT reg_c160_pkey PRIMARY KEY (id);


--
-- Name: reg_c165_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c165
    ADD CONSTRAINT reg_c165_pkey PRIMARY KEY (id);


--
-- Name: reg_c170_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c170
    ADD CONSTRAINT reg_c170_pkey PRIMARY KEY (id);


--
-- Name: reg_c171_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c171
    ADD CONSTRAINT reg_c171_pkey PRIMARY KEY (id);


--
-- Name: reg_c172_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c172
    ADD CONSTRAINT reg_c172_pkey PRIMARY KEY (id);


--
-- Name: reg_c173_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c173
    ADD CONSTRAINT reg_c173_pkey PRIMARY KEY (id);


--
-- Name: reg_c174_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c174
    ADD CONSTRAINT reg_c174_pkey PRIMARY KEY (id);


--
-- Name: reg_c175_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c175
    ADD CONSTRAINT reg_c175_pkey PRIMARY KEY (id);


--
-- Name: reg_c176_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c176
    ADD CONSTRAINT reg_c176_pkey PRIMARY KEY (id);


--
-- Name: reg_c177_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c177
    ADD CONSTRAINT reg_c177_pkey PRIMARY KEY (id);


--
-- Name: reg_c178_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c178
    ADD CONSTRAINT reg_c178_pkey PRIMARY KEY (id);


--
-- Name: reg_c179_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c179
    ADD CONSTRAINT reg_c179_pkey PRIMARY KEY (id);


--
-- Name: reg_c190_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c190
    ADD CONSTRAINT reg_c190_pkey PRIMARY KEY (id);


--
-- Name: reg_c195_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c195
    ADD CONSTRAINT reg_c195_pkey PRIMARY KEY (id);


--
-- Name: reg_c197_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c197
    ADD CONSTRAINT reg_c197_pkey PRIMARY KEY (id);


--
-- Name: reg_c300_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c300
    ADD CONSTRAINT reg_c300_pkey PRIMARY KEY (id);


--
-- Name: reg_c310_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c310
    ADD CONSTRAINT reg_c310_pkey PRIMARY KEY (id);


--
-- Name: reg_c320_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c320
    ADD CONSTRAINT reg_c320_pkey PRIMARY KEY (id);


--
-- Name: reg_c321_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c321
    ADD CONSTRAINT reg_c321_pkey PRIMARY KEY (id);


--
-- Name: reg_c350_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c350
    ADD CONSTRAINT reg_c350_pkey PRIMARY KEY (id);


--
-- Name: reg_c370_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c370
    ADD CONSTRAINT reg_c370_pkey PRIMARY KEY (id);


--
-- Name: reg_c390_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c390
    ADD CONSTRAINT reg_c390_pkey PRIMARY KEY (id);


--
-- Name: reg_c400_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c400
    ADD CONSTRAINT reg_c400_pkey PRIMARY KEY (id);


--
-- Name: reg_c405_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c405
    ADD CONSTRAINT reg_c405_pkey PRIMARY KEY (id);


--
-- Name: reg_c410_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c410
    ADD CONSTRAINT reg_c410_pkey PRIMARY KEY (id);


--
-- Name: reg_c420_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c420
    ADD CONSTRAINT reg_c420_pkey PRIMARY KEY (id);


--
-- Name: reg_c425_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c425
    ADD CONSTRAINT reg_c425_pkey PRIMARY KEY (id);


--
-- Name: reg_c460_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c460
    ADD CONSTRAINT reg_c460_pkey PRIMARY KEY (id);


--
-- Name: reg_c465_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c465
    ADD CONSTRAINT reg_c465_pkey PRIMARY KEY (id);


--
-- Name: reg_c470_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c470
    ADD CONSTRAINT reg_c470_pkey PRIMARY KEY (id);


--
-- Name: reg_c490_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c490
    ADD CONSTRAINT reg_c490_pkey PRIMARY KEY (id);


--
-- Name: reg_c495_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c495
    ADD CONSTRAINT reg_c495_pkey PRIMARY KEY (id);


--
-- Name: reg_c500_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c500
    ADD CONSTRAINT reg_c500_pkey PRIMARY KEY (id);


--
-- Name: reg_c510_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c510
    ADD CONSTRAINT reg_c510_pkey PRIMARY KEY (id);


--
-- Name: reg_c590_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c590
    ADD CONSTRAINT reg_c590_pkey PRIMARY KEY (id);


--
-- Name: reg_c600_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c600
    ADD CONSTRAINT reg_c600_pkey PRIMARY KEY (id);


--
-- Name: reg_c601_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c601
    ADD CONSTRAINT reg_c601_pkey PRIMARY KEY (id);


--
-- Name: reg_c610_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c610
    ADD CONSTRAINT reg_c610_pkey PRIMARY KEY (id);


--
-- Name: reg_c690_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c690
    ADD CONSTRAINT reg_c690_pkey PRIMARY KEY (id);


--
-- Name: reg_c700_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c700
    ADD CONSTRAINT reg_c700_pkey PRIMARY KEY (id);


--
-- Name: reg_c790_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c790
    ADD CONSTRAINT reg_c790_pkey PRIMARY KEY (id);


--
-- Name: reg_c791_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c791
    ADD CONSTRAINT reg_c791_pkey PRIMARY KEY (id);


--
-- Name: reg_c800_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c800
    ADD CONSTRAINT reg_c800_pkey PRIMARY KEY (id);


--
-- Name: reg_c850_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c850
    ADD CONSTRAINT reg_c850_pkey PRIMARY KEY (id);


--
-- Name: reg_c860_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c860
    ADD CONSTRAINT reg_c860_pkey PRIMARY KEY (id);


--
-- Name: reg_c890_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c890
    ADD CONSTRAINT reg_c890_pkey PRIMARY KEY (id);


--
-- Name: reg_c990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_c990
    ADD CONSTRAINT reg_c990_pkey PRIMARY KEY (id);


--
-- Name: reg_d001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d001
    ADD CONSTRAINT reg_d001_pkey PRIMARY KEY (id);


--
-- Name: reg_d100_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d100
    ADD CONSTRAINT reg_d100_pkey PRIMARY KEY (id);


--
-- Name: reg_d110_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d110
    ADD CONSTRAINT reg_d110_pkey PRIMARY KEY (id);


--
-- Name: reg_d120_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d120
    ADD CONSTRAINT reg_d120_pkey PRIMARY KEY (id);


--
-- Name: reg_d130_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d130
    ADD CONSTRAINT reg_d130_pkey PRIMARY KEY (id);


--
-- Name: reg_d140_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d140
    ADD CONSTRAINT reg_d140_pkey PRIMARY KEY (id);


--
-- Name: reg_d150_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d150
    ADD CONSTRAINT reg_d150_pkey PRIMARY KEY (id);


--
-- Name: reg_d160_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d160
    ADD CONSTRAINT reg_d160_pkey PRIMARY KEY (id);


--
-- Name: reg_d161_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d161
    ADD CONSTRAINT reg_d161_pkey PRIMARY KEY (id);


--
-- Name: reg_d162_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d162
    ADD CONSTRAINT reg_d162_pkey PRIMARY KEY (id);


--
-- Name: reg_d170_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d170
    ADD CONSTRAINT reg_d170_pkey PRIMARY KEY (id);


--
-- Name: reg_d180_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d180
    ADD CONSTRAINT reg_d180_pkey PRIMARY KEY (id);


--
-- Name: reg_d190_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d190
    ADD CONSTRAINT reg_d190_pkey PRIMARY KEY (id);


--
-- Name: reg_d195_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d195
    ADD CONSTRAINT reg_d195_pkey PRIMARY KEY (id);


--
-- Name: reg_d197_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d197
    ADD CONSTRAINT reg_d197_pkey PRIMARY KEY (id);


--
-- Name: reg_d300_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d300
    ADD CONSTRAINT reg_d300_pkey PRIMARY KEY (id);


--
-- Name: reg_d301_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d301
    ADD CONSTRAINT reg_d301_pkey PRIMARY KEY (id);


--
-- Name: reg_d310_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d310
    ADD CONSTRAINT reg_d310_pkey PRIMARY KEY (id);


--
-- Name: reg_d350_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d350
    ADD CONSTRAINT reg_d350_pkey PRIMARY KEY (id);


--
-- Name: reg_d355_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d355
    ADD CONSTRAINT reg_d355_pkey PRIMARY KEY (id);


--
-- Name: reg_d360_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d360
    ADD CONSTRAINT reg_d360_pkey PRIMARY KEY (id);


--
-- Name: reg_d365_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d365
    ADD CONSTRAINT reg_d365_pkey PRIMARY KEY (id);


--
-- Name: reg_d370_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d370
    ADD CONSTRAINT reg_d370_pkey PRIMARY KEY (id);


--
-- Name: reg_d390_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d390
    ADD CONSTRAINT reg_d390_pkey PRIMARY KEY (id);


--
-- Name: reg_d400_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d400
    ADD CONSTRAINT reg_d400_pkey PRIMARY KEY (id);


--
-- Name: reg_d410_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d410
    ADD CONSTRAINT reg_d410_pkey PRIMARY KEY (id);


--
-- Name: reg_d411_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d411
    ADD CONSTRAINT reg_d411_pkey PRIMARY KEY (id);


--
-- Name: reg_d420_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d420
    ADD CONSTRAINT reg_d420_pkey PRIMARY KEY (id);


--
-- Name: reg_d500_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d500
    ADD CONSTRAINT reg_d500_pkey PRIMARY KEY (id);


--
-- Name: reg_d510_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d510
    ADD CONSTRAINT reg_d510_pkey PRIMARY KEY (id);


--
-- Name: reg_d530_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d530
    ADD CONSTRAINT reg_d530_pkey PRIMARY KEY (id);


--
-- Name: reg_d590_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d590
    ADD CONSTRAINT reg_d590_pkey PRIMARY KEY (id);


--
-- Name: reg_d600_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d600
    ADD CONSTRAINT reg_d600_pkey PRIMARY KEY (id);


--
-- Name: reg_d610_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d610
    ADD CONSTRAINT reg_d610_pkey PRIMARY KEY (id);


--
-- Name: reg_d690_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d690
    ADD CONSTRAINT reg_d690_pkey PRIMARY KEY (id);


--
-- Name: reg_d695_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d695
    ADD CONSTRAINT reg_d695_pkey PRIMARY KEY (id);


--
-- Name: reg_d696_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d696
    ADD CONSTRAINT reg_d696_pkey PRIMARY KEY (id);


--
-- Name: reg_d697_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d697
    ADD CONSTRAINT reg_d697_pkey PRIMARY KEY (id);


--
-- Name: reg_d990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_d990
    ADD CONSTRAINT reg_d990_pkey PRIMARY KEY (id);


--
-- Name: reg_e001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e001
    ADD CONSTRAINT reg_e001_pkey PRIMARY KEY (id);


--
-- Name: reg_e100_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e100
    ADD CONSTRAINT reg_e100_pkey PRIMARY KEY (id);


--
-- Name: reg_e110_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e110
    ADD CONSTRAINT reg_e110_pkey PRIMARY KEY (id);


--
-- Name: reg_e111_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e111
    ADD CONSTRAINT reg_e111_pkey PRIMARY KEY (id);


--
-- Name: reg_e112_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e112
    ADD CONSTRAINT reg_e112_pkey PRIMARY KEY (id);


--
-- Name: reg_e113_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e113
    ADD CONSTRAINT reg_e113_pkey PRIMARY KEY (id);


--
-- Name: reg_e115_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e115
    ADD CONSTRAINT reg_e115_pkey PRIMARY KEY (id);


--
-- Name: reg_e116_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e116
    ADD CONSTRAINT reg_e116_pkey PRIMARY KEY (id);


--
-- Name: reg_e200_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e200
    ADD CONSTRAINT reg_e200_pkey PRIMARY KEY (id);


--
-- Name: reg_e210_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e210
    ADD CONSTRAINT reg_e210_pkey PRIMARY KEY (id);


--
-- Name: reg_e220_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e220
    ADD CONSTRAINT reg_e220_pkey PRIMARY KEY (id);


--
-- Name: reg_e230_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e230
    ADD CONSTRAINT reg_e230_pkey PRIMARY KEY (id);


--
-- Name: reg_e240_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e240
    ADD CONSTRAINT reg_e240_pkey PRIMARY KEY (id);


--
-- Name: reg_e250_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e250
    ADD CONSTRAINT reg_e250_pkey PRIMARY KEY (id);


--
-- Name: reg_e500_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e500
    ADD CONSTRAINT reg_e500_pkey PRIMARY KEY (id);


--
-- Name: reg_e510_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e510
    ADD CONSTRAINT reg_e510_pkey PRIMARY KEY (id);


--
-- Name: reg_e520_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e520
    ADD CONSTRAINT reg_e520_pkey PRIMARY KEY (id);


--
-- Name: reg_e530_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e530
    ADD CONSTRAINT reg_e530_pkey PRIMARY KEY (id);


--
-- Name: reg_e990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_e990
    ADD CONSTRAINT reg_e990_pkey PRIMARY KEY (id);


--
-- Name: reg_g001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g001
    ADD CONSTRAINT reg_g001_pkey PRIMARY KEY (id);


--
-- Name: reg_g110_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g110
    ADD CONSTRAINT reg_g110_pkey PRIMARY KEY (id);


--
-- Name: reg_g125_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g125
    ADD CONSTRAINT reg_g125_pkey PRIMARY KEY (id);


--
-- Name: reg_g126_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g126
    ADD CONSTRAINT reg_g126_pkey PRIMARY KEY (id);


--
-- Name: reg_g130_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g130
    ADD CONSTRAINT reg_g130_pkey PRIMARY KEY (id);


--
-- Name: reg_g140_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g140
    ADD CONSTRAINT reg_g140_pkey PRIMARY KEY (id);


--
-- Name: reg_g990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_g990
    ADD CONSTRAINT reg_g990_pkey PRIMARY KEY (id);


--
-- Name: reg_h001_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_h001
    ADD CONSTRAINT reg_h001_pkey PRIMARY KEY (id);


--
-- Name: reg_h005_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_h005
    ADD CONSTRAINT reg_h005_pkey PRIMARY KEY (id);


--
-- Name: reg_h010_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_h010
    ADD CONSTRAINT reg_h010_pkey PRIMARY KEY (id);


--
-- Name: reg_h020_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_h020
    ADD CONSTRAINT reg_h020_pkey PRIMARY KEY (id);


--
-- Name: reg_h990_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY reg_h990
    ADD CONSTRAINT reg_h990_pkey PRIMARY KEY (id);


--
-- Name: reg_0000_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0000_idx_chave_duplicidade ON reg_0000 USING btree (dt_ini, dt_fin, cnpj, cpf, ie);


--
-- Name: reg_0000_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0000_idx_id_pai ON reg_0000 USING btree (id_pai);


--
-- Name: reg_0001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0001_idx_id_pai ON reg_0001 USING btree (id_pai);


--
-- Name: reg_0005_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0005_idx_id_pai ON reg_0005 USING btree (id_pai);


--
-- Name: reg_0015_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0015_idx_chave_duplicidade ON reg_0015 USING btree (uf_st);


--
-- Name: reg_0015_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0015_idx_id_pai ON reg_0015 USING btree (id_pai);


--
-- Name: reg_0100_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0100_idx_id_pai ON reg_0100 USING btree (id_pai);


--
-- Name: reg_0150_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0150_idx_chave_duplicidade ON reg_0150 USING btree (cod_part);


--
-- Name: reg_0150_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0150_idx_id_pai ON reg_0150 USING btree (id_pai);


--
-- Name: reg_0175_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0175_idx_chave_duplicidade ON reg_0175 USING btree (dt_alt, nr_campo);


--
-- Name: reg_0175_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0175_idx_id_pai ON reg_0175 USING btree (id_pai);


--
-- Name: reg_0190_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0190_idx_chave_duplicidade ON reg_0190 USING btree (unid);


--
-- Name: reg_0190_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0190_idx_id_pai ON reg_0190 USING btree (id_pai);


--
-- Name: reg_0200_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0200_idx_chave_duplicidade ON reg_0200 USING btree (cod_item);


--
-- Name: reg_0200_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0200_idx_id_pai ON reg_0200 USING btree (id_pai);


--
-- Name: reg_0200_idx_unid_inv; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0200_idx_unid_inv ON reg_0200 USING btree (unid_inv);


--
-- Name: reg_0205_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0205_idx_chave_duplicidade ON reg_0205 USING btree (descr_ant_item, dt_ini, dt_fim);


--
-- Name: reg_0205_idx_dt_fim; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0205_idx_dt_fim ON reg_0205 USING btree (dt_fim);


--
-- Name: reg_0205_idx_dt_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0205_idx_dt_ini ON reg_0205 USING btree (dt_ini);


--
-- Name: reg_0205_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0205_idx_id_pai ON reg_0205 USING btree (id_pai);


--
-- Name: reg_0206_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0206_idx_id_pai ON reg_0206 USING btree (id_pai);


--
-- Name: reg_0220_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0220_idx_chave_duplicidade ON reg_0220 USING btree (unid_conv);


--
-- Name: reg_0220_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0220_idx_id_pai ON reg_0220 USING btree (id_pai);


--
-- Name: reg_0300_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0300_idx_chave_duplicidade ON reg_0300 USING btree (cod_ind_bem);


--
-- Name: reg_0300_idx_cod_prnc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0300_idx_cod_prnc ON reg_0300 USING btree (cod_prnc);


--
-- Name: reg_0300_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0300_idx_id_pai ON reg_0300 USING btree (id_pai);


--
-- Name: reg_0305_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0305_idx_id_pai ON reg_0305 USING btree (id_pai);


--
-- Name: reg_0400_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0400_idx_chave_duplicidade ON reg_0400 USING btree (cod_nat);


--
-- Name: reg_0400_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0400_idx_id_pai ON reg_0400 USING btree (id_pai);


--
-- Name: reg_0450_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0450_idx_chave_duplicidade ON reg_0450 USING btree (cod_inf);


--
-- Name: reg_0450_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0450_idx_id_pai ON reg_0450 USING btree (id_pai);


--
-- Name: reg_0460_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0460_idx_chave_duplicidade ON reg_0460 USING btree (cod_obs);


--
-- Name: reg_0460_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0460_idx_id_pai ON reg_0460 USING btree (id_pai);


--
-- Name: reg_0500_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0500_idx_chave_duplicidade ON reg_0500 USING btree (dt_alt, cod_cta);


--
-- Name: reg_0500_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0500_idx_id_pai ON reg_0500 USING btree (id_pai);


--
-- Name: reg_0600_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0600_idx_chave_duplicidade ON reg_0600 USING btree (dt_alt, cod_ccus);


--
-- Name: reg_0600_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0600_idx_id_pai ON reg_0600 USING btree (id_pai);


--
-- Name: reg_0990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_0990_idx_id_pai ON reg_0990 USING btree (id_pai);


--
-- Name: reg_1001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1001_idx_id_pai ON reg_1001 USING btree (id_pai);


--
-- Name: reg_1010_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1010_idx_id_pai ON reg_1010 USING btree (id_pai);


--
-- Name: reg_1100_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1100_idx_id_pai ON reg_1100 USING btree (id_pai);


--
-- Name: reg_1105_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1105_idx_cod_item ON reg_1105 USING btree (cod_item);


--
-- Name: reg_1105_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1105_idx_id_pai ON reg_1105 USING btree (id_pai);


--
-- Name: reg_1110_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1110_idx_cod_part ON reg_1110 USING btree (cod_part);


--
-- Name: reg_1110_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1110_idx_id_pai ON reg_1110 USING btree (id_pai);


--
-- Name: reg_1110_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1110_idx_unid ON reg_1110 USING btree (unid);


--
-- Name: reg_1200_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1200_idx_chave_duplicidade ON reg_1200 USING btree (cod_aj_apur);


--
-- Name: reg_1200_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1200_idx_id_pai ON reg_1200 USING btree (id_pai);


--
-- Name: reg_1210_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1210_idx_chave_duplicidade ON reg_1210 USING btree (tipo_util, nr_doc);


--
-- Name: reg_1210_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1210_idx_id_pai ON reg_1210 USING btree (id_pai);


--
-- Name: reg_1300_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1300_idx_chave_duplicidade ON reg_1300 USING btree (cod_item, dt_fech);


--
-- Name: reg_1300_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1300_idx_id_pai ON reg_1300 USING btree (id_pai);


--
-- Name: reg_1310_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1310_idx_chave_duplicidade ON reg_1310 USING btree (num_tanque);


--
-- Name: reg_1310_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1310_idx_id_pai ON reg_1310 USING btree (id_pai);


--
-- Name: reg_1320_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1320_idx_id_pai ON reg_1320 USING btree (id_pai);


--
-- Name: reg_1350_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1350_idx_chave_duplicidade ON reg_1350 USING btree (serie);


--
-- Name: reg_1350_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1350_idx_id_pai ON reg_1350 USING btree (id_pai);


--
-- Name: reg_1360_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1360_idx_chave_duplicidade ON reg_1360 USING btree (num_lacre);


--
-- Name: reg_1360_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1360_idx_id_pai ON reg_1360 USING btree (id_pai);


--
-- Name: reg_1370_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1370_idx_chave_duplicidade ON reg_1370 USING btree (num_bico, cod_item);


--
-- Name: reg_1370_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1370_idx_id_pai ON reg_1370 USING btree (id_pai);


--
-- Name: reg_1390_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1390_idx_chave_duplicidade ON reg_1390 USING btree (cod_prod);


--
-- Name: reg_1390_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1390_idx_id_pai ON reg_1390 USING btree (id_pai);


--
-- Name: reg_1391_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1391_idx_chave_duplicidade ON reg_1391 USING btree (dt_registro);


--
-- Name: reg_1391_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1391_idx_id_pai ON reg_1391 USING btree (id_pai);


--
-- Name: reg_1400_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1400_idx_chave_duplicidade ON reg_1400 USING btree (cod_item, mun);


--
-- Name: reg_1400_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1400_idx_id_pai ON reg_1400 USING btree (id_pai);


--
-- Name: reg_1500_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1500_idx_chave_duplicidade ON reg_1500 USING btree (ind_oper, ind_emit, cod_part, ser, sub, num_doc, dt_doc);


--
-- Name: reg_1500_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1500_idx_id_pai ON reg_1500 USING btree (id_pai);


--
-- Name: reg_1510_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1510_idx_chave_duplicidade ON reg_1510 USING btree (num_item);


--
-- Name: reg_1510_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1510_idx_id_pai ON reg_1510 USING btree (id_pai);


--
-- Name: reg_1600_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1600_idx_chave_duplicidade ON reg_1600 USING btree (cod_part);


--
-- Name: reg_1600_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1600_idx_id_pai ON reg_1600 USING btree (id_pai);


--
-- Name: reg_1700_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1700_idx_id_pai ON reg_1700 USING btree (id_pai);


--
-- Name: reg_1710_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1710_idx_id_pai ON reg_1710 USING btree (id_pai);


--
-- Name: reg_1800_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1800_idx_id_pai ON reg_1800 USING btree (id_pai);


--
-- Name: reg_1900_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1900_idx_chave_duplicidade ON reg_1900 USING btree (ind_apur_icms);


--
-- Name: reg_1900_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1900_idx_id_pai ON reg_1900 USING btree (id_pai);


--
-- Name: reg_1910_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1910_idx_chave_duplicidade ON reg_1910 USING btree (dt_ini, dt_fin);


--
-- Name: reg_1910_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1910_idx_id_pai ON reg_1910 USING btree (id_pai);


--
-- Name: reg_1920_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1920_idx_id_pai ON reg_1920 USING btree (id_pai);


--
-- Name: reg_1921_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1921_idx_id_pai ON reg_1921 USING btree (id_pai);


--
-- Name: reg_1922_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1922_idx_id_pai ON reg_1922 USING btree (id_pai);


--
-- Name: reg_1923_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1923_idx_cod_item ON reg_1923 USING btree (cod_item);


--
-- Name: reg_1923_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1923_idx_cod_part ON reg_1923 USING btree (cod_part);


--
-- Name: reg_1923_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1923_idx_id_pai ON reg_1923 USING btree (id_pai);


--
-- Name: reg_1925_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1925_idx_id_pai ON reg_1925 USING btree (id_pai);


--
-- Name: reg_1926_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1926_idx_id_pai ON reg_1926 USING btree (id_pai);


--
-- Name: reg_1990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_1990_idx_id_pai ON reg_1990 USING btree (id_pai);


--
-- Name: reg_9001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_9001_idx_id_pai ON reg_9001 USING btree (id_pai);


--
-- Name: reg_9900_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_9900_idx_chave_duplicidade ON reg_9900 USING btree (reg_blc);


--
-- Name: reg_9900_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_9900_idx_id_pai ON reg_9900 USING btree (id_pai);


--
-- Name: reg_9990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_9990_idx_id_pai ON reg_9990 USING btree (id_pai);


--
-- Name: reg_9999_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_9999_idx_id_pai ON reg_9999 USING btree (id_pai);


--
-- Name: reg_c001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c001_idx_id_pai ON reg_c001 USING btree (id_pai);


--
-- Name: reg_c100_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c100_idx_chave_duplicidade ON reg_c100 USING btree (ind_emit, ind_oper, num_doc, cod_mod, cod_sit, ser, chv_nfe, cod_part);


--
-- Name: reg_c100_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c100_idx_cod_part ON reg_c100 USING btree (cod_part);


--
-- Name: reg_c100_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c100_idx_id_pai ON reg_c100 USING btree (id_pai);


--
-- Name: reg_c105_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c105_idx_id_pai ON reg_c105 USING btree (id_pai);


--
-- Name: reg_c110_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c110_idx_chave_duplicidade ON reg_c110 USING btree (cod_inf);


--
-- Name: reg_c110_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c110_idx_id_pai ON reg_c110 USING btree (id_pai);


--
-- Name: reg_c111_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c111_idx_chave_duplicidade ON reg_c111 USING btree (num_proc);


--
-- Name: reg_c111_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c111_idx_id_pai ON reg_c111 USING btree (id_pai);


--
-- Name: reg_c112_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c112_idx_id_pai ON reg_c112 USING btree (id_pai);


--
-- Name: reg_c113_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c113_idx_chave_duplicidade ON reg_c113 USING btree (ind_emit, num_doc, cod_mod, ser, cod_part);


--
-- Name: reg_c113_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c113_idx_cod_part ON reg_c113 USING btree (cod_part);


--
-- Name: reg_c113_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c113_idx_id_pai ON reg_c113 USING btree (id_pai);


--
-- Name: reg_c114_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c114_idx_chave_duplicidade ON reg_c114 USING btree (num_doc, dt_doc, ecf_fab);


--
-- Name: reg_c114_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c114_idx_id_pai ON reg_c114 USING btree (id_pai);


--
-- Name: reg_c115_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c115_idx_id_pai ON reg_c115 USING btree (id_pai);


--
-- Name: reg_c116_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c116_idx_chave_duplicidade ON reg_c116 USING btree (nr_sat, num_cfe);


--
-- Name: reg_c116_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c116_idx_id_pai ON reg_c116 USING btree (id_pai);


--
-- Name: reg_c120_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c120_idx_chave_duplicidade ON reg_c120 USING btree (num_doc_imp, num_acdraw);


--
-- Name: reg_c120_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c120_idx_id_pai ON reg_c120 USING btree (id_pai);


--
-- Name: reg_c130_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c130_idx_id_pai ON reg_c130 USING btree (id_pai);


--
-- Name: reg_c140_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c140_idx_id_pai ON reg_c140 USING btree (id_pai);


--
-- Name: reg_c141_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c141_idx_chave_duplicidade ON reg_c141 USING btree (num_parc);


--
-- Name: reg_c141_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c141_idx_id_pai ON reg_c141 USING btree (id_pai);


--
-- Name: reg_c160_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c160_idx_cod_part ON reg_c160 USING btree (cod_part);


--
-- Name: reg_c160_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c160_idx_id_pai ON reg_c160 USING btree (id_pai);


--
-- Name: reg_c165_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c165_idx_chave_duplicidade ON reg_c165 USING btree (cod_part, veic_id);


--
-- Name: reg_c165_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c165_idx_cod_part ON reg_c165 USING btree (cod_part);


--
-- Name: reg_c165_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c165_idx_id_pai ON reg_c165 USING btree (id_pai);


--
-- Name: reg_c170_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c170_idx_chave_duplicidade ON reg_c170 USING btree (num_item);


--
-- Name: reg_c170_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c170_idx_cod_item ON reg_c170 USING btree (cod_item);


--
-- Name: reg_c170_idx_cod_nat; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c170_idx_cod_nat ON reg_c170 USING btree (cod_nat);


--
-- Name: reg_c170_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c170_idx_id_pai ON reg_c170 USING btree (id_pai);


--
-- Name: reg_c170_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c170_idx_unid ON reg_c170 USING btree (unid);


--
-- Name: reg_c171_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c171_idx_chave_duplicidade ON reg_c171 USING btree (num_tanque);


--
-- Name: reg_c171_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c171_idx_id_pai ON reg_c171 USING btree (id_pai);


--
-- Name: reg_c172_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c172_idx_id_pai ON reg_c172 USING btree (id_pai);


--
-- Name: reg_c173_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c173_idx_chave_duplicidade ON reg_c173 USING btree (lote_med);


--
-- Name: reg_c173_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c173_idx_id_pai ON reg_c173 USING btree (id_pai);


--
-- Name: reg_c174_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c174_idx_chave_duplicidade ON reg_c174 USING btree (num_arm);


--
-- Name: reg_c174_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c174_idx_id_pai ON reg_c174 USING btree (id_pai);


--
-- Name: reg_c175_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c175_idx_chave_duplicidade ON reg_c175 USING btree (chassi_veic);


--
-- Name: reg_c175_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c175_idx_id_pai ON reg_c175 USING btree (id_pai);


--
-- Name: reg_c176_idx_cod_part_ult_e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c176_idx_cod_part_ult_e ON reg_c176 USING btree (cod_part_ult_e);


--
-- Name: reg_c176_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c176_idx_id_pai ON reg_c176 USING btree (id_pai);


--
-- Name: reg_c177_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c177_idx_id_pai ON reg_c177 USING btree (id_pai);


--
-- Name: reg_c178_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c178_idx_id_pai ON reg_c178 USING btree (id_pai);


--
-- Name: reg_c179_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c179_idx_id_pai ON reg_c179 USING btree (id_pai);


--
-- Name: reg_c190_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c190_idx_chave_duplicidade ON reg_c190 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c190_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c190_idx_cod_obs ON reg_c190 USING btree (cod_obs);


--
-- Name: reg_c190_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c190_idx_id_pai ON reg_c190 USING btree (id_pai);


--
-- Name: reg_c195_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c195_idx_chave_duplicidade ON reg_c195 USING btree (cod_obs);


--
-- Name: reg_c195_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c195_idx_id_pai ON reg_c195 USING btree (id_pai);


--
-- Name: reg_c197_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c197_idx_chave_duplicidade ON reg_c197 USING btree (cod_aj, cod_item);


--
-- Name: reg_c197_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c197_idx_cod_item ON reg_c197 USING btree (cod_item);


--
-- Name: reg_c197_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c197_idx_id_pai ON reg_c197 USING btree (id_pai);


--
-- Name: reg_c300_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c300_idx_chave_duplicidade ON reg_c300 USING btree (ser, sub, num_doc_ini, num_doc_fin);


--
-- Name: reg_c300_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c300_idx_id_pai ON reg_c300 USING btree (id_pai);


--
-- Name: reg_c300_idx_num_doc_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c300_idx_num_doc_fin ON reg_c300 USING btree (num_doc_fin);


--
-- Name: reg_c300_idx_num_doc_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c300_idx_num_doc_ini ON reg_c300 USING btree (num_doc_ini);


--
-- Name: reg_c300_idx_ser_sub; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c300_idx_ser_sub ON reg_c300 USING btree (ser, sub);


--
-- Name: reg_c310_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c310_idx_chave_duplicidade ON reg_c310 USING btree (num_doc_canc);


--
-- Name: reg_c310_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c310_idx_id_pai ON reg_c310 USING btree (id_pai);


--
-- Name: reg_c320_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c320_idx_chave_duplicidade ON reg_c320 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c320_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c320_idx_cod_obs ON reg_c320 USING btree (cod_obs);


--
-- Name: reg_c320_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c320_idx_id_pai ON reg_c320 USING btree (id_pai);


--
-- Name: reg_c321_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c321_idx_chave_duplicidade ON reg_c321 USING btree (cod_item);


--
-- Name: reg_c321_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c321_idx_id_pai ON reg_c321 USING btree (id_pai);


--
-- Name: reg_c321_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c321_idx_unid ON reg_c321 USING btree (unid);


--
-- Name: reg_c350_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c350_idx_chave_duplicidade ON reg_c350 USING btree (num_doc, ser, sub_ser);


--
-- Name: reg_c350_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c350_idx_id_pai ON reg_c350 USING btree (id_pai);


--
-- Name: reg_c370_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c370_idx_chave_duplicidade ON reg_c370 USING btree (num_item, cod_item);


--
-- Name: reg_c370_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c370_idx_id_pai ON reg_c370 USING btree (id_pai);


--
-- Name: reg_c390_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c390_idx_chave_duplicidade ON reg_c390 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c390_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c390_idx_cod_obs ON reg_c390 USING btree (cod_obs);


--
-- Name: reg_c390_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c390_idx_id_pai ON reg_c390 USING btree (id_pai);


--
-- Name: reg_c400_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c400_idx_chave_duplicidade ON reg_c400 USING btree (cod_mod, ecf_mod, ecf_fab);


--
-- Name: reg_c400_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c400_idx_id_pai ON reg_c400 USING btree (id_pai);


--
-- Name: reg_c405_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c405_idx_chave_duplicidade ON reg_c405 USING btree (dt_doc, cro, crz);


--
-- Name: reg_c405_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c405_idx_id_pai ON reg_c405 USING btree (id_pai);


--
-- Name: reg_c410_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c410_idx_id_pai ON reg_c410 USING btree (id_pai);


--
-- Name: reg_c420_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c420_idx_chave_duplicidade ON reg_c420 USING btree (cod_tot_par, nr_tot);


--
-- Name: reg_c420_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c420_idx_id_pai ON reg_c420 USING btree (id_pai);


--
-- Name: reg_c425_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c425_idx_chave_duplicidade ON reg_c425 USING btree (cod_item);


--
-- Name: reg_c425_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c425_idx_id_pai ON reg_c425 USING btree (id_pai);


--
-- Name: reg_c425_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c425_idx_unid ON reg_c425 USING btree (unid);


--
-- Name: reg_c460_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c460_idx_chave_duplicidade ON reg_c460 USING btree (cod_mod, num_doc, dt_doc);


--
-- Name: reg_c460_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c460_idx_id_pai ON reg_c460 USING btree (id_pai);


--
-- Name: reg_c465_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c465_idx_chave_duplicidade ON reg_c465 USING btree (chv_cfe);


--
-- Name: reg_c465_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c465_idx_id_pai ON reg_c465 USING btree (id_pai);


--
-- Name: reg_c470_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c470_idx_cod_item ON reg_c470 USING btree (cod_item);


--
-- Name: reg_c470_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c470_idx_id_pai ON reg_c470 USING btree (id_pai);


--
-- Name: reg_c470_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c470_idx_unid ON reg_c470 USING btree (unid);


--
-- Name: reg_c490_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c490_idx_chave_duplicidade ON reg_c490 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c490_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c490_idx_cod_obs ON reg_c490 USING btree (cod_obs);


--
-- Name: reg_c490_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c490_idx_id_pai ON reg_c490 USING btree (id_pai);


--
-- Name: reg_c495_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c495_idx_chave_duplicidade ON reg_c495 USING btree (cod_item, aliq_icms);


--
-- Name: reg_c495_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c495_idx_cod_item ON reg_c495 USING btree (cod_item);


--
-- Name: reg_c495_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c495_idx_id_pai ON reg_c495 USING btree (id_pai);


--
-- Name: reg_c495_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c495_idx_unid ON reg_c495 USING btree (unid);


--
-- Name: reg_c500_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c500_idx_chave_duplicidade ON reg_c500 USING btree (ind_oper, ind_emit, cod_part, cod_mod, ser, num_doc, dt_doc);


--
-- Name: reg_c500_idx_cod_inf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c500_idx_cod_inf ON reg_c500 USING btree (cod_inf);


--
-- Name: reg_c500_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c500_idx_cod_part ON reg_c500 USING btree (cod_part);


--
-- Name: reg_c500_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c500_idx_id_pai ON reg_c500 USING btree (id_pai);


--
-- Name: reg_c510_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c510_idx_chave_duplicidade ON reg_c510 USING btree (num_item);


--
-- Name: reg_c510_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c510_idx_cod_item ON reg_c510 USING btree (cod_item);


--
-- Name: reg_c510_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c510_idx_cod_part ON reg_c510 USING btree (cod_part);


--
-- Name: reg_c510_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c510_idx_id_pai ON reg_c510 USING btree (id_pai);


--
-- Name: reg_c510_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c510_idx_unid ON reg_c510 USING btree (unid);


--
-- Name: reg_c590_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c590_idx_chave_duplicidade ON reg_c590 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c590_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c590_idx_cod_obs ON reg_c590 USING btree (cod_obs);


--
-- Name: reg_c590_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c590_idx_id_pai ON reg_c590 USING btree (id_pai);


--
-- Name: reg_c600_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c600_idx_chave_duplicidade ON reg_c600 USING btree (cod_mod, cod_mun, ser, sub, cod_cons, dt_doc);


--
-- Name: reg_c600_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c600_idx_id_pai ON reg_c600 USING btree (id_pai);


--
-- Name: reg_c601_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c601_idx_chave_duplicidade ON reg_c601 USING btree (num_doc_canc);


--
-- Name: reg_c601_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c601_idx_id_pai ON reg_c601 USING btree (id_pai);


--
-- Name: reg_c610_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c610_idx_chave_duplicidade ON reg_c610 USING btree (cod_class, cod_item, aliq_icms);


--
-- Name: reg_c610_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c610_idx_cod_item ON reg_c610 USING btree (cod_item);


--
-- Name: reg_c610_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c610_idx_id_pai ON reg_c610 USING btree (id_pai);


--
-- Name: reg_c610_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c610_idx_unid ON reg_c610 USING btree (unid);


--
-- Name: reg_c690_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c690_idx_chave_duplicidade ON reg_c690 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c690_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c690_idx_cod_obs ON reg_c690 USING btree (cod_obs);


--
-- Name: reg_c690_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c690_idx_id_pai ON reg_c690 USING btree (id_pai);


--
-- Name: reg_c700_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c700_idx_chave_duplicidade ON reg_c700 USING btree (cod_mod, ser, nro_ord_ini, nro_ord_fin);


--
-- Name: reg_c700_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c700_idx_id_pai ON reg_c700 USING btree (id_pai);


--
-- Name: reg_c700_idx_nro_ord_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c700_idx_nro_ord_fin ON reg_c700 USING btree (nro_ord_fin);


--
-- Name: reg_c700_idx_nro_ord_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c700_idx_nro_ord_ini ON reg_c700 USING btree (nro_ord_ini);


--
-- Name: reg_c700_idx_ser; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c700_idx_ser ON reg_c700 USING btree (ser);


--
-- Name: reg_c790_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c790_idx_chave_duplicidade ON reg_c790 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c790_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c790_idx_cod_obs ON reg_c790 USING btree (cod_obs);


--
-- Name: reg_c790_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c790_idx_id_pai ON reg_c790 USING btree (id_pai);


--
-- Name: reg_c791_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c791_idx_chave_duplicidade ON reg_c791 USING btree (uf);


--
-- Name: reg_c791_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c791_idx_id_pai ON reg_c791 USING btree (id_pai);


--
-- Name: reg_c800_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c800_idx_chave_duplicidade ON reg_c800 USING btree (cod_sit, nr_sat, num_cfe);


--
-- Name: reg_c800_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c800_idx_id_pai ON reg_c800 USING btree (id_pai);


--
-- Name: reg_c850_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c850_idx_chave_duplicidade ON reg_c850 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c850_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c850_idx_cod_obs ON reg_c850 USING btree (cod_obs);


--
-- Name: reg_c850_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c850_idx_id_pai ON reg_c850 USING btree (id_pai);


--
-- Name: reg_c860_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c860_idx_chave_duplicidade ON reg_c860 USING btree (nr_sat, dt_doc);


--
-- Name: reg_c860_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c860_idx_id_pai ON reg_c860 USING btree (id_pai);


--
-- Name: reg_c890_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c890_idx_chave_duplicidade ON reg_c890 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_c890_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c890_idx_cod_obs ON reg_c890 USING btree (cod_obs);


--
-- Name: reg_c890_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c890_idx_id_pai ON reg_c890 USING btree (id_pai);


--
-- Name: reg_c990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_c990_idx_id_pai ON reg_c990 USING btree (id_pai);


--
-- Name: reg_d001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d001_idx_id_pai ON reg_d001 USING btree (id_pai);


--
-- Name: reg_d100_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d100_idx_chave_duplicidade ON reg_d100 USING btree (ind_emit, num_doc, cod_mod, cod_sit, ser, sub, cod_part);


--
-- Name: reg_d100_idx_cod_inf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d100_idx_cod_inf ON reg_d100 USING btree (cod_inf);


--
-- Name: reg_d100_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d100_idx_cod_part ON reg_d100 USING btree (cod_part);


--
-- Name: reg_d100_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d100_idx_id_pai ON reg_d100 USING btree (id_pai);


--
-- Name: reg_d110_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d110_idx_chave_duplicidade ON reg_d110 USING btree (num_item);


--
-- Name: reg_d110_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d110_idx_cod_item ON reg_d110 USING btree (cod_item);


--
-- Name: reg_d110_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d110_idx_id_pai ON reg_d110 USING btree (id_pai);


--
-- Name: reg_d120_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d120_idx_id_pai ON reg_d120 USING btree (id_pai);


--
-- Name: reg_d130_idx_cod_part_consg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d130_idx_cod_part_consg ON reg_d130 USING btree (cod_part_consg);


--
-- Name: reg_d130_idx_cod_part_red; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d130_idx_cod_part_red ON reg_d130 USING btree (cod_part_red);


--
-- Name: reg_d130_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d130_idx_id_pai ON reg_d130 USING btree (id_pai);


--
-- Name: reg_d140_idx_cod_part_consg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d140_idx_cod_part_consg ON reg_d140 USING btree (cod_part_consg);


--
-- Name: reg_d140_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d140_idx_id_pai ON reg_d140 USING btree (id_pai);


--
-- Name: reg_d150_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d150_idx_id_pai ON reg_d150 USING btree (id_pai);


--
-- Name: reg_d160_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d160_idx_id_pai ON reg_d160 USING btree (id_pai);


--
-- Name: reg_d161_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d161_idx_id_pai ON reg_d161 USING btree (id_pai);


--
-- Name: reg_d162_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d162_idx_chave_duplicidade ON reg_d162 USING btree (num_doc, ser, cod_mod);


--
-- Name: reg_d162_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d162_idx_id_pai ON reg_d162 USING btree (id_pai);


--
-- Name: reg_d170_idx_cod_part_consg; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d170_idx_cod_part_consg ON reg_d170 USING btree (cod_part_consg);


--
-- Name: reg_d170_idx_cod_part_red; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d170_idx_cod_part_red ON reg_d170 USING btree (cod_part_red);


--
-- Name: reg_d170_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d170_idx_id_pai ON reg_d170 USING btree (id_pai);


--
-- Name: reg_d180_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d180_idx_id_pai ON reg_d180 USING btree (id_pai);


--
-- Name: reg_d190_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d190_idx_chave_duplicidade ON reg_d190 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_d190_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d190_idx_cod_obs ON reg_d190 USING btree (cod_obs);


--
-- Name: reg_d190_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d190_idx_id_pai ON reg_d190 USING btree (id_pai);


--
-- Name: reg_d195_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d195_idx_chave_duplicidade ON reg_d195 USING btree (cod_obs);


--
-- Name: reg_d195_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d195_idx_id_pai ON reg_d195 USING btree (id_pai);


--
-- Name: reg_d197_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d197_idx_chave_duplicidade ON reg_d197 USING btree (cod_aj, cod_item);


--
-- Name: reg_d197_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d197_idx_cod_item ON reg_d197 USING btree (cod_item);


--
-- Name: reg_d197_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d197_idx_id_pai ON reg_d197 USING btree (id_pai);


--
-- Name: reg_d300_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d300_idx_chave_duplicidade ON reg_d300 USING btree (cod_mod, ser, sub, num_doc_ini, num_doc_fin);


--
-- Name: reg_d300_idx_cod_mod_ser_sub; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d300_idx_cod_mod_ser_sub ON reg_d300 USING btree (cod_mod, ser, sub);


--
-- Name: reg_d300_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d300_idx_cod_obs ON reg_d300 USING btree (cod_obs);


--
-- Name: reg_d300_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d300_idx_id_pai ON reg_d300 USING btree (id_pai);


--
-- Name: reg_d300_idx_num_doc_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d300_idx_num_doc_fin ON reg_d300 USING btree (num_doc_fin);


--
-- Name: reg_d300_idx_num_doc_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d300_idx_num_doc_ini ON reg_d300 USING btree (num_doc_ini);


--
-- Name: reg_d301_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d301_idx_chave_duplicidade ON reg_d301 USING btree (num_doc_canc);


--
-- Name: reg_d301_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d301_idx_id_pai ON reg_d301 USING btree (id_pai);


--
-- Name: reg_d310_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d310_idx_chave_duplicidade ON reg_d310 USING btree (cod_mun_orig);


--
-- Name: reg_d310_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d310_idx_id_pai ON reg_d310 USING btree (id_pai);


--
-- Name: reg_d350_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d350_idx_chave_duplicidade ON reg_d350 USING btree (cod_mod, ecf_mod, ecf_fab);


--
-- Name: reg_d350_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d350_idx_id_pai ON reg_d350 USING btree (id_pai);


--
-- Name: reg_d355_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d355_idx_chave_duplicidade ON reg_d355 USING btree (dt_doc, cro, crz);


--
-- Name: reg_d355_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d355_idx_id_pai ON reg_d355 USING btree (id_pai);


--
-- Name: reg_d360_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d360_idx_id_pai ON reg_d360 USING btree (id_pai);


--
-- Name: reg_d365_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d365_idx_chave_duplicidade ON reg_d365 USING btree (cod_tot_par, nr_tot);


--
-- Name: reg_d365_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d365_idx_id_pai ON reg_d365 USING btree (id_pai);


--
-- Name: reg_d370_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d370_idx_id_pai ON reg_d370 USING btree (id_pai);


--
-- Name: reg_d390_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d390_idx_chave_duplicidade ON reg_d390 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_d390_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d390_idx_cod_obs ON reg_d390 USING btree (cod_obs);


--
-- Name: reg_d390_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d390_idx_id_pai ON reg_d390 USING btree (id_pai);


--
-- Name: reg_d400_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d400_idx_chave_duplicidade ON reg_d400 USING btree (cod_part, ser, sub, num_doc, cod_sit);


--
-- Name: reg_d400_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d400_idx_cod_part ON reg_d400 USING btree (cod_part);


--
-- Name: reg_d400_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d400_idx_id_pai ON reg_d400 USING btree (id_pai);


--
-- Name: reg_d410_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d410_idx_chave_duplicidade ON reg_d410 USING btree (cod_mod, ser, sub, num_doc_ini, num_doc_fin, cst_icms, cfop, aliq_icms);


--
-- Name: reg_d410_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d410_idx_id_pai ON reg_d410 USING btree (id_pai);


--
-- Name: reg_d411_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d411_idx_id_pai ON reg_d411 USING btree (id_pai);


--
-- Name: reg_d420_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d420_idx_id_pai ON reg_d420 USING btree (id_pai);


--
-- Name: reg_d500_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d500_idx_chave_duplicidade ON reg_d500 USING btree (ind_oper, ind_emit, cod_part, cod_mod, ser, num_doc, dt_doc);


--
-- Name: reg_d500_idx_cod_inf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d500_idx_cod_inf ON reg_d500 USING btree (cod_inf);


--
-- Name: reg_d500_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d500_idx_cod_part ON reg_d500 USING btree (cod_part);


--
-- Name: reg_d500_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d500_idx_id_pai ON reg_d500 USING btree (id_pai);


--
-- Name: reg_d510_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d510_idx_chave_duplicidade ON reg_d510 USING btree (num_item);


--
-- Name: reg_d510_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d510_idx_cod_item ON reg_d510 USING btree (cod_item);


--
-- Name: reg_d510_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d510_idx_cod_part ON reg_d510 USING btree (cod_part);


--
-- Name: reg_d510_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d510_idx_id_pai ON reg_d510 USING btree (id_pai);


--
-- Name: reg_d510_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d510_idx_unid ON reg_d510 USING btree (unid);


--
-- Name: reg_d530_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d530_idx_id_pai ON reg_d530 USING btree (id_pai);


--
-- Name: reg_d590_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d590_idx_chave_duplicidade ON reg_d590 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_d590_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d590_idx_cod_obs ON reg_d590 USING btree (cod_obs);


--
-- Name: reg_d590_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d590_idx_id_pai ON reg_d590 USING btree (id_pai);


--
-- Name: reg_d600_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d600_idx_chave_duplicidade ON reg_d600 USING btree (cod_mod, cod_mun, ser, sub, cod_cons, dt_doc);


--
-- Name: reg_d600_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d600_idx_id_pai ON reg_d600 USING btree (id_pai);


--
-- Name: reg_d610_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d610_idx_chave_duplicidade ON reg_d610 USING btree (cod_item, cst_icms, cfop, aliq_icms);


--
-- Name: reg_d610_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d610_idx_id_pai ON reg_d610 USING btree (id_pai);


--
-- Name: reg_d610_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d610_idx_unid ON reg_d610 USING btree (unid);


--
-- Name: reg_d690_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d690_idx_chave_duplicidade ON reg_d690 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_d690_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d690_idx_cod_obs ON reg_d690 USING btree (cod_obs);


--
-- Name: reg_d690_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d690_idx_id_pai ON reg_d690 USING btree (id_pai);


--
-- Name: reg_d695_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d695_idx_chave_duplicidade ON reg_d695 USING btree (cod_mod, ser, nro_ord_ini, nro_ord_fin);


--
-- Name: reg_d695_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d695_idx_id_pai ON reg_d695 USING btree (id_pai);


--
-- Name: reg_d695_idx_nro_ord_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d695_idx_nro_ord_fin ON reg_d695 USING btree (nro_ord_fin);


--
-- Name: reg_d695_idx_nro_ord_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d695_idx_nro_ord_ini ON reg_d695 USING btree (nro_ord_ini);


--
-- Name: reg_d695_idx_ser; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d695_idx_ser ON reg_d695 USING btree (ser);


--
-- Name: reg_d696_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d696_idx_chave_duplicidade ON reg_d696 USING btree (cst_icms, cfop, aliq_icms);


--
-- Name: reg_d696_idx_cod_obs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d696_idx_cod_obs ON reg_d696 USING btree (cod_obs);


--
-- Name: reg_d696_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d696_idx_id_pai ON reg_d696 USING btree (id_pai);


--
-- Name: reg_d697_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d697_idx_chave_duplicidade ON reg_d697 USING btree (uf);


--
-- Name: reg_d697_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d697_idx_id_pai ON reg_d697 USING btree (id_pai);


--
-- Name: reg_d990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_d990_idx_id_pai ON reg_d990 USING btree (id_pai);


--
-- Name: reg_e001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e001_idx_id_pai ON reg_e001 USING btree (id_pai);


--
-- Name: reg_e100_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e100_idx_chave_duplicidade ON reg_e100 USING btree (dt_ini, dt_fin);


--
-- Name: reg_e100_idx_dt_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e100_idx_dt_fin ON reg_e100 USING btree (dt_fin);


--
-- Name: reg_e100_idx_dt_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e100_idx_dt_ini ON reg_e100 USING btree (dt_ini);


--
-- Name: reg_e100_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e100_idx_id_pai ON reg_e100 USING btree (id_pai);


--
-- Name: reg_e110_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e110_idx_id_pai ON reg_e110 USING btree (id_pai);


--
-- Name: reg_e111_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e111_idx_id_pai ON reg_e111 USING btree (id_pai);


--
-- Name: reg_e112_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e112_idx_id_pai ON reg_e112 USING btree (id_pai);


--
-- Name: reg_e113_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e113_idx_cod_item ON reg_e113 USING btree (cod_item);


--
-- Name: reg_e113_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e113_idx_cod_part ON reg_e113 USING btree (cod_part);


--
-- Name: reg_e113_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e113_idx_id_pai ON reg_e113 USING btree (id_pai);


--
-- Name: reg_e115_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e115_idx_id_pai ON reg_e115 USING btree (id_pai);


--
-- Name: reg_e116_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e116_idx_id_pai ON reg_e116 USING btree (id_pai);


--
-- Name: reg_e200_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e200_idx_chave_duplicidade ON reg_e200 USING btree (uf, dt_ini, dt_fin);


--
-- Name: reg_e200_idx_dt_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e200_idx_dt_fin ON reg_e200 USING btree (dt_fin);


--
-- Name: reg_e200_idx_dt_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e200_idx_dt_ini ON reg_e200 USING btree (dt_ini);


--
-- Name: reg_e200_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e200_idx_id_pai ON reg_e200 USING btree (id_pai);


--
-- Name: reg_e200_idx_uf; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e200_idx_uf ON reg_e200 USING btree (uf);


--
-- Name: reg_e210_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e210_idx_id_pai ON reg_e210 USING btree (id_pai);


--
-- Name: reg_e220_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e220_idx_id_pai ON reg_e220 USING btree (id_pai);


--
-- Name: reg_e230_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e230_idx_id_pai ON reg_e230 USING btree (id_pai);


--
-- Name: reg_e240_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e240_idx_cod_item ON reg_e240 USING btree (cod_item);


--
-- Name: reg_e240_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e240_idx_cod_part ON reg_e240 USING btree (cod_part);


--
-- Name: reg_e240_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e240_idx_id_pai ON reg_e240 USING btree (id_pai);


--
-- Name: reg_e250_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e250_idx_id_pai ON reg_e250 USING btree (id_pai);


--
-- Name: reg_e500_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e500_idx_chave_duplicidade ON reg_e500 USING btree (ind_apur, dt_ini, dt_fin);


--
-- Name: reg_e500_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e500_idx_id_pai ON reg_e500 USING btree (id_pai);


--
-- Name: reg_e510_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e510_idx_chave_duplicidade ON reg_e510 USING btree (cfop, cst_ipi);


--
-- Name: reg_e510_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e510_idx_id_pai ON reg_e510 USING btree (id_pai);


--
-- Name: reg_e520_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e520_idx_id_pai ON reg_e520 USING btree (id_pai);


--
-- Name: reg_e530_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e530_idx_id_pai ON reg_e530 USING btree (id_pai);


--
-- Name: reg_e990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_e990_idx_id_pai ON reg_e990 USING btree (id_pai);


--
-- Name: reg_g001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g001_idx_id_pai ON reg_g001 USING btree (id_pai);


--
-- Name: reg_g110_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g110_idx_chave_duplicidade ON reg_g110 USING btree (dt_ini, dt_fin);


--
-- Name: reg_g110_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g110_idx_id_pai ON reg_g110 USING btree (id_pai);


--
-- Name: reg_g125_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g125_idx_chave_duplicidade ON reg_g125 USING btree (cod_ind_bem, tipo_mov);


--
-- Name: reg_g125_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g125_idx_id_pai ON reg_g125 USING btree (id_pai);


--
-- Name: reg_g126_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g126_idx_chave_duplicidade ON reg_g126 USING btree (dt_ini, dt_fin);


--
-- Name: reg_g126_idx_dt_fin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g126_idx_dt_fin ON reg_g126 USING btree (dt_fin);


--
-- Name: reg_g126_idx_dt_ini; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g126_idx_dt_ini ON reg_g126 USING btree (dt_ini);


--
-- Name: reg_g126_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g126_idx_id_pai ON reg_g126 USING btree (id_pai);


--
-- Name: reg_g130_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g130_idx_chave_duplicidade ON reg_g130 USING btree (ind_emit, cod_part, cod_mod, serie, num_doc);


--
-- Name: reg_g130_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g130_idx_cod_part ON reg_g130 USING btree (cod_part);


--
-- Name: reg_g130_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g130_idx_id_pai ON reg_g130 USING btree (id_pai);


--
-- Name: reg_g140_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g140_idx_chave_duplicidade ON reg_g140 USING btree (num_item);


--
-- Name: reg_g140_idx_cod_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g140_idx_cod_item ON reg_g140 USING btree (cod_item);


--
-- Name: reg_g140_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g140_idx_id_pai ON reg_g140 USING btree (id_pai);


--
-- Name: reg_g990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_g990_idx_id_pai ON reg_g990 USING btree (id_pai);


--
-- Name: reg_h001_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h001_idx_id_pai ON reg_h001 USING btree (id_pai);


--
-- Name: reg_h005_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h005_idx_chave_duplicidade ON reg_h005 USING btree (dt_inv, mot_inv);


--
-- Name: reg_h005_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h005_idx_id_pai ON reg_h005 USING btree (id_pai);


--
-- Name: reg_h010_idx_chave_duplicidade; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h010_idx_chave_duplicidade ON reg_h010 USING btree (cod_item, ind_prop, cod_part);


--
-- Name: reg_h010_idx_cod_part; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h010_idx_cod_part ON reg_h010 USING btree (cod_part);


--
-- Name: reg_h010_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h010_idx_id_pai ON reg_h010 USING btree (id_pai);


--
-- Name: reg_h010_idx_unid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h010_idx_unid ON reg_h010 USING btree (unid);


--
-- Name: reg_h020_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h020_idx_id_pai ON reg_h020 USING btree (id_pai);


--
-- Name: reg_h990_idx_id_pai; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX reg_h990_idx_id_pai ON reg_h990 USING btree (id_pai);


--
-- PostgreSQL database dump complete
--
