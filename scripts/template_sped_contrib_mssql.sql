:ON ERROR EXIT
GO

USE [master]
GO
CREATE DATABASE [$(DbName)] ON  PRIMARY
( NAME = N'$(DbName)', FILENAME = N'$(DataDir)\$(DbName).mdf')
 LOG ON
( NAME = N'$(DbName)_log', FILENAME = N'$(DataDir)\$(DbName)_log.ldf')
 COLLATE SQL_Latin1_General_CP1_CI_AI
GO
ALTER DATABASE [$(DbName)] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [$(DbName)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [$(DbName)] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [$(DbName)] SET ANSI_NULLS OFF
GO
ALTER DATABASE [$(DbName)] SET ANSI_PADDING OFF
GO
ALTER DATABASE [$(DbName)] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [$(DbName)] SET ARITHABORT OFF
GO
ALTER DATABASE [$(DbName)] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [$(DbName)] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [$(DbName)] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [$(DbName)] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [$(DbName)] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [$(DbName)] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [$(DbName)] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [$(DbName)] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [$(DbName)] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [$(DbName)] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [$(DbName)] SET  DISABLE_BROKER
GO
ALTER DATABASE [$(DbName)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [$(DbName)] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [$(DbName)] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [$(DbName)] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [$(DbName)] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [$(DbName)] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [$(DbName)] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [$(DbName)] SET RECOVERY SIMPLE
GO
ALTER DATABASE [$(DbName)] SET  MULTI_USER
GO
ALTER DATABASE [$(DbName)] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [$(DbName)] SET DB_CHAINING OFF
GO
USE [$(DbName)]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0000 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int,
    [cod_ver] varchar(3),
    [tipo_escrit] varchar(1),
    [ind_sit_esp] varchar(1),
    [num_rec_anterior] varchar(41),
    [dt_ini] datetime,
    [dt_fin] datetime,
    [nome] varchar(100),
    [cnpj] varchar(14),
    [uf] varchar(2),
    [cod_mun] varchar(7),
    [suframa] varchar(9),
    [ind_nat_pj] varchar(2),
    [ind_ativ] varchar(1),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0000_id ON reg_0000 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0000_id_pai ON reg_0000 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0000_cnpj_pai ON reg_0000 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0001_id ON reg_0001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0001_id_pai ON reg_0001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0001_cnpj_pai ON reg_0001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0035 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_scp] varchar(14),
    [nome_scp] varchar(255),
    [inf_comp] varchar(255),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0035_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0035_id ON reg_0035 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0035_id_pai ON reg_0035 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0035_cnpj_pai ON reg_0035 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nome] varchar(100),
    [cpf] varchar(11),
    [crc] varchar(15),
    [cnpj] varchar(14),
    [cep] varchar(8),
    [end] varchar(60),
    [num] varchar(MAX),
    [compl] varchar(60),
    [bairro] varchar(60),
    [fone] varchar(11),
    [fax] varchar(11),
    [email] varchar(MAX),
    [cod_mun] varchar(7),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0100_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0100_id ON reg_0100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0100_id_pai ON reg_0100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0100_cnpj_pai ON reg_0100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inc_trib] varchar(1),
    [ind_apro_cred] varchar(1),
    [cod_tipo_cont] varchar(1),
    [ind_reg_cum] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0110_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0110_id ON reg_0110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0110_id_pai ON reg_0110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0110_cnpj_pai ON reg_0110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0111 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [rec_bru_ncum_trib_mi] numeric(18, 2),
    [rec_bru_ncum_nt_mi] numeric(18, 2),
    [rec_bru_ncum_exp] numeric(18, 2),
    [rec_bru_cum] numeric(18, 2),
    [rec_bru_total] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0111_reg_0110 FOREIGN KEY (id_pai) REFERENCES reg_0110 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0111_id ON reg_0111 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0111_id_pai ON reg_0111 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0111_cnpj_pai ON reg_0111 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0120 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [mes_dispensa] varchar(6),
    [inf_comp] varchar(90),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0120_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0120_id ON reg_0120 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0120_id_pai ON reg_0120 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0120_cnpj_pai ON reg_0120 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0140 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_est] varchar(60),
    [nome] varchar(100),
    [cnpj] varchar(14),
    [uf] varchar(2),
    [ie] varchar(14),
    [cod_mun] varchar(7),
    [im] varchar(MAX),
    [suframa] varchar(9),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0140_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0140_id ON reg_0140 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0140_id_pai ON reg_0140 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0140_cnpj_pai ON reg_0140 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0145 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inc_trib] varchar(1),
    [vl_rec_tot] numeric(18, 2),
    [vl_rec_ativ] numeric(18, 2),
    [vl_rec_demais_ativ] numeric(18, 2),
    [info_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0145_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0145_id ON reg_0145 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0145_id_pai ON reg_0145 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0145_cnpj_pai ON reg_0145 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0150 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [nome] varchar(100),
    [cod_pais] varchar(5),
    [cnpj] varchar(14),
    [cpf] varchar(11),
    [ie] varchar(14),
    [cod_mun] varchar(7),
    [suframa] varchar(9),
    [end] varchar(60),
    [num] varchar(MAX),
    [compl] varchar(60),
    [bairro] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0150_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0150_id ON reg_0150 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0150_id_pai ON reg_0150 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0150_cnpj_pai ON reg_0150 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0190 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [unid] varchar(6),
    [descr] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0190_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0190_id ON reg_0190 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0190_id_pai ON reg_0190 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0190_cnpj_pai ON reg_0190 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [descr_item] varchar(MAX),
    [cod_barra] varchar(MAX),
    [cod_ant_item] varchar(60),
    [unid_inv] varchar(6),
    [tipo_item] varchar(2),
    [cod_ncm] varchar(8),
    [ex_ipi] varchar(3),
    [cod_gen] varchar(2),
    [cod_lst] varchar(5),
    [aliq_icms] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0200_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0200_id ON reg_0200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0200_id_pai ON reg_0200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0200_cnpj_pai ON reg_0200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0205 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [descr_ant_item] varchar(MAX),
    [dt_ini] datetime,
    [dt_fim] datetime,
    [cod_ant_item] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0205_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0205_id ON reg_0205 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0205_id_pai ON reg_0205 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0205_cnpj_pai ON reg_0205 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0206 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_comb] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0206_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0206_id ON reg_0206 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0206_id_pai ON reg_0206 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0206_cnpj_pai ON reg_0206 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0208 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_tab] varchar(2),
    [cod_gru] varchar(2),
    [marca_com] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0208_reg_0200 FOREIGN KEY (id_pai) REFERENCES reg_0200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0208_id ON reg_0208 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0208_id_pai ON reg_0208 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0208_cnpj_pai ON reg_0208 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0400 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_nat] varchar(10),
    [descr_nat] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0400_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0400_id ON reg_0400 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0400_id_pai ON reg_0400 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0400_cnpj_pai ON reg_0400 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0450 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inf] varchar(6),
    [txt] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0450_reg_0140 FOREIGN KEY (id_pai) REFERENCES reg_0140 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0450_id ON reg_0450 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0450_id_pai ON reg_0450 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0450_cnpj_pai ON reg_0450 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_alt] datetime,
    [cod_nat_cc] varchar(2),
    [ind_cta] varchar(1),
    [nivel] varchar(5),
    [cod_cta] varchar(60),
    [nome_cta] varchar(60),
    [cod_cta_ref] varchar(60),
    [cnpj_est] varchar(14),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0500_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0500_id ON reg_0500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0500_id_pai ON reg_0500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0500_cnpj_pai ON reg_0500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0600 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_alt] datetime,
    [cod_ccus] varchar(60),
    [ccus] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0600_reg_0001 FOREIGN KEY (id_pai) REFERENCES reg_0001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0600_id ON reg_0600 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0600_id_pai ON reg_0600 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0600_cnpj_pai ON reg_0600 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_0] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_0990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0990_id ON reg_0990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0990_id_pai ON reg_0990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0990_cnpj_pai ON reg_0990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1001_id ON reg_1001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1001_id_pai ON reg_1001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1001_cnpj_pai ON reg_1001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [id_sec_jud] varchar(MAX),
    [id_vara] varchar(2),
    [ind_nat_acao] varchar(2),
    [desc_dec_jud] varchar(100),
    [dt_sent_jud] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1010_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1010_id ON reg_1010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1010_id_pai ON reg_1010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1010_cnpj_pai ON reg_1010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1020 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_nat_acao] varchar(2),
    [dt_dec_adm] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1020_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1020_id ON reg_1020 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1020_id_pai ON reg_1020 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1020_cnpj_pai ON reg_1020 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [per_apu_cred] varchar(6),
    [orig_cred] varchar(2),
    [cnpj_suc] varchar(14),
    [cod_cred] varchar(3),
    [vl_cred_apu] numeric(18, 2),
    [vl_cred_ext_apu] numeric(18, 2),
    [vl_tot_cred_apu] numeric(18, 2),
    [vl_cred_desc_pa_ant] numeric(18, 2),
    [vl_cred_per_pa_ant] numeric(18, 2),
    [vl_cred_dcomp_pa_ant] numeric(18, 2),
    [sd_cred_disp_efd] numeric(18, 2),
    [vl_cred_desc_efd] numeric(18, 2),
    [vl_cred_per_efd] numeric(18, 2),
    [vl_cred_dcomp_efd] numeric(18, 2),
    [vl_cred_trans] numeric(18, 2),
    [vl_cred_out] numeric(18, 2),
    [sld_cred_fim] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1100_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1100_id ON reg_1100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1100_id_pai ON reg_1100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1100_cnpj_pai ON reg_1100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1300 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_nat_ret] varchar(2),
    [pr_rec_ret] varchar(6),
    [vl_ret_apu] numeric(18, 2),
    [vl_ret_ded] numeric(18, 2),
    [vl_ret_per] numeric(18, 2),
    [vl_ret_dcomp] numeric(18, 2),
    [sld_ret] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1300_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1300_id ON reg_1300 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1300_id_pai ON reg_1300 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1300_cnpj_pai ON reg_1300 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [per_apu_cred] varchar(6),
    [orig_cred] varchar(2),
    [cnpj_suc] varchar(14),
    [cod_cred] varchar(3),
    [vl_cred_apu] numeric(18, 2),
    [vl_cred_ext_apu] numeric(18, 2),
    [vl_tot_cred_apu] numeric(18, 2),
    [vl_cred_desc_pa_ant] numeric(18, 2),
    [vl_cred_per_pa_ant] numeric(18, 2),
    [vl_cred_dcomp_pa_ant] numeric(18, 2),
    [sd_cred_disp_efd] numeric(18, 2),
    [vl_cred_desc_efd] numeric(18, 2),
    [vl_cred_per_efd] numeric(18, 2),
    [vl_cred_dcomp_efd] numeric(18, 2),
    [vl_cred_trans] numeric(18, 2),
    [vl_cred_out] numeric(18, 2),
    [sld_cred_fim] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1500_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1500_id ON reg_1500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1500_id_pai ON reg_1500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1500_cnpj_pai ON reg_1500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1700 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_nat_ret] varchar(2),
    [pr_rec_ret] varchar(6),
    [vl_ret_apu] numeric(18, 2),
    [vl_ret_ded] numeric(18, 2),
    [vl_ret_per] numeric(18, 2),
    [vl_ret_dcomp] numeric(18, 2),
    [sld_ret] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1700_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1700_id ON reg_1700 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1700_id_pai ON reg_1700 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1700_cnpj_pai ON reg_1700 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1800 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [inc_imob] varchar(90),
    [rec_receb_ret] numeric(18, 2),
    [rec_fin_ret] numeric(18, 2),
    [bc_ret] numeric(18, 2),
    [aliq_ret] numeric(18, 2),
    [vl_rec_uni] numeric(18, 2),
    [dt_rec_uni] datetime,
    [cod_rec] varchar(4),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1800_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1800_id ON reg_1800 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1800_id_pai ON reg_1800 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1800_cnpj_pai ON reg_1800 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1809 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1809_reg_1800 FOREIGN KEY (id_pai) REFERENCES reg_1800 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1809_id ON reg_1809 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1809_id_pai ON reg_1809 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1809_cnpj_pai ON reg_1809 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1900 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub_ser] varchar(20),
    [cod_sit] varchar(2),
    [vl_tot_rec] numeric(18, 2),
    [quant_doc] int,
    [cst_pis] varchar(2),
    [cst_cofins] varchar(2),
    [cfop] varchar(4),
    [info_compl] varchar,
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1900_reg_1001 FOREIGN KEY (id_pai) REFERENCES reg_1001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1900_id ON reg_1900 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1900_id_pai ON reg_1900 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1900_cnpj_pai ON reg_1900 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_1] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_1990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1990_id ON reg_1990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1990_id_pai ON reg_1990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1990_cnpj_pai ON reg_1990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_9001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_9001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_9001_id ON reg_9001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_9001_id_pai ON reg_9001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_9001_cnpj_pai ON reg_9001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_9900 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [reg_blc] varchar(4),
    [qtd_reg_blc] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_9900_reg_9001 FOREIGN KEY (id_pai) REFERENCES reg_9001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_9900_id ON reg_9900 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_9900_id_pai ON reg_9900 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_9900_cnpj_pai ON reg_9900 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_9990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_9] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_9990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_9990_id ON reg_9990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_9990_id_pai ON reg_9990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_9990_cnpj_pai ON reg_9990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_9999 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int,
    [qtd_lin] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_9999_id ON reg_9999 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_9999_id_pai ON reg_9999 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_9999_cnpj_pai ON reg_9999 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a001_id ON reg_a001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a001_id_pai ON reg_a001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a001_cnpj_pai ON reg_a001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a010_reg_a001 FOREIGN KEY (id_pai) REFERENCES reg_a001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a010_id ON reg_a010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a010_id_pai ON reg_a010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a010_cnpj_pai ON reg_a010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_sit] varchar(2),
    [ser] varchar(20),
    [sub] varchar(20),
    [num_doc] varchar(128),
    [chv_nfse] varchar(128),
    [dt_doc] datetime,
    [dt_exe_serv] datetime,
    [vl_doc] numeric(18, 2),
    [ind_pgto] varchar(1),
    [vl_desc] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [vl_pis_ret] numeric(18, 2),
    [vl_cofins_ret] numeric(18, 2),
    [vl_iss] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a100_reg_a010 FOREIGN KEY (id_pai) REFERENCES reg_a010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a100_id ON reg_a100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a100_id_pai ON reg_a100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a100_cnpj_pai ON reg_a100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inf] varchar(6),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a110_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a110_id ON reg_a110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a110_id_pai ON reg_a110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a110_cnpj_pai ON reg_a110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a111 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a111_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a111_id ON reg_a111 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a111_id_pai ON reg_a111 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a111_cnpj_pai ON reg_a111 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a120 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_tot_serv] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [vl_pis_imp] numeric(18, 2),
    [dt_pag_pis] datetime,
    [vl_bc_cofins] numeric(18, 2),
    [vl_cofins_imp] numeric(18, 2),
    [dt_pag_cofins] datetime,
    [loc_exe_serv] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a120_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a120_id ON reg_a120 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a120_id_pai ON reg_a120 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a120_cnpj_pai ON reg_a120 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a170 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(4),
    [cod_item] varchar(60),
    [descr_compl] varchar(MAX),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [ind_orig_cred] varchar(1),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cod_ccus] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a170_reg_a100 FOREIGN KEY (id_pai) REFERENCES reg_a100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a170_id ON reg_a170 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a170_id_pai ON reg_a170 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a170_cnpj_pai ON reg_a170 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_a990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_a] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_a990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_a990_id ON reg_a990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_a990_id_pai ON reg_a990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_a990_cnpj_pai ON reg_a990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c001_id ON reg_c001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c001_id_pai ON reg_c001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c001_cnpj_pai ON reg_c001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [ind_escri] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c010_reg_c001 FOREIGN KEY (id_pai) REFERENCES reg_c001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c010_id ON reg_c010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c010_id_pai ON reg_c010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c010_cnpj_pai ON reg_c010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(3),
    [num_doc] varchar(9),
    [chv_nfe] varchar(44),
    [dt_doc] datetime,
    [dt_e_s] datetime,
    [vl_doc] numeric(18, 2),
    [ind_pgto] varchar(1),
    [vl_desc] numeric(18, 2),
    [vl_abat_nt] numeric(18, 2),
    [vl_merc] numeric(18, 2),
    [ind_frt] varchar(1),
    [vl_frt] numeric(18, 2),
    [vl_seg] numeric(18, 2),
    [vl_out_da] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_ipi] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [vl_pis_st] numeric(18, 2),
    [vl_cofins_st] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c100_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c100_id ON reg_c100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c100_id_pai ON reg_c100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c100_cnpj_pai ON reg_c100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inf] varchar(6),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c110_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c110_id ON reg_c110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c110_id_pai ON reg_c110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c110_cnpj_pai ON reg_c110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c111 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c111_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c111_id ON reg_c111 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c111_id_pai ON reg_c111 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c111_cnpj_pai ON reg_c111 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c120 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_doc_imp] varchar(1),
    [num_doc_imp] varchar(10),
    [vl_pis_imp] numeric(18, 2),
    [vl_cofins_imp] numeric(18, 2),
    [num_acdraw] varchar(20),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c120_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c120_id ON reg_c120 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c120_id_pai ON reg_c120 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c120_cnpj_pai ON reg_c120 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c170 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [descr_compl] varchar(MAX),
    [qtd] numeric(18, 5),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [ind_mov] varchar(1),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [cod_nat] varchar(10),
    [vl_bc_icms] numeric(18, 2),
    [aliq_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [aliq_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [ind_apur] varchar(1),
    [cst_ipi] varchar(2),
    [cod_enq] varchar(3),
    [vl_bc_ipi] numeric(18, 2),
    [aliq_ipi] numeric(18, 2),
    [vl_ipi] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c170_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c170_id ON reg_c170 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c170_id_pai ON reg_c170 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c170_cnpj_pai ON reg_c170 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c175 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cfop] varchar(4),
    [vl_oper] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [info_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c175_reg_c100 FOREIGN KEY (id_pai) REFERENCES reg_c100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c175_id ON reg_c175 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c175_id_pai ON reg_c175 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c175_cnpj_pai ON reg_c175 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c180 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [dt_doc_ini] datetime,
    [dt_doc_fin] datetime,
    [cod_item] varchar(60),
    [cod_ncm] varchar(8),
    [ex_ipi] varchar(3),
    [vl_tot_item] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c180_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c180_id ON reg_c180 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c180_id_pai ON reg_c180 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c180_cnpj_pai ON reg_c180 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c181 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c181_reg_c180 FOREIGN KEY (id_pai) REFERENCES reg_c180 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c181_id ON reg_c181 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c181_id_pai ON reg_c181 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c181_cnpj_pai ON reg_c181 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c185 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c185_reg_c180 FOREIGN KEY (id_pai) REFERENCES reg_c180 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c185_id ON reg_c185 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c185_id_pai ON reg_c185 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c185_cnpj_pai ON reg_c185 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c188 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c188_reg_c180 FOREIGN KEY (id_pai) REFERENCES reg_c180 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c188_id ON reg_c188 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c188_id_pai ON reg_c188 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c188_cnpj_pai ON reg_c188 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c190 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [dt_ref_ini] datetime,
    [dt_ref_fin] datetime,
    [cod_item] varchar(60),
    [cod_ncm] varchar(8),
    [ex_ipi] varchar(3),
    [vl_tot_item] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c190_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c190_id ON reg_c190 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c190_id_pai ON reg_c190 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c190_cnpj_pai ON reg_c190 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c191 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj_cpf_part] varchar(14),
    [cst_pis] varchar(2),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c191_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c191_id ON reg_c191 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c191_id_pai ON reg_c191 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c191_cnpj_pai ON reg_c191 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c195 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj_cpf_part] varchar(14),
    [cst_cofins] varchar(2),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c195_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c195_id ON reg_c195 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c195_id_pai ON reg_c195 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c195_cnpj_pai ON reg_c195 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c198 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c198_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c198_id ON reg_c198 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c198_id_pai ON reg_c198 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c198_cnpj_pai ON reg_c198 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c199 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_doc_imp] varchar(1),
    [num_doc_imp] varchar(10),
    [vl_pis_imp] numeric(18, 2),
    [vl_cofins_imp] numeric(18, 2),
    [num_acdraw] varchar(20),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c199_reg_c190 FOREIGN KEY (id_pai) REFERENCES reg_c190 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c199_id ON reg_c199 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c199_id_pai ON reg_c199 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c199_cnpj_pai ON reg_c199 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c380 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [dt_doc_ini] datetime,
    [dt_doc_fin] datetime,
    [num_doc_ini] varchar(6),
    [num_doc_fin] varchar(6),
    [vl_doc] numeric(18, 2),
    [vl_doc_canc] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c380_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c380_id ON reg_c380 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c380_id_pai ON reg_c380 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c380_cnpj_pai ON reg_c380 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c381 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [cod_item] varchar(60),
    [vl_item] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c381_reg_c380 FOREIGN KEY (id_pai) REFERENCES reg_c380 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c381_id ON reg_c381 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c381_id_pai ON reg_c381 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c381_cnpj_pai ON reg_c381 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c385 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [cod_item] varchar(60),
    [vl_item] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c385_reg_c380 FOREIGN KEY (id_pai) REFERENCES reg_c380 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c385_id ON reg_c385 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c385_id_pai ON reg_c385 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c385_cnpj_pai ON reg_c385 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c395 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [cod_part] varchar(60),
    [ser] varchar(3),
    [sub_ser] varchar(3),
    [num_doc] varchar(44),
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c395_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c395_id ON reg_c395 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c395_id_pai ON reg_c395 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c395_cnpj_pai ON reg_c395 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c396 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c396_reg_c395 FOREIGN KEY (id_pai) REFERENCES reg_c395 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c396_id ON reg_c396 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c396_id_pai ON reg_c396 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c396_cnpj_pai ON reg_c396 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c400 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ecf_mod] varchar(20),
    [ecf_fab] varchar(20),
    [ecf_cx] varchar(3),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c400_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c400_id ON reg_c400 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c400_id_pai ON reg_c400 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c400_cnpj_pai ON reg_c400 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c405 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_doc] datetime,
    [cro] varchar(3),
    [crz] varchar(6),
    [num_coo_fin] varchar(6),
    [gt_fin] numeric(18, 2),
    [vl_brt] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c405_reg_c400 FOREIGN KEY (id_pai) REFERENCES reg_c400 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c405_id ON reg_c405 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c405_id_pai ON reg_c405 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c405_cnpj_pai ON reg_c405 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c481 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [vl_item] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_item] varchar(60),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c481_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c481_id ON reg_c481 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c481_id_pai ON reg_c481 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c481_cnpj_pai ON reg_c481 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c485 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [vl_item] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_item] varchar(60),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c485_reg_c405 FOREIGN KEY (id_pai) REFERENCES reg_c405 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c485_id ON reg_c485 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c485_id_pai ON reg_c485 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c485_cnpj_pai ON reg_c485 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c489 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c489_reg_c400 FOREIGN KEY (id_pai) REFERENCES reg_c400 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c489_id ON reg_c489 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c489_id_pai ON reg_c489 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c489_cnpj_pai ON reg_c489 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c490 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_doc_ini] datetime,
    [dt_doc_fin] datetime,
    [cod_mod] varchar(2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c490_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c490_id ON reg_c490 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c490_id_pai ON reg_c490 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c490_cnpj_pai ON reg_c490 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c491 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [cst_pis] varchar(2),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c491_reg_c490 FOREIGN KEY (id_pai) REFERENCES reg_c490 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c491_id ON reg_c491 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c491_id_pai ON reg_c491 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c491_cnpj_pai ON reg_c491 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c495 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [cst_cofins] varchar(2),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c495_reg_c490 FOREIGN KEY (id_pai) REFERENCES reg_c490 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c495_id ON reg_c495 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c495_id_pai ON reg_c495 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c495_cnpj_pai ON reg_c495 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c499 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c499_reg_c490 FOREIGN KEY (id_pai) REFERENCES reg_c490 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c499_id ON reg_c499 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c499_id_pai ON reg_c499 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c499_cnpj_pai ON reg_c499 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(60),
    [dt_doc] datetime,
    [dt_e_s] datetime,
    [vl_doc] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cod_inf] varchar(6),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c500_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c500_id ON reg_c500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c500_id_pai ON reg_c500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c500_cnpj_pai ON reg_c500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c501 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [vl_item] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c501_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c501_id ON reg_c501 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c501_id_pai ON reg_c501 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c501_cnpj_pai ON reg_c501 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c505 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [vl_item] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c505_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c505_id ON reg_c505 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c505_id_pai ON reg_c505 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c505_cnpj_pai ON reg_c505 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c509 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c509_reg_c500 FOREIGN KEY (id_pai) REFERENCES reg_c500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c509_id ON reg_c509 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c509_id_pai ON reg_c509 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c509_cnpj_pai ON reg_c509 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c600 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [cod_mun] varchar(7),
    [ser] varchar(4),
    [sub] varchar(3),
    [cod_cons] varchar(2),
    [qtd_cons] int,
    [qtd_canc] int,
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cons] int,
    [vl_forn] numeric(18, 2),
    [vl_serv_nt] numeric(18, 2),
    [vl_terc] numeric(18, 2),
    [vl_da] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c600_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c600_id ON reg_c600 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c600_id_pai ON reg_c600 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c600_cnpj_pai ON reg_c600 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c601 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [vl_item] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c601_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c601_id ON reg_c601 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c601_id_pai ON reg_c601 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c601_cnpj_pai ON reg_c601 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c605 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [vl_item] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c605_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c605_id ON reg_c605 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c605_id_pai ON reg_c605 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c605_cnpj_pai ON reg_c605 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c609 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c609_reg_c600 FOREIGN KEY (id_pai) REFERENCES reg_c600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c609_id ON reg_c609 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c609_id_pai ON reg_c609 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c609_cnpj_pai ON reg_c609 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c860 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [nr_sat] varchar(9),
    [dt_doc] datetime,
    [doc_ini] varchar(9),
    [doc_fim] varchar(9),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c860_reg_c010 FOREIGN KEY (id_pai) REFERENCES reg_c010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c860_id ON reg_c860 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c860_id_pai ON reg_c860 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c860_cnpj_pai ON reg_c860 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c870 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c870_reg_c860 FOREIGN KEY (id_pai) REFERENCES reg_c860 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c870_id ON reg_c870 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c870_id_pai ON reg_c870 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c870_cnpj_pai ON reg_c870 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c880 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [cfop] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_pis] varchar(2),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c880_reg_c860 FOREIGN KEY (id_pai) REFERENCES reg_c860 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c880_id ON reg_c880 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c880_id_pai ON reg_c880 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c880_cnpj_pai ON reg_c880 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c890 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c890_reg_c860 FOREIGN KEY (id_pai) REFERENCES reg_c860 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c890_id ON reg_c890 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c890_id_pai ON reg_c890 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c890_cnpj_pai ON reg_c890 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_c] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_c990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c990_id ON reg_c990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c990_id_pai ON reg_c990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c990_cnpj_pai ON reg_c990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d001_id ON reg_d001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d001_id_pai ON reg_d001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d001_cnpj_pai ON reg_d001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d010_reg_d001 FOREIGN KEY (id_pai) REFERENCES reg_d001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d010_id ON reg_d010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d010_id_pai ON reg_d010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d010_cnpj_pai ON reg_d010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [chv_cte] varchar(44),
    [dt_doc] datetime,
    [dt_a_p] datetime,
    [tp_cte] varchar(1),
    [chv_cte_ref] varchar(44),
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [ind_frt] varchar(1),
    [vl_serv] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_nt] numeric(18, 2),
    [cod_inf] varchar(6),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d100_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d100_id ON reg_d100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d100_id_pai ON reg_d100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d100_cnpj_pai ON reg_d100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d101 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_nat_frt] varchar(1),
    [vl_item] numeric(18, 2),
    [cst_pis] varchar(2),
    [nat_bc_cred] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d101_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d101_id ON reg_d101 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d101_id_pai ON reg_d101 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d101_cnpj_pai ON reg_d101 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d105 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_nat_frt] varchar(1),
    [vl_item] numeric(18, 2),
    [cst_cofins] varchar(2),
    [nat_bc_cred] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d105_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d105_id ON reg_d105 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d105_id_pai ON reg_d105 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d105_cnpj_pai ON reg_d105 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d111 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d111_reg_d100 FOREIGN KEY (id_pai) REFERENCES reg_d100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d111_id ON reg_d111 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d111_id_pai ON reg_d111 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d111_cnpj_pai ON reg_d111 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc_ini] varchar(9),
    [num_doc_fin] varchar(9),
    [cfop] varchar(4),
    [dt_ref] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d200_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d200_id ON reg_d200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d200_id_pai ON reg_d200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d200_cnpj_pai ON reg_d200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d201 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [vl_item] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d201_reg_d200 FOREIGN KEY (id_pai) REFERENCES reg_d200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d201_id ON reg_d201 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d201_id_pai ON reg_d201 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d201_cnpj_pai ON reg_d201 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d205 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [vl_item] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d205_reg_d200 FOREIGN KEY (id_pai) REFERENCES reg_d200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d205_id ON reg_d205 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d205_id_pai ON reg_d205 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d205_cnpj_pai ON reg_d205 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d209 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d209_reg_d200 FOREIGN KEY (id_pai) REFERENCES reg_d200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d209_id ON reg_d209 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d209_id_pai ON reg_d209 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d209_cnpj_pai ON reg_d209 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d300 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc_ini] varchar(6),
    [num_doc_fin] int,
    [cfop] varchar(4),
    [dt_ref] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d300_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d300_id ON reg_d300 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d300_id_pai ON reg_d300 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d300_cnpj_pai ON reg_d300 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d309 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d309_reg_d300 FOREIGN KEY (id_pai) REFERENCES reg_d300 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d309_id ON reg_d309 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d309_id_pai ON reg_d309 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d309_cnpj_pai ON reg_d309 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d350 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ecf_mod] varchar(20),
    [ecf_fab] varchar(20),
    [dt_doc] datetime,
    [cro] varchar(3),
    [crz] varchar(6),
    [num_coo_fin] varchar(6),
    [gt_fin] numeric(18, 2),
    [vl_brt] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d350_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d350_id ON reg_d350 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d350_id_pai ON reg_d350 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d350_cnpj_pai ON reg_d350 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d359 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d359_reg_d350 FOREIGN KEY (id_pai) REFERENCES reg_d350 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d359_id ON reg_d359 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d359_id_pai ON reg_d359 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d359_cnpj_pai ON reg_d359 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [dt_a_p] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_serv] numeric(18, 2),
    [vl_serv_nt] numeric(18, 2),
    [vl_terc] numeric(18, 2),
    [vl_da] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cod_inf] varchar(6),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d500_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d500_id ON reg_d500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d500_id_pai ON reg_d500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d500_cnpj_pai ON reg_d500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d501 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [vl_item] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d501_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d501_id ON reg_d501 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d501_id_pai ON reg_d501 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d501_cnpj_pai ON reg_d501 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d505 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [vl_item] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d505_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d505_id ON reg_d505 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d505_id_pai ON reg_d505 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d505_cnpj_pai ON reg_d505 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d509 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d509_reg_d500 FOREIGN KEY (id_pai) REFERENCES reg_d500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d509_id ON reg_d509 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d509_id_pai ON reg_d509 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d509_cnpj_pai ON reg_d509 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d600 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [cod_mun] varchar(7),
    [ser] varchar(4),
    [sub] varchar(3),
    [ind_rec] varchar(1),
    [qtd_cons] int,
    [dt_doc_ini] datetime,
    [dt_doc_fin] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_serv] numeric(18, 2),
    [vl_serv_nt] numeric(18, 2),
    [vl_terc] numeric(18, 2),
    [vl_da] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d600_reg_d010 FOREIGN KEY (id_pai) REFERENCES reg_d010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d600_id ON reg_d600 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d600_id_pai ON reg_d600 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d600_cnpj_pai ON reg_d600 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d601 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_class] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d601_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d601_id ON reg_d601 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d601_id_pai ON reg_d601 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d601_cnpj_pai ON reg_d601 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d605 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_class] varchar(4),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d605_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d605_id ON reg_d605 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d605_id_pai ON reg_d605 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d605_cnpj_pai ON reg_d605 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d609 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d609_reg_d600 FOREIGN KEY (id_pai) REFERENCES reg_d600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d609_id ON reg_d609 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d609_id_pai ON reg_d609 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d609_cnpj_pai ON reg_d609 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_d] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_d990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d990_id ON reg_d990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d990_id_pai ON reg_d990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d990_cnpj_pai ON reg_d990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f001_id ON reg_f001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f001_id_pai ON reg_f001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f001_cnpj_pai ON reg_f001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f010_reg_f001 FOREIGN KEY (id_pai) REFERENCES reg_f001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f010_id ON reg_f010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f010_id_pai ON reg_f010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f010_cnpj_pai ON reg_f010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [cod_part] varchar(60),
    [cod_item] varchar(60),
    [dt_oper] datetime,
    [vl_oper] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 4),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 4),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [nat_bc_cred] varchar(2),
    [ind_orig_cred] varchar(1),
    [cod_cta] varchar(60),
    [cod_ccus] varchar(60),
    [desc_doc_oper] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f100_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f100_id ON reg_f100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f100_id_pai ON reg_f100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f100_cnpj_pai ON reg_f100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f111 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f111_reg_f100 FOREIGN KEY (id_pai) REFERENCES reg_f100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f111_id ON reg_f111 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f111_id_pai ON reg_f111 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f111_cnpj_pai ON reg_f111 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f120 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_bc_cred] varchar(2),
    [ident_bem_imob] varchar(2),
    [ind_orig_cred] varchar(1),
    [ind_util_bem_imob] varchar(1),
    [vl_oper_dep] numeric(18, 2),
    [parc_oper_nao_bc_cred] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cod_ccus] varchar(60),
    [desc_bem_imob] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f120_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f120_id ON reg_f120 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f120_id_pai ON reg_f120 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f120_cnpj_pai ON reg_f120 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f129 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f129_reg_f120 FOREIGN KEY (id_pai) REFERENCES reg_f120 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f129_id ON reg_f129 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f129_id_pai ON reg_f129 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f129_cnpj_pai ON reg_f129 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f130 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_bc_cred] varchar(2),
    [ident_bem_imob] varchar(2),
    [ind_orig_cred] varchar(1),
    [ind_util_bem_imob] varchar(1),
    [mes_oper_aquis] varchar(6),
    [vl_oper_aquis] numeric(18, 2),
    [parc_oper_nao_bc_cred] numeric(18, 2),
    [vl_bc_cred] numeric(18, 2),
    [ind_nr_parc] varchar(1),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(60),
    [cod_ccus] varchar(60),
    [desc_bem_imob] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f130_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f130_id ON reg_f130 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f130_id_pai ON reg_f130 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f130_cnpj_pai ON reg_f130 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f139 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f139_reg_f130 FOREIGN KEY (id_pai) REFERENCES reg_f130 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f139_id ON reg_f139 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f139_id_pai ON reg_f139 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f139_cnpj_pai ON reg_f139 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f150 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_bc_cred] varchar(2),
    [vl_tot_est] numeric(18, 2),
    [est_imp] numeric(18, 2),
    [vl_bc_est] numeric(18, 2),
    [vl_bc_men_est] numeric(18, 2),
    [cst_pis] varchar(2),
    [aliq_pis] numeric(18, 4),
    [vl_cred_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [aliq_cofins] numeric(18, 4),
    [vl_cred_cofins] numeric(18, 2),
    [desc_est] varchar(100),
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f150_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f150_id ON reg_f150 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f150_id_pai ON reg_f150 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f150_cnpj_pai ON reg_f150 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(2),
    [unid_imob] varchar(2),
    [ident_emp] varchar(MAX),
    [desc_unid_imob] varchar(90),
    [num_cont] varchar(90),
    [cpf_cnpj_adqu] varchar(14),
    [dt_oper] datetime,
    [vl_tot_vend] numeric(18, 2),
    [vl_rec_acum] numeric(18, 2),
    [vl_tot_rec] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [perc_rec_receb] numeric(18, 2),
    [ind_nat_emp] varchar(1),
    [inf_comp] varchar(90),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f200_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f200_id ON reg_f200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f200_id_pai ON reg_f200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f200_cnpj_pai ON reg_f200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f205 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_cus_inc_acum_ant] numeric(18, 2),
    [vl_cus_inc_per_esc] numeric(18, 2),
    [vl_cus_inc_acum] numeric(18, 2),
    [vl_exc_bc_cus_inc_acum] numeric(18, 2),
    [vl_bc_cus_inc] numeric(18, 2),
    [cst_pis] varchar(2),
    [aliq_pis] numeric(18, 4),
    [vl_cred_pis_acum] numeric(18, 2),
    [vl_cred_pis_desc_ant] numeric(18, 2),
    [vl_cred_pis_desc] numeric(18, 2),
    [vl_cred_pis_desc_fut] numeric(18, 2),
    [cst_cofins] varchar(2),
    [aliq_cofins] numeric(18, 4),
    [vl_cred_cofins_acum] numeric(18, 2),
    [vl_cred_cofins_desc_ant] numeric(18, 2),
    [vl_cred_cofins_desc] numeric(18, 2),
    [vl_cred_cofins_desc_fut] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f205_reg_f200 FOREIGN KEY (id_pai) REFERENCES reg_f200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f205_id ON reg_f205 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f205_id_pai ON reg_f205 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f205_cnpj_pai ON reg_f205 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f210 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_cus_orc] numeric(18, 2),
    [vl_exc] numeric(18, 2),
    [vl_cus_orc_aju] numeric(18, 2),
    [vl_bc_cred] numeric(18, 2),
    [cst_pis] varchar(2),
    [aliq_pis] numeric(18, 4),
    [vl_cred_pis_util] numeric(18, 2),
    [cst_cofins] varchar(2),
    [aliq_cofins] numeric(18, 4),
    [vl_cred_cofins_util] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f210_reg_f200 FOREIGN KEY (id_pai) REFERENCES reg_f200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f210_id ON reg_f210 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f210_id_pai ON reg_f210 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f210_cnpj_pai ON reg_f210 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f211 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f211_reg_f200 FOREIGN KEY (id_pai) REFERENCES reg_f200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f211_id ON reg_f211 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f211_id_pai ON reg_f211 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f211_cnpj_pai ON reg_f211 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_rec_caixa] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_desc_pis] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_desc_cofins] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_mod] varchar(2),
    [cfop] varchar(4),
    [cod_cta] varchar(60),
    [info_compl] varchar,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f500_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f500_id ON reg_f500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f500_id_pai ON reg_f500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f500_cnpj_pai ON reg_f500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f509 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f509_reg_f500 FOREIGN KEY (id_pai) REFERENCES reg_f500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f509_id ON reg_f509 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f509_id_pai ON reg_f509 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f509_cnpj_pai ON reg_f509 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f510 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_rec_caixa] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_desc_pis] numeric(18, 2),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_desc_cofins] numeric(18, 2),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_mod] varchar(2),
    [cfop] varchar(4),
    [cod_cta] varchar(60),
    [info_compl] varchar,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f510_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f510_id ON reg_f510 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f510_id_pai ON reg_f510 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f510_cnpj_pai ON reg_f510 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f519 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f519_reg_f510 FOREIGN KEY (id_pai) REFERENCES reg_f510 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f519_id ON reg_f519 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f519_id_pai ON reg_f519 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f519_cnpj_pai ON reg_f519 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f525 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_rec] numeric(18, 2),
    [ind_rec] varchar(2),
    [cnpj_cpf] varchar(14),
    [num_doc] varchar(60),
    [cod_item] varchar(60),
    [vl_rec_det] numeric(18, 2),
    [cst_pis] varchar(2),
    [cst_cofins] varchar(2),
    [info_compl] varchar,
    [cod_cta] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f525_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f525_id ON reg_f525 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f525_id_pai ON reg_f525 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f525_cnpj_pai ON reg_f525 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f550 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_rec_comp] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_desc_pis] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_desc_cofins] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_mod] varchar(2),
    [cfop] varchar(4),
    [cod_cta] varchar(60),
    [info_compl] varchar,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f550_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f550_id ON reg_f550 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f550_id_pai ON reg_f550 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f550_cnpj_pai ON reg_f550 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f559 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f559_reg_f550 FOREIGN KEY (id_pai) REFERENCES reg_f550 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f559_id ON reg_f559 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f559_id_pai ON reg_f559 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f559_cnpj_pai ON reg_f559 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f560 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_rec_comp] numeric(18, 2),
    [cst_pis] varchar(2),
    [vl_desc_pis] numeric(18, 2),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_desc_cofins] numeric(18, 2),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_mod] varchar(2),
    [cfop] varchar(4),
    [cod_cta] varchar(60),
    [info_compl] varchar,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f560_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f560_id ON reg_f560 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f560_id_pai ON reg_f560 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f560_cnpj_pai ON reg_f560 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f569 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f569_reg_f560 FOREIGN KEY (id_pai) REFERENCES reg_f560 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f569_id ON reg_f569 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f569_id_pai ON reg_f569 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f569_cnpj_pai ON reg_f569 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f600 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_nat_ret] varchar(2),
    [dt_ret] datetime,
    [vl_bc_ret] numeric(18, 4),
    [vl_ret] numeric(18, 2),
    [cod_rec] varchar(4),
    [ind_nat_rec] varchar(1),
    [cnpj] varchar(14),
    [vl_ret_pis] numeric(18, 2),
    [vl_ret_cofins] numeric(18, 2),
    [ind_dec] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f600_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f600_id ON reg_f600 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f600_id_pai ON reg_f600 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f600_cnpj_pai ON reg_f600 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f700 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_ori_ded] varchar(2),
    [ind_nat_ded] varchar(1),
    [vl_ded_pis] numeric(18, 2),
    [vl_ded_cofins] numeric(18, 2),
    [vl_bc_oper] numeric(18, 2),
    [cnpj] varchar(14),
    [inf_comp] varchar(90),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f700_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f700_id ON reg_f700 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f700_id_pai ON reg_f700 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f700_cnpj_pai ON reg_f700 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f800 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_nat_even] varchar(2),
    [dt_even] datetime,
    [cnpj_suced] varchar(14),
    [pa_cont_cred] varchar(6),
    [cod_cred] varchar(3),
    [vl_cred_pis] numeric(18, 2),
    [vl_cred_cofins] numeric(18, 2),
    [per_cred_cis] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f800_reg_f010 FOREIGN KEY (id_pai) REFERENCES reg_f010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f800_id ON reg_f800 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f800_id_pai ON reg_f800 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f800_cnpj_pai ON reg_f800 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_f990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_f] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_f990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_f990_id ON reg_f990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_f990_id_pai ON reg_f990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_f990_cnpj_pai ON reg_f990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i001_id ON reg_i001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i001_id_pai ON reg_i001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i001_cnpj_pai ON reg_i001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [ind_ativ] varchar(2),
    [info_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i010_reg_i001 FOREIGN KEY (id_pai) REFERENCES reg_i001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i010_id ON reg_i010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i010_id_pai ON reg_i010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i010_cnpj_pai ON reg_i010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_rec_fin] numeric(18, 2),
    [cst] varchar(2),
    [vl_tot_ded_ger] numeric(18, 2),
    [vl_tot_ded_esp] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [aliq_pis] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [inf_comp] varchar(90),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i100_reg_i010 FOREIGN KEY (id_pai) REFERENCES reg_i010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i100_id ON reg_i100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i100_id_pai ON reg_i100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i100_cnpj_pai ON reg_i100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i199 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i199_reg_i100 FOREIGN KEY (id_pai) REFERENCES reg_i100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i199_id ON reg_i199 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i199_id_pai ON reg_i199 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i199_cnpj_pai ON reg_i199 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_campo] varchar(2),
    [cod_det] varchar(5),
    [vl_det] numeric(18, 2),
    [cod_cta] varchar(60),
    [inf_comp] varchar(90),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i200_reg_i100 FOREIGN KEY (id_pai) REFERENCES reg_i100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i200_id ON reg_i200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i200_id_pai ON reg_i200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i200_cnpj_pai ON reg_i200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i299 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i299_reg_i200 FOREIGN KEY (id_pai) REFERENCES reg_i200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i299_id ON reg_i299 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i299_id_pai ON reg_i299 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i299_cnpj_pai ON reg_i299 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i300 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_comp] varchar(8),
    [vl_comp] numeric(18, 2),
    [cod_cta] varchar(60),
    [inf_comp] varchar(90),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i300_reg_i200 FOREIGN KEY (id_pai) REFERENCES reg_i200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i300_id ON reg_i300 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i300_id_pai ON reg_i300 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i300_cnpj_pai ON reg_i300 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i399 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i399_reg_i300 FOREIGN KEY (id_pai) REFERENCES reg_i300 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i399_id ON reg_i399 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i399_id_pai ON reg_i399 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i399_cnpj_pai ON reg_i399 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_i990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_i] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_i990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_i990_id ON reg_i990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_i990_id_pai ON reg_i990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_i990_cnpj_pai ON reg_i990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m001_id ON reg_m001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m001_id_pai ON reg_m001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m001_cnpj_pai ON reg_m001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_cred] varchar(3),
    [ind_cred_ori] varchar(1),
    [vl_bc_cred] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_cred] numeric(18, 2),
    [vl_ajus_acres] numeric(18, 2),
    [vl_ajus_reduc] numeric(18, 2),
    [vl_cred_dif] numeric(18, 2),
    [vl_cred_disp] numeric(18, 2),
    [ind_desc_cred] varchar(1),
    [vl_cred_desc] numeric(18, 2),
    [sld_cred] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m100_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m100_id ON reg_m100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m100_id_pai ON reg_m100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m100_cnpj_pai ON reg_m100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m105 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_bc_cred] varchar(2),
    [cst_pis] varchar(2),
    [vl_bc_pis_tot] numeric(18, 2),
    [vl_bc_pis_cum] numeric(18, 2),
    [vl_bc_pis_nc] numeric(18, 2),
    [vl_bc_pis] numeric(18, 2),
    [quant_bc_pis_tot] numeric(18, 3),
    [quant_bc_pis] numeric(18, 3),
    [desc_cred] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m105_reg_m100 FOREIGN KEY (id_pai) REFERENCES reg_m100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m105_id ON reg_m105 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m105_id_pai ON reg_m105 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m105_cnpj_pai ON reg_m105 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_aj] varchar(1),
    [vl_aj] numeric(18, 2),
    [cod_aj] varchar(2),
    [num_doc] varchar(MAX),
    [descr_aj] varchar(MAX),
    [dt_ref] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m110_reg_m100 FOREIGN KEY (id_pai) REFERENCES reg_m100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m110_id ON reg_m110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m110_id_pai ON reg_m110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m110_cnpj_pai ON reg_m110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m115 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [det_valor_aj] numeric(18, 2),
    [cst_pis] varchar(2),
    [det_bc_cred] numeric(18, 3),
    [det_aliq] numeric(18, 4),
    [dt_oper_aj] datetime,
    [desc_aj] varchar(255),
    [cod_cta] varchar(60),
    [info_compl] varchar(255),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m115_reg_m110 FOREIGN KEY (id_pai) REFERENCES reg_m110 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m115_id ON reg_m115 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m115_id_pai ON reg_m115 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m115_cnpj_pai ON reg_m115 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_tot_cont_nc_per] numeric(18, 2),
    [vl_tot_cred_desc] numeric(18, 2),
    [vl_tot_cred_desc_ant] numeric(18, 2),
    [vl_tot_cont_nc_dev] numeric(18, 2),
    [vl_ret_nc] numeric(18, 2),
    [vl_out_ded_nc] numeric(18, 2),
    [vl_cont_nc_rec] numeric(18, 2),
    [vl_tot_cont_cum_per] numeric(18, 2),
    [vl_ret_cum] numeric(18, 2),
    [vl_out_ded_cum] numeric(18, 2),
    [vl_cont_cum_rec] numeric(18, 2),
    [vl_tot_cont_rec] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m200_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m200_id ON reg_m200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m200_id_pai ON reg_m200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m200_cnpj_pai ON reg_m200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m205 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_campo] varchar(2),
    [cod_rec] varchar(6),
    [vl_debito] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m205_reg_m200 FOREIGN KEY (id_pai) REFERENCES reg_m200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m205_id ON reg_m205 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m205_id_pai ON reg_m205 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m205_cnpj_pai ON reg_m205 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m210 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_cont] varchar(2),
    [vl_rec_brt] numeric(18, 2),
    [vl_bc_cont] numeric(18, 2),
    [aliq_pis] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_quant] numeric(18, 4),
    [vl_cont_apur] numeric(18, 2),
    [vl_ajus_acres] numeric(18, 2),
    [vl_ajus_reduc] numeric(18, 2),
    [vl_cont_difer] numeric(18, 2),
    [vl_cont_difer_ant] numeric(18, 2),
    [vl_cont_per] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m210_reg_m200 FOREIGN KEY (id_pai) REFERENCES reg_m200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m210_id ON reg_m210 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m210_id_pai ON reg_m210 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m210_cnpj_pai ON reg_m210 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m211 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_tip_coop] varchar(2),
    [vl_bc_cont_ant_exc_coop] numeric(18, 2),
    [vl_exc_coop_ger] numeric(18, 2),
    [vl_exc_esp_coop] numeric(18, 2),
    [vl_bc_cont] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m211_reg_m210 FOREIGN KEY (id_pai) REFERENCES reg_m210 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m211_id ON reg_m211 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m211_id_pai ON reg_m211 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m211_cnpj_pai ON reg_m211 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m220 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_aj] varchar(1),
    [vl_aj] numeric(18, 2),
    [cod_aj] varchar(2),
    [num_doc] varchar(MAX),
    [descr_aj] varchar(MAX),
    [dt_ref] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m220_reg_m210 FOREIGN KEY (id_pai) REFERENCES reg_m210 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m220_id ON reg_m220 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m220_id_pai ON reg_m220 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m220_cnpj_pai ON reg_m220 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m225 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [det_valor_aj] numeric(18, 2),
    [cst_pis] varchar(2),
    [det_bc_cred] numeric(18, 3),
    [det_aliq] numeric(18, 4),
    [dt_oper_aj] datetime,
    [desc_aj] varchar(255),
    [cod_cta] varchar(60),
    [info_compl] varchar(255),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m225_reg_m220 FOREIGN KEY (id_pai) REFERENCES reg_m220 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m225_id ON reg_m225 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m225_id_pai ON reg_m225 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m225_cnpj_pai ON reg_m225 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m230 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [vl_vend] numeric(18, 2),
    [vl_nao_receb] numeric(18, 2),
    [vl_cont_dif] numeric(18, 2),
    [vl_cred_dif] numeric(18, 2),
    [cod_cred] varchar(3),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m230_reg_m210 FOREIGN KEY (id_pai) REFERENCES reg_m210 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m230_id ON reg_m230 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m230_id_pai ON reg_m230 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m230_cnpj_pai ON reg_m230 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m300 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_cont] varchar(2),
    [vl_cont_apur_difer] numeric(18, 2),
    [nat_cred_desc] varchar(2),
    [vl_cred_desc_difer] numeric(18, 2),
    [vl_cont_difer_ant] numeric(18, 2),
    [per_apur] varchar(6),
    [dt_receb] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m300_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m300_id ON reg_m300 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m300_id_pai ON reg_m300 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m300_cnpj_pai ON reg_m300 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m350 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_tot_fol] numeric(18, 2),
    [vl_exc_bc] numeric(18, 2),
    [vl_tot_bc] numeric(18, 2),
    [aliq_pis_fol] numeric(18, 2),
    [vl_tot_cont_fol] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m350_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m350_id ON reg_m350 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m350_id_pai ON reg_m350 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m350_cnpj_pai ON reg_m350 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m400 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_pis] varchar(2),
    [vl_tot_rec] numeric(18, 2),
    [cod_cta] varchar(60),
    [desc_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m400_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m400_id ON reg_m400 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m400_id_pai ON reg_m400 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m400_cnpj_pai ON reg_m400 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m410 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_rec] varchar(3),
    [vl_rec] numeric(18, 2),
    [cod_cta] varchar(60),
    [desc_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m410_reg_m400 FOREIGN KEY (id_pai) REFERENCES reg_m400 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m410_id ON reg_m410 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m410_id_pai ON reg_m410 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m410_cnpj_pai ON reg_m410 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_cred] varchar(3),
    [ind_cred_ori] varchar(1),
    [vl_bc_cred] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cred] numeric(18, 2),
    [vl_ajus_acres] numeric(18, 2),
    [vl_ajus_reduc] numeric(18, 2),
    [vl_cred_dif] numeric(18, 2),
    [vl_cred_disp] numeric(18, 2),
    [ind_desc_cred] varchar(1),
    [vl_cred_desc] numeric(18, 2),
    [sld_cred] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m500_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m500_id ON reg_m500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m500_id_pai ON reg_m500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m500_cnpj_pai ON reg_m500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m505 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_bc_cred] varchar(2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins_tot] numeric(18, 2),
    [vl_bc_cofins_cum] numeric(18, 2),
    [vl_bc_cofins_nc] numeric(18, 2),
    [vl_bc_cofins] numeric(18, 2),
    [quant_bc_cofins_tot] numeric(18, 3),
    [quant_bc_cofins] numeric(18, 3),
    [desc_cred] varchar(60),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m505_reg_m500 FOREIGN KEY (id_pai) REFERENCES reg_m500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m505_id ON reg_m505 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m505_id_pai ON reg_m505 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m505_cnpj_pai ON reg_m505 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m510 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_aj] varchar(1),
    [vl_aj] numeric(18, 2),
    [cod_aj] varchar(2),
    [num_doc] varchar(MAX),
    [descr_aj] varchar(MAX),
    [dt_ref] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m510_reg_m500 FOREIGN KEY (id_pai) REFERENCES reg_m500 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m510_id ON reg_m510 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m510_id_pai ON reg_m510 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m510_cnpj_pai ON reg_m510 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m515 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [det_valor_aj] numeric(18, 2),
    [cst_cofins] varchar(2),
    [det_bc_cred] numeric(18, 3),
    [det_aliq] numeric(18, 4),
    [dt_oper_aj] datetime,
    [desc_aj] varchar(255),
    [cod_cta] varchar(60),
    [info_compl] varchar(255),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m515_reg_m510 FOREIGN KEY (id_pai) REFERENCES reg_m510 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m515_id ON reg_m515 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m515_id_pai ON reg_m515 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m515_cnpj_pai ON reg_m515 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m600 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_tot_cont_nc_per] numeric(18, 2),
    [vl_tot_cred_desc] numeric(18, 2),
    [vl_tot_cred_desc_ant] numeric(18, 2),
    [vl_tot_cont_nc_dev] numeric(18, 2),
    [vl_ret_nc] numeric(18, 2),
    [vl_out_ded_nc] numeric(18, 2),
    [vl_cont_nc_rec] numeric(18, 2),
    [vl_tot_cont_cum_per] numeric(18, 2),
    [vl_ret_cum] numeric(18, 2),
    [vl_out_ded_cum] numeric(18, 2),
    [vl_cont_cum_rec] numeric(18, 2),
    [vl_tot_cont_rec] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m600_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m600_id ON reg_m600 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m600_id_pai ON reg_m600 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m600_cnpj_pai ON reg_m600 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m605 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_campo] varchar(2),
    [cod_rec] varchar(6),
    [vl_debito] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m605_reg_m600 FOREIGN KEY (id_pai) REFERENCES reg_m600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m605_id ON reg_m605 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m605_id_pai ON reg_m605 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m605_cnpj_pai ON reg_m605 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m610 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_cont] varchar(2),
    [vl_rec_brt] numeric(18, 2),
    [vl_bc_cont] numeric(18, 2),
    [aliq_cofins] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_quant] numeric(18, 4),
    [vl_cont_apur] numeric(18, 2),
    [vl_ajus_acres] numeric(18, 2),
    [vl_ajus_reduc] numeric(18, 2),
    [vl_cont_difer] numeric(18, 2),
    [vl_cont_difer_ant] numeric(18, 2),
    [vl_cont_per] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m610_reg_m600 FOREIGN KEY (id_pai) REFERENCES reg_m600 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m610_id ON reg_m610 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m610_id_pai ON reg_m610 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m610_cnpj_pai ON reg_m610 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m611 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_tip_coop] varchar(2),
    [vl_bc_cont_ant_exc_coop] numeric(18, 2),
    [vl_exc_coop_ger] numeric(18, 2),
    [vl_exc_esp_coop] numeric(18, 2),
    [vl_bc_cont] numeric(18, 2),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m611_reg_m610 FOREIGN KEY (id_pai) REFERENCES reg_m610 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m611_id ON reg_m611 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m611_id_pai ON reg_m611 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m611_cnpj_pai ON reg_m611 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m620 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_aj] varchar(1),
    [vl_aj] numeric(18, 2),
    [cod_aj] varchar(2),
    [num_doc] varchar(MAX),
    [descr_aj] varchar(MAX),
    [dt_ref] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m620_reg_m610 FOREIGN KEY (id_pai) REFERENCES reg_m610 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m620_id ON reg_m620 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m620_id_pai ON reg_m620 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m620_cnpj_pai ON reg_m620 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m625 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [det_valor_aj] numeric(18, 2),
    [cst_cofins] varchar(2),
    [det_bc_cred] numeric(18, 3),
    [det_aliq] numeric(18, 4),
    [dt_oper_aj] datetime,
    [desc_aj] varchar(255),
    [cod_cta] varchar(60),
    [info_compl] varchar(255),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m625_reg_m620 FOREIGN KEY (id_pai) REFERENCES reg_m620 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m625_id ON reg_m625 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m625_id_pai ON reg_m625 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m625_cnpj_pai ON reg_m625 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m630 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [vl_vend] numeric(18, 2),
    [vl_nao_receb] numeric(18, 2),
    [vl_cont_dif] numeric(18, 2),
    [vl_cred_dif] numeric(18, 2),
    [cod_cred] varchar(3),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m630_reg_m610 FOREIGN KEY (id_pai) REFERENCES reg_m610 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m630_id ON reg_m630 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m630_id_pai ON reg_m630 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m630_cnpj_pai ON reg_m630 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m700 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_cont] varchar(2),
    [vl_cont_apur_difer] numeric(18, 2),
    [nat_bc_cred_desc] varchar(2),
    [vl_cred_desc_difer] numeric(18, 2),
    [vl_cont_difer_ant] numeric(18, 2),
    [per_apur] varchar(6),
    [dt_receb] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m700_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m700_id ON reg_m700 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m700_id_pai ON reg_m700 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m700_cnpj_pai ON reg_m700 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m800 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_cofins] varchar(2),
    [vl_tot_rec] numeric(18, 2),
    [cod_cta] varchar(60),
    [desc_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m800_reg_m001 FOREIGN KEY (id_pai) REFERENCES reg_m001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m800_id ON reg_m800 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m800_id_pai ON reg_m800 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m800_cnpj_pai ON reg_m800 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m810 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [nat_rec] varchar(3),
    [vl_rec] numeric(18, 2),
    [cod_cta] varchar(60),
    [desc_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m810_reg_m800 FOREIGN KEY (id_pai) REFERENCES reg_m800 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m810_id ON reg_m810 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m810_id_pai ON reg_m810 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m810_cnpj_pai ON reg_m810 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_m990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_m] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_m990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_m990_id ON reg_m990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_m990_id_pai ON reg_m990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_m990_cnpj_pai ON reg_m990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p001_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p001_id ON reg_p001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p001_id_pai ON reg_p001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p001_cnpj_pai ON reg_p001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cnpj] varchar(14),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p010_reg_p001 FOREIGN KEY (id_pai) REFERENCES reg_p001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p010_id ON reg_p010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p010_id_pai ON reg_p010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p010_cnpj_pai ON reg_p010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini] datetime,
    [dt_fim] datetime,
    [vl_rec_tot_est] numeric(18, 2),
    [cod_ativ_econ] varchar(8),
    [vl_rec_ativ_estab] numeric(18, 2),
    [vl_exc] numeric(18, 2),
    [vl_bc_cont] numeric(18, 2),
    [aliq_cont] numeric(18, 4),
    [vl_cont_apu] numeric(18, 2),
    [cod_cta] varchar(60),
    [info_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p100_reg_p010 FOREIGN KEY (id_pai) REFERENCES reg_p010 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p100_id ON reg_p100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p100_id_pai ON reg_p100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p100_cnpj_pai ON reg_p100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_campo] varchar(2),
    [cod_det] varchar(8),
    [det_valor] numeric(18, 2),
    [inf_compl] varchar(MAX),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p110_reg_p100 FOREIGN KEY (id_pai) REFERENCES reg_p100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p110_id ON reg_p110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p110_id_pai ON reg_p110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p110_cnpj_pai ON reg_p110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p199 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_proc] varchar(20),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p199_reg_p100 FOREIGN KEY (id_pai) REFERENCES reg_p100 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p199_id ON reg_p199 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p199_id_pai ON reg_p199 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p199_cnpj_pai ON reg_p199 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [per_ref] varchar(6),
    [vl_tot_cont_apu] numeric(18, 2),
    [vl_tot_aj_reduc] numeric(18, 2),
    [vl_tot_aj_acres] numeric(18, 2),
    [vl_tot_cont_dev] numeric(18, 2),
    [cod_rec] varchar(6),
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p200_reg_p001 FOREIGN KEY (id_pai) REFERENCES reg_p001 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p200_id ON reg_p200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p200_id_pai ON reg_p200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p200_cnpj_pai ON reg_p200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p210 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_aj] varchar(1),
    [vl_aj] numeric(18, 2),
    [cod_aj] varchar(2),
    [num_doc] varchar(MAX),
    [descr_aj] varchar(MAX),
    [dt_ref] datetime,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p210_reg_p200 FOREIGN KEY (id_pai) REFERENCES reg_p200 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p210_id ON reg_p210 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p210_id_pai ON reg_p210 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p210_cnpj_pai ON reg_p210 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_p990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_p] int,
    [cnpj_pai] varchar(14),
    CONSTRAINT FK_reg_p990_reg_0000 FOREIGN KEY (id_pai) REFERENCES reg_0000 (id)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_p990_id ON reg_p990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_p990_id_pai ON reg_p990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_p990_cnpj_pai ON reg_p990 (cnpj_pai)

GO
USE [master]
GO
ALTER DATABASE [$(DbName)] SET  READ_WRITE
GO
