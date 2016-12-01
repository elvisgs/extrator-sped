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
    "cod_fin" character varying(1),
    "dt_ini" date,
    "dt_fin" date,
    "nome" character varying(100),
    "cnpj" character varying(14),
    "cpf" character varying(11),
    "uf" character varying(2),
    "ie" character varying(14),
    "cod_mun" character varying(7),
    "im" character varying,
    "suframa" character varying(9),
    "ind_perfil" character varying(1),
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

CREATE TABLE reg_0005 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "fantasia" character varying(60),
    "cep" character varying(8),
    "endereco" character varying(60),
    "num" character varying(10),
    "compl" character varying(60),
    "bairro" character varying(60),
    "fone" character varying(11),
    "fax" character varying(11),
    "email" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0005_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0005_idx_id_pai ON reg_0005 USING btree (id_pai);
CREATE INDEX reg_0005_idx_cnpj_pai ON reg_0005 USING btree (cnpj_pai);

CREATE TABLE reg_0015 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "uf_st" character varying(2),
    "ie_st" character varying(14),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0015_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0015_idx_id_pai ON reg_0015 USING btree (id_pai);
CREATE INDEX reg_0015_idx_cnpj_pai ON reg_0015 USING btree (cnpj_pai);

CREATE TABLE reg_0100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "nome" character varying(60),
    "cpf" character varying(11),
    "crc" character varying(15),
    "cnpj" character varying(14),
    "cep" character varying(8),
    "endereco" character varying(60),
    "num" character varying(10),
    "compl" character varying(60),
    "bairro" character varying(60),
    "fone" character varying(11),
    "fax" character varying(11),
    "email" character varying(60),
    "cod_mun" character varying(7),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0100_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0100_idx_id_pai ON reg_0100 USING btree (id_pai);
CREATE INDEX reg_0100_idx_cnpj_pai ON reg_0100 USING btree (cnpj_pai);

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
    "endereco" character varying(60),
    "num" character varying(10),
    "compl" character varying(60),
    "bairro" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0150_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0150_idx_id_pai ON reg_0150 USING btree (id_pai);
CREATE INDEX reg_0150_idx_cnpj_pai ON reg_0150 USING btree (cnpj_pai);

CREATE TABLE reg_0175 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_alt" date,
    "nr_campo" character varying(2),
    "cont_ant" character varying(100),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0175_reg_0150 FOREIGN KEY (id_pai) REFERENCES reg_0150 (id)
);

CREATE INDEX reg_0175_idx_id_pai ON reg_0175 USING btree (id_pai);
CREATE INDEX reg_0175_idx_cnpj_pai ON reg_0175 USING btree (cnpj_pai);

CREATE TABLE reg_0190 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "unid" character varying(6),
    "descr" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0190_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0190_idx_id_pai ON reg_0190 USING btree (id_pai);
CREATE INDEX reg_0190_idx_cnpj_pai ON reg_0190 USING btree (cnpj_pai);

CREATE TABLE reg_0200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "descr_item" character varying,
    "cod_barra" character varying(20),
    "cod_ant_item" character varying(60),
    "unid_inv" character varying(6),
    "tipo_item" character varying(2),
    "cod_ncm" character varying(8),
    "ex_ipi" character varying(3),
    "cod_gen" character varying(2),
    "cod_lst" character varying(4),
    "aliq_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0200_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
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

CREATE TABLE reg_0210 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item_comp" character varying(60),
    "qtd_comp" numeric(18, 6),
    "perda" numeric(18, 4),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0210_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
);

CREATE INDEX reg_0210_idx_id_pai ON reg_0210 USING btree (id_pai);
CREATE INDEX reg_0210_idx_cnpj_pai ON reg_0210 USING btree (cnpj_pai);

CREATE TABLE reg_0220 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "unid_conv" character varying(6),
    "fat_conv" numeric(18, 6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0220_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
);

CREATE INDEX reg_0220_idx_id_pai ON reg_0220 USING btree (id_pai);
CREATE INDEX reg_0220_idx_cnpj_pai ON reg_0220 USING btree (cnpj_pai);

CREATE TABLE reg_0300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_ind_bem" character varying(60),
    "ident_merc" character varying(1),
    "descr_item" character varying,
    "cod_prnc" character varying(60),
    "cod_cta" character varying(60),
    "nr_parc" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0300_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0300_idx_id_pai ON reg_0300 USING btree (id_pai);
CREATE INDEX reg_0300_idx_cnpj_pai ON reg_0300 USING btree (cnpj_pai);

CREATE TABLE reg_0305 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_ccus" character varying(60),
    "func" character varying,
    "vida_util" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0305_reg_0300 FOREIGN KEY (id_pai) REFERENCES reg_0300 (id)
);

CREATE INDEX reg_0305_idx_id_pai ON reg_0305 USING btree (id_pai);
CREATE INDEX reg_0305_idx_cnpj_pai ON reg_0305 USING btree (cnpj_pai);

CREATE TABLE reg_0400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_nat" character varying(10),
    "descr_nat" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0400_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0400_idx_id_pai ON reg_0400 USING btree (id_pai);
CREATE INDEX reg_0400_idx_cnpj_pai ON reg_0400 USING btree (cnpj_pai);

CREATE TABLE reg_0450 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inf" character varying(6),
    "txt" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0450_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0450_idx_id_pai ON reg_0450 USING btree (id_pai);
CREATE INDEX reg_0450_idx_cnpj_pai ON reg_0450 USING btree (cnpj_pai);

CREATE TABLE reg_0460 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_obs" character varying(6),
    "txt" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_0460_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
);

CREATE INDEX reg_0460_idx_id_pai ON reg_0460 USING btree (id_pai);
CREATE INDEX reg_0460_idx_cnpj_pai ON reg_0460 USING btree (cnpj_pai);

CREATE TABLE reg_0500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_alt" date,
    "cod_nat_cc" character varying(2),
    "ind_cta" character varying(1),
    "nivel" character varying(5),
    "cod_cta" character varying(60),
    "nome_cta" character varying(60),
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
    "ind_exp" character varying(1),
    "ind_ccrf" character varying(1),
    "ind_comb" character varying(1),
    "ind_usina" character varying(1),
    "ind_va" character varying(1),
    "ind_ee" character varying(1),
    "ind_cart" character varying(1),
    "ind_form" character varying(1),
    "ind_aer" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1010_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1010_idx_id_pai ON reg_1010 USING btree (id_pai);
CREATE INDEX reg_1010_idx_cnpj_pai ON reg_1010 USING btree (cnpj_pai);

CREATE TABLE reg_1100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_doc" character varying(1),
    "nro_de" character varying(11),
    "dt_de" date,
    "nat_exp" character varying(1),
    "nro_re" character varying(12),
    "dt_re" date,
    "chc_emb" character varying(18),
    "dt_chc" date,
    "dt_avb" date,
    "tp_chc" character varying(2),
    "pais" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1100_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1100_idx_id_pai ON reg_1100 USING btree (id_pai);
CREATE INDEX reg_1100_idx_cnpj_pai ON reg_1100 USING btree (cnpj_pai);

CREATE TABLE reg_1105 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(3),
    "num_doc" character varying(9),
    "chv_nfe" character varying(44),
    "dt_doc" date,
    "cod_item" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1105_reg_1100 FOREIGN KEY (id_pai) REFERENCES reg_1100 (id)
);

CREATE INDEX reg_1105_idx_id_pai ON reg_1105 USING btree (id_pai);
CREATE INDEX reg_1105_idx_cnpj_pai ON reg_1105 USING btree (cnpj_pai);

CREATE TABLE reg_1110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "num_doc" character varying(9),
    "dt_doc" date,
    "chv_nfe" character varying(44),
    "nr_memo" integer,
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1110_reg_1105 FOREIGN KEY (id_pai) REFERENCES reg_1105 (id)
);

CREATE INDEX reg_1110_idx_id_pai ON reg_1110 USING btree (id_pai);
CREATE INDEX reg_1110_idx_cnpj_pai ON reg_1110 USING btree (cnpj_pai);

CREATE TABLE reg_1200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_aj_apur" character varying(8),
    "sld_cred" numeric(18, 2),
    "cred_apr" numeric(18, 2),
    "cred_receb" numeric(18, 2),
    "cred_util" numeric(18, 2),
    "sld_cred_fim" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1200_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1200_idx_id_pai ON reg_1200 USING btree (id_pai);
CREATE INDEX reg_1200_idx_cnpj_pai ON reg_1200 USING btree (cnpj_pai);

CREATE TABLE reg_1210 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "tipo_util" character varying(4),
    "nr_doc" character varying,
    "vl_cred_util" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1210_reg_1200 FOREIGN KEY (id_pai) REFERENCES reg_1200 (id)
);

CREATE INDEX reg_1210_idx_id_pai ON reg_1210 USING btree (id_pai);
CREATE INDEX reg_1210_idx_cnpj_pai ON reg_1210 USING btree (cnpj_pai);

CREATE TABLE reg_1300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "dt_fech" date,
    "estq_abert" numeric(18, 3),
    "vol_entr" numeric(18, 3),
    "vol_disp" numeric(18, 3),
    "vol_saidas" numeric(18, 3),
    "estq_escr" numeric(18, 3),
    "val_aj_perda" numeric(18, 3),
    "val_aj_ganho" numeric(18, 3),
    "fech_fisico" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1300_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1300_idx_id_pai ON reg_1300 USING btree (id_pai);
CREATE INDEX reg_1300_idx_cnpj_pai ON reg_1300 USING btree (cnpj_pai);

CREATE TABLE reg_1310 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_tanque" character varying(3),
    "estq_abert" numeric(18, 3),
    "vol_entr" numeric(18, 3),
    "vol_disp" numeric(18, 3),
    "vol_saidas" numeric(18, 3),
    "estq_escr" numeric(18, 3),
    "val_aj_perda" numeric(18, 3),
    "val_aj_ganho" numeric(18, 3),
    "fech_fisico" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1310_reg_1300 FOREIGN KEY (id_pai) REFERENCES reg_1300 (id)
);

CREATE INDEX reg_1310_idx_id_pai ON reg_1310 USING btree (id_pai);
CREATE INDEX reg_1310_idx_cnpj_pai ON reg_1310 USING btree (cnpj_pai);

CREATE TABLE reg_1320 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_bico" integer,
    "nr_interv" integer,
    "mot_interv" character varying(50),
    "nom_interv" character varying(30),
    "cnpj_interv" character varying(14),
    "cpf_interv" character varying(11),
    "val_fecha" numeric(18, 3),
    "val_abert" numeric(18, 3),
    "vol_aferi" numeric(18, 3),
    "vol_vendas" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1320_reg_1310 FOREIGN KEY (id_pai) REFERENCES reg_1310 (id)
);

CREATE INDEX reg_1320_idx_id_pai ON reg_1320 USING btree (id_pai);
CREATE INDEX reg_1320_idx_cnpj_pai ON reg_1320 USING btree (cnpj_pai);

CREATE TABLE reg_1350 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "serie" character varying,
    "fabricante" character varying(60),
    "modelo" character varying,
    "tipo_medicao" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1350_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1350_idx_id_pai ON reg_1350 USING btree (id_pai);
CREATE INDEX reg_1350_idx_cnpj_pai ON reg_1350 USING btree (cnpj_pai);

CREATE TABLE reg_1360 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_lacre" character varying(20),
    "dat_aplicacao" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1360_reg_1350 FOREIGN KEY (id_pai) REFERENCES reg_1350 (id)
);

CREATE INDEX reg_1360_idx_id_pai ON reg_1360 USING btree (id_pai);
CREATE INDEX reg_1360_idx_cnpj_pai ON reg_1360 USING btree (cnpj_pai);

CREATE TABLE reg_1370 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_bico" character varying(3),
    "cod_item" character varying(60),
    "num_tanque" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1370_reg_1350 FOREIGN KEY (id_pai) REFERENCES reg_1350 (id)
);

CREATE INDEX reg_1370_idx_id_pai ON reg_1370 USING btree (id_pai);
CREATE INDEX reg_1370_idx_cnpj_pai ON reg_1370 USING btree (cnpj_pai);

CREATE TABLE reg_1390 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_prod" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1390_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1390_idx_id_pai ON reg_1390 USING btree (id_pai);
CREATE INDEX reg_1390_idx_cnpj_pai ON reg_1390 USING btree (cnpj_pai);

CREATE TABLE reg_1391 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_registro" date,
    "qtd_moid" numeric(18, 2),
    "estq_ini" numeric(18, 2),
    "qtd_produz" numeric(18, 2),
    "ent_anid_hid" numeric(18, 2),
    "outr_entr" numeric(18, 2),
    "perda" numeric(18, 2),
    "cons" numeric(18, 2),
    "sai_ani_hid" numeric(18, 2),
    "saidas" numeric(18, 2),
    "estq_fin" numeric(18, 2),
    "estq_ini_mel" numeric(18, 2),
    "prod_dia_mel" numeric(18, 2),
    "util_mel" numeric(18, 2),
    "prod_alc_mel" numeric(18, 2),
    "obs" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1391_reg_1390 FOREIGN KEY (id_pai) REFERENCES reg_1390 (id)
);

CREATE INDEX reg_1391_idx_id_pai ON reg_1391 USING btree (id_pai);
CREATE INDEX reg_1391_idx_cnpj_pai ON reg_1391 USING btree (cnpj_pai);

CREATE TABLE reg_1400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "mun" character varying(7),
    "valor" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1400_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1400_idx_id_pai ON reg_1400 USING btree (id_pai);
CREATE INDEX reg_1400_idx_cnpj_pai ON reg_1400 USING btree (cnpj_pai);

CREATE TABLE reg_1500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "cod_cons" character varying(2),
    "num_doc" character varying(9),
    "dt_doc" date,
    "dt_e_s" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_forn" numeric(18, 2),
    "vl_serv_nt" numeric(18, 2),
    "vl_terc" numeric(18, 2),
    "vl_da" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "cod_inf" character varying(6),
    "vl_pis" numeric(18, 2),
    "vl_cofis" numeric(18, 2),
    "tp_ligacao" character varying(1),
    "cod_grupo_tensao" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1500_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1500_idx_id_pai ON reg_1500 USING btree (id_pai);
CREATE INDEX reg_1500_idx_cnpj_pai ON reg_1500 USING btree (cnpj_pai);

CREATE TABLE reg_1510 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    "cod_class" character varying(4),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "vl_bc_icms" numeric(18, 2),
    "aliq_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "aliq_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "ind_rec" character varying(1),
    "cod_part" character varying(60),
    "vl_pis" numeric(18, 2),
    "vl_cofis" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1510_reg_1500 FOREIGN KEY (id_pai) REFERENCES reg_1500 (id)
);

CREATE INDEX reg_1510_idx_id_pai ON reg_1510 USING btree (id_pai);
CREATE INDEX reg_1510_idx_cnpj_pai ON reg_1510 USING btree (cnpj_pai);

CREATE TABLE reg_1600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "tot_credito" numeric(18, 2),
    "tot_debito" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1600_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1600_idx_id_pai ON reg_1600 USING btree (id_pai);
CREATE INDEX reg_1600_idx_cnpj_pai ON reg_1600 USING btree (cnpj_pai);

CREATE TABLE reg_1700 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_disp" character varying(2),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc_ini" character varying(12),
    "num_doc_fin" character varying(12),
    "num_aut" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1700_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1700_idx_id_pai ON reg_1700 USING btree (id_pai);
CREATE INDEX reg_1700_idx_cnpj_pai ON reg_1700 USING btree (cnpj_pai);

CREATE TABLE reg_1710 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_doc_ini" character varying(12),
    "num_doc_fin" character varying(12),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1710_reg_1700 FOREIGN KEY (id_pai) REFERENCES reg_1700 (id)
);

CREATE INDEX reg_1710_idx_id_pai ON reg_1710 USING btree (id_pai);
CREATE INDEX reg_1710_idx_cnpj_pai ON reg_1710 USING btree (cnpj_pai);

CREATE TABLE reg_1800 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_carga" numeric(18, 2),
    "vl_pass" numeric(18, 2),
    "vl_fat" numeric(18, 2),
    "ind_rat" numeric(18, 6),
    "vl_icms_ant" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms_apur" numeric(18, 2),
    "vl_bc_icms_apur" numeric(18, 2),
    "vl_dif" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1800_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1800_idx_id_pai ON reg_1800 USING btree (id_pai);
CREATE INDEX reg_1800_idx_cnpj_pai ON reg_1800 USING btree (cnpj_pai);

CREATE TABLE reg_1900 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_apur_icms" character varying(1),
    "descr_compl_out_apur" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1900_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
);

CREATE INDEX reg_1900_idx_id_pai ON reg_1900 USING btree (id_pai);
CREATE INDEX reg_1900_idx_cnpj_pai ON reg_1900 USING btree (cnpj_pai);

CREATE TABLE reg_1910 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini" date,
    "dt_fin" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1910_reg_1900 FOREIGN KEY (id_pai) REFERENCES reg_1900 (id)
);

CREATE INDEX reg_1910_idx_id_pai ON reg_1910 USING btree (id_pai);
CREATE INDEX reg_1910_idx_cnpj_pai ON reg_1910 USING btree (cnpj_pai);

CREATE TABLE reg_1920 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_tot_transf_debitos_oa" numeric(18, 2),
    "vl_tot_aj_debitos_oa" numeric(18, 2),
    "vl_estornos_cred_oa" numeric(18, 2),
    "vl_tot_transf_creditos_oa" numeric(18, 2),
    "vl_tot_aj_creditos_oa" numeric(18, 2),
    "vl_estornos_deb_oa" numeric(18, 2),
    "vl_sld_credor_ant_oa" numeric(18, 2),
    "vl_sld_apurado_oa" numeric(18, 2),
    "vl_tot_ded" numeric(18, 2),
    "vl_icms_recolher_oa" numeric(18, 2),
    "vl_sld_credor_transp_oa" numeric(18, 2),
    "deb_esp_oa" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1920_reg_1910 FOREIGN KEY (id_pai) REFERENCES reg_1910 (id)
);

CREATE INDEX reg_1920_idx_id_pai ON reg_1920 USING btree (id_pai);
CREATE INDEX reg_1920_idx_cnpj_pai ON reg_1920 USING btree (cnpj_pai);

CREATE TABLE reg_1921 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_aj_apur" character varying(8),
    "descr_compl_aj" character varying,
    "vl_aj_apur" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1921_reg_1920 FOREIGN KEY (id_pai) REFERENCES reg_1920 (id)
);

CREATE INDEX reg_1921_idx_id_pai ON reg_1921 USING btree (id_pai);
CREATE INDEX reg_1921_idx_cnpj_pai ON reg_1921 USING btree (cnpj_pai);

CREATE TABLE reg_1922 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_da" character varying,
    "num_proc" character varying(15),
    "ind_proc" character varying(1),
    "proc" character varying,
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1922_reg_1921 FOREIGN KEY (id_pai) REFERENCES reg_1921 (id)
);

CREATE INDEX reg_1922_idx_id_pai ON reg_1922 USING btree (id_pai);
CREATE INDEX reg_1922_idx_cnpj_pai ON reg_1922 USING btree (cnpj_pai);

CREATE TABLE reg_1923 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    "cod_item" character varying(60),
    "vl_aj_item" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1923_reg_1921 FOREIGN KEY (id_pai) REFERENCES reg_1921 (id)
);

CREATE INDEX reg_1923_idx_id_pai ON reg_1923 USING btree (id_pai);
CREATE INDEX reg_1923_idx_cnpj_pai ON reg_1923 USING btree (cnpj_pai);

CREATE TABLE reg_1925 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inf_adic" character varying(8),
    "vl_inf_adic" numeric(18, 2),
    "desc_compl_aj" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1925_reg_1920 FOREIGN KEY (id_pai) REFERENCES reg_1920 (id)
);

CREATE INDEX reg_1925_idx_id_pai ON reg_1925 USING btree (id_pai);
CREATE INDEX reg_1925_idx_cnpj_pai ON reg_1925 USING btree (cnpj_pai);

CREATE TABLE reg_1926 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_or" character varying(3),
    "vl_or" numeric(18, 2),
    "dt_vcto" date,
    "cod_rec" character varying,
    "num_proc" character varying(15),
    "ind_proc" numeric(18, 2),
    "proc" character varying,
    "txt_compl" character varying,
    "mes_ref" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_1926_reg_1920 FOREIGN KEY (id_pai) REFERENCES reg_1920 (id)
);

CREATE INDEX reg_1926_idx_id_pai ON reg_1926 USING btree (id_pai);
CREATE INDEX reg_1926_idx_cnpj_pai ON reg_1926 USING btree (cnpj_pai);

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

CREATE TABLE reg_c001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_c001_idx_id_pai ON reg_c001 USING btree (id_pai);
CREATE INDEX reg_c001_idx_cnpj_pai ON reg_c001 USING btree (cnpj_pai);

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
    CONSTRAINT fk_reg_c100_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c100_idx_id_pai ON reg_c100 USING btree (id_pai);
CREATE INDEX reg_c100_idx_cnpj_pai ON reg_c100 USING btree (cnpj_pai);

CREATE TABLE reg_c105 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "oper" character varying(1),
    "cod_uf" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c105_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c105_idx_id_pai ON reg_c105 USING btree (id_pai);
CREATE INDEX reg_c105_idx_cnpj_pai ON reg_c105 USING btree (cnpj_pai);

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
    "num_proc" character varying(15),
    "ind_proc" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c111_reg_c110 FOREIGN KEY (id_pai) REFERENCES reg_c110 (id)
);

CREATE INDEX reg_c111_idx_id_pai ON reg_c111 USING btree (id_pai);
CREATE INDEX reg_c111_idx_cnpj_pai ON reg_c111 USING btree (cnpj_pai);

CREATE TABLE reg_c112 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_da" character varying(1),
    "uf" character varying(2),
    "num_da" character varying,
    "cod_aut" character varying,
    "vl_da" numeric(18, 2),
    "dt_vcto" date,
    "dt_pgto" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c112_reg_c110 FOREIGN KEY (id_pai) REFERENCES reg_c110 (id)
);

CREATE INDEX reg_c112_idx_id_pai ON reg_c112 USING btree (id_pai);
CREATE INDEX reg_c112_idx_cnpj_pai ON reg_c112 USING btree (cnpj_pai);

CREATE TABLE reg_c113 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c113_reg_c110 FOREIGN KEY (id_pai) REFERENCES reg_c110 (id)
);

CREATE INDEX reg_c113_idx_id_pai ON reg_c113 USING btree (id_pai);
CREATE INDEX reg_c113_idx_cnpj_pai ON reg_c113 USING btree (cnpj_pai);

CREATE TABLE reg_c114 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ecf_fab" character varying(21),
    "ecf_cx" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c114_reg_c110 FOREIGN KEY (id_pai) REFERENCES reg_c110 (id)
);

CREATE INDEX reg_c114_idx_id_pai ON reg_c114 USING btree (id_pai);
CREATE INDEX reg_c114_idx_cnpj_pai ON reg_c114 USING btree (cnpj_pai);

CREATE TABLE reg_c115 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_carga" character varying(1),
    "cnpj_col" character varying(14),
    "ie_col" character varying(14),
    "cpf_col" character varying(11),
    "cod_mun_col" character varying(7),
    "cnpj_entg" character varying(14),
    "ie_entg" character varying(14),
    "cpf_entg" character varying(11),
    "cod_mun_entg" character varying(7),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c115_reg_c110 FOREIGN KEY (id_pai) REFERENCES reg_c110 (id)
);

CREATE INDEX reg_c115_idx_id_pai ON reg_c115 USING btree (id_pai);
CREATE INDEX reg_c115_idx_cnpj_pai ON reg_c115 USING btree (cnpj_pai);

CREATE TABLE reg_c116 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "nr_sat" character varying(9),
    "chv_cfe" character varying(44),
    "num_cfe" character varying(6),
    "dt_doc" character varying(8),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c116_reg_c110 FOREIGN KEY (id_pai) REFERENCES reg_c110 (id)
);

CREATE INDEX reg_c116_idx_id_pai ON reg_c116 USING btree (id_pai);
CREATE INDEX reg_c116_idx_cnpj_pai ON reg_c116 USING btree (cnpj_pai);

CREATE TABLE reg_c120 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_doc_imp" character varying(1),
    "num_doc_imp" character varying(12),
    "pis_imp" numeric(18, 2),
    "cofins_imp" numeric(18, 2),
    "num_acdraw" character varying(20),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c120_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c120_idx_id_pai ON reg_c120 USING btree (id_pai);
CREATE INDEX reg_c120_idx_cnpj_pai ON reg_c120 USING btree (cnpj_pai);

CREATE TABLE reg_c130 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_serv_nt" numeric(18, 2),
    "vl_bc_issqn" numeric(18, 2),
    "vl_issqn" numeric(18, 2),
    "vl_bc_irrf" numeric(18, 2),
    "vl_irrf" numeric(18, 2),
    "vl_bc_prev" numeric(18, 2),
    "vl_prev" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c130_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c130_idx_id_pai ON reg_c130 USING btree (id_pai);
CREATE INDEX reg_c130_idx_cnpj_pai ON reg_c130 USING btree (cnpj_pai);

CREATE TABLE reg_c140 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_emit" character varying(1),
    "ind_tit" character varying(2),
    "desc_tit" character varying,
    "num_tit" character varying,
    "qtd_parc" character varying(2),
    "vl_tit" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c140_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c140_idx_id_pai ON reg_c140 USING btree (id_pai);
CREATE INDEX reg_c140_idx_cnpj_pai ON reg_c140 USING btree (cnpj_pai);

CREATE TABLE reg_c141 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_parc" character varying(2),
    "dt_vcto" date,
    "vl_parc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c141_reg_c140 FOREIGN KEY (id_pai) REFERENCES reg_c140 (id)
);

CREATE INDEX reg_c141_idx_id_pai ON reg_c141 USING btree (id_pai);
CREATE INDEX reg_c141_idx_cnpj_pai ON reg_c141 USING btree (cnpj_pai);

CREATE TABLE reg_c160 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "veic_id" character varying(7),
    "qtd_vol" integer,
    "peso_brt" numeric(18, 2),
    "peso_liq" numeric(18, 2),
    "uf_id" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c160_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c160_idx_id_pai ON reg_c160 USING btree (id_pai);
CREATE INDEX reg_c160_idx_cnpj_pai ON reg_c160 USING btree (cnpj_pai);

CREATE TABLE reg_c165 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "veic_id" character varying(7),
    "cod_aut" character varying,
    "nr_passe" character varying,
    "hora" character varying(6),
    "temper" numeric(18, 1),
    "qtd_vol" integer,
    "peso_brt" numeric(18, 2),
    "peso_liq" numeric(18, 2),
    "nom_mot" character varying(60),
    "cpf" character varying(11),
    "uf_id" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c165_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c165_idx_id_pai ON reg_c165 USING btree (id_pai);
CREATE INDEX reg_c165_idx_cnpj_pai ON reg_c165 USING btree (cnpj_pai);

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
    "aliq_pis_perc" numeric(18, 4),
    "quant_bc_pis" numeric(18, 3),
    "aliq_pis_reais" numeric(18, 4),
    "vl_pis" numeric(18, 2),
    "cst_cofins" character varying(2),
    "vl_bc_cofins" numeric(18, 2),
    "aliq_cofins_perc" numeric(18, 4),
    "quant_bc_cofins" numeric(18, 3),
    "aliq_cofins_reais" numeric(18, 4),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c170_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c170_idx_id_pai ON reg_c170 USING btree (id_pai);
CREATE INDEX reg_c170_idx_cnpj_pai ON reg_c170 USING btree (cnpj_pai);

CREATE TABLE reg_c171 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_tanque" character varying(3),
    "qtde" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c171_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c171_idx_id_pai ON reg_c171 USING btree (id_pai);
CREATE INDEX reg_c171_idx_cnpj_pai ON reg_c171 USING btree (cnpj_pai);

CREATE TABLE reg_c172 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_bc_issqn" numeric(18, 2),
    "aliq_issqn" numeric(18, 2),
    "vl_issqn" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c172_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c172_idx_id_pai ON reg_c172 USING btree (id_pai);
CREATE INDEX reg_c172_idx_cnpj_pai ON reg_c172 USING btree (cnpj_pai);

CREATE TABLE reg_c173 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "lote_med" character varying,
    "qtd_item" numeric(18, 3),
    "dt_fab" date,
    "dt_val" date,
    "ind_med" character varying(1),
    "tp_prod" character varying(1),
    "vl_tab_max" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c173_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c173_idx_id_pai ON reg_c173 USING btree (id_pai);
CREATE INDEX reg_c173_idx_cnpj_pai ON reg_c173 USING btree (cnpj_pai);

CREATE TABLE reg_c174 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_arm" character varying(1),
    "num_arm" character varying,
    "descr_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c174_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c174_idx_id_pai ON reg_c174 USING btree (id_pai);
CREATE INDEX reg_c174_idx_cnpj_pai ON reg_c174 USING btree (cnpj_pai);

CREATE TABLE reg_c175 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_veic_oper" character varying(1),
    "cnpj" character varying(14),
    "uf" character varying(2),
    "chassi_veic" character varying(17),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c175_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c175_idx_id_pai ON reg_c175 USING btree (id_pai);
CREATE INDEX reg_c175_idx_cnpj_pai ON reg_c175 USING btree (cnpj_pai);

CREATE TABLE reg_c176 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod_ult_e" character varying(2),
    "num_doc_ult_e" character varying(9),
    "ser_ult_e" character varying(3),
    "dt_ult_e" date,
    "cod_part_ult_e" character varying(60),
    "quant_ult_e" numeric(18, 3),
    "vl_unit_ult_e" numeric(18, 3),
    "vl_unit_bc_st" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c176_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c176_idx_id_pai ON reg_c176 USING btree (id_pai);
CREATE INDEX reg_c176_idx_cnpj_pai ON reg_c176 USING btree (cnpj_pai);

CREATE TABLE reg_c177 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_selo_ipi" character varying(6),
    "qt_selo_ipi" character varying(12),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c177_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c177_idx_id_pai ON reg_c177 USING btree (id_pai);
CREATE INDEX reg_c177_idx_cnpj_pai ON reg_c177 USING btree (cnpj_pai);

CREATE TABLE reg_c178 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cl_enq" character varying(5),
    "vl_unid" numeric(18, 2),
    "quant_pad" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c178_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c178_idx_id_pai ON reg_c178 USING btree (id_pai);
CREATE INDEX reg_c178_idx_cnpj_pai ON reg_c178 USING btree (cnpj_pai);

CREATE TABLE reg_c179 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "bc_st_orig_dest" numeric(18, 2),
    "icms_st_rep" numeric(18, 2),
    "icms_st_compl" numeric(18, 2),
    "bc_ret" numeric(18, 2),
    "icms_ret" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c179_reg_c170 FOREIGN KEY (id_pai) REFERENCES reg_c170 (id)
);

CREATE INDEX reg_c179_idx_id_pai ON reg_c179 USING btree (id_pai);
CREATE INDEX reg_c179_idx_cnpj_pai ON reg_c179 USING btree (cnpj_pai);

CREATE TABLE reg_c190 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "vl_ipi" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c190_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c190_idx_id_pai ON reg_c190 USING btree (id_pai);
CREATE INDEX reg_c190_idx_cnpj_pai ON reg_c190 USING btree (cnpj_pai);

CREATE TABLE reg_c195 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_obs" character varying(6),
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c195_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
);

CREATE INDEX reg_c195_idx_id_pai ON reg_c195 USING btree (id_pai);
CREATE INDEX reg_c195_idx_cnpj_pai ON reg_c195 USING btree (cnpj_pai);

CREATE TABLE reg_c197 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_aj" character varying(10),
    "descr_compl_aj" character varying,
    "cod_item" character varying(60),
    "vl_bc_icms" numeric(18, 2),
    "aliq_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_outros" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c197_reg_c195 FOREIGN KEY (id_pai) REFERENCES reg_c195 (id)
);

CREATE INDEX reg_c197_idx_id_pai ON reg_c197 USING btree (id_pai);
CREATE INDEX reg_c197_idx_cnpj_pai ON reg_c197 USING btree (cnpj_pai);

CREATE TABLE reg_c300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc_ini" character varying(6),
    "num_doc_fin" character varying(6),
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c300_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c300_idx_id_pai ON reg_c300 USING btree (id_pai);
CREATE INDEX reg_c300_idx_cnpj_pai ON reg_c300 USING btree (cnpj_pai);

CREATE TABLE reg_c310 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_doc_canc" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c310_reg_c300 FOREIGN KEY (id_pai) REFERENCES reg_c300 (id)
);

CREATE INDEX reg_c310_idx_id_pai ON reg_c310 USING btree (id_pai);
CREATE INDEX reg_c310_idx_cnpj_pai ON reg_c310 USING btree (cnpj_pai);

CREATE TABLE reg_c320 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c320_reg_c300 FOREIGN KEY (id_pai) REFERENCES reg_c300 (id)
);

CREATE INDEX reg_c320_idx_id_pai ON reg_c320 USING btree (id_pai);
CREATE INDEX reg_c320_idx_cnpj_pai ON reg_c320 USING btree (cnpj_pai);

CREATE TABLE reg_c321 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c321_reg_c320 FOREIGN KEY (id_pai) REFERENCES reg_c320 (id)
);

CREATE INDEX reg_c321_idx_id_pai ON reg_c321 USING btree (id_pai);
CREATE INDEX reg_c321_idx_cnpj_pai ON reg_c321 USING btree (cnpj_pai);

CREATE TABLE reg_c350 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ser" character varying(4),
    "sub_ser" character varying(3),
    "num_doc" character varying(6),
    "dt_doc" date,
    "cnpj_cpf" character varying(14),
    "vl_merc" numeric(18, 2),
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofis" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c350_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c350_idx_id_pai ON reg_c350 USING btree (id_pai);
CREATE INDEX reg_c350_idx_cnpj_pai ON reg_c350 USING btree (cnpj_pai);

CREATE TABLE reg_c370 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c370_reg_c350 FOREIGN KEY (id_pai) REFERENCES reg_c350 (id)
);

CREATE INDEX reg_c370_idx_id_pai ON reg_c370 USING btree (id_pai);
CREATE INDEX reg_c370_idx_cnpj_pai ON reg_c370 USING btree (cnpj_pai);

CREATE TABLE reg_c390 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c390_reg_c350 FOREIGN KEY (id_pai) REFERENCES reg_c350 (id)
);

CREATE INDEX reg_c390_idx_id_pai ON reg_c390 USING btree (id_pai);
CREATE INDEX reg_c390_idx_cnpj_pai ON reg_c390 USING btree (cnpj_pai);

CREATE TABLE reg_c400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ecf_mod" character varying(20),
    "ecf_fab" character varying(21),
    "ecf_cx" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c400_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c400_idx_id_pai ON reg_c400 USING btree (id_pai);
CREATE INDEX reg_c400_idx_cnpj_pai ON reg_c400 USING btree (cnpj_pai);

CREATE TABLE reg_c405 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_doc" date,
    "cro" character varying(3),
    "crz" character varying(6),
    "num_coo_fin" character varying(9),
    "gt_fin" numeric(18, 2),
    "vl_brt" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c405_reg_c400 FOREIGN KEY (id_pai) REFERENCES reg_c400 (id)
);

CREATE INDEX reg_c405_idx_id_pai ON reg_c405 USING btree (id_pai);
CREATE INDEX reg_c405_idx_cnpj_pai ON reg_c405 USING btree (cnpj_pai);

CREATE TABLE reg_c410 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c410_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
);

CREATE INDEX reg_c410_idx_id_pai ON reg_c410 USING btree (id_pai);
CREATE INDEX reg_c410_idx_cnpj_pai ON reg_c410 USING btree (cnpj_pai);

CREATE TABLE reg_c420 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_tot_par" character varying(7),
    "vlr_acum_tot" numeric(18, 2),
    "nr_tot" character varying(2),
    "descr_nr_tot" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c420_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
);

CREATE INDEX reg_c420_idx_id_pai ON reg_c420 USING btree (id_pai);
CREATE INDEX reg_c420_idx_cnpj_pai ON reg_c420 USING btree (cnpj_pai);

CREATE TABLE reg_c425 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c425_reg_c420 FOREIGN KEY (id_pai) REFERENCES reg_c420 (id)
);

CREATE INDEX reg_c425_idx_id_pai ON reg_c425 USING btree (id_pai);
CREATE INDEX reg_c425_idx_cnpj_pai ON reg_c425 USING btree (cnpj_pai);

CREATE TABLE reg_c460 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "num_doc" character varying(9),
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cpf_cnpj" character varying(14),
    "nome_adq" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c460_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
);

CREATE INDEX reg_c460_idx_id_pai ON reg_c460 USING btree (id_pai);
CREATE INDEX reg_c460_idx_cnpj_pai ON reg_c460 USING btree (cnpj_pai);

CREATE TABLE reg_c465 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "chv_cfe" character varying(44),
    "num_ccf" character varying(9),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c465_reg_c460 FOREIGN KEY (id_pai) REFERENCES reg_c460 (id)
);

CREATE INDEX reg_c465_idx_id_pai ON reg_c465 USING btree (id_pai);
CREATE INDEX reg_c465_idx_cnpj_pai ON reg_c465 USING btree (cnpj_pai);

CREATE TABLE reg_c470 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "qtd_canc" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c470_reg_c460 FOREIGN KEY (id_pai) REFERENCES reg_c460 (id)
);

CREATE INDEX reg_c470_idx_id_pai ON reg_c470 USING btree (id_pai);
CREATE INDEX reg_c470_idx_cnpj_pai ON reg_c470 USING btree (cnpj_pai);

CREATE TABLE reg_c490 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c490_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
);

CREATE INDEX reg_c490_idx_id_pai ON reg_c490 USING btree (id_pai);
CREATE INDEX reg_c490_idx_cnpj_pai ON reg_c490 USING btree (cnpj_pai);

CREATE TABLE reg_c500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_oper" character varying(1),
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "cod_cons" character varying(2),
    "num_doc" character varying(9),
    "dt_doc" date,
    "dt_e_s" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_forn" numeric(18, 2),
    "vl_serv_nt" numeric(18, 2),
    "vl_terc" numeric(18, 2),
    "vl_da" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "cod_inf" character varying(6),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "tp_ligacao" character varying(1),
    "cod_grupo_tensao" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c500_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c500_idx_id_pai ON reg_c500 USING btree (id_pai);
CREATE INDEX reg_c500_idx_cnpj_pai ON reg_c500 USING btree (cnpj_pai);

CREATE TABLE reg_c510 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    "cod_class" character varying(4),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "vl_bc_icms" numeric(18, 2),
    "aliq_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "aliq_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "ind_rec" character varying(1),
    "cod_part" character varying(60),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c510_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
);

CREATE INDEX reg_c510_idx_id_pai ON reg_c510 USING btree (id_pai);
CREATE INDEX reg_c510_idx_cnpj_pai ON reg_c510 USING btree (cnpj_pai);

CREATE TABLE reg_c590 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c590_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
);

CREATE INDEX reg_c590_idx_id_pai ON reg_c590 USING btree (id_pai);
CREATE INDEX reg_c590_idx_cnpj_pai ON reg_c590 USING btree (cnpj_pai);

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
    CONSTRAINT fk_reg_c600_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c600_idx_id_pai ON reg_c600 USING btree (id_pai);
CREATE INDEX reg_c600_idx_cnpj_pai ON reg_c600 USING btree (cnpj_pai);

CREATE TABLE reg_c601 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_doc_canc" character varying(9),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c601_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
);

CREATE INDEX reg_c601_idx_id_pai ON reg_c601 USING btree (id_pai);
CREATE INDEX reg_c601_idx_cnpj_pai ON reg_c601 USING btree (cnpj_pai);

CREATE TABLE reg_c610 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_class" character varying(4),
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c610_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
);

CREATE INDEX reg_c610_idx_id_pai ON reg_c610 USING btree (id_pai);
CREATE INDEX reg_c610_idx_cnpj_pai ON reg_c610 USING btree (cnpj_pai);

CREATE TABLE reg_c690 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c690_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
);

CREATE INDEX reg_c690_idx_id_pai ON reg_c690 USING btree (id_pai);
CREATE INDEX reg_c690_idx_cnpj_pai ON reg_c690 USING btree (cnpj_pai);

CREATE TABLE reg_c700 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "nro_ord_ini" character varying(9),
    "nro_ord_fin" character varying(9),
    "dt_doc_ini" date,
    "dt_doc_fin" date,
    "nom_mest" character varying(15),
    "chv_cod_dig" character varying(32),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c700_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c700_idx_id_pai ON reg_c700 USING btree (id_pai);
CREATE INDEX reg_c700_idx_cnpj_pai ON reg_c700 USING btree (cnpj_pai);

CREATE TABLE reg_c790 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c790_reg_c700 FOREIGN KEY (id_pai) REFERENCES reg_c700 (id)
);

CREATE INDEX reg_c790_idx_id_pai ON reg_c790 USING btree (id_pai);
CREATE INDEX reg_c790_idx_cnpj_pai ON reg_c790 USING btree (cnpj_pai);

CREATE TABLE reg_c791 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "uf" character varying(2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c791_reg_c790 FOREIGN KEY (id_pai) REFERENCES reg_c790 (id)
);

CREATE INDEX reg_c791_idx_id_pai ON reg_c791 USING btree (id_pai);
CREATE INDEX reg_c791_idx_cnpj_pai ON reg_c791 USING btree (cnpj_pai);

CREATE TABLE reg_c800 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "num_cfe" character varying(6),
    "dt_doc" date,
    "vl_cfe" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cnpj_cpf" character varying(14),
    "nr_sat" character varying(9),
    "chv_cfe" character varying(44),
    "vl_desc" numeric(18, 2),
    "vl_merc" numeric(18, 2),
    "vl_out_da" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_pis_st" numeric(18, 2),
    "vl_cofins_st" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c800_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c800_idx_id_pai ON reg_c800 USING btree (id_pai);
CREATE INDEX reg_c800_idx_cnpj_pai ON reg_c800 USING btree (cnpj_pai);

CREATE TABLE reg_c850 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c850_reg_c800 FOREIGN KEY (id_pai) REFERENCES reg_c800 (id)
);

CREATE INDEX reg_c850_idx_id_pai ON reg_c850 USING btree (id_pai);
CREATE INDEX reg_c850_idx_cnpj_pai ON reg_c850 USING btree (cnpj_pai);

CREATE TABLE reg_c860 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "nr_sat" character varying(9),
    "dt_doc" date,
    "doc_ini" character varying(6),
    "doc_fim" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_c860_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
);

CREATE INDEX reg_c860_idx_id_pai ON reg_c860 USING btree (id_pai);
CREATE INDEX reg_c860_idx_cnpj_pai ON reg_c860 USING btree (cnpj_pai);

CREATE TABLE reg_c890 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "cod_obs" character varying(6),
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
    "tp_ct_e" character varying(1),
    "chv_cte_ref" character varying(44),
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "ind_frt" character varying(1),
    "vl_serv" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_nt" numeric(18, 2),
    "cod_inf" character varying(60),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d100_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d100_idx_id_pai ON reg_d100 USING btree (id_pai);
CREATE INDEX reg_d100_idx_cnpj_pai ON reg_d100 USING btree (cnpj_pai);

CREATE TABLE reg_d110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    "vl_serv" numeric(18, 2),
    "vl_out" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d110_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d110_idx_id_pai ON reg_d110 USING btree (id_pai);
CREATE INDEX reg_d110_idx_cnpj_pai ON reg_d110 USING btree (cnpj_pai);

CREATE TABLE reg_d120 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mun_orig" character varying(7),
    "cod_mun_dest" character varying(7),
    "veic_id" character varying(7),
    "uf_id" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d120_reg_d110 FOREIGN KEY (id_pai) REFERENCES reg_d110 (id)
);

CREATE INDEX reg_d120_idx_id_pai ON reg_d120 USING btree (id_pai);
CREATE INDEX reg_d120_idx_cnpj_pai ON reg_d120 USING btree (cnpj_pai);

CREATE TABLE reg_d130 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part_consg" character varying(60),
    "cod_part_red" character varying(60),
    "ind_frt_red" character varying(1),
    "cod_mun_orig" character varying(7),
    "cod_mun_dest" character varying(7),
    "veic_id" character varying(7),
    "vl_liq_frt" numeric(18, 2),
    "vl_sec_cat" numeric(18, 2),
    "vl_desp" numeric(18, 2),
    "vl_pedg" numeric(18, 2),
    "vl_out" numeric(18, 2),
    "vl_frt" numeric(18, 2),
    "uf_id" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d130_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d130_idx_id_pai ON reg_d130 USING btree (id_pai);
CREATE INDEX reg_d130_idx_cnpj_pai ON reg_d130 USING btree (cnpj_pai);

CREATE TABLE reg_d140 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part_consg" character varying(60),
    "cod_mun_orig" character varying(7),
    "cod_mun_dest" character varying(7),
    "ind_veic" character varying(1),
    "veic_id" character varying,
    "ind_nav" character varying(1),
    "viagem" integer,
    "vl_frt_liq" numeric(18, 2),
    "vl_desp_port" numeric(18, 2),
    "vl_desp_car_desc" numeric(18, 2),
    "vl_out" numeric(18, 2),
    "vl_frt_brt" numeric(18, 2),
    "vl_frt_mm" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d140_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d140_idx_id_pai ON reg_d140 USING btree (id_pai);
CREATE INDEX reg_d140_idx_cnpj_pai ON reg_d140 USING btree (cnpj_pai);

CREATE TABLE reg_d150 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mun_orig" character varying(7),
    "cod_mun_dest" character varying(7),
    "veic_id" character varying,
    "viagem" integer,
    "ind_tfa" character varying(1),
    "vl_peso_tx" numeric(18, 2),
    "vl_tx_terr" numeric(18, 2),
    "vl_tx_red" numeric(18, 2),
    "vl_out" numeric(18, 2),
    "vl_tx_adv" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d150_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d150_idx_id_pai ON reg_d150 USING btree (id_pai);
CREATE INDEX reg_d150_idx_cnpj_pai ON reg_d150 USING btree (cnpj_pai);

CREATE TABLE reg_d160 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "despacho" character varying,
    "cnpj_cpf_rem" character varying(14),
    "ie_rem" character varying(14),
    "cod_mun_ori" character varying(7),
    "cnpj_cpf_dest" character varying(14),
    "ie_dest" character varying(14),
    "cod_mun_dest" character varying(7),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d160_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d160_idx_id_pai ON reg_d160 USING btree (id_pai);
CREATE INDEX reg_d160_idx_cnpj_pai ON reg_d160 USING btree (cnpj_pai);

CREATE TABLE reg_d161 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_carga" character varying(1),
    "cnpj_cpf_col" character varying(14),
    "ie_col" character varying(14),
    "cod_mun_col" character varying(7),
    "cnpj_cpf_entg" character varying(14),
    "ie_entg" character varying(14),
    "cod_mun_entg" character varying(7),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d161_reg_d160 FOREIGN KEY (id_pai) REFERENCES reg_d160 (id)
);

CREATE INDEX reg_d161_idx_id_pai ON reg_d161 USING btree (id_pai);
CREATE INDEX reg_d161_idx_cnpj_pai ON reg_d161 USING btree (cnpj_pai);

CREATE TABLE reg_d162 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "num_doc" character varying(9),
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    "vl_merc" numeric(18, 2),
    "qtd_vol" integer,
    "peso_brt" numeric(18, 2),
    "peso_liq" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d162_reg_d160 FOREIGN KEY (id_pai) REFERENCES reg_d160 (id)
);

CREATE INDEX reg_d162_idx_id_pai ON reg_d162 USING btree (id_pai);
CREATE INDEX reg_d162_idx_cnpj_pai ON reg_d162 USING btree (cnpj_pai);

CREATE TABLE reg_d170 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part_consg" character varying(60),
    "cod_part_red" character varying(60),
    "cod_mun_orig" character varying(7),
    "cod_mun_dest" character varying(7),
    "otm" character varying,
    "ind_nat_frt" character varying(1),
    "vl_liq_frt" numeric(18, 2),
    "vl_gris" numeric(18, 2),
    "vl_pdg" numeric(18, 2),
    "vl_out" numeric(18, 2),
    "vl_frt" numeric(18, 2),
    "veic_id" character varying(7),
    "uf_id" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d170_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d170_idx_id_pai ON reg_d170 USING btree (id_pai);
CREATE INDEX reg_d170_idx_cnpj_pai ON reg_d170 USING btree (cnpj_pai);

CREATE TABLE reg_d180 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_seq" integer,
    "ind_emit" character varying(1),
    "cnpj_cpf_emit" character varying(14),
    "uf_emit" character varying(2),
    "ie_emit" character varying(14),
    "cod_mun_orig" character varying(7),
    "cnpj_cpf_tom" character varying(14),
    "uf_tom" character varying(2),
    "ie_tom" character varying(14),
    "cod_mun_dest" character varying(7),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d180_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d180_idx_id_pai ON reg_d180 USING btree (id_pai);
CREATE INDEX reg_d180_idx_cnpj_pai ON reg_d180 USING btree (cnpj_pai);

CREATE TABLE reg_d190 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d190_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d190_idx_id_pai ON reg_d190 USING btree (id_pai);
CREATE INDEX reg_d190_idx_cnpj_pai ON reg_d190 USING btree (cnpj_pai);

CREATE TABLE reg_d195 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_obs" character varying(6),
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d195_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
);

CREATE INDEX reg_d195_idx_id_pai ON reg_d195 USING btree (id_pai);
CREATE INDEX reg_d195_idx_cnpj_pai ON reg_d195 USING btree (cnpj_pai);

CREATE TABLE reg_d197 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_aj" character varying(10),
    "descr_compl_aj" character varying,
    "cod_item" character varying(60),
    "vl_bc_icms" numeric(18, 2),
    "aliq_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_outros" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d197_reg_d195 FOREIGN KEY (id_pai) REFERENCES reg_d195 (id)
);

CREATE INDEX reg_d197_idx_id_pai ON reg_d197 USING btree (id_pai);
CREATE INDEX reg_d197_idx_cnpj_pai ON reg_d197 USING btree (cnpj_pai);

CREATE TABLE reg_d300 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(4),
    "num_doc_ini" character varying(6),
    "num_doc_fin" integer,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "dt_doc" date,
    "vl_opr" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_serv" numeric(18, 2),
    "vl_seg" numeric(18, 2),
    "vl_out_desp" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d300_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d300_idx_id_pai ON reg_d300 USING btree (id_pai);
CREATE INDEX reg_d300_idx_cnpj_pai ON reg_d300 USING btree (cnpj_pai);

CREATE TABLE reg_d301 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_doc_canc" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d301_reg_d300 FOREIGN KEY (id_pai) REFERENCES reg_d300 (id)
);

CREATE INDEX reg_d301_idx_id_pai ON reg_d301 USING btree (id_pai);
CREATE INDEX reg_d301_idx_cnpj_pai ON reg_d301 USING btree (cnpj_pai);

CREATE TABLE reg_d310 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mun_orig" character varying(7),
    "vl_serv" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d310_reg_d300 FOREIGN KEY (id_pai) REFERENCES reg_d300 (id)
);

CREATE INDEX reg_d310_idx_id_pai ON reg_d310 USING btree (id_pai);
CREATE INDEX reg_d310_idx_cnpj_pai ON reg_d310 USING btree (cnpj_pai);

CREATE TABLE reg_d350 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ecf_mod" character varying(20),
    "ecf_fab" character varying(21),
    "ecf_cx" character varying(3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d350_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d350_idx_id_pai ON reg_d350 USING btree (id_pai);
CREATE INDEX reg_d350_idx_cnpj_pai ON reg_d350 USING btree (cnpj_pai);

CREATE TABLE reg_d355 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_doc" date,
    "cro" character varying(3),
    "crz" character varying(6),
    "num_coo_fin" character varying(9),
    "gt_fin" numeric(18, 2),
    "vl_brt" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d355_reg_d350 FOREIGN KEY (id_pai) REFERENCES reg_d350 (id)
);

CREATE INDEX reg_d355_idx_id_pai ON reg_d355 USING btree (id_pai);
CREATE INDEX reg_d355_idx_cnpj_pai ON reg_d355 USING btree (cnpj_pai);

CREATE TABLE reg_d360 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d360_reg_d355 FOREIGN KEY (id_pai) REFERENCES reg_d355 (id)
);

CREATE INDEX reg_d360_idx_id_pai ON reg_d360 USING btree (id_pai);
CREATE INDEX reg_d360_idx_cnpj_pai ON reg_d360 USING btree (cnpj_pai);

CREATE TABLE reg_d365 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_tot_par" character varying(7),
    "vlr_acum_tot" numeric(18, 2),
    "nr_tot" character varying(2),
    "descr_nr_tot" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d365_reg_d355 FOREIGN KEY (id_pai) REFERENCES reg_d355 (id)
);

CREATE INDEX reg_d365_idx_id_pai ON reg_d365 USING btree (id_pai);
CREATE INDEX reg_d365_idx_cnpj_pai ON reg_d365 USING btree (cnpj_pai);

CREATE TABLE reg_d370 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mun_orig" character varying(7),
    "vl_serv" numeric(18, 2),
    "qtd_bilh" integer,
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d370_reg_d365 FOREIGN KEY (id_pai) REFERENCES reg_d365 (id)
);

CREATE INDEX reg_d370_idx_id_pai ON reg_d370 USING btree (id_pai);
CREATE INDEX reg_d370_idx_cnpj_pai ON reg_d370 USING btree (cnpj_pai);

CREATE TABLE reg_d390 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_issqn" numeric(18, 2),
    "aliq_issqn" numeric(18, 2),
    "vl_issqn" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d390_reg_d355 FOREIGN KEY (id_pai) REFERENCES reg_d355 (id)
);

CREATE INDEX reg_d390_idx_id_pai ON reg_d390 USING btree (id_pai);
CREATE INDEX reg_d390_idx_cnpj_pai ON reg_d390 USING btree (cnpj_pai);

CREATE TABLE reg_d400 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "cod_sit" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(6),
    "dt_doc" date,
    "vl_doc" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_serv" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d400_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d400_idx_id_pai ON reg_d400 USING btree (id_pai);
CREATE INDEX reg_d400_idx_cnpj_pai ON reg_d400 USING btree (cnpj_pai);

CREATE TABLE reg_d410 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc_ini" character varying(6),
    "num_doc_fin" character varying(6),
    "dt_doc" date,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "vl_serv" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d410_reg_d400 FOREIGN KEY (id_pai) REFERENCES reg_d400 (id)
);

CREATE INDEX reg_d410_idx_id_pai ON reg_d410 USING btree (id_pai);
CREATE INDEX reg_d410_idx_cnpj_pai ON reg_d410 USING btree (cnpj_pai);

CREATE TABLE reg_d411 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_doc_canc" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d411_reg_d410 FOREIGN KEY (id_pai) REFERENCES reg_d410 (id)
);

CREATE INDEX reg_d411_idx_id_pai ON reg_d411 USING btree (id_pai);
CREATE INDEX reg_d411_idx_cnpj_pai ON reg_d411 USING btree (cnpj_pai);

CREATE TABLE reg_d420 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mun_orig" character varying(7),
    "vl_serv" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d420_reg_d400 FOREIGN KEY (id_pai) REFERENCES reg_d400 (id)
);

CREATE INDEX reg_d420_idx_id_pai ON reg_d420 USING btree (id_pai);
CREATE INDEX reg_d420_idx_cnpj_pai ON reg_d420 USING btree (cnpj_pai);

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
    "cod_cta" character varying,
    "tp_assinante" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d500_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d500_idx_id_pai ON reg_d500 USING btree (id_pai);
CREATE INDEX reg_d500_idx_cnpj_pai ON reg_d500 USING btree (cnpj_pai);

CREATE TABLE reg_d510 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    "cod_class" character varying(4),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "vl_bc_icms" numeric(18, 2),
    "aliq_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "ind_rec" character varying(1),
    "cod_part" character varying(60),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d510_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
);

CREATE INDEX reg_d510_idx_id_pai ON reg_d510 USING btree (id_pai);
CREATE INDEX reg_d510_idx_cnpj_pai ON reg_d510 USING btree (cnpj_pai);

CREATE TABLE reg_d530 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_serv" character varying(1),
    "dt_ini_serv" date,
    "dt_fin_serv" date,
    "per_fiscal" character varying(6),
    "cod_area" character varying,
    "terminal" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d530_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
);

CREATE INDEX reg_d530_idx_id_pai ON reg_d530 USING btree (id_pai);
CREATE INDEX reg_d530_idx_cnpj_pai ON reg_d530 USING btree (cnpj_pai);

CREATE TABLE reg_d590 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d590_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
);

CREATE INDEX reg_d590_idx_id_pai ON reg_d590 USING btree (id_pai);
CREATE INDEX reg_d590_idx_cnpj_pai ON reg_d590 USING btree (cnpj_pai);

CREATE TABLE reg_d600 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "cod_mun" character varying(7),
    "ser" character varying(4),
    "sub" character varying(3),
    "cod_cons" character varying(2),
    "qtd_cons" integer,
    "dt_doc" date,
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
    CONSTRAINT fk_reg_d600_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d600_idx_id_pai ON reg_d600 USING btree (id_pai);
CREATE INDEX reg_d600_idx_cnpj_pai ON reg_d600 USING btree (cnpj_pai);

CREATE TABLE reg_d610 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_class" character varying(4),
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "unid" character varying(6),
    "vl_item" numeric(18, 2),
    "vl_desc" numeric(18, 2),
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "vl_pis" numeric(18, 2),
    "vl_cofins" numeric(18, 2),
    "cod_cta" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d610_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
);

CREATE INDEX reg_d610_idx_id_pai ON reg_d610 USING btree (id_pai);
CREATE INDEX reg_d610_idx_cnpj_pai ON reg_d610 USING btree (cnpj_pai);

CREATE TABLE reg_d690 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d690_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
);

CREATE INDEX reg_d690_idx_id_pai ON reg_d690 USING btree (id_pai);
CREATE INDEX reg_d690_idx_cnpj_pai ON reg_d690 USING btree (cnpj_pai);

CREATE TABLE reg_d695 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "nro_ord_ini" integer,
    "nro_ord_fin" integer,
    "dt_doc_ini" date,
    "dt_doc_fin" date,
    "nom_mest" character varying(15),
    "chv_cod_dig" character varying(32),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d695_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
);

CREATE INDEX reg_d695_idx_id_pai ON reg_d695 USING btree (id_pai);
CREATE INDEX reg_d695_idx_cnpj_pai ON reg_d695 USING btree (cnpj_pai);

CREATE TABLE reg_d696 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "cfop" character varying(4),
    "aliq_icms" numeric(18, 2),
    "vl_opr" numeric(18, 2),
    "vl_bc_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    "vl_red_bc" numeric(18, 2),
    "cod_obs" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d696_reg_d695 FOREIGN KEY (id_pai) REFERENCES reg_d695 (id)
);

CREATE INDEX reg_d696_idx_id_pai ON reg_d696 USING btree (id_pai);
CREATE INDEX reg_d696_idx_cnpj_pai ON reg_d696 USING btree (cnpj_pai);

CREATE TABLE reg_d697 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "uf" character varying(2),
    "vl_bc_icms_st" numeric(18, 2),
    "vl_icms_st" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d697_reg_d696 FOREIGN KEY (id_pai) REFERENCES reg_d696 (id)
);

CREATE INDEX reg_d697_idx_id_pai ON reg_d697 USING btree (id_pai);
CREATE INDEX reg_d697_idx_cnpj_pai ON reg_d697 USING btree (cnpj_pai);

CREATE TABLE reg_d990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_d" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_d990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_d990_idx_id_pai ON reg_d990 USING btree (id_pai);
CREATE INDEX reg_d990_idx_cnpj_pai ON reg_d990 USING btree (cnpj_pai);

CREATE TABLE reg_e001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_e001_idx_id_pai ON reg_e001 USING btree (id_pai);
CREATE INDEX reg_e001_idx_cnpj_pai ON reg_e001 USING btree (cnpj_pai);

CREATE TABLE reg_e100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini" date,
    "dt_fin" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e100_reg_e001 FOREIGN KEY (id_pai) REFERENCES reg_e001 (id)
);

CREATE INDEX reg_e100_idx_id_pai ON reg_e100 USING btree (id_pai);
CREATE INDEX reg_e100_idx_cnpj_pai ON reg_e100 USING btree (cnpj_pai);

CREATE TABLE reg_e110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_tot_debitos" numeric(18, 2),
    "vl_aj_debitos" numeric(18, 2),
    "vl_tot_aj_debitos" numeric(18, 2),
    "vl_estornos_cred" numeric(18, 2),
    "vl_tot_creditos" numeric(18, 2),
    "vl_aj_creditos" numeric(18, 2),
    "vl_tot_aj_creditos" numeric(18, 2),
    "vl_estornos_deb" numeric(18, 2),
    "vl_sld_credor_ant" numeric(18, 2),
    "vl_sld_apurado" numeric(18, 2),
    "vl_tot_ded" numeric(18, 2),
    "vl_icms_recolher" numeric(18, 2),
    "vl_sld_credor_transportar" numeric(18, 2),
    "deb_esp" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e110_reg_e100 FOREIGN KEY (id_pai) REFERENCES reg_e100 (id)
);

CREATE INDEX reg_e110_idx_id_pai ON reg_e110 USING btree (id_pai);
CREATE INDEX reg_e110_idx_cnpj_pai ON reg_e110 USING btree (cnpj_pai);

CREATE TABLE reg_e111 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_aj_apur" character varying(8),
    "descr_compl_aj" character varying,
    "vl_aj_apur" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e111_reg_e110 FOREIGN KEY (id_pai) REFERENCES reg_e110 (id)
);

CREATE INDEX reg_e111_idx_id_pai ON reg_e111 USING btree (id_pai);
CREATE INDEX reg_e111_idx_cnpj_pai ON reg_e111 USING btree (cnpj_pai);

CREATE TABLE reg_e112 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_da" character varying,
    "num_proc" character varying(15),
    "ind_proc" character varying(1),
    "proc" character varying,
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e112_reg_e111 FOREIGN KEY (id_pai) REFERENCES reg_e111 (id)
);

CREATE INDEX reg_e112_idx_id_pai ON reg_e112 USING btree (id_pai);
CREATE INDEX reg_e112_idx_cnpj_pai ON reg_e112 USING btree (cnpj_pai);

CREATE TABLE reg_e113 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    "cod_item" character varying(60),
    "vl_aj_item" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e113_reg_e111 FOREIGN KEY (id_pai) REFERENCES reg_e111 (id)
);

CREATE INDEX reg_e113_idx_id_pai ON reg_e113 USING btree (id_pai);
CREATE INDEX reg_e113_idx_cnpj_pai ON reg_e113 USING btree (cnpj_pai);

CREATE TABLE reg_e115 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_inf_adic" character varying(8),
    "vl_inf_adic" numeric(18, 2),
    "descr_compl_aj" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e115_reg_e110 FOREIGN KEY (id_pai) REFERENCES reg_e110 (id)
);

CREATE INDEX reg_e115_idx_id_pai ON reg_e115 USING btree (id_pai);
CREATE INDEX reg_e115_idx_cnpj_pai ON reg_e115 USING btree (cnpj_pai);

CREATE TABLE reg_e116 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_or" character varying(3),
    "vl_or" numeric(18, 2),
    "dt_vcto" date,
    "cod_rec" character varying,
    "num_proc" character varying(15),
    "ind_proc" character varying(1),
    "proc" character varying,
    "txt_compl" character varying,
    "mes_ref" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e116_reg_e110 FOREIGN KEY (id_pai) REFERENCES reg_e110 (id)
);

CREATE INDEX reg_e116_idx_id_pai ON reg_e116 USING btree (id_pai);
CREATE INDEX reg_e116_idx_cnpj_pai ON reg_e116 USING btree (cnpj_pai);

CREATE TABLE reg_e200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "uf" character varying(2),
    "dt_ini" date,
    "dt_fin" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e200_reg_e001 FOREIGN KEY (id_pai) REFERENCES reg_e001 (id)
);

CREATE INDEX reg_e200_idx_id_pai ON reg_e200 USING btree (id_pai);
CREATE INDEX reg_e200_idx_cnpj_pai ON reg_e200 USING btree (cnpj_pai);

CREATE TABLE reg_e210 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov_st" character varying(1),
    "vl_sld_cred_ant_st" numeric(18, 2),
    "vl_devol_st" numeric(18, 2),
    "vl_ressarc_st" numeric(18, 2),
    "vl_out_cred_st" numeric(18, 2),
    "vl_aj_creditos_st" numeric(18, 2),
    "vl_retencao_st" numeric(18, 2),
    "vl_out_deb_st" numeric(18, 2),
    "vl_aj_debitos_st" numeric(18, 2),
    "vl_sld_dev_ant_st" numeric(18, 2),
    "vl_deducoes_st" numeric(18, 2),
    "vl_icms_recol_st" numeric(18, 2),
    "vl_sld_cred_st_transportar" numeric(18, 2),
    "deb_esp_st" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e210_reg_e200 FOREIGN KEY (id_pai) REFERENCES reg_e200 (id)
);

CREATE INDEX reg_e210_idx_id_pai ON reg_e210 USING btree (id_pai);
CREATE INDEX reg_e210_idx_cnpj_pai ON reg_e210 USING btree (cnpj_pai);

CREATE TABLE reg_e220 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_aj_apur" character varying(8),
    "descr_compl_aj" character varying,
    "vl_aj_apur" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e220_reg_e210 FOREIGN KEY (id_pai) REFERENCES reg_e210 (id)
);

CREATE INDEX reg_e220_idx_id_pai ON reg_e220 USING btree (id_pai);
CREATE INDEX reg_e220_idx_cnpj_pai ON reg_e220 USING btree (cnpj_pai);

CREATE TABLE reg_e230 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_da" character varying,
    "num_proc" character varying(15),
    "ind_proc" character varying(1),
    "proc" character varying,
    "txt_compl" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e230_reg_e220 FOREIGN KEY (id_pai) REFERENCES reg_e220 (id)
);

CREATE INDEX reg_e230_idx_id_pai ON reg_e230 USING btree (id_pai);
CREATE INDEX reg_e230_idx_cnpj_pai ON reg_e230 USING btree (cnpj_pai);

CREATE TABLE reg_e240 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "ser" character varying(4),
    "sub" character varying(3),
    "num_doc" character varying(9),
    "dt_doc" date,
    "cod_item" character varying(60),
    "vl_aj_item" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e240_reg_e220 FOREIGN KEY (id_pai) REFERENCES reg_e220 (id)
);

CREATE INDEX reg_e240_idx_id_pai ON reg_e240 USING btree (id_pai);
CREATE INDEX reg_e240_idx_cnpj_pai ON reg_e240 USING btree (cnpj_pai);

CREATE TABLE reg_e250 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_or" character varying(3),
    "vl_or" numeric(18, 2),
    "dt_vcto" date,
    "cod_rec" character varying,
    "num_proc" character varying(15),
    "ind_proc" character varying(1),
    "proc" character varying,
    "txt_compl" character varying,
    "mes_ref" character varying(6),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e250_reg_e210 FOREIGN KEY (id_pai) REFERENCES reg_e210 (id)
);

CREATE INDEX reg_e250_idx_id_pai ON reg_e250 USING btree (id_pai);
CREATE INDEX reg_e250_idx_cnpj_pai ON reg_e250 USING btree (cnpj_pai);

CREATE TABLE reg_e500 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_apur" character varying(1),
    "dt_ini" date,
    "dt_fin" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e500_reg_e001 FOREIGN KEY (id_pai) REFERENCES reg_e001 (id)
);

CREATE INDEX reg_e500_idx_id_pai ON reg_e500 USING btree (id_pai);
CREATE INDEX reg_e500_idx_cnpj_pai ON reg_e500 USING btree (cnpj_pai);

CREATE TABLE reg_e510 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cfop" character varying(4),
    "cst_ipi" character varying(2),
    "vl_cont_ipi" numeric(18, 2),
    "vl_bc_ipi" numeric(18, 2),
    "vl_ipi" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e510_reg_e500 FOREIGN KEY (id_pai) REFERENCES reg_e500 (id)
);

CREATE INDEX reg_e510_idx_id_pai ON reg_e510 USING btree (id_pai);
CREATE INDEX reg_e510_idx_cnpj_pai ON reg_e510 USING btree (cnpj_pai);

CREATE TABLE reg_e520 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "vl_sd_ant_ipi" numeric(18, 2),
    "vl_deb_ipi" numeric(18, 2),
    "vl_cred_ipi" numeric(18, 2),
    "vl_od_ipi" numeric(18, 2),
    "vl_oc_ipi" numeric(18, 2),
    "vl_sc_ipi" numeric(18, 2),
    "vl_sd_ipi" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e520_reg_e500 FOREIGN KEY (id_pai) REFERENCES reg_e500 (id)
);

CREATE INDEX reg_e520_idx_id_pai ON reg_e520 USING btree (id_pai);
CREATE INDEX reg_e520_idx_cnpj_pai ON reg_e520 USING btree (cnpj_pai);

CREATE TABLE reg_e530 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_aj" character varying(1),
    "vl_aj" numeric(18, 2),
    "cod_aj" character varying(3),
    "ind_doc" character varying(1),
    "num_doc" character varying,
    "descr_aj" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e530_reg_e520 FOREIGN KEY (id_pai) REFERENCES reg_e520 (id)
);

CREATE INDEX reg_e530_idx_id_pai ON reg_e530 USING btree (id_pai);
CREATE INDEX reg_e530_idx_cnpj_pai ON reg_e530 USING btree (cnpj_pai);

CREATE TABLE reg_e990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_e" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_e990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_e990_idx_id_pai ON reg_e990 USING btree (id_pai);
CREATE INDEX reg_e990_idx_cnpj_pai ON reg_e990 USING btree (cnpj_pai);

CREATE TABLE reg_g001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_g001_idx_id_pai ON reg_g001 USING btree (id_pai);
CREATE INDEX reg_g001_idx_cnpj_pai ON reg_g001 USING btree (cnpj_pai);

CREATE TABLE reg_g110 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini" date,
    "dt_fin" date,
    "saldo_in_icms" numeric(18, 2),
    "som_parc" numeric(18, 2),
    "vl_trib_exp" numeric(18, 2),
    "vl_total" numeric(18, 2),
    "ind_per_sai" numeric(18, 8),
    "icms_aprop" numeric(18, 2),
    "som_icms_oc" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g110_reg_g001 FOREIGN KEY (id_pai) REFERENCES reg_g001 (id)
);

CREATE INDEX reg_g110_idx_id_pai ON reg_g110 USING btree (id_pai);
CREATE INDEX reg_g110_idx_cnpj_pai ON reg_g110 USING btree (cnpj_pai);

CREATE TABLE reg_g125 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_ind_bem" character varying(60),
    "dt_mov" date,
    "tipo_mov" character varying(2),
    "vl_imob_icms_op" numeric(18, 2),
    "vl_imob_icms_st" numeric(18, 2),
    "vl_imob_icms_frt" numeric(18, 2),
    "vl_imob_icms_dif" numeric(18, 2),
    "num_parc" character varying(3),
    "vl_parc_pass" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g125_reg_g110 FOREIGN KEY (id_pai) REFERENCES reg_g110 (id)
);

CREATE INDEX reg_g125_idx_id_pai ON reg_g125 USING btree (id_pai);
CREATE INDEX reg_g125_idx_cnpj_pai ON reg_g125 USING btree (cnpj_pai);

CREATE TABLE reg_g126 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini" date,
    "dt_fin" date,
    "num_parc" character varying(3),
    "vl_parc_pass" numeric(18, 2),
    "vl_trib_oc" numeric(18, 2),
    "vl_total" numeric(18, 2),
    "ind_per_sai" numeric(18, 8),
    "vl_parc_aprop" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g126_reg_g125 FOREIGN KEY (id_pai) REFERENCES reg_g125 (id)
);

CREATE INDEX reg_g126_idx_id_pai ON reg_g126 USING btree (id_pai);
CREATE INDEX reg_g126_idx_cnpj_pai ON reg_g126 USING btree (cnpj_pai);

CREATE TABLE reg_g130 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_emit" character varying(1),
    "cod_part" character varying(60),
    "cod_mod" character varying(2),
    "serie" character varying(3),
    "num_doc" character varying(9),
    "chv_nfe_cte" character varying(44),
    "dt_doc" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g130_reg_g125 FOREIGN KEY (id_pai) REFERENCES reg_g125 (id)
);

CREATE INDEX reg_g130_idx_id_pai ON reg_g130 USING btree (id_pai);
CREATE INDEX reg_g130_idx_cnpj_pai ON reg_g130 USING btree (cnpj_pai);

CREATE TABLE reg_g140 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "num_item" character varying(3),
    "cod_item" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g140_reg_g130 FOREIGN KEY (id_pai) REFERENCES reg_g130 (id)
);

CREATE INDEX reg_g140_idx_id_pai ON reg_g140 USING btree (id_pai);
CREATE INDEX reg_g140_idx_cnpj_pai ON reg_g140 USING btree (cnpj_pai);

CREATE TABLE reg_g990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_g" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_g990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_g990_idx_id_pai ON reg_g990 USING btree (id_pai);
CREATE INDEX reg_g990_idx_cnpj_pai ON reg_g990 USING btree (cnpj_pai);

CREATE TABLE reg_h001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_h001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_h001_idx_id_pai ON reg_h001 USING btree (id_pai);
CREATE INDEX reg_h001_idx_cnpj_pai ON reg_h001 USING btree (cnpj_pai);

CREATE TABLE reg_h005 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_inv" date,
    "vl_inv" numeric(18, 2),
    "mot_inv" character varying(2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_h005_reg_h001 FOREIGN KEY (id_pai) REFERENCES reg_h001 (id)
);

CREATE INDEX reg_h005_idx_id_pai ON reg_h005 USING btree (id_pai);
CREATE INDEX reg_h005_idx_cnpj_pai ON reg_h005 USING btree (cnpj_pai);

CREATE TABLE reg_h010 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cod_item" character varying(60),
    "unid" character varying(6),
    "qtd" numeric(18, 3),
    "vl_unit" numeric(18, 6),
    "vl_item" numeric(18, 2),
    "ind_prop" character varying(1),
    "cod_part" character varying(60),
    "txt_compl" character varying,
    "cod_cta" character varying,
    "vl_item_ir" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_h010_reg_h005 FOREIGN KEY (id_pai) REFERENCES reg_h005 (id)
);

CREATE INDEX reg_h010_idx_id_pai ON reg_h010 USING btree (id_pai);
CREATE INDEX reg_h010_idx_cnpj_pai ON reg_h010 USING btree (cnpj_pai);

CREATE TABLE reg_h020 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "cst_icms" character varying(3),
    "bl_icms" numeric(18, 2),
    "vl_icms" numeric(18, 2),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_h020_reg_h010 FOREIGN KEY (id_pai) REFERENCES reg_h010 (id)
);

CREATE INDEX reg_h020_idx_id_pai ON reg_h020 USING btree (id_pai);
CREATE INDEX reg_h020_idx_cnpj_pai ON reg_h020 USING btree (cnpj_pai);

CREATE TABLE reg_h990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_h" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_h990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_h990_idx_id_pai ON reg_h990 USING btree (id_pai);
CREATE INDEX reg_h990_idx_cnpj_pai ON reg_h990 USING btree (cnpj_pai);

CREATE TABLE reg_k001 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "ind_mov" character varying(1),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_k001_idx_id_pai ON reg_k001 USING btree (id_pai);
CREATE INDEX reg_k001_idx_cnpj_pai ON reg_k001 USING btree (cnpj_pai);

CREATE TABLE reg_k100 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini" date,
    "dt_fin" date,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k100_reg_k001 FOREIGN KEY (id_pai) REFERENCES reg_k001 (id)
);

CREATE INDEX reg_k100_idx_id_pai ON reg_k100 USING btree (id_pai);
CREATE INDEX reg_k100_idx_cnpj_pai ON reg_k100 USING btree (cnpj_pai);

CREATE TABLE reg_k200 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_est" date,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "ind_est" character varying(1),
    "cod_part" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k200_reg_k100 FOREIGN KEY (id_pai) REFERENCES reg_k100 (id)
);

CREATE INDEX reg_k200_idx_id_pai ON reg_k200 USING btree (id_pai);
CREATE INDEX reg_k200_idx_cnpj_pai ON reg_k200 USING btree (cnpj_pai);

CREATE TABLE reg_k220 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_mov" date,
    "cod_item_ori" character varying(60),
    "cod_item_dest" character varying(60),
    "qtd" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k220_reg_k100 FOREIGN KEY (id_pai) REFERENCES reg_k100 (id)
);

CREATE INDEX reg_k220_idx_id_pai ON reg_k220 USING btree (id_pai);
CREATE INDEX reg_k220_idx_cnpj_pai ON reg_k220 USING btree (cnpj_pai);

CREATE TABLE reg_k230 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_ini_op" date,
    "dt_fin_op" date,
    "cod_doc_op" character varying(30),
    "cod_item" character varying(60),
    "qtd_enc" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k230_reg_k100 FOREIGN KEY (id_pai) REFERENCES reg_k100 (id)
);

CREATE INDEX reg_k230_idx_id_pai ON reg_k230 USING btree (id_pai);
CREATE INDEX reg_k230_idx_cnpj_pai ON reg_k230 USING btree (cnpj_pai);

CREATE TABLE reg_k235 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_saida" date,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "cod_ins_subst" character varying,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k235_reg_k230 FOREIGN KEY (id_pai) REFERENCES reg_k230 (id)
);

CREATE INDEX reg_k235_idx_id_pai ON reg_k235 USING btree (id_pai);
CREATE INDEX reg_k235_idx_cnpj_pai ON reg_k235 USING btree (cnpj_pai);

CREATE TABLE reg_k250 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_prod" date,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k250_reg_k100 FOREIGN KEY (id_pai) REFERENCES reg_k100 (id)
);

CREATE INDEX reg_k250_idx_id_pai ON reg_k250 USING btree (id_pai);
CREATE INDEX reg_k250_idx_cnpj_pai ON reg_k250 USING btree (cnpj_pai);

CREATE TABLE reg_k255 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "dt_cons" date,
    "cod_item" character varying(60),
    "qtd" numeric(18, 3),
    "cod_ins_subst" character varying(60),
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k255_reg_k250 FOREIGN KEY (id_pai) REFERENCES reg_k250 (id)
);

CREATE INDEX reg_k255_idx_id_pai ON reg_k255 USING btree (id_pai);
CREATE INDEX reg_k255_idx_cnpj_pai ON reg_k255 USING btree (cnpj_pai);

CREATE TABLE reg_k990 (
    id bigint NOT NULL PRIMARY KEY,
    id_pai bigint NOT NULL,
    "qtd_lin_k" integer,
    cnpj_pai character varying(14),
    CONSTRAINT fk_reg_k990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
);

CREATE INDEX reg_k990_idx_id_pai ON reg_k990 USING btree (id_pai);
CREATE INDEX reg_k990_idx_cnpj_pai ON reg_k990 USING btree (cnpj_pai);
