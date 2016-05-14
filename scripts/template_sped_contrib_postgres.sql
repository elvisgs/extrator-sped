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
-- Name: reg_0000; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0000 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_ver character varying(3),
    tipo_escrit character varying(1),
    ind_sit_esp character varying(1),
    num_rec_anterior character varying(41),
    dt_ini date,
    dt_fin date,
    nome character varying(100),
    cnpj character varying(14),
    uf character varying(2),
    cod_mun character varying(7),
    suframa character varying(9),
    ind_nat_pj character varying(2),
    ind_ativ character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0035; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0035 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_scp character varying(14),
    nome_scp character varying(255),
    inf_comp character varying(255)
);


--
-- Name: reg_0100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nome character varying(100),
    cpf character varying(11),
    crc character varying(15),
    cnpj character varying(14),
    cep character varying(8),
    "end" character varying(60),
    num character varying(255),
    compl character varying(60),
    bairro character varying(60),
    fone character varying(10),
    fax character varying(10),
    email character varying(255),
    cod_mun character varying(7),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_0110; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inc_trib character varying(1),
    ind_apro_cred character varying(1),
    cod_tipo_cont character varying(1),
    ind_reg_cum character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0111; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    rec_bru_ncum_trib_mi numeric(21,2),
    rec_bru_ncum_nt_mi numeric(21,2),
    rec_bru_ncum_exp numeric(21,2),
    rec_bru_cum numeric(21,2),
    rec_bru_total numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0120; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0120 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    mes_dispensa character varying(6),
    inf_comp character varying(90),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0140; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0140 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_est character varying(60),
    nome character varying(100),
    cnpj character varying(14),
    uf character varying(2),
    ie character varying(14),
    cod_mun character varying(7),
    im character varying(255),
    suframa character varying(9),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0145; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0145 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inc_trib character varying(1),
    vl_rec_tot numeric(21,2),
    vl_rec_ativ numeric(21,2),
    vl_rec_demais_ativ numeric(21,2),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0150; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
    "end" character varying(60),
    num character varying(255),
    compl character varying(60),
    bairro character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0190; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    descr_item character varying(255),
    cod_barra character varying(255),
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
-- Name: reg_0205; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0206; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0208; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_0208 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_tab character varying(2),
    cod_gru character varying(2),
    marca_com character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0400; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0450; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0500; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
    cod_cta_ref character varying(60),
    cnpj_est character varying(14),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0600; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_0990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_1001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_1010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    id_sec_jud character varying(255),
    id_vara character varying(2),
    ind_nat_acao character varying(2),
    desc_dec_jud character varying(100),
    dt_sent_jud date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1020; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1020 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_nat_acao character varying(2),
    dt_dec_adm date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    per_apu_cred character varying(6),
    orig_cred character varying(2),
    cnpj_suc character varying(14),
    cod_cred character varying(3),
    vl_cred_apu numeric(21,2),
    vl_cred_ext_apu numeric(21,2),
    vl_tot_cred_apu numeric(21,2),
    vl_cred_desc_pa_ant numeric(21,2),
    vl_cred_per_pa_ant numeric(21,2),
    vl_cred_dcomp_pa_ant numeric(21,2),
    sd_cred_disp_efd numeric(21,2),
    vl_cred_desc_efd numeric(21,2),
    vl_cred_per_efd numeric(21,2),
    vl_cred_dcomp_efd numeric(21,2),
    vl_cred_trans numeric(21,2),
    vl_cred_out numeric(21,2),
    sld_cred_fim numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_1101; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1101 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_item character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    sub_ser character varying(3),
    num_doc character varying(9),
    dt_oper date,
    chv_nfe character varying(44),
    vl_oper numeric(21,2),
    cfop character varying(4),
    nat_bc_cred character varying(2),
    ind_orig_cred character varying(1),
    cst_pis character varying(2),
    vl_bc_pis numeric(22,3),
    aliq_pis numeric(23,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    cod_ccus character varying(60),
    desc_compl character varying(255),
    per_escrit character varying(6),
    cnpj character varying(14)
);


--
-- Name: reg_1102; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1102 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_cred_pis_trib_mi numeric(21,2),
    vl_cred_pis_nt_mi numeric(21,2),
    vl_cred_pis_exp numeric(21,2)
);


--
-- Name: reg_1200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    per_apur_ant character varying(6),
    nat_cont_rec character varying(2),
    vl_cont_apur numeric(21,2),
    vl_cred_pis_desc numeric(21,2),
    vl_cont_dev numeric(21,2),
    vl_out_ded numeric(21,2),
    vl_cont_ext numeric(21,2),
    vl_mul numeric(21,2),
    vl_jur numeric(21,2),
    dt_recol character varying(8)
);


--
-- Name: reg_1210; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1210 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    cst_pis character varying(2),
    cod_part character varying(60),
    dt_oper date,
    vl_oper numeric(21,2),
    vl_bc_pis numeric(22,3),
    aliq_pis numeric(23,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    desc_compl character varying(255)
);


--
-- Name: reg_1220; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1220 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    per_apu_cred character varying(6),
    orig_cred character varying(2),
    cod_cred character varying(3),
    vl_cred numeric(21,2)
);


--
-- Name: reg_1300; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_nat_ret character varying(2),
    pr_rec_ret character varying(6),
    vl_ret_apu numeric(21,2),
    vl_ret_ded numeric(21,2),
    vl_ret_per numeric(21,2),
    vl_ret_dcomp numeric(21,2),
    sld_ret numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1500; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    per_apu_cred character varying(6),
    orig_cred character varying(2),
    cnpj_suc character varying(14),
    cod_cred character varying(3),
    vl_cred_apu numeric(21,2),
    vl_cred_ext_apu numeric(21,2),
    vl_tot_cred_apu numeric(21,2),
    vl_cred_desc_pa_ant numeric(21,2),
    vl_cred_per_pa_ant numeric(21,2),
    vl_cred_dcomp_pa_ant numeric(21,2),
    sd_cred_disp_efd numeric(21,2),
    vl_cred_desc_efd numeric(21,2),
    vl_cred_per_efd numeric(21,2),
    vl_cred_dcomp_efd numeric(21,2),
    vl_cred_trans numeric(21,2),
    vl_cred_out numeric(21,2),
    sld_cred_fim numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_1501; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1501 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_item character varying(60),
    cod_mod character varying(2),
    ser character varying(4),
    sub_ser character varying(3),
    num_doc character varying(9),
    dt_oper date,
    chv_nfe character varying(44),
    vl_oper numeric(21,2),
    cfop character varying(4),
    nat_bc_cred character varying(2),
    ind_orig_cred character varying(1),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(22,3),
    aliq_cofins numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    cod_ccus character varying(60),
    desc_compl character varying(255),
    per_escrit character varying(6),
    cnpj character varying(14)
);


--
-- Name: reg_1502; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1502 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_cred_cofins_trib_mi numeric(21,2),
    vl_cred_cofins_nt_mi numeric(21,2),
    vl_cred_cofins_exp numeric(21,2)
);


--
-- Name: reg_1610; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1610 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    cst_cofins character varying(2),
    cod_part character varying(60),
    dt_oper date,
    vl_oper numeric(21,2),
    vl_bc_cofins numeric(22,3),
    aliq_cofins numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    desc_compl character varying(255)
);


--
-- Name: reg_1700; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1700 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_nat_ret character varying(2),
    pr_rec_ret character varying(6),
    vl_ret_apu numeric(21,2),
    vl_ret_ded numeric(21,2),
    vl_ret_per numeric(21,2),
    vl_ret_dcomp numeric(21,2),
    sld_ret numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1800; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1800 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    inc_imob character varying(90),
    rec_receb_ret numeric(21,2),
    rec_fin_ret numeric(21,2),
    bc_ret numeric(21,2),
    aliq_ret numeric(8,2),
    vl_rec_uni numeric(21,2),
    dt_rec_uni date,
    cod_rec character varying(4),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_1900; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_1900 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    cod_mod character varying(2),
    ser character varying(4),
    sub_ser character varying(20),
    cod_sit character varying(2),
    vl_tot_rec numeric(21,2),
    quant_doc character varying(255),
    cst_pis character varying(2),
    cst_cofins character varying(2),
    cfop character varying(4),
    info_compl character varying(255),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_1990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_9001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_9900; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_9990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_9999; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_a001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_a010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_a100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    ind_emit character varying(1),
    cod_part character varying(60),
    cod_sit character varying(2),
    ser character varying(20),
    sub character varying(20),
    num_doc character varying(128),
    chv_nfse character varying(128),
    dt_doc date,
    dt_exe_serv date,
    vl_doc numeric(21,2),
    ind_pgto character varying(1),
    vl_desc numeric(21,2),
    vl_bc_pis numeric(21,2),
    vl_pis numeric(21,2),
    vl_bc_cofins numeric(21,2),
    vl_cofins numeric(21,2),
    vl_pis_ret numeric(21,2),
    vl_cofins_ret numeric(21,2),
    vl_iss numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_a110; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_inf character varying(6),
    txt_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_a111; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_a120; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a120 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_tot_serv numeric(21,2),
    vl_bc_pis numeric(21,2),
    vl_pis_imp numeric(21,2),
    dt_pag_pis date,
    vl_bc_cofins numeric(21,2),
    vl_cofins_imp numeric(21,2),
    dt_pag_cofins date,
    loc_exe_serv character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_a170; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a170 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(4),
    cod_item character varying(60),
    descr_compl character varying(255),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    nat_bc_cred character varying(2),
    ind_orig_cred character varying(1),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(21,2),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(8,2),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    cod_ccus character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_a990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_a990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_a bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_c010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    ind_escri character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_c110; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_c111; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c120; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c120 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_doc_imp character varying(1),
    num_doc_imp character varying(10),
    vl_pis_imp numeric(21,2),
    vl_cofins_imp numeric(21,2),
    num_acdraw character varying(20),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c170; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c170 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_item character varying(3),
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
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    dar integer,
    dar_perc_icms numeric(19,4),
    dar_vlr_base_subs numeric(19,4),
    acao character varying(1) DEFAULT 'I'::character varying,
    red_base_subs numeric(19,4),
    red_base_icms numeric(19,4),
    cnpj_pai character varying(14),
    dar_vlr_custo numeric(19,4),
    carga_id integer,
    dar_vlr_icms numeric(19,4),
    dar_vlr_base_icms numeric(19,4),
    dar_perc_icms_destino numeric(19,4),
    dar_vlr_icms_diferencial numeric(19,4),
    dar_vlr_icms_subs numeric(19,4),
    dar_perc_iva numeric(19,4)
);


--
-- Name: reg_c180; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c180 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    dt_doc_ini date,
    dt_doc_fin date,
    cod_item character varying(60),
    cod_ncm character varying(8),
    ex_ipi character varying(3),
    vl_tot_item numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_c181; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c181 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    cfop character varying(4),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c185; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c185 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    cfop character varying(4),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c188; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c188 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c190; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c190 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    dt_ref_ini date,
    dt_ref_fin date,
    cod_item character varying(60),
    cod_ncm character varying(8),
    ex_ipi character varying(3),
    vl_tot_item numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c191; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c191 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj_cpf_part character varying(14),
    cst_pis character varying(2),
    cfop character varying(4),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c195; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c195 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj_cpf_part character varying(14),
    cst_cofins character varying(2),
    cfop character varying(4),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c198; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c198 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c199; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c199 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_doc_imp character varying(1),
    num_doc_imp character varying(10),
    vl_pis_imp numeric(21,2),
    vl_cofins_imp numeric(21,2),
    num_acdraw character varying(20),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c380; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c380 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    dt_doc_ini date,
    dt_doc_fin date,
    num_doc_ini character varying(6),
    num_doc_fin character varying(6),
    vl_doc numeric(21,2),
    vl_doc_canc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c381; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c381 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    cod_item character varying(60),
    vl_item numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c385; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c385 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    cod_item character varying(60),
    vl_item numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c395; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c395 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_part character varying(60),
    ser character varying(3),
    sub_ser character varying(3),
    num_doc character varying(6),
    dt_doc date,
    vl_doc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c396; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c396 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    nat_bc_cred character varying(2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c400; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c400 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ecf_mod character varying(20),
    ecf_fab character varying(20),
    ecf_cx character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c405; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c405 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_doc date,
    cro character varying(3),
    crz character varying(6),
    num_coo_fin character varying(6),
    gt_fin numeric(21,2),
    vl_brt numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c481; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c481 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    vl_item numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cod_item character varying(60),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c485; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c485 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    vl_item numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_item character varying(60),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c489; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c489 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c490; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c490 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_doc_ini date,
    dt_doc_fin date,
    cod_mod character varying(2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c491; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c491 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    cst_pis character varying(2),
    cfop character varying(4),
    vl_item numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c495; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c495 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_item character varying(60),
    cst_cofins character varying(2),
    cfop character varying(4),
    vl_item numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c499; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c499 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c500; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_part character varying(60),
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc character varying(60),
    dt_doc date,
    dt_e_s date,
    vl_doc numeric(21,2),
    vl_icms numeric(21,2),
    cod_inf character varying(6),
    vl_pis numeric(21,2),
    vl_cofins numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c501; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c501 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    vl_item numeric(21,2),
    nat_bc_cred character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c505; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c505 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    vl_item numeric(21,2),
    nat_bc_cred character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c509; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c509 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c600; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_c601; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c601 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    vl_item numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c605; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c605 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    vl_item numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c609; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_c609 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_c990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_d001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_d010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
    tp_cte character varying(1),
    chv_cte_ref character varying(44),
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    ind_frt character varying(1),
    vl_serv numeric(21,2),
    vl_bc_icms numeric(21,2),
    vl_icms numeric(21,2),
    vl_nt numeric(21,2),
    cod_inf character varying(6),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_d101; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d101 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_nat_frt character varying(1),
    vl_item numeric(21,2),
    cst_pis character varying(2),
    nat_bc_cred character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d105; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d105 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_nat_frt character varying(1),
    vl_item numeric(21,2),
    cst_cofins character varying(2),
    nat_bc_cred character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d111; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_sit character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc_ini character varying(9),
    num_doc_fin character varying(9),
    cfop character varying(4),
    dt_ref date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d201; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d201 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    vl_item numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d205; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d205 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    vl_item numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d209; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d209 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d300; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ser character varying(4),
    sub character varying(3),
    num_doc_ini character varying(6),
    num_doc_fin character varying(255),
    cfop character varying(4),
    dt_ref date,
    vl_doc numeric(21,2),
    vl_desc numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_d309; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d309 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d350; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d350 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    ecf_mod character varying(20),
    ecf_fab character varying(20),
    dt_doc date,
    cro character varying(3),
    crz character varying(6),
    num_coo_fin character varying(6),
    gt_fin numeric(21,2),
    vl_brt numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_d359; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d359 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d500; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_d501; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d501 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    vl_item numeric(21,2),
    nat_bc_cred character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d505; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d505 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    vl_item numeric(21,2),
    nat_bc_cred character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d509; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d509 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d600; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_mod character varying(2),
    cod_mun character varying(7),
    ser character varying(4),
    sub character varying(3),
    ind_rec character varying(1),
    qtd_cons character varying(255),
    dt_doc_ini date,
    dt_doc_fin date,
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
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_d601; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d601 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_class character varying(4),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d605; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d605 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_class character varying(4),
    vl_item numeric(21,2),
    vl_desc numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d609; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_d609 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_d990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
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
-- Name: reg_f001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(1),
    cod_part character varying(60),
    cod_item character varying(60),
    dt_oper date,
    vl_oper numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(23,4),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(23,4),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    nat_bc_cred character varying(2),
    ind_orig_cred character varying(1),
    cod_cta character varying(60),
    cod_ccus character varying(60),
    desc_doc_oper character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f111; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f111 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f120; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f120 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_bc_cred character varying(2),
    ident_bem_imob character varying(2),
    ind_orig_cred character varying(1),
    ind_util_bem_imob character varying(1),
    vl_oper_dep numeric(21,2),
    parc_oper_nao_bc_cred numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    cod_ccus character varying(60),
    desc_bem_imob character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f129; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f129 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f130; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f130 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_bc_cred character varying(2),
    ident_bem_imob character varying(2),
    ind_orig_cred character varying(1),
    ind_util_bem_imob character varying(1),
    mes_oper_aquis character varying(6),
    vl_oper_aquis numeric(21,2),
    parc_oper_nao_bc_cred numeric(21,2),
    vl_bc_cred numeric(21,2),
    ind_nr_parc character varying(1),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_cta character varying(60),
    cod_ccus character varying(60),
    desc_bem_imob character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f139; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f139 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f150; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f150 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_bc_cred character varying(2),
    vl_tot_est numeric(21,2),
    est_imp numeric(21,2),
    vl_bc_est numeric(21,2),
    vl_bc_men_est numeric(21,2),
    cst_pis character varying(2),
    aliq_pis numeric(12,4),
    vl_cred_pis numeric(21,2),
    cst_cofins character varying(2),
    aliq_cofins numeric(12,4),
    vl_cred_cofins numeric(21,2),
    desc_est character varying(100),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_oper character varying(2),
    unid_imob character varying(2),
    ident_emp character varying(255),
    desc_unid_imob character varying(90),
    num_cont character varying(90),
    cpf_cnpj_adqu character varying(14),
    dt_oper date,
    vl_tot_vend numeric(21,2),
    vl_rec_acum numeric(21,2),
    vl_tot_rec numeric(21,2),
    cst_pis character varying(2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    perc_rec_receb numeric(8,2),
    ind_nat_emp character varying(1),
    inf_comp character varying(90),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f205; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f205 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_cus_inc_acum_ant numeric(21,2),
    vl_cus_inc_per_esc numeric(21,2),
    vl_cus_inc_acum numeric(21,2),
    vl_exc_bc_cus_inc_acum numeric(21,2),
    vl_bc_cus_inc numeric(21,2),
    cst_pis character varying(2),
    aliq_pis numeric(12,4),
    vl_cred_pis_acum numeric(21,2),
    vl_cred_pis_desc_ant numeric(21,2),
    vl_cred_pis_desc numeric(21,2),
    vl_cred_pis_desc_fut numeric(21,2),
    cst_cofins character varying(2),
    aliq_cofins numeric(12,4),
    vl_cred_cofins_acum numeric(21,2),
    vl_cred_cofins_desc_ant numeric(21,2),
    vl_cred_cofins_desc numeric(21,2),
    vl_cred_cofins_desc_fut numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f210; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f210 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_cus_orc numeric(21,2),
    vl_exc numeric(21,2),
    vl_cus_orc_aju numeric(21,2),
    vl_bc_cred numeric(21,2),
    cst_pis character varying(2),
    aliq_pis numeric(12,4),
    vl_cred_pis_util numeric(21,2),
    cst_cofins character varying(2),
    aliq_cofins numeric(12,4),
    vl_cred_cofins_util numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f211; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f211 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f500; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_rec_caixa numeric(21,2),
    cst_pis character varying(2),
    vl_desc_pis numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_desc_cofins numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_mod character varying(2),
    cfop character varying(4),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f509; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f509 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f510; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f510 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_rec_caixa numeric(21,2),
    cst_pis character varying(2),
    vl_desc_pis numeric(21,2),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_desc_cofins numeric(21,2),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cofins numeric(21,2),
    cod_mod character varying(2),
    cfop character varying(4),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f519; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f519 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f525; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f525 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_rec numeric(21,2),
    ind_rec character varying(2),
    cnpj_cpf character varying(14),
    num_doc character varying(60),
    cod_item character varying(60),
    vl_rec_det numeric(21,2),
    cst_pis character varying(2),
    cst_cofins character varying(2),
    info_compl character varying(255),
    cod_cta character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f550; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f550 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_rec_comp numeric(21,2),
    cst_pis character varying(2),
    vl_desc_pis numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_desc_cofins numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(12,4),
    vl_cofins numeric(21,2),
    cod_mod character varying(2),
    cfop character varying(4),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f559; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f559 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f560; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f560 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_rec_comp numeric(21,2),
    cst_pis character varying(2),
    vl_desc_pis numeric(21,2),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(12,4),
    vl_pis numeric(21,2),
    cst_cofins character varying(2),
    vl_desc_cofins numeric(21,2),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(12,4),
    vl_cofins numeric(21,2),
    cod_mod character varying(2),
    cfop character varying(4),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_f569; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f569 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f600; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_nat_ret character varying(2),
    dt_ret date,
    vl_bc_ret numeric(23,4),
    vl_ret numeric(21,2),
    cod_rec character varying(4),
    ind_nat_rec character varying(1),
    cnpj character varying(14),
    vl_ret_pis numeric(21,2),
    vl_ret_cofins numeric(21,2),
    ind_dec character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f700; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f700 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_ori_ded character varying(2),
    ind_nat_ded character varying(1),
    vl_ded_pis numeric(21,2),
    vl_ded_cofins numeric(21,2),
    vl_bc_oper numeric(21,2),
    cnpj character varying(14),
    inf_comp character varying(90),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f800; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f800 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_nat_even character varying(2),
    dt_even date,
    cnpj_suced character varying(14),
    pa_cont_cred character varying(6),
    cod_cred character varying(3),
    vl_cred_pis numeric(21,2),
    vl_cred_cofins numeric(21,2),
    per_cred_cis numeric(8,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_f990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_f990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_f bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    ind_ativ character varying(2),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_rec_fin numeric(21,2),
    cst character varying(2),
    vl_tot_ded_ger numeric(21,2),
    vl_tot_ded_esp numeric(21,2),
    vl_bc_pis numeric(21,2),
    aliq_pis numeric(10,2),
    vl_pis numeric(21,2),
    vl_bc_cofins numeric(21,2),
    aliq_cofins numeric(10,2),
    vl_cofins numeric(21,2),
    inf_comp character varying(90),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i199; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i199 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1)
);


--
-- Name: reg_i200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_campo character varying(2),
    cod_det character varying(5),
    vl_det numeric(21,2),
    cod_cta character varying(60),
    inf_comp character varying(90),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i299; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i299 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1)
);


--
-- Name: reg_i300; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_comp character varying(8),
    vl_comp numeric(21,2),
    cod_cta character varying(60),
    inf_comp character varying(90),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i399; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i399 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_i990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_i990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_i bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_cred character varying(3),
    ind_cred_ori character varying(1),
    vl_bc_cred numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_cred numeric(21,2),
    vl_ajus_acres numeric(21,2),
    vl_ajus_reduc numeric(21,2),
    vl_cred_dif numeric(21,2),
    vl_cred_disp numeric(21,2),
    ind_desc_cred character varying(1),
    vl_cred_desc numeric(21,2),
    sld_cred numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_m105; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m105 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_bc_cred character varying(2),
    cst_pis character varying(2),
    vl_bc_pis_tot numeric(21,2),
    vl_bc_pis_cum numeric(21,2),
    vl_bc_pis_nc numeric(21,2),
    vl_bc_pis numeric(21,2),
    quant_bc_pis_tot numeric(22,3),
    quant_bc_pis numeric(22,3),
    desc_cred character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m110; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_aj character varying(1),
    vl_aj numeric(21,2),
    cod_aj character varying(2),
    num_doc character varying(255),
    descr_aj character varying(255),
    dt_ref date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m115; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m115 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    det_valor_aj numeric(20,2),
    cst_pis character varying(2),
    det_bc_cred numeric(20,3),
    det_aliq numeric(20,4),
    dt_oper_aj date,
    desc_aj character varying(255),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_tot_cont_nc_per numeric(21,2),
    vl_tot_cred_desc numeric(21,2),
    vl_tot_cred_desc_ant numeric(21,2),
    vl_tot_cont_nc_dev numeric(21,2),
    vl_ret_nc numeric(21,2),
    vl_out_ded_nc numeric(21,2),
    vl_cont_nc_rec numeric(21,2),
    vl_tot_cont_cum_per numeric(21,2),
    vl_ret_cum numeric(21,2),
    vl_out_ded_cum numeric(21,2),
    vl_cont_cum_rec numeric(21,2),
    vl_tot_cont_rec numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m205; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m205 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_campo character varying(2),
    cod_rec character varying(6),
    vl_debito numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m210; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m210 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_cont character varying(2),
    vl_rec_brt numeric(21,2),
    vl_bc_cont numeric(21,2),
    aliq_pis numeric(12,4),
    quant_bc_pis numeric(22,3),
    aliq_pis_quant numeric(23,4),
    vl_cont_apur numeric(21,2),
    vl_ajus_acres numeric(21,2),
    vl_ajus_reduc numeric(21,2),
    vl_cont_difer numeric(21,2),
    vl_cont_difer_ant numeric(21,2),
    vl_cont_per numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_m211; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m211 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_tip_coop character varying(2),
    vl_bc_cont_ant_exc_coop numeric(21,2),
    vl_exc_coop_ger numeric(21,2),
    vl_exc_esp_coop numeric(21,2),
    vl_bc_cont numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m220; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m220 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_aj character varying(1),
    vl_aj numeric(21,2),
    cod_aj character varying(2),
    num_doc character varying(255),
    descr_aj character varying(255),
    dt_ref date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m230; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m230 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    vl_vend numeric(21,2),
    vl_nao_receb numeric(21,2),
    vl_cont_dif numeric(21,2),
    vl_cred_dif numeric(21,2),
    cod_cred character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m300; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m300 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_cont character varying(2),
    vl_cont_apur_difer numeric(21,2),
    nat_cred_desc character varying(2),
    vl_cred_desc_difer numeric(21,2),
    vl_cont_difer_ant numeric(21,2),
    per_apur character varying(6),
    dt_receb date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m350; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m350 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_tot_fol numeric(21,2),
    vl_exc_bc numeric(21,2),
    vl_tot_bc numeric(21,2),
    aliq_pis_fol numeric(8,2),
    vl_tot_cont_fol numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m400; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m400 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_pis character varying(2),
    vl_tot_rec numeric(21,2),
    cod_cta character varying(60),
    desc_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m410; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m410 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_rec character varying(3),
    vl_rec numeric(21,2),
    cod_cta character varying(60),
    desc_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m500; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m500 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_cred character varying(3),
    ind_cred_ori character varying(1),
    vl_bc_cred numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cred numeric(21,2),
    vl_ajus_acres numeric(21,2),
    vl_ajus_reduc numeric(21,2),
    vl_cred_dif numeric(21,2),
    vl_cred_disp numeric(21,2),
    ind_desc_cred character varying(1),
    vl_cred_desc numeric(21,2),
    sld_cred numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    carga_id integer,
    cnpj_pai character varying(14)
);


--
-- Name: reg_m505; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m505 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_bc_cred character varying(2),
    cst_cofins character varying(2),
    vl_bc_cofins_tot numeric(21,2),
    vl_bc_cofins_cum numeric(21,2),
    vl_bc_cofins_nc numeric(21,2),
    vl_bc_cofins numeric(21,2),
    quant_bc_cofins_tot numeric(22,3),
    quant_bc_cofins numeric(22,3),
    desc_cred character varying(60),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m510; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m510 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_aj character varying(1),
    vl_aj numeric(21,2),
    cod_aj character varying(2),
    num_doc character varying(255),
    descr_aj character varying(255),
    dt_ref date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m515; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m515 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    det_valor_aj numeric(20,2),
    cst_cofins character varying(2),
    det_bc_cred numeric(20,3),
    det_aliq numeric(20,4),
    dt_oper_aj date,
    desc_aj character varying(255),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m600; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m600 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    vl_tot_cont_nc_per numeric(21,2),
    vl_tot_cred_desc numeric(21,2),
    vl_tot_cred_desc_ant numeric(21,2),
    vl_tot_cont_nc_dev numeric(21,2),
    vl_ret_nc numeric(21,2),
    vl_out_ded_nc numeric(21,2),
    vl_cont_nc_rec numeric(21,2),
    vl_tot_cont_cum_per numeric(21,2),
    vl_ret_cum numeric(21,2),
    vl_out_ded_cum numeric(21,2),
    vl_cont_cum_rec numeric(21,2),
    vl_tot_cont_rec numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m605; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m605 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_campo character varying(2),
    cod_rec character varying(6),
    vl_debito numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m610; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m610 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_cont character varying(2),
    vl_rec_brt numeric(21,2),
    vl_bc_cont numeric(21,2),
    aliq_cofins numeric(12,4),
    quant_bc_cofins numeric(22,3),
    aliq_cofins_quant numeric(23,4),
    vl_cont_apur numeric(21,2),
    vl_ajus_acres numeric(21,2),
    vl_ajus_reduc numeric(21,2),
    vl_cont_difer numeric(21,2),
    vl_cont_difer_ant numeric(21,2),
    vl_cont_per numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m611; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m611 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_tip_coop character varying(2),
    vl_bc_cont_ant_exc_coop numeric(21,2),
    vl_exc_coop_ger numeric(21,2),
    vl_exc_esp_coop numeric(21,2),
    vl_bc_cont numeric(21,2),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m620; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m620 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_aj character varying(1),
    vl_aj numeric(21,2),
    cod_aj character varying(2),
    num_doc character varying(255),
    descr_aj character varying(255),
    dt_ref date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m630; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m630 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    vl_vend numeric(21,2),
    vl_nao_receb numeric(21,2),
    vl_cont_dif numeric(21,2),
    vl_cred_dif numeric(21,2),
    cod_cred character varying(3),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m700; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m700 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cod_cont character varying(2),
    vl_cont_apur_difer numeric(21,2),
    nat_bc_cred_desc character varying(2),
    vl_cred_desc_difer numeric(21,2),
    vl_cont_difer_ant numeric(21,2),
    per_apur character varying(6),
    dt_receb date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m800; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m800 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cst_cofins character varying(2),
    vl_tot_rec numeric(21,2),
    cod_cta character varying(60),
    desc_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m810; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m810 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    nat_rec character varying(3),
    vl_rec numeric(21,2),
    cod_cta character varying(60),
    desc_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_m990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_m990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_m bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p001; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p001 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_mov character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p010; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p010 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    cnpj character varying(14),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p100; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p100 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    dt_ini date,
    dt_fim date,
    vl_rec_tot_est numeric(21,2),
    cod_ativ_econ character varying(8),
    vl_rec_ativ_estab numeric(21,2),
    vl_exc numeric(21,2),
    vl_bc_cont numeric(21,2),
    aliq_cont numeric(12,4),
    vl_cont_apu numeric(21,2),
    cod_cta character varying(60),
    info_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p110; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p110 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_campo character varying(2),
    cod_det character varying(8),
    det_valor numeric(21,2),
    inf_compl character varying(255),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p199; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p199 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    num_proc character varying(20),
    ind_proc character varying(1),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p200; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p200 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    per_ref character varying(6),
    vl_tot_cont_apu numeric(21,2),
    vl_tot_aj_reduc numeric(21,2),
    vl_tot_aj_acres numeric(21,2),
    vl_tot_cont_dev numeric(21,2),
    cod_rec character varying(6),
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p210; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p210 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    ind_aj character varying(1),
    vl_aj numeric(21,2),
    cod_aj character varying(2),
    num_doc character varying(255),
    descr_aj character varying(255),
    dt_ref date,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_p990; Type: TABLE; Schema: carga_template; Owner: -; Tablespace:
--

CREATE TABLE reg_p990 (
    id bigint NOT NULL,
    id_pai bigint NOT NULL,
    qtd_lin_p bigint,
    acao character varying(1) DEFAULT 'I'::character varying,
    cnpj_pai character varying(14),
    carga_id integer
);


--
-- Name: reg_0000_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0000
    ADD CONSTRAINT reg_0000_pkey PRIMARY KEY (id);


--
-- Name: reg_0001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0001
    ADD CONSTRAINT reg_0001_pkey PRIMARY KEY (id);


--
-- Name: reg_0035_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0035
    ADD CONSTRAINT reg_0035_pkey PRIMARY KEY (id);


--
-- Name: reg_0100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0100
    ADD CONSTRAINT reg_0100_pkey PRIMARY KEY (id);


--
-- Name: reg_0110_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0110
    ADD CONSTRAINT reg_0110_pkey PRIMARY KEY (id);


--
-- Name: reg_0111_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0111
    ADD CONSTRAINT reg_0111_pkey PRIMARY KEY (id);


--
-- Name: reg_0120_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0120
    ADD CONSTRAINT reg_0120_pkey PRIMARY KEY (id);


--
-- Name: reg_0140_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0140
    ADD CONSTRAINT reg_0140_pkey PRIMARY KEY (id);


--
-- Name: reg_0145_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0145
    ADD CONSTRAINT reg_0145_pkey PRIMARY KEY (id);


--
-- Name: reg_0150_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0150
    ADD CONSTRAINT reg_0150_pkey PRIMARY KEY (id);


--
-- Name: reg_0190_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0190
    ADD CONSTRAINT reg_0190_pkey PRIMARY KEY (id);


--
-- Name: reg_0200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0200
    ADD CONSTRAINT reg_0200_pkey PRIMARY KEY (id);


--
-- Name: reg_0205_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0205
    ADD CONSTRAINT reg_0205_pkey PRIMARY KEY (id);


--
-- Name: reg_0206_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0206
    ADD CONSTRAINT reg_0206_pkey PRIMARY KEY (id);


--
-- Name: reg_0208_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0208
    ADD CONSTRAINT reg_0208_pkey PRIMARY KEY (id);


--
-- Name: reg_0400_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0400
    ADD CONSTRAINT reg_0400_pkey PRIMARY KEY (id);


--
-- Name: reg_0450_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0450
    ADD CONSTRAINT reg_0450_pkey PRIMARY KEY (id);


--
-- Name: reg_0500_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0500
    ADD CONSTRAINT reg_0500_pkey PRIMARY KEY (id);


--
-- Name: reg_0600_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0600
    ADD CONSTRAINT reg_0600_pkey PRIMARY KEY (id);


--
-- Name: reg_0990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_0990
    ADD CONSTRAINT reg_0990_pkey PRIMARY KEY (id);


--
-- Name: reg_1001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1001
    ADD CONSTRAINT reg_1001_pkey PRIMARY KEY (id);


--
-- Name: reg_1010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1010
    ADD CONSTRAINT reg_1010_pkey PRIMARY KEY (id);


--
-- Name: reg_1020_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1020
    ADD CONSTRAINT reg_1020_pkey PRIMARY KEY (id);


--
-- Name: reg_1100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1100
    ADD CONSTRAINT reg_1100_pkey PRIMARY KEY (id);


--
-- Name: reg_1101_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1101
    ADD CONSTRAINT reg_1101_pkey PRIMARY KEY (id);


--
-- Name: reg_1102_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1102
    ADD CONSTRAINT reg_1102_pkey PRIMARY KEY (id);


--
-- Name: reg_1200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1200
    ADD CONSTRAINT reg_1200_pkey PRIMARY KEY (id);


--
-- Name: reg_1210_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1210
    ADD CONSTRAINT reg_1210_pkey PRIMARY KEY (id);


--
-- Name: reg_1220_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1220
    ADD CONSTRAINT reg_1220_pkey PRIMARY KEY (id);


--
-- Name: reg_1300_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1300
    ADD CONSTRAINT reg_1300_pkey PRIMARY KEY (id);


--
-- Name: reg_1500_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1500
    ADD CONSTRAINT reg_1500_pkey PRIMARY KEY (id);


--
-- Name: reg_1501_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1501
    ADD CONSTRAINT reg_1501_pkey PRIMARY KEY (id);


--
-- Name: reg_1502_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1502
    ADD CONSTRAINT reg_1502_pkey PRIMARY KEY (id);


--
-- Name: reg_1610_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1610
    ADD CONSTRAINT reg_1610_pkey PRIMARY KEY (id);


--
-- Name: reg_1700_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1700
    ADD CONSTRAINT reg_1700_pkey PRIMARY KEY (id);


--
-- Name: reg_1800_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1800
    ADD CONSTRAINT reg_1800_pkey PRIMARY KEY (id);


--
-- Name: reg_1900_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1900
    ADD CONSTRAINT reg_1900_pkey PRIMARY KEY (id);


--
-- Name: reg_1990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_1990
    ADD CONSTRAINT reg_1990_pkey PRIMARY KEY (id);


--
-- Name: reg_9001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_9001
    ADD CONSTRAINT reg_9001_pkey PRIMARY KEY (id);


--
-- Name: reg_9900_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_9900
    ADD CONSTRAINT reg_9900_pkey PRIMARY KEY (id);


--
-- Name: reg_9990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_9990
    ADD CONSTRAINT reg_9990_pkey PRIMARY KEY (id);


--
-- Name: reg_9999_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_9999
    ADD CONSTRAINT reg_9999_pkey PRIMARY KEY (id);


--
-- Name: reg_a001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a001
    ADD CONSTRAINT reg_a001_pkey PRIMARY KEY (id);


--
-- Name: reg_a010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a010
    ADD CONSTRAINT reg_a010_pkey PRIMARY KEY (id);


--
-- Name: reg_a100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a100
    ADD CONSTRAINT reg_a100_pkey PRIMARY KEY (id);


--
-- Name: reg_a110_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a110
    ADD CONSTRAINT reg_a110_pkey PRIMARY KEY (id);


--
-- Name: reg_a111_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a111
    ADD CONSTRAINT reg_a111_pkey PRIMARY KEY (id);


--
-- Name: reg_a120_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a120
    ADD CONSTRAINT reg_a120_pkey PRIMARY KEY (id);


--
-- Name: reg_a170_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a170
    ADD CONSTRAINT reg_a170_pkey PRIMARY KEY (id);


--
-- Name: reg_a990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_a990
    ADD CONSTRAINT reg_a990_pkey PRIMARY KEY (id);


--
-- Name: reg_c001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c001
    ADD CONSTRAINT reg_c001_pkey PRIMARY KEY (id);


--
-- Name: reg_c010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c010
    ADD CONSTRAINT reg_c010_pkey PRIMARY KEY (id);


--
-- Name: reg_c100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c100
    ADD CONSTRAINT reg_c100_pkey PRIMARY KEY (id);


--
-- Name: reg_c110_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c110
    ADD CONSTRAINT reg_c110_pkey PRIMARY KEY (id);


--
-- Name: reg_c111_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c111
    ADD CONSTRAINT reg_c111_pkey PRIMARY KEY (id);


--
-- Name: reg_c120_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c120
    ADD CONSTRAINT reg_c120_pkey PRIMARY KEY (id);


--
-- Name: reg_c170_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c170
    ADD CONSTRAINT reg_c170_pkey PRIMARY KEY (id);


--
-- Name: reg_c180_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c180
    ADD CONSTRAINT reg_c180_pkey PRIMARY KEY (id);


--
-- Name: reg_c181_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c181
    ADD CONSTRAINT reg_c181_pkey PRIMARY KEY (id);


--
-- Name: reg_c185_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c185
    ADD CONSTRAINT reg_c185_pkey PRIMARY KEY (id);


--
-- Name: reg_c188_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c188
    ADD CONSTRAINT reg_c188_pkey PRIMARY KEY (id);


--
-- Name: reg_c190_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c190
    ADD CONSTRAINT reg_c190_pkey PRIMARY KEY (id);


--
-- Name: reg_c191_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c191
    ADD CONSTRAINT reg_c191_pkey PRIMARY KEY (id);


--
-- Name: reg_c195_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c195
    ADD CONSTRAINT reg_c195_pkey PRIMARY KEY (id);


--
-- Name: reg_c198_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c198
    ADD CONSTRAINT reg_c198_pkey PRIMARY KEY (id);


--
-- Name: reg_c199_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c199
    ADD CONSTRAINT reg_c199_pkey PRIMARY KEY (id);


--
-- Name: reg_c380_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c380
    ADD CONSTRAINT reg_c380_pkey PRIMARY KEY (id);


--
-- Name: reg_c381_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c381
    ADD CONSTRAINT reg_c381_pkey PRIMARY KEY (id);


--
-- Name: reg_c385_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c385
    ADD CONSTRAINT reg_c385_pkey PRIMARY KEY (id);


--
-- Name: reg_c395_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c395
    ADD CONSTRAINT reg_c395_pkey PRIMARY KEY (id);


--
-- Name: reg_c396_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c396
    ADD CONSTRAINT reg_c396_pkey PRIMARY KEY (id);


--
-- Name: reg_c400_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c400
    ADD CONSTRAINT reg_c400_pkey PRIMARY KEY (id);


--
-- Name: reg_c405_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c405
    ADD CONSTRAINT reg_c405_pkey PRIMARY KEY (id);


--
-- Name: reg_c481_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c481
    ADD CONSTRAINT reg_c481_pkey PRIMARY KEY (id);


--
-- Name: reg_c485_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c485
    ADD CONSTRAINT reg_c485_pkey PRIMARY KEY (id);


--
-- Name: reg_c489_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c489
    ADD CONSTRAINT reg_c489_pkey PRIMARY KEY (id);


--
-- Name: reg_c490_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c490
    ADD CONSTRAINT reg_c490_pkey PRIMARY KEY (id);


--
-- Name: reg_c491_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c491
    ADD CONSTRAINT reg_c491_pkey PRIMARY KEY (id);


--
-- Name: reg_c495_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c495
    ADD CONSTRAINT reg_c495_pkey PRIMARY KEY (id);


--
-- Name: reg_c499_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c499
    ADD CONSTRAINT reg_c499_pkey PRIMARY KEY (id);


--
-- Name: reg_c500_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c500
    ADD CONSTRAINT reg_c500_pkey PRIMARY KEY (id);


--
-- Name: reg_c501_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c501
    ADD CONSTRAINT reg_c501_pkey PRIMARY KEY (id);


--
-- Name: reg_c505_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c505
    ADD CONSTRAINT reg_c505_pkey PRIMARY KEY (id);


--
-- Name: reg_c509_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c509
    ADD CONSTRAINT reg_c509_pkey PRIMARY KEY (id);


--
-- Name: reg_c600_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c600
    ADD CONSTRAINT reg_c600_pkey PRIMARY KEY (id);


--
-- Name: reg_c601_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c601
    ADD CONSTRAINT reg_c601_pkey PRIMARY KEY (id);


--
-- Name: reg_c605_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c605
    ADD CONSTRAINT reg_c605_pkey PRIMARY KEY (id);


--
-- Name: reg_c609_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c609
    ADD CONSTRAINT reg_c609_pkey PRIMARY KEY (id);


--
-- Name: reg_c990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_c990
    ADD CONSTRAINT reg_c990_pkey PRIMARY KEY (id);


--
-- Name: reg_d001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d001
    ADD CONSTRAINT reg_d001_pkey PRIMARY KEY (id);


--
-- Name: reg_d010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d010
    ADD CONSTRAINT reg_d010_pkey PRIMARY KEY (id);


--
-- Name: reg_d100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d100
    ADD CONSTRAINT reg_d100_pkey PRIMARY KEY (id);


--
-- Name: reg_d101_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d101
    ADD CONSTRAINT reg_d101_pkey PRIMARY KEY (id);


--
-- Name: reg_d105_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d105
    ADD CONSTRAINT reg_d105_pkey PRIMARY KEY (id);


--
-- Name: reg_d111_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d111
    ADD CONSTRAINT reg_d111_pkey PRIMARY KEY (id);


--
-- Name: reg_d200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d200
    ADD CONSTRAINT reg_d200_pkey PRIMARY KEY (id);


--
-- Name: reg_d201_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d201
    ADD CONSTRAINT reg_d201_pkey PRIMARY KEY (id);


--
-- Name: reg_d205_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d205
    ADD CONSTRAINT reg_d205_pkey PRIMARY KEY (id);


--
-- Name: reg_d209_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d209
    ADD CONSTRAINT reg_d209_pkey PRIMARY KEY (id);


--
-- Name: reg_d300_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d300
    ADD CONSTRAINT reg_d300_pkey PRIMARY KEY (id);


--
-- Name: reg_d309_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d309
    ADD CONSTRAINT reg_d309_pkey PRIMARY KEY (id);


--
-- Name: reg_d350_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d350
    ADD CONSTRAINT reg_d350_pkey PRIMARY KEY (id);


--
-- Name: reg_d359_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d359
    ADD CONSTRAINT reg_d359_pkey PRIMARY KEY (id);


--
-- Name: reg_d500_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d500
    ADD CONSTRAINT reg_d500_pkey PRIMARY KEY (id);


--
-- Name: reg_d501_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d501
    ADD CONSTRAINT reg_d501_pkey PRIMARY KEY (id);


--
-- Name: reg_d505_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d505
    ADD CONSTRAINT reg_d505_pkey PRIMARY KEY (id);


--
-- Name: reg_d509_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d509
    ADD CONSTRAINT reg_d509_pkey PRIMARY KEY (id);


--
-- Name: reg_d600_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d600
    ADD CONSTRAINT reg_d600_pkey PRIMARY KEY (id);


--
-- Name: reg_d601_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d601
    ADD CONSTRAINT reg_d601_pkey PRIMARY KEY (id);


--
-- Name: reg_d605_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d605
    ADD CONSTRAINT reg_d605_pkey PRIMARY KEY (id);


--
-- Name: reg_d609_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d609
    ADD CONSTRAINT reg_d609_pkey PRIMARY KEY (id);


--
-- Name: reg_d990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_d990
    ADD CONSTRAINT reg_d990_pkey PRIMARY KEY (id);


--
-- Name: reg_f001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f001
    ADD CONSTRAINT reg_f001_pkey PRIMARY KEY (id);


--
-- Name: reg_f010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f010
    ADD CONSTRAINT reg_f010_pkey PRIMARY KEY (id);


--
-- Name: reg_f100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f100
    ADD CONSTRAINT reg_f100_pkey PRIMARY KEY (id);


--
-- Name: reg_f111_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f111
    ADD CONSTRAINT reg_f111_pkey PRIMARY KEY (id);


--
-- Name: reg_f120_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f120
    ADD CONSTRAINT reg_f120_pkey PRIMARY KEY (id);


--
-- Name: reg_f129_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f129
    ADD CONSTRAINT reg_f129_pkey PRIMARY KEY (id);


--
-- Name: reg_f130_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f130
    ADD CONSTRAINT reg_f130_pkey PRIMARY KEY (id);


--
-- Name: reg_f139_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f139
    ADD CONSTRAINT reg_f139_pkey PRIMARY KEY (id);


--
-- Name: reg_f150_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f150
    ADD CONSTRAINT reg_f150_pkey PRIMARY KEY (id);


--
-- Name: reg_f200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f200
    ADD CONSTRAINT reg_f200_pkey PRIMARY KEY (id);


--
-- Name: reg_f205_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f205
    ADD CONSTRAINT reg_f205_pkey PRIMARY KEY (id);


--
-- Name: reg_f210_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f210
    ADD CONSTRAINT reg_f210_pkey PRIMARY KEY (id);


--
-- Name: reg_f211_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f211
    ADD CONSTRAINT reg_f211_pkey PRIMARY KEY (id);


--
-- Name: reg_f500_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f500
    ADD CONSTRAINT reg_f500_pkey PRIMARY KEY (id);


--
-- Name: reg_f509_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f509
    ADD CONSTRAINT reg_f509_pkey PRIMARY KEY (id);


--
-- Name: reg_f510_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f510
    ADD CONSTRAINT reg_f510_pkey PRIMARY KEY (id);


--
-- Name: reg_f519_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f519
    ADD CONSTRAINT reg_f519_pkey PRIMARY KEY (id);


--
-- Name: reg_f525_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f525
    ADD CONSTRAINT reg_f525_pkey PRIMARY KEY (id);


--
-- Name: reg_f550_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f550
    ADD CONSTRAINT reg_f550_pkey PRIMARY KEY (id);


--
-- Name: reg_f559_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f559
    ADD CONSTRAINT reg_f559_pkey PRIMARY KEY (id);


--
-- Name: reg_f560_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f560
    ADD CONSTRAINT reg_f560_pkey PRIMARY KEY (id);


--
-- Name: reg_f569_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f569
    ADD CONSTRAINT reg_f569_pkey PRIMARY KEY (id);


--
-- Name: reg_f600_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f600
    ADD CONSTRAINT reg_f600_pkey PRIMARY KEY (id);


--
-- Name: reg_f700_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f700
    ADD CONSTRAINT reg_f700_pkey PRIMARY KEY (id);


--
-- Name: reg_f800_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f800
    ADD CONSTRAINT reg_f800_pkey PRIMARY KEY (id);


--
-- Name: reg_f990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_f990
    ADD CONSTRAINT reg_f990_pkey PRIMARY KEY (id);


--
-- Name: reg_i001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i001
    ADD CONSTRAINT reg_i001_pkey PRIMARY KEY (id);


--
-- Name: reg_i010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i010
    ADD CONSTRAINT reg_i010_pkey PRIMARY KEY (id);


--
-- Name: reg_i100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i100
    ADD CONSTRAINT reg_i100_pkey PRIMARY KEY (id);


--
-- Name: reg_i199_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i199
    ADD CONSTRAINT reg_i199_pkey PRIMARY KEY (id);


--
-- Name: reg_i200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i200
    ADD CONSTRAINT reg_i200_pkey PRIMARY KEY (id);


--
-- Name: reg_i299_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i299
    ADD CONSTRAINT reg_i299_pkey PRIMARY KEY (id);


--
-- Name: reg_i300_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i300
    ADD CONSTRAINT reg_i300_pkey PRIMARY KEY (id);


--
-- Name: reg_i399_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i399
    ADD CONSTRAINT reg_i399_pkey PRIMARY KEY (id);


--
-- Name: reg_i990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_i990
    ADD CONSTRAINT reg_i990_pkey PRIMARY KEY (id);


--
-- Name: reg_m001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m001
    ADD CONSTRAINT reg_m001_pkey PRIMARY KEY (id);


--
-- Name: reg_m100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m100
    ADD CONSTRAINT reg_m100_pkey PRIMARY KEY (id);


--
-- Name: reg_m105_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m105
    ADD CONSTRAINT reg_m105_pkey PRIMARY KEY (id);


--
-- Name: reg_m110_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m110
    ADD CONSTRAINT reg_m110_pkey PRIMARY KEY (id);


--
-- Name: reg_m200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m200
    ADD CONSTRAINT reg_m200_pkey PRIMARY KEY (id);


--
-- Name: reg_m205_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m205
    ADD CONSTRAINT reg_m205_pkey PRIMARY KEY (id);


--
-- Name: reg_m210_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m210
    ADD CONSTRAINT reg_m210_pkey PRIMARY KEY (id);


--
-- Name: reg_m211_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m211
    ADD CONSTRAINT reg_m211_pkey PRIMARY KEY (id);


--
-- Name: reg_m220_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m220
    ADD CONSTRAINT reg_m220_pkey PRIMARY KEY (id);


--
-- Name: reg_m230_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m230
    ADD CONSTRAINT reg_m230_pkey PRIMARY KEY (id);


--
-- Name: reg_m300_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m300
    ADD CONSTRAINT reg_m300_pkey PRIMARY KEY (id);


--
-- Name: reg_m350_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m350
    ADD CONSTRAINT reg_m350_pkey PRIMARY KEY (id);


--
-- Name: reg_m400_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m400
    ADD CONSTRAINT reg_m400_pkey PRIMARY KEY (id);


--
-- Name: reg_m410_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m410
    ADD CONSTRAINT reg_m410_pkey PRIMARY KEY (id);


--
-- Name: reg_m500_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m500
    ADD CONSTRAINT reg_m500_pkey PRIMARY KEY (id);


--
-- Name: reg_m505_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m505
    ADD CONSTRAINT reg_m505_pkey PRIMARY KEY (id);


--
-- Name: reg_m510_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m510
    ADD CONSTRAINT reg_m510_pkey PRIMARY KEY (id);


--
-- Name: reg_m600_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m600
    ADD CONSTRAINT reg_m600_pkey PRIMARY KEY (id);


--
-- Name: reg_m605_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m605
    ADD CONSTRAINT reg_m605_pkey PRIMARY KEY (id);


--
-- Name: reg_m610_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m610
    ADD CONSTRAINT reg_m610_pkey PRIMARY KEY (id);


--
-- Name: reg_m611_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m611
    ADD CONSTRAINT reg_m611_pkey PRIMARY KEY (id);


--
-- Name: reg_m620_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m620
    ADD CONSTRAINT reg_m620_pkey PRIMARY KEY (id);


--
-- Name: reg_m630_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m630
    ADD CONSTRAINT reg_m630_pkey PRIMARY KEY (id);


--
-- Name: reg_m700_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m700
    ADD CONSTRAINT reg_m700_pkey PRIMARY KEY (id);


--
-- Name: reg_m800_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m800
    ADD CONSTRAINT reg_m800_pkey PRIMARY KEY (id);


--
-- Name: reg_m810_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m810
    ADD CONSTRAINT reg_m810_pkey PRIMARY KEY (id);


--
-- Name: reg_m990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_m990
    ADD CONSTRAINT reg_m990_pkey PRIMARY KEY (id);


--
-- Name: reg_p001_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p001
    ADD CONSTRAINT reg_p001_pkey PRIMARY KEY (id);


--
-- Name: reg_p010_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p010
    ADD CONSTRAINT reg_p010_pkey PRIMARY KEY (id);


--
-- Name: reg_p100_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p100
    ADD CONSTRAINT reg_p100_pkey PRIMARY KEY (id);


--
-- Name: reg_p110_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p110
    ADD CONSTRAINT reg_p110_pkey PRIMARY KEY (id);


--
-- Name: reg_p199_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p199
    ADD CONSTRAINT reg_p199_pkey PRIMARY KEY (id);


--
-- Name: reg_p200_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p200
    ADD CONSTRAINT reg_p200_pkey PRIMARY KEY (id);


--
-- Name: reg_p210_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p210
    ADD CONSTRAINT reg_p210_pkey PRIMARY KEY (id);


--
-- Name: reg_p990_pkey; Type: CONSTRAINT; Schema: carga_template; Owner: -; Tablespace:
--

ALTER TABLE ONLY reg_p990
    ADD CONSTRAINT reg_p990_pkey PRIMARY KEY (id);


--
-- Name: reg_0000_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0000_idx_id_pai ON reg_0000 USING btree (id_pai);


--
-- Name: reg_0001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0001_idx_id_pai ON reg_0001 USING btree (id_pai);


--
-- Name: reg_0035_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0035_idx_chave_duplicidade ON reg_0035 USING btree (cod_scp);


--
-- Name: reg_0035_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0035_idx_id_pai ON reg_0035 USING btree (id_pai);


--
-- Name: reg_0100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0100_idx_id_pai ON reg_0100 USING btree (id_pai);


--
-- Name: reg_0110_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0110_idx_id_pai ON reg_0110 USING btree (id_pai);


--
-- Name: reg_0111_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0111_idx_id_pai ON reg_0111 USING btree (id_pai);


--
-- Name: reg_0120_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0120_idx_chave_duplicidade ON reg_0120 USING btree (mes_dispensa);


--
-- Name: reg_0120_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0120_idx_id_pai ON reg_0120 USING btree (id_pai);


--
-- Name: reg_0140_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0140_idx_chave_duplicidade ON reg_0140 USING btree (cnpj);


--
-- Name: reg_0140_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0140_idx_id_pai ON reg_0140 USING btree (id_pai);


--
-- Name: reg_0145_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0145_idx_id_pai ON reg_0145 USING btree (id_pai);


--
-- Name: reg_0150_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0150_idx_chave_duplicidade ON reg_0150 USING btree (cod_part);


--
-- Name: reg_0150_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0150_idx_id_pai ON reg_0150 USING btree (id_pai);


--
-- Name: reg_0190_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0190_idx_chave_duplicidade ON reg_0190 USING btree (unid);


--
-- Name: reg_0190_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0190_idx_id_pai ON reg_0190 USING btree (id_pai);


--
-- Name: reg_0200_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0200_idx_chave_duplicidade ON reg_0200 USING btree (cod_item);


--
-- Name: reg_0200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0200_idx_id_pai ON reg_0200 USING btree (id_pai);


--
-- Name: reg_0205_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0205_idx_chave_duplicidade ON reg_0205 USING btree (dt_ini, dt_fim);


--
-- Name: reg_0205_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0205_idx_id_pai ON reg_0205 USING btree (id_pai);


--
-- Name: reg_0206_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0206_idx_id_pai ON reg_0206 USING btree (id_pai);


--
-- Name: reg_0208_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0208_idx_id_pai ON reg_0208 USING btree (id_pai);


--
-- Name: reg_0400_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0400_idx_chave_duplicidade ON reg_0400 USING btree (cod_nat);


--
-- Name: reg_0400_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0400_idx_id_pai ON reg_0400 USING btree (id_pai);


--
-- Name: reg_0450_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0450_idx_chave_duplicidade ON reg_0450 USING btree (cod_inf);


--
-- Name: reg_0450_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0450_idx_id_pai ON reg_0450 USING btree (id_pai);


--
-- Name: reg_0500_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0500_idx_chave_duplicidade ON reg_0500 USING btree (cod_cta, dt_alt, cod_cta_ref, cnpj_est);


--
-- Name: reg_0500_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0500_idx_id_pai ON reg_0500 USING btree (id_pai);


--
-- Name: reg_0600_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0600_idx_chave_duplicidade ON reg_0600 USING btree (cod_ccus, dt_alt);


--
-- Name: reg_0600_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0600_idx_id_pai ON reg_0600 USING btree (id_pai);


--
-- Name: reg_0990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_0990_idx_id_pai ON reg_0990 USING btree (id_pai);


--
-- Name: reg_1001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1001_idx_id_pai ON reg_1001 USING btree (id_pai);


--
-- Name: reg_1010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1010_idx_chave_duplicidade ON reg_1010 USING btree (num_proc, id_sec_jud, id_vara);


--
-- Name: reg_1010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1010_idx_id_pai ON reg_1010 USING btree (id_pai);


--
-- Name: reg_1020_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1020_idx_chave_duplicidade ON reg_1020 USING btree (num_proc);


--
-- Name: reg_1020_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1020_idx_id_pai ON reg_1020 USING btree (id_pai);


--
-- Name: reg_1100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1100_idx_chave_duplicidade ON reg_1100 USING btree (per_apu_cred, orig_cred, cnpj_suc, cod_cred);


--
-- Name: reg_1100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1100_idx_id_pai ON reg_1100 USING btree (id_pai);


--
-- Name: reg_1101_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1101_idx_id_pai ON reg_1101 USING btree (id_pai);


--
-- Name: reg_1200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1200_idx_id_pai ON reg_1200 USING btree (id_pai);


--
-- Name: reg_1210_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1210_idx_id_pai ON reg_1210 USING btree (id_pai);


--
-- Name: reg_1220_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1220_idx_id_pai ON reg_1220 USING btree (id_pai);


--
-- Name: reg_1300_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1300_idx_chave_duplicidade ON reg_1300 USING btree (ind_nat_ret, pr_rec_ret);


--
-- Name: reg_1300_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1300_idx_id_pai ON reg_1300 USING btree (id_pai);


--
-- Name: reg_1500_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1500_idx_chave_duplicidade ON reg_1500 USING btree (per_apu_cred, orig_cred, cnpj_suc, cod_cred);


--
-- Name: reg_1500_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1500_idx_id_pai ON reg_1500 USING btree (id_pai);


--
-- Name: reg_1501_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1501_idx_id_pai ON reg_1501 USING btree (id_pai);


--
-- Name: reg_1610_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1610_idx_id_pai ON reg_1610 USING btree (id_pai);


--
-- Name: reg_1700_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1700_idx_chave_duplicidade ON reg_1700 USING btree (ind_nat_ret, pr_rec_ret);


--
-- Name: reg_1700_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1700_idx_id_pai ON reg_1700 USING btree (id_pai);


--
-- Name: reg_1800_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1800_idx_chave_duplicidade ON reg_1800 USING btree (inc_imob, aliq_ret, cod_rec, dt_rec_uni);


--
-- Name: reg_1800_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1800_idx_id_pai ON reg_1800 USING btree (id_pai);


--
-- Name: reg_1900_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1900_idx_chave_duplicidade ON reg_1900 USING btree (cnpj, cod_mod, ser, sub_ser, cod_sit, cst_pis, cst_cofins, cfop, info_compl, cod_cta);


--
-- Name: reg_1900_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1900_idx_id_pai ON reg_1900 USING btree (id_pai);


--
-- Name: reg_1990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_1990_idx_id_pai ON reg_1990 USING btree (id_pai);


--
-- Name: reg_9001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_9001_idx_id_pai ON reg_9001 USING btree (id_pai);


--
-- Name: reg_9900_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_9900_idx_chave_duplicidade ON reg_9900 USING btree (reg_blc);


--
-- Name: reg_9900_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_9900_idx_id_pai ON reg_9900 USING btree (id_pai);


--
-- Name: reg_9990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_9990_idx_id_pai ON reg_9990 USING btree (id_pai);


--
-- Name: reg_9999_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_9999_idx_id_pai ON reg_9999 USING btree (id_pai);


--
-- Name: reg_a001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a001_idx_id_pai ON reg_a001 USING btree (id_pai);


--
-- Name: reg_a010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a010_idx_chave_duplicidade ON reg_a010 USING btree (cnpj);


--
-- Name: reg_a010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a010_idx_id_pai ON reg_a010 USING btree (id_pai);


--
-- Name: reg_a100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a100_idx_chave_duplicidade ON reg_a100 USING btree (ind_emit, num_doc, ser, sub, cod_part);


--
-- Name: reg_a100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a100_idx_id_pai ON reg_a100 USING btree (id_pai);


--
-- Name: reg_a110_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a110_idx_chave_duplicidade ON reg_a110 USING btree (cod_inf);


--
-- Name: reg_a110_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a110_idx_id_pai ON reg_a110 USING btree (id_pai);


--
-- Name: reg_a111_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a111_idx_chave_duplicidade ON reg_a111 USING btree (num_proc);


--
-- Name: reg_a111_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a111_idx_id_pai ON reg_a111 USING btree (id_pai);


--
-- Name: reg_a120_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a120_idx_id_pai ON reg_a120 USING btree (id_pai);


--
-- Name: reg_a170_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a170_idx_chave_duplicidade ON reg_a170 USING btree (num_item);


--
-- Name: reg_a170_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a170_idx_id_pai ON reg_a170 USING btree (id_pai);


--
-- Name: reg_a990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_a990_idx_id_pai ON reg_a990 USING btree (id_pai);


--
-- Name: reg_c001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c001_idx_id_pai ON reg_c001 USING btree (id_pai);


--
-- Name: reg_c010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c010_idx_chave_duplicidade ON reg_c010 USING btree (cnpj);


--
-- Name: reg_c010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c010_idx_id_pai ON reg_c010 USING btree (id_pai);


--
-- Name: reg_c100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c100_idx_chave_duplicidade ON reg_c100 USING btree (ind_emit, num_doc, cod_mod, ser, cod_part, ind_oper, cod_sit);


--
-- Name: reg_c100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c100_idx_id_pai ON reg_c100 USING btree (id_pai);


--
-- Name: reg_c110_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c110_idx_chave_duplicidade ON reg_c110 USING btree (cod_inf);


--
-- Name: reg_c110_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c110_idx_id_pai ON reg_c110 USING btree (id_pai);


--
-- Name: reg_c111_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c111_idx_chave_duplicidade ON reg_c111 USING btree (num_proc);


--
-- Name: reg_c111_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c111_idx_id_pai ON reg_c111 USING btree (id_pai);


--
-- Name: reg_c120_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c120_idx_chave_duplicidade ON reg_c120 USING btree (num_doc_imp, num_acdraw);


--
-- Name: reg_c120_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c120_idx_id_pai ON reg_c120 USING btree (id_pai);


--
-- Name: reg_c170_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c170_idx_chave_duplicidade ON reg_c170 USING btree (num_item);


--
-- Name: reg_c170_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c170_idx_id_pai ON reg_c170 USING btree (id_pai);


--
-- Name: reg_c180_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c180_idx_chave_duplicidade ON reg_c180 USING btree (cod_mod, cod_item, cod_ncm, ex_ipi);


--
-- Name: reg_c180_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c180_idx_id_pai ON reg_c180 USING btree (id_pai);


--
-- Name: reg_c181_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c181_idx_chave_duplicidade ON reg_c181 USING btree (cst_pis, cfop, aliq_pis, aliq_pis_quant, cod_cta);


--
-- Name: reg_c181_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c181_idx_id_pai ON reg_c181 USING btree (id_pai);


--
-- Name: reg_c185_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c185_idx_chave_duplicidade ON reg_c185 USING btree (cst_cofins, cfop, aliq_cofins, aliq_cofins_quant, cod_cta);


--
-- Name: reg_c185_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c185_idx_id_pai ON reg_c185 USING btree (id_pai);


--
-- Name: reg_c188_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c188_idx_chave_duplicidade ON reg_c188 USING btree (num_proc);


--
-- Name: reg_c188_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c188_idx_id_pai ON reg_c188 USING btree (id_pai);


--
-- Name: reg_c190_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c190_idx_chave_duplicidade ON reg_c190 USING btree (cod_mod, cod_item, cod_ncm, ex_ipi);


--
-- Name: reg_c190_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c190_idx_id_pai ON reg_c190 USING btree (id_pai);


--
-- Name: reg_c191_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c191_idx_chave_duplicidade ON reg_c191 USING btree (cnpj_cpf_part, cst_pis, cfop, aliq_pis, aliq_pis_quant, cod_cta);


--
-- Name: reg_c191_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c191_idx_id_pai ON reg_c191 USING btree (id_pai);


--
-- Name: reg_c195_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c195_idx_chave_duplicidade ON reg_c195 USING btree (cnpj_cpf_part, cst_cofins, cfop, aliq_cofins, aliq_cofins_quant, cod_cta);


--
-- Name: reg_c195_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c195_idx_id_pai ON reg_c195 USING btree (id_pai);


--
-- Name: reg_c198_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c198_idx_chave_duplicidade ON reg_c198 USING btree (num_proc);


--
-- Name: reg_c198_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c198_idx_id_pai ON reg_c198 USING btree (id_pai);


--
-- Name: reg_c199_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c199_idx_chave_duplicidade ON reg_c199 USING btree (num_doc_imp, num_acdraw);


--
-- Name: reg_c199_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c199_idx_id_pai ON reg_c199 USING btree (id_pai);


--
-- Name: reg_c380_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c380_idx_chave_duplicidade ON reg_c380 USING btree (cod_mod, dt_doc_ini, dt_doc_fin);


--
-- Name: reg_c380_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c380_idx_id_pai ON reg_c380 USING btree (id_pai);


--
-- Name: reg_c381_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c381_idx_chave_duplicidade ON reg_c381 USING btree (cst_pis, cod_item, aliq_pis, aliq_pis_quant, cod_cta);


--
-- Name: reg_c381_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c381_idx_id_pai ON reg_c381 USING btree (id_pai);


--
-- Name: reg_c385_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c385_idx_chave_duplicidade ON reg_c385 USING btree (cst_cofins, cod_item, aliq_cofins, aliq_cofins_quant, cod_cta);


--
-- Name: reg_c385_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c385_idx_id_pai ON reg_c385 USING btree (id_pai);


--
-- Name: reg_c395_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c395_idx_chave_duplicidade ON reg_c395 USING btree (cod_mod, cod_part, ser, sub_ser, num_doc);


--
-- Name: reg_c395_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c395_idx_id_pai ON reg_c395 USING btree (id_pai);


--
-- Name: reg_c396_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c396_idx_chave_duplicidade ON reg_c396 USING btree (cod_item, nat_bc_cred, cst_pis, aliq_pis, cst_cofins, aliq_cofins, cod_cta);


--
-- Name: reg_c396_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c396_idx_id_pai ON reg_c396 USING btree (id_pai);


--
-- Name: reg_c400_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c400_idx_chave_duplicidade ON reg_c400 USING btree (cod_mod, ecf_mod, ecf_fab);


--
-- Name: reg_c400_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c400_idx_id_pai ON reg_c400 USING btree (id_pai);


--
-- Name: reg_c405_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c405_idx_chave_duplicidade ON reg_c405 USING btree (dt_doc, cro, crz);


--
-- Name: reg_c405_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c405_idx_id_pai ON reg_c405 USING btree (id_pai);


--
-- Name: reg_c481_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c481_idx_chave_duplicidade ON reg_c481 USING btree (cst_pis, aliq_pis, aliq_pis_quant, cod_item, cod_cta);


--
-- Name: reg_c481_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c481_idx_id_pai ON reg_c481 USING btree (id_pai);


--
-- Name: reg_c485_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c485_idx_chave_duplicidade ON reg_c485 USING btree (cst_cofins, aliq_cofins, aliq_cofins_quant, cod_item, cod_cta);


--
-- Name: reg_c485_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c485_idx_id_pai ON reg_c485 USING btree (id_pai);


--
-- Name: reg_c489_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c489_idx_chave_duplicidade ON reg_c489 USING btree (num_proc);


--
-- Name: reg_c489_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c489_idx_id_pai ON reg_c489 USING btree (id_pai);


--
-- Name: reg_c490_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c490_idx_chave_duplicidade ON reg_c490 USING btree (dt_doc_ini, dt_doc_fin, cod_mod);


--
-- Name: reg_c490_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c490_idx_id_pai ON reg_c490 USING btree (id_pai);


--
-- Name: reg_c491_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c491_idx_chave_duplicidade ON reg_c491 USING btree (cod_item, cst_pis, cfop, aliq_pis, aliq_pis_quant, cod_cta);


--
-- Name: reg_c491_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c491_idx_id_pai ON reg_c491 USING btree (id_pai);


--
-- Name: reg_c495_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c495_idx_chave_duplicidade ON reg_c495 USING btree (cod_item, cst_cofins, cfop, aliq_cofins, aliq_cofins_quant, cod_cta);


--
-- Name: reg_c495_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c495_idx_id_pai ON reg_c495 USING btree (id_pai);


--
-- Name: reg_c499_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c499_idx_chave_duplicidade ON reg_c499 USING btree (num_proc);


--
-- Name: reg_c499_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c499_idx_id_pai ON reg_c499 USING btree (id_pai);


--
-- Name: reg_c500_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c500_idx_chave_duplicidade ON reg_c500 USING btree (cod_part, cod_mod, cod_sit, ser, sub, num_doc);


--
-- Name: reg_c500_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c500_idx_id_pai ON reg_c500 USING btree (id_pai);


--
-- Name: reg_c501_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c501_idx_chave_duplicidade ON reg_c501 USING btree (cst_pis, nat_bc_cred, aliq_pis, cod_cta);


--
-- Name: reg_c501_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c501_idx_id_pai ON reg_c501 USING btree (id_pai);


--
-- Name: reg_c505_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c505_idx_chave_duplicidade ON reg_c505 USING btree (cst_cofins, nat_bc_cred, aliq_cofins, cod_cta);


--
-- Name: reg_c505_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c505_idx_id_pai ON reg_c505 USING btree (id_pai);


--
-- Name: reg_c509_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c509_idx_chave_duplicidade ON reg_c509 USING btree (num_proc);


--
-- Name: reg_c509_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c509_idx_id_pai ON reg_c509 USING btree (id_pai);


--
-- Name: reg_c600_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c600_idx_chave_duplicidade ON reg_c600 USING btree (cod_mod, cod_mun, ser, sub, cod_cons, dt_doc);


--
-- Name: reg_c600_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c600_idx_id_pai ON reg_c600 USING btree (id_pai);


--
-- Name: reg_c601_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c601_idx_chave_duplicidade ON reg_c601 USING btree (cst_pis, aliq_pis, cod_cta);


--
-- Name: reg_c601_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c601_idx_id_pai ON reg_c601 USING btree (id_pai);


--
-- Name: reg_c605_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c605_idx_chave_duplicidade ON reg_c605 USING btree (cst_cofins, aliq_cofins, cod_cta);


--
-- Name: reg_c605_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c605_idx_id_pai ON reg_c605 USING btree (id_pai);


--
-- Name: reg_c609_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c609_idx_chave_duplicidade ON reg_c609 USING btree (num_proc);


--
-- Name: reg_c609_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c609_idx_id_pai ON reg_c609 USING btree (id_pai);


--
-- Name: reg_c990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_c990_idx_id_pai ON reg_c990 USING btree (id_pai);


--
-- Name: reg_d001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d001_idx_id_pai ON reg_d001 USING btree (id_pai);


--
-- Name: reg_d010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d010_idx_chave_duplicidade ON reg_d010 USING btree (cnpj);


--
-- Name: reg_d010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d010_idx_id_pai ON reg_d010 USING btree (id_pai);


--
-- Name: reg_d100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d100_idx_chave_duplicidade ON reg_d100 USING btree (ind_emit, num_doc, cod_mod, ser, sub, cod_part, cod_sit);


--
-- Name: reg_d100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d100_idx_id_pai ON reg_d100 USING btree (id_pai);


--
-- Name: reg_d101_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d101_idx_chave_duplicidade ON reg_d101 USING btree (ind_nat_frt, cst_pis, nat_bc_cred, aliq_pis, cod_cta);


--
-- Name: reg_d101_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d101_idx_id_pai ON reg_d101 USING btree (id_pai);


--
-- Name: reg_d105_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d105_idx_chave_duplicidade ON reg_d105 USING btree (ind_nat_frt, cst_cofins, nat_bc_cred, aliq_cofins, cod_cta);


--
-- Name: reg_d105_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d105_idx_id_pai ON reg_d105 USING btree (id_pai);


--
-- Name: reg_d111_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d111_idx_chave_duplicidade ON reg_d111 USING btree (num_proc);


--
-- Name: reg_d111_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d111_idx_id_pai ON reg_d111 USING btree (id_pai);


--
-- Name: reg_d200_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d200_idx_chave_duplicidade ON reg_d200 USING btree (cod_mod, cod_sit, ser, sub, cfop, dt_ref);


--
-- Name: reg_d200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d200_idx_id_pai ON reg_d200 USING btree (id_pai);


--
-- Name: reg_d201_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d201_idx_chave_duplicidade ON reg_d201 USING btree (cst_pis, aliq_pis, cod_cta);


--
-- Name: reg_d201_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d201_idx_id_pai ON reg_d201 USING btree (id_pai);


--
-- Name: reg_d205_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d205_idx_chave_duplicidade ON reg_d205 USING btree (cst_cofins, aliq_cofins, cod_cta);


--
-- Name: reg_d205_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d205_idx_id_pai ON reg_d205 USING btree (id_pai);


--
-- Name: reg_d209_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d209_idx_chave_duplicidade ON reg_d209 USING btree (num_proc);


--
-- Name: reg_d209_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d209_idx_id_pai ON reg_d209 USING btree (id_pai);


--
-- Name: reg_d300_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d300_idx_chave_duplicidade ON reg_d300 USING btree (cod_mod, ser, sub, num_doc_ini, num_doc_fin, cfop, dt_ref, cst_pis, aliq_pis, cst_cofins, aliq_cofins, cod_cta);


--
-- Name: reg_d300_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d300_idx_id_pai ON reg_d300 USING btree (id_pai);


--
-- Name: reg_d309_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d309_idx_chave_duplicidade ON reg_d309 USING btree (num_proc);


--
-- Name: reg_d309_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d309_idx_id_pai ON reg_d309 USING btree (id_pai);


--
-- Name: reg_d350_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d350_idx_chave_duplicidade ON reg_d350 USING btree (cod_mod, ecf_mod, ecf_fab, dt_doc, cro, crz, cst_pis, aliq_pis, aliq_pis_quant, cst_cofins, aliq_cofins, aliq_cofins_quant, cod_cta);


--
-- Name: reg_d350_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d350_idx_id_pai ON reg_d350 USING btree (id_pai);


--
-- Name: reg_d359_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d359_idx_chave_duplicidade ON reg_d359 USING btree (num_proc);


--
-- Name: reg_d359_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d359_idx_id_pai ON reg_d359 USING btree (id_pai);


--
-- Name: reg_d500_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d500_idx_chave_duplicidade ON reg_d500 USING btree (ind_emit, num_doc, cod_mod, ser, sub, cod_part, cod_sit);


--
-- Name: reg_d500_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d500_idx_id_pai ON reg_d500 USING btree (id_pai);


--
-- Name: reg_d501_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d501_idx_chave_duplicidade ON reg_d501 USING btree (cst_pis, nat_bc_cred, aliq_pis, cod_cta);


--
-- Name: reg_d501_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d501_idx_id_pai ON reg_d501 USING btree (id_pai);


--
-- Name: reg_d505_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d505_idx_chave_duplicidade ON reg_d505 USING btree (cst_cofins, nat_bc_cred, aliq_cofins, cod_cta);


--
-- Name: reg_d505_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d505_idx_id_pai ON reg_d505 USING btree (id_pai);


--
-- Name: reg_d509_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d509_idx_chave_duplicidade ON reg_d509 USING btree (num_proc);


--
-- Name: reg_d509_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d509_idx_id_pai ON reg_d509 USING btree (id_pai);


--
-- Name: reg_d600_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d600_idx_chave_duplicidade ON reg_d600 USING btree (cod_mod, cod_mun, ser, sub, ind_rec, dt_doc_ini, dt_doc_fin);


--
-- Name: reg_d600_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d600_idx_id_pai ON reg_d600 USING btree (id_pai);


--
-- Name: reg_d601_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d601_idx_chave_duplicidade ON reg_d601 USING btree (cod_class, cst_pis, aliq_pis, cod_cta);


--
-- Name: reg_d601_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d601_idx_id_pai ON reg_d601 USING btree (id_pai);


--
-- Name: reg_d605_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d605_idx_chave_duplicidade ON reg_d605 USING btree (cod_class, cst_cofins, aliq_cofins, cod_cta);


--
-- Name: reg_d605_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d605_idx_id_pai ON reg_d605 USING btree (id_pai);


--
-- Name: reg_d609_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d609_idx_chave_duplicidade ON reg_d609 USING btree (num_proc);


--
-- Name: reg_d609_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d609_idx_id_pai ON reg_d609 USING btree (id_pai);


--
-- Name: reg_d990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_d990_idx_id_pai ON reg_d990 USING btree (id_pai);


--
-- Name: reg_f001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f001_idx_id_pai ON reg_f001 USING btree (id_pai);


--
-- Name: reg_f010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f010_idx_chave_duplicidade ON reg_f010 USING btree (cnpj);


--
-- Name: reg_f010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f010_idx_id_pai ON reg_f010 USING btree (id_pai);


--
-- Name: reg_f100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f100_idx_id_pai ON reg_f100 USING btree (id_pai);


--
-- Name: reg_f111_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f111_idx_chave_duplicidade ON reg_f111 USING btree (num_proc);


--
-- Name: reg_f111_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f111_idx_id_pai ON reg_f111 USING btree (id_pai);


--
-- Name: reg_f120_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f120_idx_id_pai ON reg_f120 USING btree (id_pai);


--
-- Name: reg_f129_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f129_idx_chave_duplicidade ON reg_f129 USING btree (num_proc);


--
-- Name: reg_f129_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f129_idx_id_pai ON reg_f129 USING btree (id_pai);


--
-- Name: reg_f130_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f130_idx_id_pai ON reg_f130 USING btree (id_pai);


--
-- Name: reg_f139_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f139_idx_chave_duplicidade ON reg_f139 USING btree (num_proc);


--
-- Name: reg_f139_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f139_idx_id_pai ON reg_f139 USING btree (id_pai);


--
-- Name: reg_f150_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f150_idx_chave_duplicidade ON reg_f150 USING btree (nat_bc_cred, cst_pis, aliq_pis, cst_cofins, aliq_cofins, desc_est, cod_cta);


--
-- Name: reg_f150_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f150_idx_id_pai ON reg_f150 USING btree (id_pai);


--
-- Name: reg_f200_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f200_idx_chave_duplicidade ON reg_f200 USING btree (ind_oper, unid_imob, ident_emp, desc_unid_imob, cpf_cnpj_adqu, dt_oper, cst_pis, cst_cofins, aliq_pis, aliq_cofins);


--
-- Name: reg_f200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f200_idx_id_pai ON reg_f200 USING btree (id_pai);


--
-- Name: reg_f205_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f205_idx_id_pai ON reg_f205 USING btree (id_pai);


--
-- Name: reg_f210_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f210_idx_chave_duplicidade ON reg_f210 USING btree (cst_pis, aliq_pis, cst_cofins, aliq_cofins);


--
-- Name: reg_f210_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f210_idx_id_pai ON reg_f210 USING btree (id_pai);


--
-- Name: reg_f211_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f211_idx_chave_duplicidade ON reg_f211 USING btree (num_proc);


--
-- Name: reg_f211_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f211_idx_id_pai ON reg_f211 USING btree (id_pai);


--
-- Name: reg_f500_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f500_idx_chave_duplicidade ON reg_f500 USING btree (cst_pis, aliq_pis, cst_cofins, aliq_cofins, cod_mod, cfop, cod_cta, info_compl);


--
-- Name: reg_f500_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f500_idx_id_pai ON reg_f500 USING btree (id_pai);


--
-- Name: reg_f509_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f509_idx_chave_duplicidade ON reg_f509 USING btree (num_proc);


--
-- Name: reg_f509_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f509_idx_id_pai ON reg_f509 USING btree (id_pai);


--
-- Name: reg_f510_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f510_idx_chave_duplicidade ON reg_f510 USING btree (cst_pis, aliq_pis_quant, cst_cofins, aliq_cofins_quant, cod_mod, cfop, cod_cta, info_compl);


--
-- Name: reg_f510_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f510_idx_id_pai ON reg_f510 USING btree (id_pai);


--
-- Name: reg_f519_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f519_idx_chave_duplicidade ON reg_f519 USING btree (num_proc);


--
-- Name: reg_f519_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f519_idx_id_pai ON reg_f519 USING btree (id_pai);


--
-- Name: reg_f525_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f525_idx_chave_duplicidade ON reg_f525 USING btree (ind_rec, cnpj_cpf, num_doc, cod_item, cst_pis, cst_cofins, info_compl, cod_cta);


--
-- Name: reg_f525_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f525_idx_id_pai ON reg_f525 USING btree (id_pai);


--
-- Name: reg_f550_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f550_idx_chave_duplicidade ON reg_f550 USING btree (cst_pis, aliq_pis, cst_cofins, aliq_cofins, cod_mod, cfop, cod_cta, info_compl);


--
-- Name: reg_f550_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f550_idx_id_pai ON reg_f550 USING btree (id_pai);


--
-- Name: reg_f559_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f559_idx_chave_duplicidade ON reg_f559 USING btree (num_proc);


--
-- Name: reg_f559_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f559_idx_id_pai ON reg_f559 USING btree (id_pai);


--
-- Name: reg_f560_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f560_idx_chave_duplicidade ON reg_f560 USING btree (cst_pis, aliq_pis_quant, cst_cofins, aliq_cofins_quant, cod_mod, cfop, cod_cta, info_compl);


--
-- Name: reg_f560_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f560_idx_id_pai ON reg_f560 USING btree (id_pai);


--
-- Name: reg_f569_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f569_idx_chave_duplicidade ON reg_f569 USING btree (num_proc);


--
-- Name: reg_f569_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f569_idx_id_pai ON reg_f569 USING btree (id_pai);


--
-- Name: reg_f600_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f600_idx_chave_duplicidade ON reg_f600 USING btree (ind_nat_ret, dt_ret, cod_rec, ind_nat_rec, cnpj);


--
-- Name: reg_f600_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f600_idx_id_pai ON reg_f600 USING btree (id_pai);


--
-- Name: reg_f700_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f700_idx_chave_duplicidade ON reg_f700 USING btree (ind_ori_ded, ind_nat_ded, cnpj);


--
-- Name: reg_f700_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f700_idx_id_pai ON reg_f700 USING btree (id_pai);


--
-- Name: reg_f800_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f800_idx_chave_duplicidade ON reg_f800 USING btree (ind_nat_even, cnpj_suced, pa_cont_cred, cod_cred);


--
-- Name: reg_f800_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f800_idx_id_pai ON reg_f800 USING btree (id_pai);


--
-- Name: reg_f990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_f990_idx_id_pai ON reg_f990 USING btree (id_pai);


--
-- Name: reg_i001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i001_idx_id_pai ON reg_i001 USING btree (id_pai);


--
-- Name: reg_i010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i010_idx_chave_duplicidade ON reg_i010 USING btree (cnpj, ind_ativ);


--
-- Name: reg_i010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i010_idx_id_pai ON reg_i010 USING btree (id_pai);


--
-- Name: reg_i100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i100_idx_chave_duplicidade ON reg_i100 USING btree (cst, aliq_pis, aliq_cofins, inf_comp);


--
-- Name: reg_i100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i100_idx_id_pai ON reg_i100 USING btree (id_pai);


--
-- Name: reg_i199_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i199_idx_chave_duplicidade ON reg_i199 USING btree (num_proc);


--
-- Name: reg_i199_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i199_idx_id_pai ON reg_i199 USING btree (id_pai);


--
-- Name: reg_i200_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i200_idx_chave_duplicidade ON reg_i200 USING btree (num_campo, cod_det, cod_cta, inf_comp);


--
-- Name: reg_i200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i200_idx_id_pai ON reg_i200 USING btree (id_pai);


--
-- Name: reg_i299_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i299_idx_chave_duplicidade ON reg_i299 USING btree (num_proc);


--
-- Name: reg_i299_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i299_idx_id_pai ON reg_i299 USING btree (id_pai);


--
-- Name: reg_i300_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i300_idx_chave_duplicidade ON reg_i300 USING btree (cod_comp, cod_cta, inf_comp);


--
-- Name: reg_i300_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i300_idx_id_pai ON reg_i300 USING btree (id_pai);


--
-- Name: reg_i399_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i399_idx_chave_duplicidade ON reg_i399 USING btree (num_proc);


--
-- Name: reg_i399_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i399_idx_id_pai ON reg_i399 USING btree (id_pai);


--
-- Name: reg_i990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_i990_idx_id_pai ON reg_i990 USING btree (id_pai);


--
-- Name: reg_m001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m001_idx_id_pai ON reg_m001 USING btree (id_pai);


--
-- Name: reg_m100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m100_idx_chave_duplicidade ON reg_m100 USING btree (cod_cred, ind_cred_ori, aliq_pis, aliq_pis_quant);


--
-- Name: reg_m100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m100_idx_id_pai ON reg_m100 USING btree (id_pai);


--
-- Name: reg_m105_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m105_idx_chave_duplicidade ON reg_m105 USING btree (nat_bc_cred, cst_pis);


--
-- Name: reg_m105_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m105_idx_id_pai ON reg_m105 USING btree (id_pai);


--
-- Name: reg_m110_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m110_idx_chave_duplicidade ON reg_m110 USING btree (ind_aj, cod_aj, num_doc, descr_aj);


--
-- Name: reg_m110_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m110_idx_id_pai ON reg_m110 USING btree (id_pai);


--
-- Name: reg_m200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m200_idx_id_pai ON reg_m200 USING btree (id_pai);


--
-- Name: reg_m205_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m205_idx_chave_duplicidade ON reg_m205 USING btree (num_campo, cod_rec);


--
-- Name: reg_m205_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m205_idx_id_pai ON reg_m205 USING btree (id_pai);


--
-- Name: reg_m210_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m210_idx_chave_duplicidade ON reg_m210 USING btree (cod_cont, aliq_pis_quant, aliq_pis);


--
-- Name: reg_m210_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m210_idx_id_pai ON reg_m210 USING btree (id_pai);


--
-- Name: reg_m211_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m211_idx_id_pai ON reg_m211 USING btree (id_pai);


--
-- Name: reg_m220_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m220_idx_chave_duplicidade ON reg_m220 USING btree (ind_aj, cod_aj, num_doc, descr_aj);


--
-- Name: reg_m220_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m220_idx_id_pai ON reg_m220 USING btree (id_pai);


--
-- Name: reg_m230_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m230_idx_chave_duplicidade ON reg_m230 USING btree (cnpj, cod_cred);


--
-- Name: reg_m230_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m230_idx_id_pai ON reg_m230 USING btree (id_pai);


--
-- Name: reg_m300_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m300_idx_chave_duplicidade ON reg_m300 USING btree (cod_cont, nat_cred_desc, per_apur, dt_receb);


--
-- Name: reg_m300_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m300_idx_id_pai ON reg_m300 USING btree (id_pai);


--
-- Name: reg_m350_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m350_idx_id_pai ON reg_m350 USING btree (id_pai);


--
-- Name: reg_m400_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m400_idx_chave_duplicidade ON reg_m400 USING btree (cst_pis, cod_cta, desc_compl);


--
-- Name: reg_m400_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m400_idx_id_pai ON reg_m400 USING btree (id_pai);


--
-- Name: reg_m410_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m410_idx_chave_duplicidade ON reg_m410 USING btree (nat_rec, cod_cta, desc_compl);


--
-- Name: reg_m410_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m410_idx_id_pai ON reg_m410 USING btree (id_pai);


--
-- Name: reg_m500_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m500_idx_chave_duplicidade ON reg_m500 USING btree (cod_cred, ind_cred_ori, aliq_cofins, aliq_cofins_quant);


--
-- Name: reg_m500_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m500_idx_id_pai ON reg_m500 USING btree (id_pai);


--
-- Name: reg_m505_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m505_idx_chave_duplicidade ON reg_m505 USING btree (nat_bc_cred, cst_cofins);


--
-- Name: reg_m505_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m505_idx_id_pai ON reg_m505 USING btree (id_pai);


--
-- Name: reg_m510_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m510_idx_chave_duplicidade ON reg_m510 USING btree (ind_aj, cod_aj, num_doc, descr_aj);


--
-- Name: reg_m510_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m510_idx_id_pai ON reg_m510 USING btree (id_pai);


--
-- Name: reg_m600_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m600_idx_id_pai ON reg_m600 USING btree (id_pai);


--
-- Name: reg_m605_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m605_idx_chave_duplicidade ON reg_m605 USING btree (num_campo, cod_rec);


--
-- Name: reg_m605_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m605_idx_id_pai ON reg_m605 USING btree (id_pai);


--
-- Name: reg_m610_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m610_idx_chave_duplicidade ON reg_m610 USING btree (cod_cont, aliq_cofins_quant, aliq_cofins);


--
-- Name: reg_m610_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m610_idx_id_pai ON reg_m610 USING btree (id_pai);


--
-- Name: reg_m611_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m611_idx_id_pai ON reg_m611 USING btree (id_pai);


--
-- Name: reg_m620_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m620_idx_chave_duplicidade ON reg_m620 USING btree (ind_aj, cod_aj, num_doc, descr_aj);


--
-- Name: reg_m620_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m620_idx_id_pai ON reg_m620 USING btree (id_pai);


--
-- Name: reg_m630_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m630_idx_chave_duplicidade ON reg_m630 USING btree (cnpj, cod_cred);


--
-- Name: reg_m630_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m630_idx_id_pai ON reg_m630 USING btree (id_pai);


--
-- Name: reg_m700_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m700_idx_chave_duplicidade ON reg_m700 USING btree (cod_cont, nat_bc_cred_desc, per_apur, dt_receb);


--
-- Name: reg_m700_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m700_idx_id_pai ON reg_m700 USING btree (id_pai);


--
-- Name: reg_m800_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m800_idx_chave_duplicidade ON reg_m800 USING btree (cst_cofins, cod_cta, desc_compl);


--
-- Name: reg_m800_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m800_idx_id_pai ON reg_m800 USING btree (id_pai);


--
-- Name: reg_m810_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m810_idx_chave_duplicidade ON reg_m810 USING btree (nat_rec, cod_cta, desc_compl);


--
-- Name: reg_m810_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m810_idx_id_pai ON reg_m810 USING btree (id_pai);


--
-- Name: reg_m990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_m990_idx_id_pai ON reg_m990 USING btree (id_pai);


--
-- Name: reg_p001_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p001_idx_id_pai ON reg_p001 USING btree (id_pai);


--
-- Name: reg_p010_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p010_idx_chave_duplicidade ON reg_p010 USING btree (cnpj);


--
-- Name: reg_p010_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p010_idx_id_pai ON reg_p010 USING btree (id_pai);


--
-- Name: reg_p100_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p100_idx_chave_duplicidade ON reg_p100 USING btree (dt_ini, dt_fim, cod_ativ_econ, aliq_cont, cod_cta);


--
-- Name: reg_p100_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p100_idx_id_pai ON reg_p100 USING btree (id_pai);


--
-- Name: reg_p110_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p110_idx_id_pai ON reg_p110 USING btree (id_pai);


--
-- Name: reg_p199_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p199_idx_id_pai ON reg_p199 USING btree (id_pai);


--
-- Name: reg_p200_idx_chave_duplicidade; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p200_idx_chave_duplicidade ON reg_p200 USING btree (per_ref, cod_rec);


--
-- Name: reg_p200_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p200_idx_id_pai ON reg_p200 USING btree (id_pai);


--
-- Name: reg_p210_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p210_idx_id_pai ON reg_p210 USING btree (id_pai);


--
-- Name: reg_p990_idx_id_pai; Type: INDEX; Schema: carga_template; Owner: -; Tablespace:
--

CREATE INDEX reg_p990_idx_id_pai ON reg_p990 USING btree (id_pai);


--
-- PostgreSQL database dump complete
--

