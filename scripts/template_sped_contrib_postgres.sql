SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

CREATE DATABASE :"db_name";


\connect :"db_name"

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE reg_0000 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint,
    "cod_ver" character varying(3),
    "tipo_escrit" character varying(1),
    "ind_sit_esp" character varying(1),
    "num_rec_anterior" character varying(41),
    "dt_ini" date,
    "dt_fin" date,
    "nome" character varying(100),
    "cnpj" character varying(14),
    "uf" character varying(2),
    "cod_mun" character varying(7),
    "suframa" character varying(9),
    "ind_nat_pj" character varying(2),
    "ind_ativ" character varying(1),
    cnpj_pai character varying(14)
);

CREATE INDEX reg_0000_idx_id_pai ON reg_0000 USING btree (id_pai);
CREATE INDEX reg_0000_idx_cnpj_pai ON reg_0000 USING btree (cnpj_pai);

CREATE TABLE reg_0001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_0001_idx_id_pai ON reg_0001 USING btree (id_pai);
CREATE INDEX reg_0001_idx_cnpj_pai ON reg_0001 USING btree (cnpj_pai);

CREATE TABLE reg_0035 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_scp" character varying(14),
    "nome_scp" character varying(255),
    "inf_comp" character varying(255),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0035_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0035_idx_id_pai ON reg_0035 USING btree (id_pai);
CREATE INDEX reg_0035_idx_cnpj_pai ON reg_0035 USING btree (cnpj_pai);

CREATE TABLE reg_0100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nome" character varying(100),
    "cpf" character varying(11),
    "crc" character varying(15),
    "cnpj" character varying(14),
    "cep" character varying(8),
    "end" character varying(60),
    "num" character varying,
    "compl" character varying(60),
    "bairro" character varying(60),
    "fone" character varying(11),
    "fax" character varying(11),
    "email" character varying,
    "cod_mun" character varying(7),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0100_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0100_idx_id_pai ON reg_0100 USING btree (id_pai);
CREATE INDEX reg_0100_idx_cnpj_pai ON reg_0100 USING btree (cnpj_pai);

CREATE TABLE reg_0110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inc_trib" character varying(1),
    "ind_apro_cred" character varying(1),
    "cod_tipo_cont" character varying(1),
    "ind_reg_cum" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0110_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0110_idx_id_pai ON reg_0110 USING btree (id_pai);
CREATE INDEX reg_0110_idx_cnpj_pai ON reg_0110 USING btree (cnpj_pai);

CREATE TABLE reg_0111 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "rec_bru_ncum_trib_mi" numeric(18, 2),
    "rec_bru_ncum_nt_mi" numeric(18, 2),
    "rec_bru_ncum_exp" numeric(18, 2),
    "rec_bru_cum" numeric(18, 2),
    "rec_bru_total" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0111_reg_0110 FOREIGN KEY (id_pai) REFERENCES reg_0110 (id)
);

CREATE INDEX reg_0111_idx_id_pai ON reg_0111 USING btree (id_pai);
CREATE INDEX reg_0111_idx_cnpj_pai ON reg_0111 USING btree (cnpj_pai);

CREATE TABLE reg_0120 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "mes_dispensa" character varying(6),
    "inf_comp" character varying(90),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0120_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0120_idx_id_pai ON reg_0120 USING btree (id_pai);
CREATE INDEX reg_0120_idx_cnpj_pai ON reg_0120 USING btree (cnpj_pai);

CREATE TABLE reg_0140 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_est" character varying(60),
    "nome" character varying(100),
    "cnpj" character varying(14),
    "uf" character varying(2),
    "ie" character varying(14),
    "cod_mun" character varying(7),
    "im" character varying,
    "suframa" character varying(9),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0140_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0140_idx_id_pai ON reg_0140 USING btree (id_pai);
CREATE INDEX reg_0140_idx_cnpj_pai ON reg_0140 USING btree (cnpj_pai);

CREATE TABLE reg_0145 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inc_trib" character varying(1),
    "vl_rec_tot" numeric(18, 2),
    "vl_rec_ativ" numeric(18, 2),
    "vl_rec_demais_ativ" numeric(18, 2),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0145_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
);

CREATE INDEX reg_0145_idx_id_pai ON reg_0145 USING btree (id_pai);
CREATE INDEX reg_0145_idx_cnpj_pai ON reg_0145 USING btree (cnpj_pai);

CREATE TABLE reg_0150 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "nome" character varying(100),
    "cod_pais" character varying(5),
    "cnpj" character varying(14),
    "cpf" character varying(11),
    "ie" character varying(14),
    "cod_mun" character varying(7),
    "suframa" character varying(9),
    "end" character varying(60),
    "num" character varying,
    "compl" character varying(60),
    "bairro" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0150_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
);

CREATE INDEX reg_0150_idx_id_pai ON reg_0150 USING btree (id_pai);
CREATE INDEX reg_0150_idx_cnpj_pai ON reg_0150 USING btree (cnpj_pai);

CREATE TABLE reg_0190 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "unid" character varying(6),
    "descr" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0190_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
);

CREATE INDEX reg_0190_idx_id_pai ON reg_0190 USING btree (id_pai);
CREATE INDEX reg_0190_idx_cnpj_pai ON reg_0190 USING btree (cnpj_pai);

CREATE TABLE reg_0200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "descr_item" character varying,
    "cod_barra" character varying,
    "cod_ant_item" character varying(60),
    "unid_inv" character varying(6),
    "tipo_item" character varying(2),
    "cod_ncm" character varying(8),
    "ex_ipi" character varying(3),
    "cod_gen" character varying(2),
    "cod_lst" character varying(5),
    "aliq_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0200_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
);

CREATE INDEX reg_0200_idx_id_pai ON reg_0200 USING btree (id_pai);
CREATE INDEX reg_0200_idx_cnpj_pai ON reg_0200 USING btree (cnpj_pai);

CREATE TABLE reg_0205 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "descr_ant_item" character varying,
    "dt_ini" date,
    "dt_fim" date,
    "cod_ant_item" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0205_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
);

CREATE INDEX reg_0205_idx_id_pai ON reg_0205 USING btree (id_pai);
CREATE INDEX reg_0205_idx_cnpj_pai ON reg_0205 USING btree (cnpj_pai);

CREATE TABLE reg_0206 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_comb" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0206_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
);

CREATE INDEX reg_0206_idx_id_pai ON reg_0206 USING btree (id_pai);
CREATE INDEX reg_0206_idx_cnpj_pai ON reg_0206 USING btree (cnpj_pai);

CREATE TABLE reg_0208 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_tab" character varying(2),
    "cod_gru" character varying(2),
    "marca_com" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0208_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
);

CREATE INDEX reg_0208_idx_id_pai ON reg_0208 USING btree (id_pai);
CREATE INDEX reg_0208_idx_cnpj_pai ON reg_0208 USING btree (cnpj_pai);

CREATE TABLE reg_0400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_nat" character varying(10),
    "descr_nat" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0400_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
);

CREATE INDEX reg_0400_idx_id_pai ON reg_0400 USING btree (id_pai);
CREATE INDEX reg_0400_idx_cnpj_pai ON reg_0400 USING btree (cnpj_pai);

CREATE TABLE reg_0450 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inf" character varying(6),
    "txt" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0450_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
);

CREATE INDEX reg_0450_idx_id_pai ON reg_0450 USING btree (id_pai);
CREATE INDEX reg_0450_idx_cnpj_pai ON reg_0450 USING btree (cnpj_pai);

CREATE TABLE reg_0500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_alt" date,
    "cod_nat_cc" character varying(2),
    "ind_cta" character varying(1),
    "nivel" character varying(5),
    "cod_cta" character varying(60),
    "nome_cta" character varying(60),
    "cod_cta_ref" character varying(60),
    "cnpj_est" character varying(14),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0500_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0500_idx_id_pai ON reg_0500 USING btree (id_pai);
CREATE INDEX reg_0500_idx_cnpj_pai ON reg_0500 USING btree (cnpj_pai);

CREATE TABLE reg_0600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_alt" date,
    "cod_ccus" character varying(60),
    "ccus" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0600_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0600_idx_id_pai ON reg_0600 USING btree (id_pai);
CREATE INDEX reg_0600_idx_cnpj_pai ON reg_0600 USING btree (cnpj_pai);

CREATE TABLE reg_0990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_0" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_0990_idx_id_pai ON reg_0990 USING btree (id_pai);
CREATE INDEX reg_0990_idx_cnpj_pai ON reg_0990 USING btree (cnpj_pai);

CREATE TABLE reg_1001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_1001_idx_id_pai ON reg_1001 USING btree (id_pai);
CREATE INDEX reg_1001_idx_cnpj_pai ON reg_1001 USING btree (cnpj_pai);

CREATE TABLE reg_1010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "id_sec_jud" character varying,
    "id_vara" character varying(2),
    "ind_nat_acao" character varying(2),
    "desc_dec_jud" character varying(100),
    "dt_sent_jud" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1010_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1010_idx_id_pai ON reg_1010 USING btree (id_pai);
CREATE INDEX reg_1010_idx_cnpj_pai ON reg_1010 USING btree (cnpj_pai);

CREATE TABLE reg_1020 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_nat_acao" character varying(2),
    "dt_dec_adm" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1020_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1020_idx_id_pai ON reg_1020 USING btree (id_pai);
CREATE INDEX reg_1020_idx_cnpj_pai ON reg_1020 USING btree (cnpj_pai);

CREATE TABLE reg_1100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "per_apu_cred" character varying(6),
    "orig_cred" character varying(2),
    "cnpj_suc" character varying(14),
    "cod_cred" character varying(3),
    "vl_cred_apu" numeric(18, 2),
    "vl_cred_ext_apu" numeric(18, 2),
    "vl_tot_cred_apu" numeric(18, 2),
    "vl_cred_desc_pa_ant" numeric(18, 2),
    "vl_cred_per_pa_ant" numeric(18, 2),
    "vl_cred_dcomp_pa_ant" numeric(18, 2),
    "sd_cred_disp_efd" numeric(18, 2),
    "vl_cred_desc_efd" numeric(18, 2),
    "vl_cred_per_efd" numeric(18, 2),
    "vl_cred_dcomp_efd" numeric(18, 2),
    "vl_cred_trans" numeric(18, 2),
    "vl_cred_out" numeric(18, 2),
    "sld_cred_fim" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1100_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1100_idx_id_pai ON reg_1100 USING btree (id_pai);
CREATE INDEX reg_1100_idx_cnpj_pai ON reg_1100 USING btree (cnpj_pai);

CREATE TABLE reg_1300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_nat_ret" character varying(2),
    "pr_rec_ret" character varying(6),
    "vl_ret_apu" numeric(18, 2),
    "vl_ret_ded" numeric(18, 2),
    "vl_ret_per" numeric(18, 2),
    "vl_ret_dcomp" numeric(18, 2),
    "sld_ret" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1300_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1300_idx_id_pai ON reg_1300 USING btree (id_pai);
CREATE INDEX reg_1300_idx_cnpj_pai ON reg_1300 USING btree (cnpj_pai);

CREATE TABLE reg_1500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "per_apu_cred" character varying(6),
    "orig_cred" character varying(2),
    "cnpj_suc" character varying(14),
    "cod_cred" character varying(3),
    "vl_cred_apu" numeric(18, 2),
    "vl_cred_ext_apu" numeric(18, 2),
    "vl_tot_cred_apu" numeric(18, 2),
    "vl_cred_desc_pa_ant" numeric(18, 2),
    "vl_cred_per_pa_ant" numeric(18, 2),
    "vl_cred_dcomp_pa_ant" numeric(18, 2),
    "sd_cred_disp_efd" numeric(18, 2),
    "vl_cred_desc_efd" numeric(18, 2),
    "vl_cred_per_efd" numeric(18, 2),
    "vl_cred_dcomp_efd" numeric(18, 2),
    "vl_cred_trans" numeric(18, 2),
    "vl_cred_out" numeric(18, 2),
    "sld_cred_fim" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1500_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1500_idx_id_pai ON reg_1500 USING btree (id_pai);
CREATE INDEX reg_1500_idx_cnpj_pai ON reg_1500 USING btree (cnpj_pai);

CREATE TABLE reg_1700 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_nat_ret" character varying(2),
    "pr_rec_ret" character varying(6),
    "vl_ret_apu" numeric(18, 2),
    "vl_ret_ded" numeric(18, 2),
    "vl_ret_per" numeric(18, 2),
    "vl_ret_dcomp" numeric(18, 2),
    "sld_ret" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1700_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1700_idx_id_pai ON reg_1700 USING btree (id_pai);
CREATE INDEX reg_1700_idx_cnpj_pai ON reg_1700 USING btree (cnpj_pai);

CREATE TABLE reg_1800 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "inc_imob" character varying(90),
    "rec_receb_ret" numeric(18, 2),
    "rec_fin_ret" numeric(18, 2),
    "bc_ret" numeric(18, 2),
    "aliq_ret" numeric(18, 2),
    "vl_rec_uni" numeric(18, 2),
    "dt_rec_uni" date,
    "cod_rec" character varying(4),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1800_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1800_idx_id_pai ON reg_1800 USING btree (id_pai);
CREATE INDEX reg_1800_idx_cnpj_pai ON reg_1800 USING btree (cnpj_pai);

CREATE TABLE reg_1809 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1809_reg_1800 FOREIGN KEY (id_pai) REFERENCES reg_1800 (id)
);

CREATE INDEX reg_1809_idx_id_pai ON reg_1809 USING btree (id_pai);
CREATE INDEX reg_1809_idx_cnpj_pai ON reg_1809 USING btree (cnpj_pai);

CREATE TABLE reg_1900 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub_ser" character varying(20),
    "cod_sit" character varying(2),
    "vl_tot_rec" numeric(18, 2),
    "quant_doc" integer,
    "cst_pis" character varying(2),
    "cst_cofins" character varying(2),
    "cfop" character varying(4),
    "info_compl" character varying,
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1900_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1900_idx_id_pai ON reg_1900 USING btree (id_pai);
CREATE INDEX reg_1900_idx_cnpj_pai ON reg_1900 USING btree (cnpj_pai);

CREATE TABLE reg_1990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_1" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_1990_idx_id_pai ON reg_1990 USING btree (id_pai);
CREATE INDEX reg_1990_idx_cnpj_pai ON reg_1990 USING btree (cnpj_pai);

CREATE TABLE reg_9001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_9001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_9001_idx_id_pai ON reg_9001 USING btree (id_pai);
CREATE INDEX reg_9001_idx_cnpj_pai ON reg_9001 USING btree (cnpj_pai);

CREATE TABLE reg_9900 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "reg_blc" character varying(4),
    "qtd_reg_blc" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_9900_reg_9001 FOREIGN KEY (id_pai) REFERENCES reg_9001 (id)
);

CREATE INDEX reg_9900_idx_id_pai ON reg_9900 USING btree (id_pai);
CREATE INDEX reg_9900_idx_cnpj_pai ON reg_9900 USING btree (cnpj_pai);

CREATE TABLE reg_9990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_9" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_9990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_9990_idx_id_pai ON reg_9990 USING btree (id_pai);
CREATE INDEX reg_9990_idx_cnpj_pai ON reg_9990 USING btree (cnpj_pai);

CREATE TABLE reg_9999 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint,
    "qtd_lin" integer,
    cnpj_pai character varying(14)
);

CREATE INDEX reg_9999_idx_id_pai ON reg_9999 USING btree (id_pai);
CREATE INDEX reg_9999_idx_cnpj_pai ON reg_9999 USING btree (cnpj_pai);

CREATE TABLE reg_a001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_a001_idx_id_pai ON reg_a001 USING btree (id_pai);
CREATE INDEX reg_a001_idx_cnpj_pai ON reg_a001 USING btree (cnpj_pai);

CREATE TABLE reg_a010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a010_reg_a001 FOREIGN KEY (id_pai) REFERENCES reg_a001 (id)
);

CREATE INDEX reg_a010_idx_id_pai ON reg_a010 USING btree (id_pai);
CREATE INDEX reg_a010_idx_cnpj_pai ON reg_a010 USING btree (cnpj_pai);

CREATE TABLE reg_a100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_sit" character varying(2),
    "ser" character varying(20),
    "sub" character varying(20),
    "num_doc" character varying(128),
    "chv_nfse" character varying(128),
    "dt_doc" date,
    "dt_exe_serv" date,
    "vl_doc" numeric(18, 2),
    "ind_pgto" character varying(1),
    "vl_desc" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "vl_pis_ret" numeric(18, 2),
    "vl_cofins_ret" numeric(18, 2),
    "vl_iss" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a100_reg_a010 FOREIGN KEY (id_pai) REFERENCES reg_a010 (id)
);

CREATE INDEX reg_a100_idx_id_pai ON reg_a100 USING btree (id_pai);
CREATE INDEX reg_a100_idx_cnpj_pai ON reg_a100 USING btree (cnpj_pai);

CREATE TABLE reg_a110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inf" character varying(6),
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a110_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
);

CREATE INDEX reg_a110_idx_id_pai ON reg_a110 USING btree (id_pai);
CREATE INDEX reg_a110_idx_cnpj_pai ON reg_a110 USING btree (cnpj_pai);

CREATE TABLE reg_a111 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a111_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
);

CREATE INDEX reg_a111_idx_id_pai ON reg_a111 USING btree (id_pai);
CREATE INDEX reg_a111_idx_cnpj_pai ON reg_a111 USING btree (cnpj_pai);

CREATE TABLE reg_a120 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_tot_serv" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "vl_pis_imp" numeric(18, 2),
    "dt_pag_pis" date,
    "vl_bc_cofins" numeric(18, 2),
    "vl_cofins_imp" numeric(18, 2),
    "dt_pag_cofins" date,
    "loc_exe_serv" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a120_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
);

CREATE INDEX reg_a120_idx_id_pai ON reg_a120 USING btree (id_pai);
CREATE INDEX reg_a120_idx_cnpj_pai ON reg_a120 USING btree (cnpj_pai);

CREATE TABLE reg_a170 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(4),
    "cod_item" character varying(60),
    "descr_compl" character varying,
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "ind_orig_cred" character varying(1),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    "cod_ccus" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a170_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
);

CREATE INDEX reg_a170_idx_id_pai ON reg_a170 USING btree (id_pai);
CREATE INDEX reg_a170_idx_cnpj_pai ON reg_a170 USING btree (cnpj_pai);

CREATE TABLE reg_a990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_a" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_a990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_a990_idx_id_pai ON reg_a990 USING btree (id_pai);
CREATE INDEX reg_a990_idx_cnpj_pai ON reg_a990 USING btree (cnpj_pai);

CREATE TABLE reg_c001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_c001_idx_id_pai ON reg_c001 USING btree (id_pai);
CREATE INDEX reg_c001_idx_cnpj_pai ON reg_c001 USING btree (cnpj_pai);

CREATE TABLE reg_c010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    "ind_escri" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c010_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c010_idx_id_pai ON reg_c010 USING btree (id_pai);
CREATE INDEX reg_c010_idx_cnpj_pai ON reg_c010 USING btree (cnpj_pai);

CREATE TABLE reg_c100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(3),
    "num_doc" character varying(9),
    "chv_nfe" character varying(44),
    "dt_doc" date,
    "dt_e_s" date,
    "vl_doc" numeric(18, 2),
    "ind_pgto" character varying(1),
    "vl_desc" numeric(18, 2),
    "vl_abat_nt" numeric(18, 2),
    "vl_merc" numeric(18, 2),
    "ind_frt" character varying(1),
    "vl_frt" numeric(18, 2),
    "vl_seg" numeric(18, 2),
    "vl_out_da" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_ipi" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "vl_pis_st" numeric(18, 2),
    "vl_cofins_st" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c100_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c100_idx_id_pai ON reg_c100 USING btree (id_pai);
CREATE INDEX reg_c100_idx_cnpj_pai ON reg_c100 USING btree (cnpj_pai);

CREATE TABLE reg_c110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inf" character varying(6),
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c110_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c110_idx_id_pai ON reg_c110 USING btree (id_pai);
CREATE INDEX reg_c110_idx_cnpj_pai ON reg_c110 USING btree (cnpj_pai);

CREATE TABLE reg_c111 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c111_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c111_idx_id_pai ON reg_c111 USING btree (id_pai);
CREATE INDEX reg_c111_idx_cnpj_pai ON reg_c111 USING btree (cnpj_pai);

CREATE TABLE reg_c120 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_doc_imp" character varying(1),
    "num_doc_imp" character varying(10),
    "vl_pis_imp" numeric(18, 2),
    "vl_cofins_imp" numeric(18, 2),
    "num_acdraw" character varying(20),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c120_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c120_idx_id_pai ON reg_c120 USING btree (id_pai);
CREATE INDEX reg_c120_idx_cnpj_pai ON reg_c120 USING btree (cnpj_pai);

CREATE TABLE reg_c170 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    "descr_compl" character varying,
    "qtd" numeric(18, 5),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "ind_mov" character varying(1),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "cod_nat" character varying(10),
    "vl_bc_icms" numeric(18, 2),
    "aliq_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "aliq_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "ind_apur" character varying(1),
    "cst_ipi" character varying(2),
    "cod_enq" character varying(3),
    "vl_bc_ipi" numeric(18, 2),
    "aliq_ipi" numeric(18, 2),
    "vl_ipi" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c170_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c170_idx_id_pai ON reg_c170 USING btree (id_pai);
CREATE INDEX reg_c170_idx_cnpj_pai ON reg_c170 USING btree (cnpj_pai);

CREATE TABLE reg_c175 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cfop" character varying(4),
    "vl_oper" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c175_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c175_idx_id_pai ON reg_c175 USING btree (id_pai);
CREATE INDEX reg_c175_idx_cnpj_pai ON reg_c175 USING btree (cnpj_pai);

CREATE TABLE reg_c180 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "dt_doc_ini" date,
    "dt_doc_fin" date,
    "cod_item" character varying(60),
    "cod_ncm" character varying(8),
    "ex_ipi" character varying(3),
    "vl_tot_item" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c180_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c180_idx_id_pai ON reg_c180 USING btree (id_pai);
CREATE INDEX reg_c180_idx_cnpj_pai ON reg_c180 USING btree (cnpj_pai);

CREATE TABLE reg_c181 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c181_reg_c180 FOREIGN KEY (id_pai) REFERENCES reg_c180 (id)
);

CREATE INDEX reg_c181_idx_id_pai ON reg_c181 USING btree (id_pai);
CREATE INDEX reg_c181_idx_cnpj_pai ON reg_c181 USING btree (cnpj_pai);

CREATE TABLE reg_c185 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c185_reg_c180 FOREIGN KEY (id_pai) REFERENCES reg_c180 (id)
);

CREATE INDEX reg_c185_idx_id_pai ON reg_c185 USING btree (id_pai);
CREATE INDEX reg_c185_idx_cnpj_pai ON reg_c185 USING btree (cnpj_pai);

CREATE TABLE reg_c188 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c188_reg_c180 FOREIGN KEY (id_pai) REFERENCES reg_c180 (id)
);

CREATE INDEX reg_c188_idx_id_pai ON reg_c188 USING btree (id_pai);
CREATE INDEX reg_c188_idx_cnpj_pai ON reg_c188 USING btree (cnpj_pai);

CREATE TABLE reg_c190 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "dt_ref_ini" date,
    "dt_ref_fin" date,
    "cod_item" character varying(60),
    "cod_ncm" character varying(8),
    "ex_ipi" character varying(3),
    "vl_tot_item" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c190_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c190_idx_id_pai ON reg_c190 USING btree (id_pai);
CREATE INDEX reg_c190_idx_cnpj_pai ON reg_c190 USING btree (cnpj_pai);

CREATE TABLE reg_c191 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj_cpf_part" character varying(14),
    "cst_pis" character varying(2),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c191_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
);

CREATE INDEX reg_c191_idx_id_pai ON reg_c191 USING btree (id_pai);
CREATE INDEX reg_c191_idx_cnpj_pai ON reg_c191 USING btree (cnpj_pai);

CREATE TABLE reg_c195 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj_cpf_part" character varying(14),
    "cst_cofins" character varying(2),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c195_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
);

CREATE INDEX reg_c195_idx_id_pai ON reg_c195 USING btree (id_pai);
CREATE INDEX reg_c195_idx_cnpj_pai ON reg_c195 USING btree (cnpj_pai);

CREATE TABLE reg_c198 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c198_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
);

CREATE INDEX reg_c198_idx_id_pai ON reg_c198 USING btree (id_pai);
CREATE INDEX reg_c198_idx_cnpj_pai ON reg_c198 USING btree (cnpj_pai);

CREATE TABLE reg_c199 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_doc_imp" character varying(1),
    "num_doc_imp" character varying(10),
    "vl_pis_imp" numeric(18, 2),
    "vl_cofins_imp" numeric(18, 2),
    "num_acdraw" character varying(20),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c199_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
);

CREATE INDEX reg_c199_idx_id_pai ON reg_c199 USING btree (id_pai);
CREATE INDEX reg_c199_idx_cnpj_pai ON reg_c199 USING btree (cnpj_pai);

CREATE TABLE reg_c380 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "dt_doc_ini" date,
    "dt_doc_fin" date,
    "num_doc_ini" character varying(6),
    "num_doc_fin" character varying(6),
    "vl_doc" numeric(18, 2),
    "vl_doc_canc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c380_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c380_idx_id_pai ON reg_c380 USING btree (id_pai);
CREATE INDEX reg_c380_idx_cnpj_pai ON reg_c380 USING btree (cnpj_pai);

CREATE TABLE reg_c381 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "cod_item" character varying(60),
    "vl_item" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c381_reg_c380 FOREIGN KEY (id_pai) REFERENCES reg_c380 (id)
);

CREATE INDEX reg_c381_idx_id_pai ON reg_c381 USING btree (id_pai);
CREATE INDEX reg_c381_idx_cnpj_pai ON reg_c381 USING btree (cnpj_pai);

CREATE TABLE reg_c385 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "cod_item" character varying(60),
    "vl_item" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c385_reg_c380 FOREIGN KEY (id_pai) REFERENCES reg_c380 (id)
);

CREATE INDEX reg_c385_idx_id_pai ON reg_c385 USING btree (id_pai);
CREATE INDEX reg_c385_idx_cnpj_pai ON reg_c385 USING btree (cnpj_pai);

CREATE TABLE reg_c395 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_part" character varying(60),
    "ser" character varying(3),
    "sub_ser" character varying(3),
    "num_doc" character varying(44),
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c395_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c395_idx_id_pai ON reg_c395 USING btree (id_pai);
CREATE INDEX reg_c395_idx_cnpj_pai ON reg_c395 USING btree (cnpj_pai);

CREATE TABLE reg_c396 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c396_reg_c395 FOREIGN KEY (id_pai) REFERENCES reg_c395 (id)
);

CREATE INDEX reg_c396_idx_id_pai ON reg_c396 USING btree (id_pai);
CREATE INDEX reg_c396_idx_cnpj_pai ON reg_c396 USING btree (cnpj_pai);

CREATE TABLE reg_c400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ecf_mod" character varying(20),
    "ecf_fab" character varying(20),
    "ecf_cx" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c400_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c400_idx_id_pai ON reg_c400 USING btree (id_pai);
CREATE INDEX reg_c400_idx_cnpj_pai ON reg_c400 USING btree (cnpj_pai);

CREATE TABLE reg_c405 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_doc" date,
    "cro" character varying(3),
    "crz" character varying(6),
    "num_coo_fin" character varying(6),
    "gt_fin" numeric(18, 2),
    "vl_brt" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c405_reg_c400 FOREIGN KEY (id_pai) REFERENCES reg_c400 (id)
);

CREATE INDEX reg_c405_idx_id_pai ON reg_c405 USING btree (id_pai);
CREATE INDEX reg_c405_idx_cnpj_pai ON reg_c405 USING btree (cnpj_pai);

CREATE TABLE reg_c481 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "vl_item" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_item" character varying(60),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c481_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
);

CREATE INDEX reg_c481_idx_id_pai ON reg_c481 USING btree (id_pai);
CREATE INDEX reg_c481_idx_cnpj_pai ON reg_c481 USING btree (cnpj_pai);

CREATE TABLE reg_c485 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "vl_item" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_item" character varying(60),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c485_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
);

CREATE INDEX reg_c485_idx_id_pai ON reg_c485 USING btree (id_pai);
CREATE INDEX reg_c485_idx_cnpj_pai ON reg_c485 USING btree (cnpj_pai);

CREATE TABLE reg_c489 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c489_reg_c400 FOREIGN KEY (id_pai) REFERENCES reg_c400 (id)
);

CREATE INDEX reg_c489_idx_id_pai ON reg_c489 USING btree (id_pai);
CREATE INDEX reg_c489_idx_cnpj_pai ON reg_c489 USING btree (cnpj_pai);

CREATE TABLE reg_c490 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_doc_ini" date,
    "dt_doc_fin" date,
    "cod_mod" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c490_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c490_idx_id_pai ON reg_c490 USING btree (id_pai);
CREATE INDEX reg_c490_idx_cnpj_pai ON reg_c490 USING btree (cnpj_pai);

CREATE TABLE reg_c491 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "cst_pis" character varying(2),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c491_reg_c490 FOREIGN KEY (id_pai) REFERENCES reg_c490 (id)
);

CREATE INDEX reg_c491_idx_id_pai ON reg_c491 USING btree (id_pai);
CREATE INDEX reg_c491_idx_cnpj_pai ON reg_c491 USING btree (cnpj_pai);

CREATE TABLE reg_c495 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "cst_cofins" character varying(2),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c495_reg_c490 FOREIGN KEY (id_pai) REFERENCES reg_c490 (id)
);

CREATE INDEX reg_c495_idx_id_pai ON reg_c495 USING btree (id_pai);
CREATE INDEX reg_c495_idx_cnpj_pai ON reg_c495 USING btree (cnpj_pai);

CREATE TABLE reg_c499 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c499_reg_c490 FOREIGN KEY (id_pai) REFERENCES reg_c490 (id)
);

CREATE INDEX reg_c499_idx_id_pai ON reg_c499 USING btree (id_pai);
CREATE INDEX reg_c499_idx_cnpj_pai ON reg_c499 USING btree (cnpj_pai);

CREATE TABLE reg_c500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(60),
    "dt_doc" date,
    "dt_e_s" date,
    "vl_doc" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "cod_inf" character varying(6),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c500_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c500_idx_id_pai ON reg_c500 USING btree (id_pai);
CREATE INDEX reg_c500_idx_cnpj_pai ON reg_c500 USING btree (cnpj_pai);

CREATE TABLE reg_c501 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "vl_item" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c501_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
);

CREATE INDEX reg_c501_idx_id_pai ON reg_c501 USING btree (id_pai);
CREATE INDEX reg_c501_idx_cnpj_pai ON reg_c501 USING btree (cnpj_pai);

CREATE TABLE reg_c505 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "vl_item" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c505_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
);

CREATE INDEX reg_c505_idx_id_pai ON reg_c505 USING btree (id_pai);
CREATE INDEX reg_c505_idx_cnpj_pai ON reg_c505 USING btree (cnpj_pai);

CREATE TABLE reg_c509 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c509_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
);

CREATE INDEX reg_c509_idx_id_pai ON reg_c509 USING btree (id_pai);
CREATE INDEX reg_c509_idx_cnpj_pai ON reg_c509 USING btree (cnpj_pai);

CREATE TABLE reg_c600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_mun" character varying(7),
    "ser" character varying(4),
    "sub" character varying(3),
    "cod_cons" character varying(2),
    "qtd_cons" integer,
    "qtd_canc" integer,
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cons" integer,
    "vl_forn" numeric(18, 2),
    "vl_serv_nt" numeric(18, 2),
    "vl_terc" numeric(18, 2),
    "vl_da" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c600_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c600_idx_id_pai ON reg_c600 USING btree (id_pai);
CREATE INDEX reg_c600_idx_cnpj_pai ON reg_c600 USING btree (cnpj_pai);

CREATE TABLE reg_c601 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "vl_item" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c601_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
);

CREATE INDEX reg_c601_idx_id_pai ON reg_c601 USING btree (id_pai);
CREATE INDEX reg_c601_idx_cnpj_pai ON reg_c601 USING btree (cnpj_pai);

CREATE TABLE reg_c605 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "vl_item" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c605_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
);

CREATE INDEX reg_c605_idx_id_pai ON reg_c605 USING btree (id_pai);
CREATE INDEX reg_c605_idx_cnpj_pai ON reg_c605 USING btree (cnpj_pai);

CREATE TABLE reg_c609 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c609_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
);

CREATE INDEX reg_c609_idx_id_pai ON reg_c609 USING btree (id_pai);
CREATE INDEX reg_c609_idx_cnpj_pai ON reg_c609 USING btree (cnpj_pai);

CREATE TABLE reg_c860 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "nr_sat" character varying(9),
    "dt_doc" date,
    "doc_ini" character varying(9),
    "doc_fim" character varying(9),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c860_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
);

CREATE INDEX reg_c860_idx_id_pai ON reg_c860 USING btree (id_pai);
CREATE INDEX reg_c860_idx_cnpj_pai ON reg_c860 USING btree (cnpj_pai);

CREATE TABLE reg_c870 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c870_reg_c860 FOREIGN KEY (id_pai) REFERENCES reg_c860 (id)
);

CREATE INDEX reg_c870_idx_id_pai ON reg_c870 USING btree (id_pai);
CREATE INDEX reg_c870_idx_cnpj_pai ON reg_c870 USING btree (cnpj_pai);

CREATE TABLE reg_c880 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "cfop" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_pis" character varying(2),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c880_reg_c860 FOREIGN KEY (id_pai) REFERENCES reg_c860 (id)
);

CREATE INDEX reg_c880_idx_id_pai ON reg_c880 USING btree (id_pai);
CREATE INDEX reg_c880_idx_cnpj_pai ON reg_c880 USING btree (cnpj_pai);

CREATE TABLE reg_c890 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c890_reg_c860 FOREIGN KEY (id_pai) REFERENCES reg_c860 (id)
);

CREATE INDEX reg_c890_idx_id_pai ON reg_c890 USING btree (id_pai);
CREATE INDEX reg_c890_idx_cnpj_pai ON reg_c890 USING btree (cnpj_pai);

CREATE TABLE reg_c990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_c" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_c990_idx_id_pai ON reg_c990 USING btree (id_pai);
CREATE INDEX reg_c990_idx_cnpj_pai ON reg_c990 USING btree (cnpj_pai);

CREATE TABLE reg_d001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_d001_idx_id_pai ON reg_d001 USING btree (id_pai);
CREATE INDEX reg_d001_idx_cnpj_pai ON reg_d001 USING btree (cnpj_pai);

CREATE TABLE reg_d010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d010_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d010_idx_id_pai ON reg_d010 USING btree (id_pai);
CREATE INDEX reg_d010_idx_cnpj_pai ON reg_d010 USING btree (cnpj_pai);

CREATE TABLE reg_d100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "chv_cte" character varying(44),
    "dt_doc" date,
    "dt_a_p" date,
    "tp_cte" character varying(1),
    "chv_cte_ref" character varying(44),
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "ind_frt" character varying(1),
    "vl_serv" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_nt" numeric(18, 2),
    "cod_inf" character varying(6),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d100_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
);

CREATE INDEX reg_d100_idx_id_pai ON reg_d100 USING btree (id_pai);
CREATE INDEX reg_d100_idx_cnpj_pai ON reg_d100 USING btree (cnpj_pai);

CREATE TABLE reg_d101 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_nat_frt" character varying(1),
    "vl_item" numeric(18, 2),
    "cst_pis" character varying(2),
    "nat_bc_cred" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d101_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d101_idx_id_pai ON reg_d101 USING btree (id_pai);
CREATE INDEX reg_d101_idx_cnpj_pai ON reg_d101 USING btree (cnpj_pai);

CREATE TABLE reg_d105 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_nat_frt" character varying(1),
    "vl_item" numeric(18, 2),
    "cst_cofins" character varying(2),
    "nat_bc_cred" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d105_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d105_idx_id_pai ON reg_d105 USING btree (id_pai);
CREATE INDEX reg_d105_idx_cnpj_pai ON reg_d105 USING btree (cnpj_pai);

CREATE TABLE reg_d111 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d111_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d111_idx_id_pai ON reg_d111 USING btree (id_pai);
CREATE INDEX reg_d111_idx_cnpj_pai ON reg_d111 USING btree (cnpj_pai);

CREATE TABLE reg_d200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc_ini" character varying(9),
    "num_doc_fin" character varying(9),
    "cfop" character varying(4),
    "dt_ref" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d200_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
);

CREATE INDEX reg_d200_idx_id_pai ON reg_d200 USING btree (id_pai);
CREATE INDEX reg_d200_idx_cnpj_pai ON reg_d200 USING btree (cnpj_pai);

CREATE TABLE reg_d201 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "vl_item" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d201_reg_d200 FOREIGN KEY (id_pai) REFERENCES reg_d200 (id)
);

CREATE INDEX reg_d201_idx_id_pai ON reg_d201 USING btree (id_pai);
CREATE INDEX reg_d201_idx_cnpj_pai ON reg_d201 USING btree (cnpj_pai);

CREATE TABLE reg_d205 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "vl_item" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d205_reg_d200 FOREIGN KEY (id_pai) REFERENCES reg_d200 (id)
);

CREATE INDEX reg_d205_idx_id_pai ON reg_d205 USING btree (id_pai);
CREATE INDEX reg_d205_idx_cnpj_pai ON reg_d205 USING btree (cnpj_pai);

CREATE TABLE reg_d209 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d209_reg_d200 FOREIGN KEY (id_pai) REFERENCES reg_d200 (id)
);

CREATE INDEX reg_d209_idx_id_pai ON reg_d209 USING btree (id_pai);
CREATE INDEX reg_d209_idx_cnpj_pai ON reg_d209 USING btree (cnpj_pai);

CREATE TABLE reg_d300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc_ini" character varying(6),
    "num_doc_fin" integer,
    "cfop" character varying(4),
    "dt_ref" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d300_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
);

CREATE INDEX reg_d300_idx_id_pai ON reg_d300 USING btree (id_pai);
CREATE INDEX reg_d300_idx_cnpj_pai ON reg_d300 USING btree (cnpj_pai);

CREATE TABLE reg_d309 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d309_reg_d300 FOREIGN KEY (id_pai) REFERENCES reg_d300 (id)
);

CREATE INDEX reg_d309_idx_id_pai ON reg_d309 USING btree (id_pai);
CREATE INDEX reg_d309_idx_cnpj_pai ON reg_d309 USING btree (cnpj_pai);

CREATE TABLE reg_d350 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ecf_mod" character varying(20),
    "ecf_fab" character varying(20),
    "dt_doc" date,
    "cro" character varying(3),
    "crz" character varying(6),
    "num_coo_fin" character varying(6),
    "gt_fin" numeric(18, 2),
    "vl_brt" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d350_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
);

CREATE INDEX reg_d350_idx_id_pai ON reg_d350 USING btree (id_pai);
CREATE INDEX reg_d350_idx_cnpj_pai ON reg_d350 USING btree (cnpj_pai);

CREATE TABLE reg_d359 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d359_reg_d350 FOREIGN KEY (id_pai) REFERENCES reg_d350 (id)
);

CREATE INDEX reg_d359_idx_id_pai ON reg_d359 USING btree (id_pai);
CREATE INDEX reg_d359_idx_cnpj_pai ON reg_d359 USING btree (cnpj_pai);

CREATE TABLE reg_d500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    "dt_a_p" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_serv" numeric(18, 2),
    "vl_serv_nt" numeric(18, 2),
    "vl_terc" numeric(18, 2),
    "vl_da" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "cod_inf" character varying(6),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d500_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
);

CREATE INDEX reg_d500_idx_id_pai ON reg_d500 USING btree (id_pai);
CREATE INDEX reg_d500_idx_cnpj_pai ON reg_d500 USING btree (cnpj_pai);

CREATE TABLE reg_d501 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "vl_item" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d501_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
);

CREATE INDEX reg_d501_idx_id_pai ON reg_d501 USING btree (id_pai);
CREATE INDEX reg_d501_idx_cnpj_pai ON reg_d501 USING btree (cnpj_pai);

CREATE TABLE reg_d505 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "vl_item" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d505_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
);

CREATE INDEX reg_d505_idx_id_pai ON reg_d505 USING btree (id_pai);
CREATE INDEX reg_d505_idx_cnpj_pai ON reg_d505 USING btree (cnpj_pai);

CREATE TABLE reg_d509 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d509_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
);

CREATE INDEX reg_d509_idx_id_pai ON reg_d509 USING btree (id_pai);
CREATE INDEX reg_d509_idx_cnpj_pai ON reg_d509 USING btree (cnpj_pai);

CREATE TABLE reg_d600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_mun" character varying(7),
    "ser" character varying(4),
    "sub" character varying(3),
    "ind_rec" character varying(1),
    "qtd_cons" integer,
    "dt_doc_ini" date,
    "dt_doc_fin" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_serv" numeric(18, 2),
    "vl_serv_nt" numeric(18, 2),
    "vl_terc" numeric(18, 2),
    "vl_da" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d600_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
);

CREATE INDEX reg_d600_idx_id_pai ON reg_d600 USING btree (id_pai);
CREATE INDEX reg_d600_idx_cnpj_pai ON reg_d600 USING btree (cnpj_pai);

CREATE TABLE reg_d601 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_class" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d601_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
);

CREATE INDEX reg_d601_idx_id_pai ON reg_d601 USING btree (id_pai);
CREATE INDEX reg_d601_idx_cnpj_pai ON reg_d601 USING btree (cnpj_pai);

CREATE TABLE reg_d605 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_class" character varying(4),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d605_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
);

CREATE INDEX reg_d605_idx_id_pai ON reg_d605 USING btree (id_pai);
CREATE INDEX reg_d605_idx_cnpj_pai ON reg_d605 USING btree (cnpj_pai);

CREATE TABLE reg_d609 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d609_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
);

CREATE INDEX reg_d609_idx_id_pai ON reg_d609 USING btree (id_pai);
CREATE INDEX reg_d609_idx_cnpj_pai ON reg_d609 USING btree (cnpj_pai);

CREATE TABLE reg_d990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_d" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_d990_idx_id_pai ON reg_d990 USING btree (id_pai);
CREATE INDEX reg_d990_idx_cnpj_pai ON reg_d990 USING btree (cnpj_pai);

CREATE TABLE reg_f001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_f001_idx_id_pai ON reg_f001 USING btree (id_pai);
CREATE INDEX reg_f001_idx_cnpj_pai ON reg_f001 USING btree (cnpj_pai);

CREATE TABLE reg_f010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f010_reg_f001 FOREIGN KEY (id_pai) REFERENCES reg_f001 (id)
);

CREATE INDEX reg_f010_idx_id_pai ON reg_f010 USING btree (id_pai);
CREATE INDEX reg_f010_idx_cnpj_pai ON reg_f010 USING btree (cnpj_pai);

CREATE TABLE reg_f100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "cod_part" character varying(60),
    "cod_item" character varying(60),
    "dt_oper" date,
    "vl_oper" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 4),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 4),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "nat_bc_cred" character varying(2),
    "ind_orig_cred" character varying(1),
    "cod_cta" character varying(60),
    "cod_ccus" character varying(60),
    "desc_doc_oper" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f100_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f100_idx_id_pai ON reg_f100 USING btree (id_pai);
CREATE INDEX reg_f100_idx_cnpj_pai ON reg_f100 USING btree (cnpj_pai);

CREATE TABLE reg_f111 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f111_reg_f100 FOREIGN KEY (id_pai) REFERENCES reg_f100 (id)
);

CREATE INDEX reg_f111_idx_id_pai ON reg_f111 USING btree (id_pai);
CREATE INDEX reg_f111_idx_cnpj_pai ON reg_f111 USING btree (cnpj_pai);

CREATE TABLE reg_f120 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_bc_cred" character varying(2),
    "ident_bem_imob" character varying(2),
    "ind_orig_cred" character varying(1),
    "ind_util_bem_imob" character varying(1),
    "vl_oper_dep" numeric(18, 2),
    "parc_oper_nao_bc_cred" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    "cod_ccus" character varying(60),
    "desc_bem_imob" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f120_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f120_idx_id_pai ON reg_f120 USING btree (id_pai);
CREATE INDEX reg_f120_idx_cnpj_pai ON reg_f120 USING btree (cnpj_pai);

CREATE TABLE reg_f129 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f129_reg_f120 FOREIGN KEY (id_pai) REFERENCES reg_f120 (id)
);

CREATE INDEX reg_f129_idx_id_pai ON reg_f129 USING btree (id_pai);
CREATE INDEX reg_f129_idx_cnpj_pai ON reg_f129 USING btree (cnpj_pai);

CREATE TABLE reg_f130 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_bc_cred" character varying(2),
    "ident_bem_imob" character varying(2),
    "ind_orig_cred" character varying(1),
    "ind_util_bem_imob" character varying(1),
    "mes_oper_aquis" character varying(6),
    "vl_oper_aquis" numeric(18, 2),
    "parc_oper_nao_bc_cred" numeric(18, 2),
    "vl_bc_cred" numeric(18, 2),
    "ind_nr_parc" character varying(1),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying(60),
    "cod_ccus" character varying(60),
    "desc_bem_imob" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f130_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f130_idx_id_pai ON reg_f130 USING btree (id_pai);
CREATE INDEX reg_f130_idx_cnpj_pai ON reg_f130 USING btree (cnpj_pai);

CREATE TABLE reg_f139 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f139_reg_f130 FOREIGN KEY (id_pai) REFERENCES reg_f130 (id)
);

CREATE INDEX reg_f139_idx_id_pai ON reg_f139 USING btree (id_pai);
CREATE INDEX reg_f139_idx_cnpj_pai ON reg_f139 USING btree (cnpj_pai);

CREATE TABLE reg_f150 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_bc_cred" character varying(2),
    "vl_tot_est" numeric(18, 2),
    "est_imp" numeric(18, 2),
    "vl_bc_est" numeric(18, 2),
    "vl_bc_men_est" numeric(18, 2),
    "cst_pis" character varying(2),
    "aliq_pis" numeric(18, 4),
    "vl_cred_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "aliq_cofins" numeric(18, 4),
    "vl_cred_cofins" numeric(18, 2),
    "desc_est" character varying(100),
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f150_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f150_idx_id_pai ON reg_f150 USING btree (id_pai);
CREATE INDEX reg_f150_idx_cnpj_pai ON reg_f150 USING btree (cnpj_pai);

CREATE TABLE reg_f200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(2),
    "unid_imob" character varying(2),
    "ident_emp" character varying,
    "desc_unid_imob" character varying(90),
    "num_cont" character varying(90),
    "cpf_cnpj_adqu" character varying(14),
    "dt_oper" date,
    "vl_tot_vend" numeric(18, 2),
    "vl_rec_acum" numeric(18, 2),
    "vl_tot_rec" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "perc_rec_receb" numeric(18, 2),
    "ind_nat_emp" character varying(1),
    "inf_comp" character varying(90),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f200_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f200_idx_id_pai ON reg_f200 USING btree (id_pai);
CREATE INDEX reg_f200_idx_cnpj_pai ON reg_f200 USING btree (cnpj_pai);

CREATE TABLE reg_f205 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_cus_inc_acum_ant" numeric(18, 2),
    "vl_cus_inc_per_esc" numeric(18, 2),
    "vl_cus_inc_acum" numeric(18, 2),
    "vl_exc_bc_cus_inc_acum" numeric(18, 2),
    "vl_bc_cus_inc" numeric(18, 2),
    "cst_pis" character varying(2),
    "aliq_pis" numeric(18, 4),
    "vl_cred_pis_acum" numeric(18, 2),
    "vl_cred_pis_desc_ant" numeric(18, 2),
    "vl_cred_pis_desc" numeric(18, 2),
    "vl_cred_pis_desc_fut" numeric(18, 2),
    "cst_cofins" character varying(2),
    "aliq_cofins" numeric(18, 4),
    "vl_cred_cofins_acum" numeric(18, 2),
    "vl_cred_cofins_desc_ant" numeric(18, 2),
    "vl_cred_cofins_desc" numeric(18, 2),
    "vl_cred_cofins_desc_fut" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f205_reg_f200 FOREIGN KEY (id_pai) REFERENCES reg_f200 (id)
);

CREATE INDEX reg_f205_idx_id_pai ON reg_f205 USING btree (id_pai);
CREATE INDEX reg_f205_idx_cnpj_pai ON reg_f205 USING btree (cnpj_pai);

CREATE TABLE reg_f210 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_cus_orc" numeric(18, 2),
    "vl_exc" numeric(18, 2),
    "vl_cus_orc_aju" numeric(18, 2),
    "vl_bc_cred" numeric(18, 2),
    "cst_pis" character varying(2),
    "aliq_pis" numeric(18, 4),
    "vl_cred_pis_util" numeric(18, 2),
    "cst_cofins" character varying(2),
    "aliq_cofins" numeric(18, 4),
    "vl_cred_cofins_util" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f210_reg_f200 FOREIGN KEY (id_pai) REFERENCES reg_f200 (id)
);

CREATE INDEX reg_f210_idx_id_pai ON reg_f210 USING btree (id_pai);
CREATE INDEX reg_f210_idx_cnpj_pai ON reg_f210 USING btree (cnpj_pai);

CREATE TABLE reg_f211 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f211_reg_f200 FOREIGN KEY (id_pai) REFERENCES reg_f200 (id)
);

CREATE INDEX reg_f211_idx_id_pai ON reg_f211 USING btree (id_pai);
CREATE INDEX reg_f211_idx_cnpj_pai ON reg_f211 USING btree (cnpj_pai);

CREATE TABLE reg_f500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_rec_caixa" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_desc_pis" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_desc_cofins" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_mod" character varying(2),
    "cfop" character varying(4),
    "cod_cta" character varying(60),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f500_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f500_idx_id_pai ON reg_f500 USING btree (id_pai);
CREATE INDEX reg_f500_idx_cnpj_pai ON reg_f500 USING btree (cnpj_pai);

CREATE TABLE reg_f509 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f509_reg_f500 FOREIGN KEY (id_pai) REFERENCES reg_f500 (id)
);

CREATE INDEX reg_f509_idx_id_pai ON reg_f509 USING btree (id_pai);
CREATE INDEX reg_f509_idx_cnpj_pai ON reg_f509 USING btree (cnpj_pai);

CREATE TABLE reg_f510 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_rec_caixa" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_desc_pis" numeric(18, 2),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_desc_cofins" numeric(18, 2),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_mod" character varying(2),
    "cfop" character varying(4),
    "cod_cta" character varying(60),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f510_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f510_idx_id_pai ON reg_f510 USING btree (id_pai);
CREATE INDEX reg_f510_idx_cnpj_pai ON reg_f510 USING btree (cnpj_pai);

CREATE TABLE reg_f519 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f519_reg_f510 FOREIGN KEY (id_pai) REFERENCES reg_f510 (id)
);

CREATE INDEX reg_f519_idx_id_pai ON reg_f519 USING btree (id_pai);
CREATE INDEX reg_f519_idx_cnpj_pai ON reg_f519 USING btree (cnpj_pai);

CREATE TABLE reg_f525 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_rec" numeric(18, 2),
    "ind_rec" character varying(2),
    "cnpj_cpf" character varying(14),
    "num_doc" character varying(60),
    "cod_item" character varying(60),
    "vl_rec_det" numeric(18, 2),
    "cst_pis" character varying(2),
    "cst_cofins" character varying(2),
    "info_compl" character varying,
    "cod_cta" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f525_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f525_idx_id_pai ON reg_f525 USING btree (id_pai);
CREATE INDEX reg_f525_idx_cnpj_pai ON reg_f525 USING btree (cnpj_pai);

CREATE TABLE reg_f550 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_rec_comp" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_desc_pis" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_desc_cofins" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_mod" character varying(2),
    "cfop" character varying(4),
    "cod_cta" character varying(60),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f550_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f550_idx_id_pai ON reg_f550 USING btree (id_pai);
CREATE INDEX reg_f550_idx_cnpj_pai ON reg_f550 USING btree (cnpj_pai);

CREATE TABLE reg_f559 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f559_reg_f550 FOREIGN KEY (id_pai) REFERENCES reg_f550 (id)
);

CREATE INDEX reg_f559_idx_id_pai ON reg_f559 USING btree (id_pai);
CREATE INDEX reg_f559_idx_cnpj_pai ON reg_f559 USING btree (cnpj_pai);

CREATE TABLE reg_f560 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_rec_comp" numeric(18, 2),
    "cst_pis" character varying(2),
    "vl_desc_pis" numeric(18, 2),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_desc_cofins" numeric(18, 2),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_mod" character varying(2),
    "cfop" character varying(4),
    "cod_cta" character varying(60),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f560_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f560_idx_id_pai ON reg_f560 USING btree (id_pai);
CREATE INDEX reg_f560_idx_cnpj_pai ON reg_f560 USING btree (cnpj_pai);

CREATE TABLE reg_f569 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f569_reg_f560 FOREIGN KEY (id_pai) REFERENCES reg_f560 (id)
);

CREATE INDEX reg_f569_idx_id_pai ON reg_f569 USING btree (id_pai);
CREATE INDEX reg_f569_idx_cnpj_pai ON reg_f569 USING btree (cnpj_pai);

CREATE TABLE reg_f600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_nat_ret" character varying(2),
    "dt_ret" date,
    "vl_bc_ret" numeric(18, 4),
    "vl_ret" numeric(18, 2),
    "cod_rec" character varying(4),
    "ind_nat_rec" character varying(1),
    "cnpj" character varying(14),
    "vl_ret_pis" numeric(18, 2),
    "vl_ret_cofins" numeric(18, 2),
    "ind_dec" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f600_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f600_idx_id_pai ON reg_f600 USING btree (id_pai);
CREATE INDEX reg_f600_idx_cnpj_pai ON reg_f600 USING btree (cnpj_pai);

CREATE TABLE reg_f700 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_ori_ded" character varying(2),
    "ind_nat_ded" character varying(1),
    "vl_ded_pis" numeric(18, 2),
    "vl_ded_cofins" numeric(18, 2),
    "vl_bc_oper" numeric(18, 2),
    "cnpj" character varying(14),
    "inf_comp" character varying(90),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f700_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f700_idx_id_pai ON reg_f700 USING btree (id_pai);
CREATE INDEX reg_f700_idx_cnpj_pai ON reg_f700 USING btree (cnpj_pai);

CREATE TABLE reg_f800 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_nat_even" character varying(2),
    "dt_even" date,
    "cnpj_suced" character varying(14),
    "pa_cont_cred" character varying(6),
    "cod_cred" character varying(3),
    "vl_cred_pis" numeric(18, 2),
    "vl_cred_cofins" numeric(18, 2),
    "per_cred_cis" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f800_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
);

CREATE INDEX reg_f800_idx_id_pai ON reg_f800 USING btree (id_pai);
CREATE INDEX reg_f800_idx_cnpj_pai ON reg_f800 USING btree (cnpj_pai);

CREATE TABLE reg_f990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_f" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_f990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_f990_idx_id_pai ON reg_f990 USING btree (id_pai);
CREATE INDEX reg_f990_idx_cnpj_pai ON reg_f990 USING btree (cnpj_pai);

CREATE TABLE reg_i001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_i001_idx_id_pai ON reg_i001 USING btree (id_pai);
CREATE INDEX reg_i001_idx_cnpj_pai ON reg_i001 USING btree (cnpj_pai);

CREATE TABLE reg_i010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    "ind_ativ" character varying(2),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i010_reg_i001 FOREIGN KEY (id_pai) REFERENCES reg_i001 (id)
);

CREATE INDEX reg_i010_idx_id_pai ON reg_i010 USING btree (id_pai);
CREATE INDEX reg_i010_idx_cnpj_pai ON reg_i010 USING btree (cnpj_pai);

CREATE TABLE reg_i100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_rec_fin" numeric(18, 2),
    "cst" character varying(2),
    "vl_tot_ded_ger" numeric(18, 2),
    "vl_tot_ded_esp" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "aliq_pis" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "inf_comp" character varying(90),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i100_reg_i010 FOREIGN KEY (id_pai) REFERENCES reg_i010 (id)
);

CREATE INDEX reg_i100_idx_id_pai ON reg_i100 USING btree (id_pai);
CREATE INDEX reg_i100_idx_cnpj_pai ON reg_i100 USING btree (cnpj_pai);

CREATE TABLE reg_i199 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i199_reg_i100 FOREIGN KEY (id_pai) REFERENCES reg_i100 (id)
);

CREATE INDEX reg_i199_idx_id_pai ON reg_i199 USING btree (id_pai);
CREATE INDEX reg_i199_idx_cnpj_pai ON reg_i199 USING btree (cnpj_pai);

CREATE TABLE reg_i200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_campo" character varying(2),
    "cod_det" character varying(5),
    "vl_det" numeric(18, 2),
    "cod_cta" character varying(60),
    "inf_comp" character varying(90),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i200_reg_i100 FOREIGN KEY (id_pai) REFERENCES reg_i100 (id)
);

CREATE INDEX reg_i200_idx_id_pai ON reg_i200 USING btree (id_pai);
CREATE INDEX reg_i200_idx_cnpj_pai ON reg_i200 USING btree (cnpj_pai);

CREATE TABLE reg_i299 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i299_reg_i200 FOREIGN KEY (id_pai) REFERENCES reg_i200 (id)
);

CREATE INDEX reg_i299_idx_id_pai ON reg_i299 USING btree (id_pai);
CREATE INDEX reg_i299_idx_cnpj_pai ON reg_i299 USING btree (cnpj_pai);

CREATE TABLE reg_i300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_comp" character varying(8),
    "vl_comp" numeric(18, 2),
    "cod_cta" character varying(60),
    "inf_comp" character varying(90),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i300_reg_i200 FOREIGN KEY (id_pai) REFERENCES reg_i200 (id)
);

CREATE INDEX reg_i300_idx_id_pai ON reg_i300 USING btree (id_pai);
CREATE INDEX reg_i300_idx_cnpj_pai ON reg_i300 USING btree (cnpj_pai);

CREATE TABLE reg_i399 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i399_reg_i300 FOREIGN KEY (id_pai) REFERENCES reg_i300 (id)
);

CREATE INDEX reg_i399_idx_id_pai ON reg_i399 USING btree (id_pai);
CREATE INDEX reg_i399_idx_cnpj_pai ON reg_i399 USING btree (cnpj_pai);

CREATE TABLE reg_i990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_i" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_i990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_i990_idx_id_pai ON reg_i990 USING btree (id_pai);
CREATE INDEX reg_i990_idx_cnpj_pai ON reg_i990 USING btree (cnpj_pai);

CREATE TABLE reg_m001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_m001_idx_id_pai ON reg_m001 USING btree (id_pai);
CREATE INDEX reg_m001_idx_cnpj_pai ON reg_m001 USING btree (cnpj_pai);

CREATE TABLE reg_m100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_cred" character varying(3),
    "ind_cred_ori" character varying(1),
    "vl_bc_cred" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_cred" numeric(18, 2),
    "vl_ajus_acres" numeric(18, 2),
    "vl_ajus_reduc" numeric(18, 2),
    "vl_cred_dif" numeric(18, 2),
    "vl_cred_disp" numeric(18, 2),
    "ind_desc_cred" character varying(1),
    "vl_cred_desc" numeric(18, 2),
    "sld_cred" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m100_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m100_idx_id_pai ON reg_m100 USING btree (id_pai);
CREATE INDEX reg_m100_idx_cnpj_pai ON reg_m100 USING btree (cnpj_pai);

CREATE TABLE reg_m105 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_bc_cred" character varying(2),
    "cst_pis" character varying(2),
    "vl_bc_pis_tot" numeric(18, 2),
    "vl_bc_pis_cum" numeric(18, 2),
    "vl_bc_pis_nc" numeric(18, 2),
    "vl_bc_pis" numeric(18, 2),
    "quant_bc_pis_tot" numeric(18, 3),
    "quant_bc_pis" numeric(18, 3),
    "desc_cred" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m105_reg_m100 FOREIGN KEY (id_pai) REFERENCES reg_m100 (id)
);

CREATE INDEX reg_m105_idx_id_pai ON reg_m105 USING btree (id_pai);
CREATE INDEX reg_m105_idx_cnpj_pai ON reg_m105 USING btree (cnpj_pai);

CREATE TABLE reg_m110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_aj" character varying(1),
    "vl_aj" numeric(18, 2),
    "cod_aj" character varying(2),
    "num_doc" character varying,
    "descr_aj" character varying,
    "dt_ref" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m110_reg_m100 FOREIGN KEY (id_pai) REFERENCES reg_m100 (id)
);

CREATE INDEX reg_m110_idx_id_pai ON reg_m110 USING btree (id_pai);
CREATE INDEX reg_m110_idx_cnpj_pai ON reg_m110 USING btree (cnpj_pai);

CREATE TABLE reg_m115 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "det_valor_aj" numeric(18, 2),
    "cst_pis" character varying(2),
    "det_bc_cred" numeric(18, 3),
    "det_aliq" numeric(18, 4),
    "dt_oper_aj" date,
    "desc_aj" character varying(255),
    "cod_cta" character varying(60),
    "info_compl" character varying(255),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m115_reg_m110 FOREIGN KEY (id_pai) REFERENCES reg_m110 (id)
);

CREATE INDEX reg_m115_idx_id_pai ON reg_m115 USING btree (id_pai);
CREATE INDEX reg_m115_idx_cnpj_pai ON reg_m115 USING btree (cnpj_pai);

CREATE TABLE reg_m200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_tot_cont_nc_per" numeric(18, 2),
    "vl_tot_cred_desc" numeric(18, 2),
    "vl_tot_cred_desc_ant" numeric(18, 2),
    "vl_tot_cont_nc_dev" numeric(18, 2),
    "vl_ret_nc" numeric(18, 2),
    "vl_out_ded_nc" numeric(18, 2),
    "vl_cont_nc_rec" numeric(18, 2),
    "vl_tot_cont_cum_per" numeric(18, 2),
    "vl_ret_cum" numeric(18, 2),
    "vl_out_ded_cum" numeric(18, 2),
    "vl_cont_cum_rec" numeric(18, 2),
    "vl_tot_cont_rec" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m200_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m200_idx_id_pai ON reg_m200 USING btree (id_pai);
CREATE INDEX reg_m200_idx_cnpj_pai ON reg_m200 USING btree (cnpj_pai);

CREATE TABLE reg_m205 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_campo" character varying(2),
    "cod_rec" character varying(6),
    "vl_debito" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m205_reg_m200 FOREIGN KEY (id_pai) REFERENCES reg_m200 (id)
);

CREATE INDEX reg_m205_idx_id_pai ON reg_m205 USING btree (id_pai);
CREATE INDEX reg_m205_idx_cnpj_pai ON reg_m205 USING btree (cnpj_pai);

CREATE TABLE reg_m210 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_cont" character varying(2),
    "vl_rec_brt" numeric(18, 2),
    "vl_bc_cont" numeric(18, 2),
    "aliq_pis" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_quant" numeric(18, 4),
    "vl_cont_apur" numeric(18, 2),
    "vl_ajus_acres" numeric(18, 2),
    "vl_ajus_reduc" numeric(18, 2),
    "vl_cont_difer" numeric(18, 2),
    "vl_cont_difer_ant" numeric(18, 2),
    "vl_cont_per" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m210_reg_m200 FOREIGN KEY (id_pai) REFERENCES reg_m200 (id)
);

CREATE INDEX reg_m210_idx_id_pai ON reg_m210 USING btree (id_pai);
CREATE INDEX reg_m210_idx_cnpj_pai ON reg_m210 USING btree (cnpj_pai);

CREATE TABLE reg_m211 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_tip_coop" character varying(2),
    "vl_bc_cont_ant_exc_coop" numeric(18, 2),
    "vl_exc_coop_ger" numeric(18, 2),
    "vl_exc_esp_coop" numeric(18, 2),
    "vl_bc_cont" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m211_reg_m210 FOREIGN KEY (id_pai) REFERENCES reg_m210 (id)
);

CREATE INDEX reg_m211_idx_id_pai ON reg_m211 USING btree (id_pai);
CREATE INDEX reg_m211_idx_cnpj_pai ON reg_m211 USING btree (cnpj_pai);

CREATE TABLE reg_m220 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_aj" character varying(1),
    "vl_aj" numeric(18, 2),
    "cod_aj" character varying(2),
    "num_doc" character varying,
    "descr_aj" character varying,
    "dt_ref" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m220_reg_m210 FOREIGN KEY (id_pai) REFERENCES reg_m210 (id)
);

CREATE INDEX reg_m220_idx_id_pai ON reg_m220 USING btree (id_pai);
CREATE INDEX reg_m220_idx_cnpj_pai ON reg_m220 USING btree (cnpj_pai);

CREATE TABLE reg_m225 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "det_valor_aj" numeric(18, 2),
    "cst_pis" character varying(2),
    "det_bc_cred" numeric(18, 3),
    "det_aliq" numeric(18, 4),
    "dt_oper_aj" date,
    "desc_aj" character varying(255),
    "cod_cta" character varying(60),
    "info_compl" character varying(255),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m225_reg_m220 FOREIGN KEY (id_pai) REFERENCES reg_m220 (id)
);

CREATE INDEX reg_m225_idx_id_pai ON reg_m225 USING btree (id_pai);
CREATE INDEX reg_m225_idx_cnpj_pai ON reg_m225 USING btree (cnpj_pai);

CREATE TABLE reg_m230 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    "vl_vend" numeric(18, 2),
    "vl_nao_receb" numeric(18, 2),
    "vl_cont_dif" numeric(18, 2),
    "vl_cred_dif" numeric(18, 2),
    "cod_cred" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m230_reg_m210 FOREIGN KEY (id_pai) REFERENCES reg_m210 (id)
);

CREATE INDEX reg_m230_idx_id_pai ON reg_m230 USING btree (id_pai);
CREATE INDEX reg_m230_idx_cnpj_pai ON reg_m230 USING btree (cnpj_pai);

CREATE TABLE reg_m300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_cont" character varying(2),
    "vl_cont_apur_difer" numeric(18, 2),
    "nat_cred_desc" character varying(2),
    "vl_cred_desc_difer" numeric(18, 2),
    "vl_cont_difer_ant" numeric(18, 2),
    "per_apur" character varying(6),
    "dt_receb" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m300_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m300_idx_id_pai ON reg_m300 USING btree (id_pai);
CREATE INDEX reg_m300_idx_cnpj_pai ON reg_m300 USING btree (cnpj_pai);

CREATE TABLE reg_m350 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_tot_fol" numeric(18, 2),
    "vl_exc_bc" numeric(18, 2),
    "vl_tot_bc" numeric(18, 2),
    "aliq_pis_fol" numeric(18, 2),
    "vl_tot_cont_fol" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m350_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m350_idx_id_pai ON reg_m350 USING btree (id_pai);
CREATE INDEX reg_m350_idx_cnpj_pai ON reg_m350 USING btree (cnpj_pai);

CREATE TABLE reg_m400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_pis" character varying(2),
    "vl_tot_rec" numeric(18, 2),
    "cod_cta" character varying(60),
    "desc_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m400_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m400_idx_id_pai ON reg_m400 USING btree (id_pai);
CREATE INDEX reg_m400_idx_cnpj_pai ON reg_m400 USING btree (cnpj_pai);

CREATE TABLE reg_m410 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_rec" character varying(3),
    "vl_rec" numeric(18, 2),
    "cod_cta" character varying(60),
    "desc_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m410_reg_m400 FOREIGN KEY (id_pai) REFERENCES reg_m400 (id)
);

CREATE INDEX reg_m410_idx_id_pai ON reg_m410 USING btree (id_pai);
CREATE INDEX reg_m410_idx_cnpj_pai ON reg_m410 USING btree (cnpj_pai);

CREATE TABLE reg_m500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_cred" character varying(3),
    "ind_cred_ori" character varying(1),
    "vl_bc_cred" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cred" numeric(18, 2),
    "vl_ajus_acres" numeric(18, 2),
    "vl_ajus_reduc" numeric(18, 2),
    "vl_cred_dif" numeric(18, 2),
    "vl_cred_disp" numeric(18, 2),
    "ind_desc_cred" character varying(1),
    "vl_cred_desc" numeric(18, 2),
    "sld_cred" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m500_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m500_idx_id_pai ON reg_m500 USING btree (id_pai);
CREATE INDEX reg_m500_idx_cnpj_pai ON reg_m500 USING btree (cnpj_pai);

CREATE TABLE reg_m505 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_bc_cred" character varying(2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins_tot" numeric(18, 2),
    "vl_bc_cofins_cum" numeric(18, 2),
    "vl_bc_cofins_nc" numeric(18, 2),
    "vl_bc_cofins" numeric(18, 2),
    "quant_bc_cofins_tot" numeric(18, 3),
    "quant_bc_cofins" numeric(18, 3),
    "desc_cred" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m505_reg_m500 FOREIGN KEY (id_pai) REFERENCES reg_m500 (id)
);

CREATE INDEX reg_m505_idx_id_pai ON reg_m505 USING btree (id_pai);
CREATE INDEX reg_m505_idx_cnpj_pai ON reg_m505 USING btree (cnpj_pai);

CREATE TABLE reg_m510 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_aj" character varying(1),
    "vl_aj" numeric(18, 2),
    "cod_aj" character varying(2),
    "num_doc" character varying,
    "descr_aj" character varying,
    "dt_ref" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m510_reg_m500 FOREIGN KEY (id_pai) REFERENCES reg_m500 (id)
);

CREATE INDEX reg_m510_idx_id_pai ON reg_m510 USING btree (id_pai);
CREATE INDEX reg_m510_idx_cnpj_pai ON reg_m510 USING btree (cnpj_pai);

CREATE TABLE reg_m515 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "det_valor_aj" numeric(18, 2),
    "cst_cofins" character varying(2),
    "det_bc_cred" numeric(18, 3),
    "det_aliq" numeric(18, 4),
    "dt_oper_aj" date,
    "desc_aj" character varying(255),
    "cod_cta" character varying(60),
    "info_compl" character varying(255),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m515_reg_m510 FOREIGN KEY (id_pai) REFERENCES reg_m510 (id)
);

CREATE INDEX reg_m515_idx_id_pai ON reg_m515 USING btree (id_pai);
CREATE INDEX reg_m515_idx_cnpj_pai ON reg_m515 USING btree (cnpj_pai);

CREATE TABLE reg_m600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_tot_cont_nc_per" numeric(18, 2),
    "vl_tot_cred_desc" numeric(18, 2),
    "vl_tot_cred_desc_ant" numeric(18, 2),
    "vl_tot_cont_nc_dev" numeric(18, 2),
    "vl_ret_nc" numeric(18, 2),
    "vl_out_ded_nc" numeric(18, 2),
    "vl_cont_nc_rec" numeric(18, 2),
    "vl_tot_cont_cum_per" numeric(18, 2),
    "vl_ret_cum" numeric(18, 2),
    "vl_out_ded_cum" numeric(18, 2),
    "vl_cont_cum_rec" numeric(18, 2),
    "vl_tot_cont_rec" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m600_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m600_idx_id_pai ON reg_m600 USING btree (id_pai);
CREATE INDEX reg_m600_idx_cnpj_pai ON reg_m600 USING btree (cnpj_pai);

CREATE TABLE reg_m605 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_campo" character varying(2),
    "cod_rec" character varying(6),
    "vl_debito" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m605_reg_m600 FOREIGN KEY (id_pai) REFERENCES reg_m600 (id)
);

CREATE INDEX reg_m605_idx_id_pai ON reg_m605 USING btree (id_pai);
CREATE INDEX reg_m605_idx_cnpj_pai ON reg_m605 USING btree (cnpj_pai);

CREATE TABLE reg_m610 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_cont" character varying(2),
    "vl_rec_brt" numeric(18, 2),
    "vl_bc_cont" numeric(18, 2),
    "aliq_cofins" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_quant" numeric(18, 4),
    "vl_cont_apur" numeric(18, 2),
    "vl_ajus_acres" numeric(18, 2),
    "vl_ajus_reduc" numeric(18, 2),
    "vl_cont_difer" numeric(18, 2),
    "vl_cont_difer_ant" numeric(18, 2),
    "vl_cont_per" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m610_reg_m600 FOREIGN KEY (id_pai) REFERENCES reg_m600 (id)
);

CREATE INDEX reg_m610_idx_id_pai ON reg_m610 USING btree (id_pai);
CREATE INDEX reg_m610_idx_cnpj_pai ON reg_m610 USING btree (cnpj_pai);

CREATE TABLE reg_m611 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_tip_coop" character varying(2),
    "vl_bc_cont_ant_exc_coop" numeric(18, 2),
    "vl_exc_coop_ger" numeric(18, 2),
    "vl_exc_esp_coop" numeric(18, 2),
    "vl_bc_cont" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m611_reg_m610 FOREIGN KEY (id_pai) REFERENCES reg_m610 (id)
);

CREATE INDEX reg_m611_idx_id_pai ON reg_m611 USING btree (id_pai);
CREATE INDEX reg_m611_idx_cnpj_pai ON reg_m611 USING btree (cnpj_pai);

CREATE TABLE reg_m620 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_aj" character varying(1),
    "vl_aj" numeric(18, 2),
    "cod_aj" character varying(2),
    "num_doc" character varying,
    "descr_aj" character varying,
    "dt_ref" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m620_reg_m610 FOREIGN KEY (id_pai) REFERENCES reg_m610 (id)
);

CREATE INDEX reg_m620_idx_id_pai ON reg_m620 USING btree (id_pai);
CREATE INDEX reg_m620_idx_cnpj_pai ON reg_m620 USING btree (cnpj_pai);

CREATE TABLE reg_m625 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "det_valor_aj" numeric(18, 2),
    "cst_cofins" character varying(2),
    "det_bc_cred" numeric(18, 3),
    "det_aliq" numeric(18, 4),
    "dt_oper_aj" date,
    "desc_aj" character varying(255),
    "cod_cta" character varying(60),
    "info_compl" character varying(255),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m625_reg_m620 FOREIGN KEY (id_pai) REFERENCES reg_m620 (id)
);

CREATE INDEX reg_m625_idx_id_pai ON reg_m625 USING btree (id_pai);
CREATE INDEX reg_m625_idx_cnpj_pai ON reg_m625 USING btree (cnpj_pai);

CREATE TABLE reg_m630 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    "vl_vend" numeric(18, 2),
    "vl_nao_receb" numeric(18, 2),
    "vl_cont_dif" numeric(18, 2),
    "vl_cred_dif" numeric(18, 2),
    "cod_cred" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m630_reg_m610 FOREIGN KEY (id_pai) REFERENCES reg_m610 (id)
);

CREATE INDEX reg_m630_idx_id_pai ON reg_m630 USING btree (id_pai);
CREATE INDEX reg_m630_idx_cnpj_pai ON reg_m630 USING btree (cnpj_pai);

CREATE TABLE reg_m700 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_cont" character varying(2),
    "vl_cont_apur_difer" numeric(18, 2),
    "nat_bc_cred_desc" character varying(2),
    "vl_cred_desc_difer" numeric(18, 2),
    "vl_cont_difer_ant" numeric(18, 2),
    "per_apur" character varying(6),
    "dt_receb" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m700_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m700_idx_id_pai ON reg_m700 USING btree (id_pai);
CREATE INDEX reg_m700_idx_cnpj_pai ON reg_m700 USING btree (cnpj_pai);

CREATE TABLE reg_m800 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_cofins" character varying(2),
    "vl_tot_rec" numeric(18, 2),
    "cod_cta" character varying(60),
    "desc_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m800_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
);

CREATE INDEX reg_m800_idx_id_pai ON reg_m800 USING btree (id_pai);
CREATE INDEX reg_m800_idx_cnpj_pai ON reg_m800 USING btree (cnpj_pai);

CREATE TABLE reg_m810 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nat_rec" character varying(3),
    "vl_rec" numeric(18, 2),
    "cod_cta" character varying(60),
    "desc_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m810_reg_m800 FOREIGN KEY (id_pai) REFERENCES reg_m800 (id)
);

CREATE INDEX reg_m810_idx_id_pai ON reg_m810 USING btree (id_pai);
CREATE INDEX reg_m810_idx_cnpj_pai ON reg_m810 USING btree (cnpj_pai);

CREATE TABLE reg_m990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_m" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_m990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_m990_idx_id_pai ON reg_m990 USING btree (id_pai);
CREATE INDEX reg_m990_idx_cnpj_pai ON reg_m990 USING btree (cnpj_pai);

CREATE TABLE reg_p001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_p001_idx_id_pai ON reg_p001 USING btree (id_pai);
CREATE INDEX reg_p001_idx_cnpj_pai ON reg_p001 USING btree (cnpj_pai);

CREATE TABLE reg_p010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cnpj" character varying(14),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p010_reg_p001 FOREIGN KEY (id_pai) REFERENCES reg_p001 (id)
);

CREATE INDEX reg_p010_idx_id_pai ON reg_p010 USING btree (id_pai);
CREATE INDEX reg_p010_idx_cnpj_pai ON reg_p010 USING btree (cnpj_pai);

CREATE TABLE reg_p100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini" date,
    "dt_fim" date,
    "vl_rec_tot_est" numeric(18, 2),
    "cod_ativ_econ" character varying(8),
    "vl_rec_ativ_estab" numeric(18, 2),
    "vl_exc" numeric(18, 2),
    "vl_bc_cont" numeric(18, 2),
    "aliq_cont" numeric(18, 4),
    "vl_cont_apu" numeric(18, 2),
    "cod_cta" character varying(60),
    "info_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p100_reg_p010 FOREIGN KEY (id_pai) REFERENCES reg_p010 (id)
);

CREATE INDEX reg_p100_idx_id_pai ON reg_p100 USING btree (id_pai);
CREATE INDEX reg_p100_idx_cnpj_pai ON reg_p100 USING btree (cnpj_pai);

CREATE TABLE reg_p110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_campo" character varying(2),
    "cod_det" character varying(8),
    "det_valor" numeric(18, 2),
    "inf_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p110_reg_p100 FOREIGN KEY (id_pai) REFERENCES reg_p100 (id)
);

CREATE INDEX reg_p110_idx_id_pai ON reg_p110 USING btree (id_pai);
CREATE INDEX reg_p110_idx_cnpj_pai ON reg_p110 USING btree (cnpj_pai);

CREATE TABLE reg_p199 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_proc" character varying(20),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p199_reg_p100 FOREIGN KEY (id_pai) REFERENCES reg_p100 (id)
);

CREATE INDEX reg_p199_idx_id_pai ON reg_p199 USING btree (id_pai);
CREATE INDEX reg_p199_idx_cnpj_pai ON reg_p199 USING btree (cnpj_pai);

CREATE TABLE reg_p200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "per_ref" character varying(6),
    "vl_tot_cont_apu" numeric(18, 2),
    "vl_tot_aj_reduc" numeric(18, 2),
    "vl_tot_aj_acres" numeric(18, 2),
    "vl_tot_cont_dev" numeric(18, 2),
    "cod_rec" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p200_reg_p001 FOREIGN KEY (id_pai) REFERENCES reg_p001 (id)
);

CREATE INDEX reg_p200_idx_id_pai ON reg_p200 USING btree (id_pai);
CREATE INDEX reg_p200_idx_cnpj_pai ON reg_p200 USING btree (cnpj_pai);

CREATE TABLE reg_p210 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_aj" character varying(1),
    "vl_aj" numeric(18, 2),
    "cod_aj" character varying(2),
    "num_doc" character varying,
    "descr_aj" character varying,
    "dt_ref" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p210_reg_p200 FOREIGN KEY (id_pai) REFERENCES reg_p200 (id)
);

CREATE INDEX reg_p210_idx_id_pai ON reg_p210 USING btree (id_pai);
CREATE INDEX reg_p210_idx_cnpj_pai ON reg_p210 USING btree (cnpj_pai);

CREATE TABLE reg_p990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_p" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_p990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_p990_idx_id_pai ON reg_p990 USING btree (id_pai);
CREATE INDEX reg_p990_idx_cnpj_pai ON reg_p990 USING btree (cnpj_pai);
