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
    [cod_fin] varchar(1),
    [dt_ini] datetime,
    [dt_fin] datetime,
    [nome] varchar(100),
    [cnpj] varchar(14),
    [cpf] varchar(11),
    [uf] varchar(2),
    [ie] varchar(14),
    [cod_mun] varchar(7),
    [im] varchar(MAX),
    [suframa] varchar(9),
    [ind_perfil] varchar(1),
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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_0005 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [fantasia] varchar(60),
    [cep] varchar(8),
    [endereco] varchar(60),
    [num] varchar(10),
    [compl] varchar(60),
    [bairro] varchar(60),
    [fone] varchar(11),
    [fax] varchar(11),
    [email] varchar(60),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0005_id ON reg_0005 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0005_id_pai ON reg_0005 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0005_cnpj_pai ON reg_0005 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0015 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [uf_st] varchar(2),
    [ie_st] varchar(14),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0015_id ON reg_0015 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0015_id_pai ON reg_0015 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0015_cnpj_pai ON reg_0015 (cnpj_pai)

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
    [nome] varchar(60),
    [cpf] varchar(11),
    [crc] varchar(15),
    [cnpj] varchar(14),
    [cep] varchar(8),
    [endereco] varchar(60),
    [num] varchar(10),
    [compl] varchar(60),
    [bairro] varchar(60),
    [fone] varchar(11),
    [fax] varchar(11),
    [email] varchar(60),
    [cod_mun] varchar(7),
    [cnpj_pai] varchar(14)
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
    [endereco] varchar(60),
    [num] varchar(10),
    [compl] varchar(60),
    [bairro] varchar(60),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_0175 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_alt] datetime,
    [nr_campo] varchar(2),
    [cont_ant] varchar(100),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0175_id ON reg_0175 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0175_id_pai ON reg_0175 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0175_cnpj_pai ON reg_0175 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
    [cod_barra] varchar(20),
    [cod_ant_item] varchar(60),
    [unid_inv] varchar(6),
    [tipo_item] varchar(2),
    [cod_ncm] varchar(8),
    [ex_ipi] varchar(3),
    [cod_gen] varchar(2),
    [cod_lst] varchar(4),
    [aliq_icms] numeric(18, 2),
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_0210 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item_comp] varchar(60),
    [qtd_comp] numeric(18, 6),
    [perda] numeric(18, 4),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0210_id ON reg_0210 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0210_id_pai ON reg_0210 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0210_cnpj_pai ON reg_0210 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0220 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [unid_conv] varchar(6),
    [fat_conv] numeric(18, 6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0220_id ON reg_0220 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0220_id_pai ON reg_0220 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0220_cnpj_pai ON reg_0220 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0300 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_ind_bem] varchar(60),
    [ident_merc] varchar(1),
    [descr_item] varchar(MAX),
    [cod_prnc] varchar(60),
    [cod_cta] varchar(60),
    [nr_parc] varchar(3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0300_id ON reg_0300 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0300_id_pai ON reg_0300 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0300_cnpj_pai ON reg_0300 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_0305 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_ccus] varchar(60),
    [func] varchar(MAX),
    [vida_util] varchar(3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0305_id ON reg_0305 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0305_id_pai ON reg_0305 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0305_cnpj_pai ON reg_0305 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_0460 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_obs] varchar(6),
    [txt] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_0460_id ON reg_0460 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_0460_id_pai ON reg_0460 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_0460_cnpj_pai ON reg_0460 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [ind_exp] varchar(1),
    [ind_ccrf] varchar(1),
    [ind_comb] varchar(1),
    [ind_usina] varchar(1),
    [ind_va] varchar(1),
    [ind_ee] varchar(1),
    [ind_cart] varchar(1),
    [ind_form] varchar(1),
    [ind_aer] varchar(1),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_doc] varchar(1),
    [nro_de] varchar(11),
    [dt_de] datetime,
    [nat_exp] varchar(1),
    [nro_re] varchar(12),
    [dt_re] datetime,
    [chc_emb] varchar(18),
    [dt_chc] datetime,
    [dt_avb] datetime,
    [tp_chc] varchar(2),
    [pais] varchar(3),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1105 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(3),
    [num_doc] varchar(9),
    [chv_nfe] varchar(44),
    [dt_doc] datetime,
    [cod_item] varchar(60),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1105_id ON reg_1105 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1105_id_pai ON reg_1105 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1105_cnpj_pai ON reg_1105 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [chv_nfe] varchar(44),
    [nr_memo] int,
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1110_id ON reg_1110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1110_id_pai ON reg_1110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1110_cnpj_pai ON reg_1110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_aj_apur] varchar(8),
    [sld_cred] numeric(18, 2),
    [cred_apr] numeric(18, 2),
    [cred_receb] numeric(18, 2),
    [cred_util] numeric(18, 2),
    [sld_cred_fim] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1200_id ON reg_1200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1200_id_pai ON reg_1200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1200_cnpj_pai ON reg_1200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1210 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [tipo_util] varchar(4),
    [nr_doc] varchar(MAX),
    [vl_cred_util] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1210_id ON reg_1210 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1210_id_pai ON reg_1210 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1210_cnpj_pai ON reg_1210 (cnpj_pai)

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
    [cod_item] varchar(60),
    [dt_fech] datetime,
    [estq_abert] numeric(18, 3),
    [vol_entr] numeric(18, 3),
    [vol_disp] numeric(18, 3),
    [vol_saidas] numeric(18, 3),
    [estq_escr] numeric(18, 3),
    [val_aj_perda] numeric(18, 3),
    [val_aj_ganho] numeric(18, 3),
    [fech_fisico] numeric(18, 3),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1310 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_tanque] varchar(3),
    [estq_abert] numeric(18, 3),
    [vol_entr] numeric(18, 3),
    [vol_disp] numeric(18, 3),
    [vol_saidas] numeric(18, 3),
    [estq_escr] numeric(18, 3),
    [val_aj_perda] numeric(18, 3),
    [val_aj_ganho] numeric(18, 3),
    [fech_fisico] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1310_id ON reg_1310 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1310_id_pai ON reg_1310 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1310_cnpj_pai ON reg_1310 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1320 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_bico] int,
    [nr_interv] int,
    [mot_interv] varchar(50),
    [nom_interv] varchar(30),
    [cnpj_interv] varchar(14),
    [cpf_interv] varchar(11),
    [val_fecha] numeric(18, 3),
    [val_abert] numeric(18, 3),
    [vol_aferi] numeric(18, 3),
    [vol_vendas] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1320_id ON reg_1320 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1320_id_pai ON reg_1320 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1320_cnpj_pai ON reg_1320 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1350 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [serie] varchar(MAX),
    [fabricante] varchar(60),
    [modelo] varchar(MAX),
    [tipo_medicao] varchar(1),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1350_id ON reg_1350 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1350_id_pai ON reg_1350 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1350_cnpj_pai ON reg_1350 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1360 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_lacre] varchar(20),
    [dat_aplicacao] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1360_id ON reg_1360 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1360_id_pai ON reg_1360 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1360_cnpj_pai ON reg_1360 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1370 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_bico] varchar(3),
    [cod_item] varchar(60),
    [num_tanque] varchar(3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1370_id ON reg_1370 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1370_id_pai ON reg_1370 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1370_cnpj_pai ON reg_1370 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1390 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_prod] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1390_id ON reg_1390 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1390_id_pai ON reg_1390 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1390_cnpj_pai ON reg_1390 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1391 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_registro] datetime,
    [qtd_moid] numeric(18, 2),
    [estq_ini] numeric(18, 2),
    [qtd_produz] numeric(18, 2),
    [ent_anid_hid] numeric(18, 2),
    [outr_entr] numeric(18, 2),
    [perda] numeric(18, 2),
    [cons] numeric(18, 2),
    [sai_ani_hid] numeric(18, 2),
    [saidas] numeric(18, 2),
    [estq_fin] numeric(18, 2),
    [estq_ini_mel] numeric(18, 2),
    [prod_dia_mel] numeric(18, 2),
    [util_mel] numeric(18, 2),
    [prod_alc_mel] numeric(18, 2),
    [obs] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1391_id ON reg_1391 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1391_id_pai ON reg_1391 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1391_cnpj_pai ON reg_1391 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1400 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [mun] varchar(7),
    [valor] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1400_id ON reg_1400 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1400_id_pai ON reg_1400 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1400_cnpj_pai ON reg_1400 (cnpj_pai)

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
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [cod_cons] varchar(2),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [dt_e_s] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_forn] numeric(18, 2),
    [vl_serv_nt] numeric(18, 2),
    [vl_terc] numeric(18, 2),
    [vl_da] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [cod_inf] varchar(6),
    [vl_pis] numeric(18, 2),
    [vl_cofis] numeric(18, 2),
    [tp_ligacao] varchar(1),
    [cod_grupo_tensao] varchar(2),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1510 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [cod_class] varchar(4),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [vl_bc_icms] numeric(18, 2),
    [aliq_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [aliq_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [ind_rec] varchar(1),
    [cod_part] varchar(60),
    [vl_pis] numeric(18, 2),
    [vl_cofis] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1510_id ON reg_1510 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1510_id_pai ON reg_1510 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1510_cnpj_pai ON reg_1510 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1600 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [tot_credito] numeric(18, 2),
    [tot_debito] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1600_id ON reg_1600 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1600_id_pai ON reg_1600 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1600_cnpj_pai ON reg_1600 (cnpj_pai)

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
    [cod_disp] varchar(2),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc_ini] varchar(12),
    [num_doc_fin] varchar(12),
    [num_aut] varchar(60),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1710 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_doc_ini] varchar(12),
    [num_doc_fin] varchar(12),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1710_id ON reg_1710 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1710_id_pai ON reg_1710 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1710_cnpj_pai ON reg_1710 (cnpj_pai)

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
    [vl_carga] numeric(18, 2),
    [vl_pass] numeric(18, 2),
    [vl_fat] numeric(18, 2),
    [ind_rat] numeric(18, 6),
    [vl_icms_ant] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms_apur] numeric(18, 2),
    [vl_bc_icms_apur] numeric(18, 2),
    [vl_dif] numeric(18, 2),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1900 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_apur_icms] varchar(1),
    [descr_compl_out_apur] varchar(MAX),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_1910 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini] datetime,
    [dt_fin] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1910_id ON reg_1910 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1910_id_pai ON reg_1910 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1910_cnpj_pai ON reg_1910 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1920 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_tot_transf_debitos_oa] numeric(18, 2),
    [vl_tot_aj_debitos_oa] numeric(18, 2),
    [vl_estornos_cred_oa] numeric(18, 2),
    [vl_tot_transf_creditos_oa] numeric(18, 2),
    [vl_tot_aj_creditos_oa] numeric(18, 2),
    [vl_estornos_deb_oa] numeric(18, 2),
    [vl_sld_credor_ant_oa] numeric(18, 2),
    [vl_sld_apurado_oa] numeric(18, 2),
    [vl_tot_ded] numeric(18, 2),
    [vl_icms_recolher_oa] numeric(18, 2),
    [vl_sld_credor_transp_oa] numeric(18, 2),
    [deb_esp_oa] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1920_id ON reg_1920 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1920_id_pai ON reg_1920 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1920_cnpj_pai ON reg_1920 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1921 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_aj_apur] varchar(8),
    [descr_compl_aj] varchar(MAX),
    [vl_aj_apur] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1921_id ON reg_1921 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1921_id_pai ON reg_1921 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1921_cnpj_pai ON reg_1921 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1922 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_da] varchar(MAX),
    [num_proc] varchar(15),
    [ind_proc] varchar(1),
    [proc] varchar(MAX),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1922_id ON reg_1922 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1922_id_pai ON reg_1922 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1922_cnpj_pai ON reg_1922 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1923 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [cod_item] varchar(60),
    [vl_aj_item] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1923_id ON reg_1923 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1923_id_pai ON reg_1923 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1923_cnpj_pai ON reg_1923 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1925 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inf_adic] varchar(8),
    [vl_inf_adic] numeric(18, 2),
    [desc_compl_aj] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1925_id ON reg_1925 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1925_id_pai ON reg_1925 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1925_cnpj_pai ON reg_1925 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_1926 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_or] varchar(3),
    [vl_or] numeric(18, 2),
    [dt_vcto] datetime,
    [cod_rec] varchar(MAX),
    [num_proc] varchar(15),
    [ind_proc] numeric(18, 2),
    [proc] varchar(MAX),
    [txt_compl] varchar(MAX),
    [mes_ref] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_1926_id ON reg_1926 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_1926_id_pai ON reg_1926 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_1926_cnpj_pai ON reg_1926 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c105 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [oper] varchar(1),
    [cod_uf] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c105_id ON reg_c105 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c105_id_pai ON reg_c105 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c105_cnpj_pai ON reg_c105 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
    [num_proc] varchar(15),
    [ind_proc] varchar(1),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c112 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_da] varchar(1),
    [uf] varchar(2),
    [num_da] varchar(MAX),
    [cod_aut] varchar(MAX),
    [vl_da] numeric(18, 2),
    [dt_vcto] datetime,
    [dt_pgto] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c112_id ON reg_c112 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c112_id_pai ON reg_c112 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c112_cnpj_pai ON reg_c112 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c113 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c113_id ON reg_c113 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c113_id_pai ON reg_c113 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c113_cnpj_pai ON reg_c113 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c114 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ecf_fab] varchar(21),
    [ecf_cx] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c114_id ON reg_c114 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c114_id_pai ON reg_c114 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c114_cnpj_pai ON reg_c114 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c115 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_carga] varchar(1),
    [cnpj_col] varchar(14),
    [ie_col] varchar(14),
    [cpf_col] varchar(11),
    [cod_mun_col] varchar(7),
    [cnpj_entg] varchar(14),
    [ie_entg] varchar(14),
    [cpf_entg] varchar(11),
    [cod_mun_entg] varchar(7),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c115_id ON reg_c115 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c115_id_pai ON reg_c115 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c115_cnpj_pai ON reg_c115 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c116 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [nr_sat] varchar(9),
    [chv_cfe] varchar(44),
    [num_cfe] varchar(6),
    [dt_doc] varchar(8),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c116_id ON reg_c116 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c116_id_pai ON reg_c116 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c116_cnpj_pai ON reg_c116 (cnpj_pai)

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
    [num_doc_imp] varchar(12),
    [pis_imp] numeric(18, 2),
    [cofins_imp] numeric(18, 2),
    [num_acdraw] varchar(20),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c130 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_serv_nt] numeric(18, 2),
    [vl_bc_issqn] numeric(18, 2),
    [vl_issqn] numeric(18, 2),
    [vl_bc_irrf] numeric(18, 2),
    [vl_irrf] numeric(18, 2),
    [vl_bc_prev] numeric(18, 2),
    [vl_prev] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c130_id ON reg_c130 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c130_id_pai ON reg_c130 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c130_cnpj_pai ON reg_c130 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c140 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_emit] varchar(1),
    [ind_tit] varchar(2),
    [desc_tit] varchar(MAX),
    [num_tit] varchar(MAX),
    [qtd_parc] varchar(2),
    [vl_tit] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c140_id ON reg_c140 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c140_id_pai ON reg_c140 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c140_cnpj_pai ON reg_c140 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c141 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_parc] varchar(2),
    [dt_vcto] datetime,
    [vl_parc] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c141_id ON reg_c141 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c141_id_pai ON reg_c141 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c141_cnpj_pai ON reg_c141 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c160 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [veic_id] varchar(7),
    [qtd_vol] int,
    [peso_brt] numeric(18, 2),
    [peso_liq] numeric(18, 2),
    [uf_id] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c160_id ON reg_c160 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c160_id_pai ON reg_c160 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c160_cnpj_pai ON reg_c160 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c165 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [veic_id] varchar(7),
    [cod_aut] varchar(MAX),
    [nr_passe] varchar(MAX),
    [hora] varchar(6),
    [temper] numeric(18, 1),
    [qtd_vol] int,
    [peso_brt] numeric(18, 2),
    [peso_liq] numeric(18, 2),
    [nom_mot] varchar(60),
    [cpf] varchar(11),
    [uf_id] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c165_id ON reg_c165 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c165_id_pai ON reg_c165 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c165_cnpj_pai ON reg_c165 (cnpj_pai)

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
    [aliq_pis_perc] numeric(18, 4),
    [quant_bc_pis] numeric(18, 3),
    [aliq_pis_reais] numeric(18, 4),
    [vl_pis] numeric(18, 2),
    [cst_cofins] varchar(2),
    [vl_bc_cofins] numeric(18, 2),
    [aliq_cofins_perc] numeric(18, 4),
    [quant_bc_cofins] numeric(18, 3),
    [aliq_cofins_reais] numeric(18, 4),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c171 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_tanque] varchar(3),
    [qtde] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c171_id ON reg_c171 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c171_id_pai ON reg_c171 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c171_cnpj_pai ON reg_c171 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c172 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_bc_issqn] numeric(18, 2),
    [aliq_issqn] numeric(18, 2),
    [vl_issqn] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c172_id ON reg_c172 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c172_id_pai ON reg_c172 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c172_cnpj_pai ON reg_c172 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c173 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [lote_med] varchar(MAX),
    [qtd_item] numeric(18, 3),
    [dt_fab] datetime,
    [dt_val] datetime,
    [ind_med] varchar(1),
    [tp_prod] varchar(1),
    [vl_tab_max] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c173_id ON reg_c173 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c173_id_pai ON reg_c173 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c173_cnpj_pai ON reg_c173 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c174 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_arm] varchar(1),
    [num_arm] varchar(MAX),
    [descr_compl] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c174_id ON reg_c174 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c174_id_pai ON reg_c174 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c174_cnpj_pai ON reg_c174 (cnpj_pai)

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
    [ind_veic_oper] varchar(1),
    [cnpj] varchar(14),
    [uf] varchar(2),
    [chassi_veic] varchar(17),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c176 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod_ult_e] varchar(2),
    [num_doc_ult_e] varchar(9),
    [ser_ult_e] varchar(3),
    [dt_ult_e] datetime,
    [cod_part_ult_e] varchar(60),
    [quant_ult_e] numeric(18, 3),
    [vl_unit_ult_e] numeric(18, 3),
    [vl_unit_bc_st] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c176_id ON reg_c176 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c176_id_pai ON reg_c176 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c176_cnpj_pai ON reg_c176 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c177 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_selo_ipi] varchar(6),
    [qt_selo_ipi] varchar(12),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c177_id ON reg_c177 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c177_id_pai ON reg_c177 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c177_cnpj_pai ON reg_c177 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c178 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cl_enq] varchar(5),
    [vl_unid] numeric(18, 2),
    [quant_pad] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c178_id ON reg_c178 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c178_id_pai ON reg_c178 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c178_cnpj_pai ON reg_c178 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c179 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [bc_st_orig_dest] numeric(18, 2),
    [icms_st_rep] numeric(18, 2),
    [icms_st_compl] numeric(18, 2),
    [bc_ret] numeric(18, 2),
    [icms_ret] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c179_id ON reg_c179 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c179_id_pai ON reg_c179 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c179_cnpj_pai ON reg_c179 (cnpj_pai)

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
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [vl_ipi] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c195 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_obs] varchar(6),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c197 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_aj] varchar(10),
    [descr_compl_aj] varchar(MAX),
    [cod_item] varchar(60),
    [vl_bc_icms] numeric(18, 2),
    [aliq_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_outros] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c197_id ON reg_c197 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c197_id_pai ON reg_c197 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c197_cnpj_pai ON reg_c197 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c300 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc_ini] varchar(6),
    [num_doc_fin] varchar(6),
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c300_id ON reg_c300 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c300_id_pai ON reg_c300 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c300_cnpj_pai ON reg_c300 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c310 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_doc_canc] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c310_id ON reg_c310 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c310_id_pai ON reg_c310 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c310_cnpj_pai ON reg_c310 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c320 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c320_id ON reg_c320 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c320_id_pai ON reg_c320 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c320_cnpj_pai ON reg_c320 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c321 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c321_id ON reg_c321 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c321_id_pai ON reg_c321 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c321_cnpj_pai ON reg_c321 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c350 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ser] varchar(4),
    [sub_ser] varchar(3),
    [num_doc] varchar(6),
    [dt_doc] datetime,
    [cnpj_cpf] varchar(14),
    [vl_merc] numeric(18, 2),
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofis] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c350_id ON reg_c350 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c350_id_pai ON reg_c350 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c350_cnpj_pai ON reg_c350 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c370 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c370_id ON reg_c370 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c370_id_pai ON reg_c370 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c370_cnpj_pai ON reg_c370 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c390 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c390_id ON reg_c390 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c390_id_pai ON reg_c390 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c390_cnpj_pai ON reg_c390 (cnpj_pai)

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
    [ecf_fab] varchar(21),
    [ecf_cx] varchar(3),
    [cnpj_pai] varchar(14)
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
    [num_coo_fin] varchar(9),
    [gt_fin] numeric(18, 2),
    [vl_brt] numeric(18, 2),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c410 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c410_id ON reg_c410 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c410_id_pai ON reg_c410 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c410_cnpj_pai ON reg_c410 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c420 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_tot_par] varchar(7),
    [vlr_acum_tot] numeric(18, 2),
    [nr_tot] varchar(2),
    [descr_nr_tot] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c420_id ON reg_c420 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c420_id_pai ON reg_c420 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c420_cnpj_pai ON reg_c420 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c425 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c425_id ON reg_c425 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c425_id_pai ON reg_c425 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c425_cnpj_pai ON reg_c425 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c460 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cpf_cnpj] varchar(14),
    [nome_adq] varchar(60),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c460_id ON reg_c460 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c460_id_pai ON reg_c460 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c460_cnpj_pai ON reg_c460 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c465 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [chv_cfe] varchar(44),
    [num_ccf] varchar(9),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c465_id ON reg_c465 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c465_id_pai ON reg_c465 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c465_cnpj_pai ON reg_c465 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c470 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [qtd_canc] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c470_id ON reg_c470 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c470_id_pai ON reg_c470 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c470_cnpj_pai ON reg_c470 (cnpj_pai)

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
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_oper] varchar(1),
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [cod_cons] varchar(2),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [dt_e_s] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_forn] numeric(18, 2),
    [vl_serv_nt] numeric(18, 2),
    [vl_terc] numeric(18, 2),
    [vl_da] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [cod_inf] varchar(6),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [tp_ligacao] varchar(1),
    [cod_grupo_tensao] varchar(2),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c510 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [cod_class] varchar(4),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [vl_bc_icms] numeric(18, 2),
    [aliq_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [aliq_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [ind_rec] varchar(1),
    [cod_part] varchar(60),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c510_id ON reg_c510 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c510_id_pai ON reg_c510 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c510_cnpj_pai ON reg_c510 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c590 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c590_id ON reg_c590 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c590_id_pai ON reg_c590 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c590_cnpj_pai ON reg_c590 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
    [num_doc_canc] varchar(9),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c610 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_class] varchar(4),
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c610_id ON reg_c610 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c610_id_pai ON reg_c610 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c610_cnpj_pai ON reg_c610 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c690 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c690_id ON reg_c690 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c690_id_pai ON reg_c690 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c690_cnpj_pai ON reg_c690 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c700 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [nro_ord_ini] varchar(9),
    [nro_ord_fin] varchar(9),
    [dt_doc_ini] datetime,
    [dt_doc_fin] datetime,
    [nom_mest] varchar(15),
    [chv_cod_dig] varchar(32),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c700_id ON reg_c700 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c700_id_pai ON reg_c700 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c700_cnpj_pai ON reg_c700 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c790 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c790_id ON reg_c790 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c790_id_pai ON reg_c790 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c790_cnpj_pai ON reg_c790 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c791 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [uf] varchar(2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c791_id ON reg_c791 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c791_id_pai ON reg_c791 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c791_cnpj_pai ON reg_c791 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c800 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [num_cfe] varchar(6),
    [dt_doc] datetime,
    [vl_cfe] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_cpf] varchar(14),
    [nr_sat] varchar(9),
    [chv_cfe] varchar(44),
    [vl_desc] numeric(18, 2),
    [vl_merc] numeric(18, 2),
    [vl_out_da] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_pis_st] numeric(18, 2),
    [vl_cofins_st] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c800_id ON reg_c800 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c800_id_pai ON reg_c800 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c800_cnpj_pai ON reg_c800 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_c850 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_c850_id ON reg_c850 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_c850_id_pai ON reg_c850 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_c850_cnpj_pai ON reg_c850 (cnpj_pai)

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
    [doc_ini] varchar(6),
    [doc_fim] varchar(6),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_c890 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [cnpj_pai] varchar(14)
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
    [tp_ct_e] varchar(1),
    [chv_cte_ref] varchar(44),
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [ind_frt] varchar(1),
    [vl_serv] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_nt] numeric(18, 2),
    [cod_inf] varchar(60),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_d110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [vl_serv] numeric(18, 2),
    [vl_out] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d110_id ON reg_d110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d110_id_pai ON reg_d110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d110_cnpj_pai ON reg_d110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d120 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mun_orig] varchar(7),
    [cod_mun_dest] varchar(7),
    [veic_id] varchar(7),
    [uf_id] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d120_id ON reg_d120 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d120_id_pai ON reg_d120 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d120_cnpj_pai ON reg_d120 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d130 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part_consg] varchar(60),
    [cod_part_red] varchar(60),
    [ind_frt_red] varchar(1),
    [cod_mun_orig] varchar(7),
    [cod_mun_dest] varchar(7),
    [veic_id] varchar(7),
    [vl_liq_frt] numeric(18, 2),
    [vl_sec_cat] numeric(18, 2),
    [vl_desp] numeric(18, 2),
    [vl_pedg] numeric(18, 2),
    [vl_out] numeric(18, 2),
    [vl_frt] numeric(18, 2),
    [uf_id] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d130_id ON reg_d130 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d130_id_pai ON reg_d130 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d130_cnpj_pai ON reg_d130 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d140 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part_consg] varchar(60),
    [cod_mun_orig] varchar(7),
    [cod_mun_dest] varchar(7),
    [ind_veic] varchar(1),
    [veic_id] varchar(MAX),
    [ind_nav] varchar(1),
    [viagem] int,
    [vl_frt_liq] numeric(18, 2),
    [vl_desp_port] numeric(18, 2),
    [vl_desp_car_desc] numeric(18, 2),
    [vl_out] numeric(18, 2),
    [vl_frt_brt] numeric(18, 2),
    [vl_frt_mm] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d140_id ON reg_d140 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d140_id_pai ON reg_d140 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d140_cnpj_pai ON reg_d140 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d150 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mun_orig] varchar(7),
    [cod_mun_dest] varchar(7),
    [veic_id] varchar(MAX),
    [viagem] int,
    [ind_tfa] varchar(1),
    [vl_peso_tx] numeric(18, 2),
    [vl_tx_terr] numeric(18, 2),
    [vl_tx_red] numeric(18, 2),
    [vl_out] numeric(18, 2),
    [vl_tx_adv] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d150_id ON reg_d150 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d150_id_pai ON reg_d150 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d150_cnpj_pai ON reg_d150 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d160 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [despacho] varchar(MAX),
    [cnpj_cpf_rem] varchar(14),
    [ie_rem] varchar(14),
    [cod_mun_ori] varchar(7),
    [cnpj_cpf_dest] varchar(14),
    [ie_dest] varchar(14),
    [cod_mun_dest] varchar(7),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d160_id ON reg_d160 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d160_id_pai ON reg_d160 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d160_cnpj_pai ON reg_d160 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d161 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_carga] varchar(1),
    [cnpj_cpf_col] varchar(14),
    [ie_col] varchar(14),
    [cod_mun_col] varchar(7),
    [cnpj_cpf_entg] varchar(14),
    [ie_entg] varchar(14),
    [cod_mun_entg] varchar(7),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d161_id ON reg_d161 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d161_id_pai ON reg_d161 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d161_cnpj_pai ON reg_d161 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d162 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [vl_merc] numeric(18, 2),
    [qtd_vol] int,
    [peso_brt] numeric(18, 2),
    [peso_liq] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d162_id ON reg_d162 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d162_id_pai ON reg_d162 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d162_cnpj_pai ON reg_d162 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d170 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part_consg] varchar(60),
    [cod_part_red] varchar(60),
    [cod_mun_orig] varchar(7),
    [cod_mun_dest] varchar(7),
    [otm] varchar(MAX),
    [ind_nat_frt] varchar(1),
    [vl_liq_frt] numeric(18, 2),
    [vl_gris] numeric(18, 2),
    [vl_pdg] numeric(18, 2),
    [vl_out] numeric(18, 2),
    [vl_frt] numeric(18, 2),
    [veic_id] varchar(7),
    [uf_id] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d170_id ON reg_d170 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d170_id_pai ON reg_d170 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d170_cnpj_pai ON reg_d170 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d180 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_seq] int,
    [ind_emit] varchar(1),
    [cnpj_cpf_emit] varchar(14),
    [uf_emit] varchar(2),
    [ie_emit] varchar(14),
    [cod_mun_orig] varchar(7),
    [cnpj_cpf_tom] varchar(14),
    [uf_tom] varchar(2),
    [ie_tom] varchar(14),
    [cod_mun_dest] varchar(7),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d180_id ON reg_d180 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d180_id_pai ON reg_d180 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d180_cnpj_pai ON reg_d180 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d190 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d190_id ON reg_d190 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d190_id_pai ON reg_d190 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d190_cnpj_pai ON reg_d190 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d195 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_obs] varchar(6),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d195_id ON reg_d195 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d195_id_pai ON reg_d195 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d195_cnpj_pai ON reg_d195 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d197 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_aj] varchar(10),
    [descr_compl_aj] varchar(MAX),
    [cod_item] varchar(60),
    [vl_bc_icms] numeric(18, 2),
    [aliq_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_outros] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d197_id ON reg_d197 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d197_id_pai ON reg_d197 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d197_cnpj_pai ON reg_d197 (cnpj_pai)

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
    [sub] varchar(4),
    [num_doc_ini] varchar(6),
    [num_doc_fin] int,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [dt_doc] datetime,
    [vl_opr] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_serv] numeric(18, 2),
    [vl_seg] numeric(18, 2),
    [vl_out_desp] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_d301 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_doc_canc] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d301_id ON reg_d301 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d301_id_pai ON reg_d301 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d301_cnpj_pai ON reg_d301 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d310 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mun_orig] varchar(7),
    [vl_serv] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d310_id ON reg_d310 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d310_id_pai ON reg_d310 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d310_cnpj_pai ON reg_d310 (cnpj_pai)

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
    [ecf_fab] varchar(21),
    [ecf_cx] varchar(3),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_d355 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_doc] datetime,
    [cro] varchar(3),
    [crz] varchar(6),
    [num_coo_fin] varchar(9),
    [gt_fin] numeric(18, 2),
    [vl_brt] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d355_id ON reg_d355 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d355_id_pai ON reg_d355 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d355_cnpj_pai ON reg_d355 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d360 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d360_id ON reg_d360 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d360_id_pai ON reg_d360 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d360_cnpj_pai ON reg_d360 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d365 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_tot_par] varchar(7),
    [vlr_acum_tot] numeric(18, 2),
    [nr_tot] varchar(2),
    [descr_nr_tot] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d365_id ON reg_d365 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d365_id_pai ON reg_d365 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d365_cnpj_pai ON reg_d365 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d370 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mun_orig] varchar(7),
    [vl_serv] numeric(18, 2),
    [qtd_bilh] int,
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d370_id ON reg_d370 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d370_id_pai ON reg_d370 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d370_cnpj_pai ON reg_d370 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d390 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_issqn] numeric(18, 2),
    [aliq_issqn] numeric(18, 2),
    [vl_issqn] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d390_id ON reg_d390 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d390_id_pai ON reg_d390 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d390_cnpj_pai ON reg_d390 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d400 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [cod_sit] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(6),
    [dt_doc] datetime,
    [vl_doc] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_serv] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d400_id ON reg_d400 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d400_id_pai ON reg_d400 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d400_cnpj_pai ON reg_d400 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d410 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc_ini] varchar(6),
    [num_doc_fin] varchar(6),
    [dt_doc] datetime,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [vl_serv] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d410_id ON reg_d410 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d410_id_pai ON reg_d410 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d410_cnpj_pai ON reg_d410 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d411 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_doc_canc] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d411_id ON reg_d411 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d411_id_pai ON reg_d411 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d411_cnpj_pai ON reg_d411 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d420 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mun_orig] varchar(7),
    [vl_serv] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d420_id ON reg_d420 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d420_id_pai ON reg_d420 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d420_cnpj_pai ON reg_d420 (cnpj_pai)

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
    [cod_cta] varchar(MAX),
    [tp_assinante] varchar(1),
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_d510 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [cod_class] varchar(4),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [vl_bc_icms] numeric(18, 2),
    [aliq_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [ind_rec] varchar(1),
    [cod_part] varchar(60),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d510_id ON reg_d510 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d510_id_pai ON reg_d510 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d510_cnpj_pai ON reg_d510 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d530 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_serv] varchar(1),
    [dt_ini_serv] datetime,
    [dt_fin_serv] datetime,
    [per_fiscal] varchar(6),
    [cod_area] varchar(MAX),
    [terminal] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d530_id ON reg_d530 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d530_id_pai ON reg_d530 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d530_cnpj_pai ON reg_d530 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d590 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d590_id ON reg_d590 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d590_id_pai ON reg_d590 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d590_cnpj_pai ON reg_d590 (cnpj_pai)

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
    [cod_cons] varchar(2),
    [qtd_cons] int,
    [dt_doc] datetime,
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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_d610 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_class] varchar(4),
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [unid] varchar(6),
    [vl_item] numeric(18, 2),
    [vl_desc] numeric(18, 2),
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [vl_pis] numeric(18, 2),
    [vl_cofins] numeric(18, 2),
    [cod_cta] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d610_id ON reg_d610 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d610_id_pai ON reg_d610 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d610_cnpj_pai ON reg_d610 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d690 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d690_id ON reg_d690 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d690_id_pai ON reg_d690 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d690_cnpj_pai ON reg_d690 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d695 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [nro_ord_ini] int,
    [nro_ord_fin] int,
    [dt_doc_ini] datetime,
    [dt_doc_fin] datetime,
    [nom_mest] varchar(15),
    [chv_cod_dig] varchar(32),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d695_id ON reg_d695 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d695_id_pai ON reg_d695 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d695_cnpj_pai ON reg_d695 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d696 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [cfop] varchar(4),
    [aliq_icms] numeric(18, 2),
    [vl_opr] numeric(18, 2),
    [vl_bc_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [vl_red_bc] numeric(18, 2),
    [cod_obs] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d696_id ON reg_d696 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d696_id_pai ON reg_d696 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d696_cnpj_pai ON reg_d696 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_d697 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [uf] varchar(2),
    [vl_bc_icms_st] numeric(18, 2),
    [vl_icms_st] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_d697_id ON reg_d697 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_d697_id_pai ON reg_d697 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_d697_cnpj_pai ON reg_d697 (cnpj_pai)

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
    [cnpj_pai] varchar(14)
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
CREATE TABLE reg_e001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e001_id ON reg_e001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e001_id_pai ON reg_e001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e001_cnpj_pai ON reg_e001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini] datetime,
    [dt_fin] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e100_id ON reg_e100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e100_id_pai ON reg_e100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e100_cnpj_pai ON reg_e100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_tot_debitos] numeric(18, 2),
    [vl_aj_debitos] numeric(18, 2),
    [vl_tot_aj_debitos] numeric(18, 2),
    [vl_estornos_cred] numeric(18, 2),
    [vl_tot_creditos] numeric(18, 2),
    [vl_aj_creditos] numeric(18, 2),
    [vl_tot_aj_creditos] numeric(18, 2),
    [vl_estornos_deb] numeric(18, 2),
    [vl_sld_credor_ant] numeric(18, 2),
    [vl_sld_apurado] numeric(18, 2),
    [vl_tot_ded] numeric(18, 2),
    [vl_icms_recolher] numeric(18, 2),
    [vl_sld_credor_transportar] numeric(18, 2),
    [deb_esp] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e110_id ON reg_e110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e110_id_pai ON reg_e110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e110_cnpj_pai ON reg_e110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e111 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_aj_apur] varchar(8),
    [descr_compl_aj] varchar(MAX),
    [vl_aj_apur] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e111_id ON reg_e111 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e111_id_pai ON reg_e111 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e111_cnpj_pai ON reg_e111 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e112 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_da] varchar(MAX),
    [num_proc] varchar(15),
    [ind_proc] varchar(1),
    [proc] varchar(MAX),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e112_id ON reg_e112 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e112_id_pai ON reg_e112 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e112_cnpj_pai ON reg_e112 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e113 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [cod_item] varchar(60),
    [vl_aj_item] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e113_id ON reg_e113 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e113_id_pai ON reg_e113 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e113_cnpj_pai ON reg_e113 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e115 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_inf_adic] varchar(8),
    [vl_inf_adic] numeric(18, 2),
    [descr_compl_aj] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e115_id ON reg_e115 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e115_id_pai ON reg_e115 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e115_cnpj_pai ON reg_e115 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e116 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_or] varchar(3),
    [vl_or] numeric(18, 2),
    [dt_vcto] datetime,
    [cod_rec] varchar(MAX),
    [num_proc] varchar(15),
    [ind_proc] varchar(1),
    [proc] varchar(MAX),
    [txt_compl] varchar(MAX),
    [mes_ref] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e116_id ON reg_e116 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e116_id_pai ON reg_e116 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e116_cnpj_pai ON reg_e116 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [uf] varchar(2),
    [dt_ini] datetime,
    [dt_fin] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e200_id ON reg_e200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e200_id_pai ON reg_e200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e200_cnpj_pai ON reg_e200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e210 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov_st] varchar(1),
    [vl_sld_cred_ant_st] numeric(18, 2),
    [vl_devol_st] numeric(18, 2),
    [vl_ressarc_st] numeric(18, 2),
    [vl_out_cred_st] numeric(18, 2),
    [vl_aj_creditos_st] numeric(18, 2),
    [vl_retencao_st] numeric(18, 2),
    [vl_out_deb_st] numeric(18, 2),
    [vl_aj_debitos_st] numeric(18, 2),
    [vl_sld_dev_ant_st] numeric(18, 2),
    [vl_deducoes_st] numeric(18, 2),
    [vl_icms_recol_st] numeric(18, 2),
    [vl_sld_cred_st_transportar] numeric(18, 2),
    [deb_esp_st] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e210_id ON reg_e210 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e210_id_pai ON reg_e210 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e210_cnpj_pai ON reg_e210 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e220 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_aj_apur] varchar(8),
    [descr_compl_aj] varchar(MAX),
    [vl_aj_apur] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e220_id ON reg_e220 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e220_id_pai ON reg_e220 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e220_cnpj_pai ON reg_e220 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e230 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_da] varchar(MAX),
    [num_proc] varchar(15),
    [ind_proc] varchar(1),
    [proc] varchar(MAX),
    [txt_compl] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e230_id ON reg_e230 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e230_id_pai ON reg_e230 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e230_cnpj_pai ON reg_e230 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e240 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [ser] varchar(4),
    [sub] varchar(3),
    [num_doc] varchar(9),
    [dt_doc] datetime,
    [cod_item] varchar(60),
    [vl_aj_item] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e240_id ON reg_e240 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e240_id_pai ON reg_e240 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e240_cnpj_pai ON reg_e240 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e250 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_or] varchar(3),
    [vl_or] numeric(18, 2),
    [dt_vcto] datetime,
    [cod_rec] varchar(MAX),
    [num_proc] varchar(15),
    [ind_proc] varchar(1),
    [proc] varchar(MAX),
    [txt_compl] varchar(MAX),
    [mes_ref] varchar(6),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e250_id ON reg_e250 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e250_id_pai ON reg_e250 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e250_cnpj_pai ON reg_e250 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e500 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_apur] varchar(1),
    [dt_ini] datetime,
    [dt_fin] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e500_id ON reg_e500 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e500_id_pai ON reg_e500 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e500_cnpj_pai ON reg_e500 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e510 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cfop] varchar(4),
    [cst_ipi] varchar(2),
    [vl_cont_ipi] numeric(18, 2),
    [vl_bc_ipi] numeric(18, 2),
    [vl_ipi] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e510_id ON reg_e510 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e510_id_pai ON reg_e510 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e510_cnpj_pai ON reg_e510 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e520 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [vl_sd_ant_ipi] numeric(18, 2),
    [vl_deb_ipi] numeric(18, 2),
    [vl_cred_ipi] numeric(18, 2),
    [vl_od_ipi] numeric(18, 2),
    [vl_oc_ipi] numeric(18, 2),
    [vl_sc_ipi] numeric(18, 2),
    [vl_sd_ipi] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e520_id ON reg_e520 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e520_id_pai ON reg_e520 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e520_cnpj_pai ON reg_e520 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e530 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_aj] varchar(1),
    [vl_aj] numeric(18, 2),
    [cod_aj] varchar(3),
    [ind_doc] varchar(1),
    [num_doc] varchar(MAX),
    [descr_aj] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e530_id ON reg_e530 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e530_id_pai ON reg_e530 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e530_cnpj_pai ON reg_e530 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_e990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_e] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_e990_id ON reg_e990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_e990_id_pai ON reg_e990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_e990_cnpj_pai ON reg_e990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g001_id ON reg_g001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g001_id_pai ON reg_g001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g001_cnpj_pai ON reg_g001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g110 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini] datetime,
    [dt_fin] datetime,
    [saldo_in_icms] numeric(18, 2),
    [som_parc] numeric(18, 2),
    [vl_trib_exp] numeric(18, 2),
    [vl_total] numeric(18, 2),
    [ind_per_sai] numeric(18, 8),
    [icms_aprop] numeric(18, 2),
    [som_icms_oc] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g110_id ON reg_g110 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g110_id_pai ON reg_g110 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g110_cnpj_pai ON reg_g110 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g125 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_ind_bem] varchar(60),
    [dt_mov] datetime,
    [tipo_mov] varchar(2),
    [vl_imob_icms_op] numeric(18, 2),
    [vl_imob_icms_st] numeric(18, 2),
    [vl_imob_icms_frt] numeric(18, 2),
    [vl_imob_icms_dif] numeric(18, 2),
    [num_parc] varchar(3),
    [vl_parc_pass] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g125_id ON reg_g125 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g125_id_pai ON reg_g125 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g125_cnpj_pai ON reg_g125 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g126 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini] datetime,
    [dt_fin] datetime,
    [num_parc] varchar(3),
    [vl_parc_pass] numeric(18, 2),
    [vl_trib_oc] numeric(18, 2),
    [vl_total] numeric(18, 2),
    [ind_per_sai] numeric(18, 8),
    [vl_parc_aprop] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g126_id ON reg_g126 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g126_id_pai ON reg_g126 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g126_cnpj_pai ON reg_g126 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g130 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_emit] varchar(1),
    [cod_part] varchar(60),
    [cod_mod] varchar(2),
    [serie] varchar(3),
    [num_doc] varchar(9),
    [chv_nfe_cte] varchar(44),
    [dt_doc] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g130_id ON reg_g130 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g130_id_pai ON reg_g130 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g130_cnpj_pai ON reg_g130 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g140 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [num_item] varchar(3),
    [cod_item] varchar(60),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g140_id ON reg_g140 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g140_id_pai ON reg_g140 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g140_cnpj_pai ON reg_g140 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_g990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_g] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_g990_id ON reg_g990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_g990_id_pai ON reg_g990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_g990_cnpj_pai ON reg_g990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_h001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_h001_id ON reg_h001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_h001_id_pai ON reg_h001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_h001_cnpj_pai ON reg_h001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_h005 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_inv] datetime,
    [vl_inv] numeric(18, 2),
    [mot_inv] varchar(2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_h005_id ON reg_h005 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_h005_id_pai ON reg_h005 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_h005_cnpj_pai ON reg_h005 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_h010 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cod_item] varchar(60),
    [unid] varchar(6),
    [qtd] numeric(18, 3),
    [vl_unit] numeric(18, 6),
    [vl_item] numeric(18, 2),
    [ind_prop] varchar(1),
    [cod_part] varchar(60),
    [txt_compl] varchar(MAX),
    [cod_cta] varchar(MAX),
    [vl_item_ir] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_h010_id ON reg_h010 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_h010_id_pai ON reg_h010 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_h010_cnpj_pai ON reg_h010 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_h020 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [cst_icms] varchar(3),
    [bl_icms] numeric(18, 2),
    [vl_icms] numeric(18, 2),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_h020_id ON reg_h020 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_h020_id_pai ON reg_h020 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_h020_cnpj_pai ON reg_h020 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_h990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_h] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_h990_id ON reg_h990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_h990_id_pai ON reg_h990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_h990_cnpj_pai ON reg_h990 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k001 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [ind_mov] varchar(1),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k001_id ON reg_k001 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k001_id_pai ON reg_k001 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k001_cnpj_pai ON reg_k001 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k100 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini] datetime,
    [dt_fin] datetime,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k100_id ON reg_k100 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k100_id_pai ON reg_k100 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k100_cnpj_pai ON reg_k100 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k200 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_est] datetime,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [ind_est] varchar(1),
    [cod_part] varchar(60),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k200_id ON reg_k200 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k200_id_pai ON reg_k200 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k200_cnpj_pai ON reg_k200 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k220 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_mov] datetime,
    [cod_item_ori] varchar(60),
    [cod_item_dest] varchar(60),
    [qtd] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k220_id ON reg_k220 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k220_id_pai ON reg_k220 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k220_cnpj_pai ON reg_k220 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k230 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_ini_op] datetime,
    [dt_fin_op] datetime,
    [cod_doc_op] varchar(30),
    [cod_item] varchar(60),
    [qtd_enc] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k230_id ON reg_k230 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k230_id_pai ON reg_k230 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k230_cnpj_pai ON reg_k230 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k235 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_saida] datetime,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [cod_ins_subst] varchar(MAX),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k235_id ON reg_k235 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k235_id_pai ON reg_k235 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k235_cnpj_pai ON reg_k235 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k250 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_prod] datetime,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k250_id ON reg_k250 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k250_id_pai ON reg_k250 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k250_cnpj_pai ON reg_k250 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k255 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [dt_cons] datetime,
    [cod_item] varchar(60),
    [qtd] numeric(18, 3),
    [cod_ins_subst] varchar(60),
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k255_id ON reg_k255 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k255_id_pai ON reg_k255 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k255_cnpj_pai ON reg_k255 (cnpj_pai)

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE reg_k990 (
    [id] int NOT NULL PRIMARY KEY,
    [id_pai] int NOT NULL,
    [qtd_lin_k] int,
    [cnpj_pai] varchar(14)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX idx_reg_k990_id ON reg_k990 (id)
GO
CREATE NONCLUSTERED INDEX idx_reg_k990_id_pai ON reg_k990 (id_pai)
GO
CREATE NONCLUSTERED INDEX idx_reg_k990_cnpj_pai ON reg_k990 (cnpj_pai)

GO
USE [master]
GO
ALTER DATABASE [$(DbName)] SET  READ_WRITE
GO
