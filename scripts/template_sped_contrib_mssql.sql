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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_p] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p210](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [numeric](21, 2) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p210_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_ref] [varchar](6) NULL,
	[vl_tot_cont_apu] [numeric](21, 2) NULL,
	[vl_tot_aj_reduc] [numeric](21, 2) NULL,
	[vl_tot_aj_acres] [numeric](21, 2) NULL,
	[vl_tot_cont_dev] [numeric](21, 2) NULL,
	[cod_rec] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p199](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p199_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p110](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_campo] [varchar](2) NULL,
	[cod_det] [varchar](8) NULL,
	[det_valor] [numeric](21, 2) NULL,
	[inf_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p110_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_ini] [datetime] NULL,
	[dt_fim] [datetime] NULL,
	[vl_rec_tot_est] [numeric](21, 2) NULL,
	[cod_ativ_econ] [varchar](8) NULL,
	[vl_rec_ativ_estab] [numeric](21, 2) NULL,
	[vl_exc] [numeric](21, 2) NULL,
	[vl_bc_cont] [numeric](21, 2) NULL,
	[aliq_cont] [numeric](12, 4) NULL,
	[vl_cont_apu] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[info_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p010_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_p001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_p001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_m] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m810](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_rec] [varchar](3) NULL,
	[vl_rec] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m810_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m800](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_tot_rec] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m800_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m700](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_cont_apur_difer] [numeric](21, 2) NULL,
	[nat_bc_cred_desc] [varchar](2) NULL,
	[vl_cred_desc_difer] [numeric](21, 2) NULL,
	[vl_cont_difer_ant] [numeric](21, 2) NULL,
	[per_apur] [varchar](6) NULL,
	[dt_receb] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m700_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m630](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cnpj] [varchar](14) NULL,
	[vl_vend] [numeric](21, 2) NULL,
	[vl_nao_receb] [numeric](21, 2) NULL,
	[vl_cont_dif] [numeric](21, 2) NULL,
	[vl_cred_dif] [numeric](21, 2) NULL,
	[cod_cred] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m630_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m620](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [numeric](21, 2) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m620_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m611](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_tip_coop] [varchar](2) NULL,
	[vl_bc_cont_ant_exc_coop] [numeric](21, 2) NULL,
	[vl_exc_coop_ger] [numeric](21, 2) NULL,
	[vl_exc_esp_coop] [numeric](21, 2) NULL,
	[vl_bc_cont] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m611_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m610](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_rec_brt] [numeric](21, 2) NULL,
	[vl_bc_cont] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cont_apur] [numeric](21, 2) NULL,
	[vl_ajus_acres] [numeric](21, 2) NULL,
	[vl_ajus_reduc] [numeric](21, 2) NULL,
	[vl_cont_difer] [numeric](21, 2) NULL,
	[vl_cont_difer_ant] [numeric](21, 2) NULL,
	[vl_cont_per] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m610_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m600](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_tot_cont_nc_per] [numeric](21, 2) NULL,
	[vl_tot_cred_desc] [numeric](21, 2) NULL,
	[vl_tot_cred_desc_ant] [numeric](21, 2) NULL,
	[vl_tot_cont_nc_dev] [numeric](21, 2) NULL,
	[vl_ret_nc] [numeric](21, 2) NULL,
	[vl_out_ded_nc] [numeric](21, 2) NULL,
	[vl_cont_nc_rec] [numeric](21, 2) NULL,
	[vl_tot_cont_cum_per] [numeric](21, 2) NULL,
	[vl_ret_cum] [numeric](21, 2) NULL,
	[vl_out_ded_cum] [numeric](21, 2) NULL,
	[vl_cont_cum_rec] [numeric](21, 2) NULL,
	[vl_tot_cont_rec] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m605](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_campo] [nvarchar](2) NULL,
	[cod_rec] [nvarchar](6) NULL,
	[vl_debito] [decimal](21, 2) NULL CONSTRAINT [DF_reg_m605_VL_DEBITO]  DEFAULT (0),
	[cnpj_pai] [varchar](14) NULL,
	CONSTRAINT [PK_reg_m605] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m510](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [numeric](21, 2) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m510_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m505](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins_tot] [numeric](21, 2) NULL,
	[vl_bc_cofins_cum] [numeric](21, 2) NULL,
	[vl_bc_cofins_nc] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[quant_bc_cofins_tot] [numeric](22, 3) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[desc_cred] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m505_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m500](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_cred] [varchar](3) NULL,
	[ind_cred_ori] [varchar](1) NULL,
	[vl_bc_cred] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cred] [numeric](21, 2) NULL,
	[vl_ajus_acres] [numeric](21, 2) NULL,
	[vl_ajus_reduc] [numeric](21, 2) NULL,
	[vl_cred_dif] [numeric](21, 2) NULL,
	[vl_cred_disp] [numeric](21, 2) NULL,
	[ind_desc_cred] [varchar](1) NULL,
	[vl_cred_desc] [numeric](21, 2) NULL,
	[sld_cred] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m500_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m410](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_rec] [varchar](3) NULL,
	[vl_rec] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m410_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m400](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_tot_rec] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m400_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m350](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_tot_fol] [numeric](21, 2) NULL,
	[vl_exc_bc] [numeric](21, 2) NULL,
	[vl_tot_bc] [numeric](21, 2) NULL,
	[aliq_pis_fol] [numeric](8, 2) NULL,
	[vl_tot_cont_fol] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m350_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m300](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_cont_apur_difer] [numeric](21, 2) NULL,
	[nat_cred_desc] [varchar](2) NULL,
	[vl_cred_desc_difer] [numeric](21, 2) NULL,
	[vl_cont_difer_ant] [numeric](21, 2) NULL,
	[per_apur] [varchar](6) NULL,
	[dt_receb] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m300_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m230](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cnpj] [varchar](14) NULL,
	[vl_vend] [numeric](21, 2) NULL,
	[vl_nao_receb] [numeric](21, 2) NULL,
	[vl_cont_dif] [numeric](21, 2) NULL,
	[vl_cred_dif] [numeric](21, 2) NULL,
	[cod_cred] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m230_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m220](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [numeric](21, 2) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m220_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m211](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_tip_coop] [varchar](2) NULL,
	[vl_bc_cont_ant_exc_coop] [numeric](21, 2) NULL,
	[vl_exc_coop_ger] [numeric](21, 2) NULL,
	[vl_exc_esp_coop] [numeric](21, 2) NULL,
	[vl_bc_cont] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m211_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m210](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_rec_brt] [numeric](21, 2) NULL,
	[vl_bc_cont] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_cont_apur] [numeric](21, 2) NULL,
	[vl_ajus_acres] [numeric](21, 2) NULL,
	[vl_ajus_reduc] [numeric](21, 2) NULL,
	[vl_cont_difer] [numeric](21, 2) NULL,
	[vl_cont_difer_ant] [numeric](21, 2) NULL,
	[vl_cont_per] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m210_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_tot_cont_nc_per] [numeric](21, 2) NULL,
	[vl_tot_cred_desc] [numeric](21, 2) NULL,
	[vl_tot_cred_desc_ant] [numeric](21, 2) NULL,
	[vl_tot_cont_nc_dev] [numeric](21, 2) NULL,
	[vl_ret_nc] [numeric](21, 2) NULL,
	[vl_out_ded_nc] [numeric](21, 2) NULL,
	[vl_cont_nc_rec] [numeric](21, 2) NULL,
	[vl_tot_cont_cum_per] [numeric](21, 2) NULL,
	[vl_ret_cum] [numeric](21, 2) NULL,
	[vl_out_ded_cum] [numeric](21, 2) NULL,
	[vl_cont_cum_rec] [numeric](21, 2) NULL,
	[vl_tot_cont_rec] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m205](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_campo] [nvarchar](2) NULL,
	[cod_rec] [nvarchar](6) NULL,
	[vl_debito] [decimal](21, 2) NULL CONSTRAINT [DF_Table_1_VL_REC_BRT]  DEFAULT (0),
	[cnpj_pai] [varchar](14) NULL,
	CONSTRAINT [PK_reg_m205] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m110](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [numeric](21, 2) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m110_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m105](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis_tot] [numeric](21, 2) NULL,
	[vl_bc_pis_cum] [numeric](21, 2) NULL,
	[vl_bc_pis_nc] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[quant_bc_pis_tot] [numeric](22, 3) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[desc_cred] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m105_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_cred] [varchar](3) NULL,
	[ind_cred_ori] [varchar](1) NULL,
	[vl_bc_cred] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_cred] [numeric](21, 2) NULL,
	[vl_ajus_acres] [numeric](21, 2) NULL,
	[vl_ajus_reduc] [numeric](21, 2) NULL,
	[vl_cred_dif] [numeric](21, 2) NULL,
	[vl_cred_disp] [numeric](21, 2) NULL,
	[ind_desc_cred] [varchar](1) NULL,
	[vl_cred_desc] [numeric](21, 2) NULL,
	[sld_cred] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_m001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_f] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f800](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_nat_even] [varchar](2) NULL,
	[dt_even] [datetime] NULL,
	[cnpj_suced] [varchar](14) NULL,
	[pa_cont_cred] [varchar](6) NULL,
	[cod_cred] [varchar](3) NULL,
	[vl_cred_pis] [numeric](21, 2) NULL,
	[vl_cred_cofins] [numeric](21, 2) NULL,
	[per_cred_cis] [numeric](8, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f800_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f700](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_ori_ded] [varchar](2) NULL,
	[ind_nat_ded] [varchar](1) NULL,
	[vl_ded_pis] [numeric](21, 2) NULL,
	[vl_ded_cofins] [numeric](21, 2) NULL,
	[vl_bc_oper] [numeric](21, 2) NULL,
	[cnpj] [varchar](14) NULL,
	[inf_comp] [varchar](90) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f700_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f600](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_nat_ret] [varchar](2) NULL,
	[dt_ret] [datetime] NULL,
	[vl_bc_ret] [numeric](23, 4) NULL,
	[vl_ret] [numeric](21, 2) NULL,
	[cod_rec] [varchar](4) NULL,
	[ind_nat_rec] [varchar](1) NULL,
	[cnpj] [varchar](14) NULL,
	[vl_ret_pis] [numeric](21, 2) NULL,
	[vl_ret_cofins] [numeric](21, 2) NULL,
	[ind_dec] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f211](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f211_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f210](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_cus_orc] [numeric](21, 2) NULL,
	[vl_exc] [numeric](21, 2) NULL,
	[vl_cus_orc_aju] [numeric](21, 2) NULL,
	[vl_bc_cred] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_cred_reg_util] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cred_cofins_util] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f210_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f205](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_cus_inc_acum_ant] [numeric](21, 2) NULL,
	[vl_cus_inc_per_esc] [numeric](21, 2) NULL,
	[vl_cus_inc_acum] [numeric](21, 2) NULL,
	[vl_exc_bc_cus_inc_acum] [numeric](21, 2) NULL,
	[vl_bc_cus_inc] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_cred_reg_acum] [numeric](21, 2) NULL,
	[vl_cred_reg_desc_ant] [numeric](21, 2) NULL,
	[vl_cred_reg_desc] [numeric](21, 2) NULL,
	[vl_cred_reg_desc_fut] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cred_cofins_acum] [numeric](21, 2) NULL,
	[vl_cred_cofins_desc_ant] [numeric](21, 2) NULL,
	[vl_cred_cofins_desc] [numeric](21, 2) NULL,
	[vl_cred_cofins_desc_fut] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f205_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_oper] [varchar](2) NULL,
	[unid_imob] [varchar](2) NULL,
	[ident_emp] [varchar](255) NULL,
	[desc_unid_imob] [varchar](90) NULL,
	[num_cont] [varchar](90) NULL,
	[cpf_cnpj_adqu] [varchar](14) NULL,
	[dt_oper] [datetime] NULL,
	[vl_tot_vend] [numeric](21, 2) NULL,
	[vl_rec_acum] [numeric](21, 2) NULL,
	[vl_tot_rec] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[perc_rec_receb] [numeric](8, 2) NULL,
	[ind_nat_emp] [varchar](1) NULL,
	[inf_comp] [varchar](90) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f150](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_tot_est] [numeric](21, 2) NULL,
	[est_imp] [numeric](21, 2) NULL,
	[vl_bc_est] [numeric](21, 2) NULL,
	[vl_bc_men_est] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_cred_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cred_cofins] [numeric](21, 2) NULL,
	[desc_est] [varchar](100) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f150_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f139](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f139_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f130](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ident_bem_imob] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[ind_util_bem_imob] [varchar](1) NULL,
	[mes_oper_aquis] [varchar](6) NULL,
	[vl_oper_aquis] [numeric](21, 2) NULL,
	[parc_oper_nao_bc_cred] [numeric](21, 2) NULL,
	[vl_bc_cred] [numeric](21, 2) NULL,
	[ind_nr_parc] [varchar](1) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_bem_imob] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f130_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f129](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f129_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f120](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ident_bem_imob] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[ind_util_bem_imob] [varchar](1) NULL,
	[vl_oper_dep] [numeric](21, 2) NULL,
	[parc_oper_nao_bc_cred] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_bem_imob] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f120_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f111](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f111_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_oper] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_item] [varchar](60) NULL,
	[dt_oper] [datetime] NULL,
	[vl_oper] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](23, 4) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](23, 4) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_doc_oper] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f010_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_f001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_d] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d609](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d609_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d605](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_class] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d605_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d601](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_class] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d601_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d600](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_mun] [varchar](7) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[ind_rec] [varchar](1) NULL,
	[qtd_cons] [varchar](255) NULL,
	[dt_doc_ini] [datetime] NULL,
	[dt_doc_fin] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_serv] [numeric](21, 2) NULL,
	[vl_serv_nt] [numeric](21, 2) NULL,
	[vl_terc] [numeric](21, 2) NULL,
	[vl_da] [numeric](21, 2) NULL,
	[vl_bc_icms] [numeric](21, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d509](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d509_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d505](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d505_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d501](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d501_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d500](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [varchar](9) NULL,
	[dt_doc] [datetime] NULL,
	[dt_a_p] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_serv] [numeric](21, 2) NULL,
	[vl_serv_nt] [numeric](21, 2) NULL,
	[vl_terc] [numeric](21, 2) NULL,
	[vl_da] [numeric](21, 2) NULL,
	[vl_bc_icms] [numeric](21, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[cod_inf] [varchar](6) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d500_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d359](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d359_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d350](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[ecf_mod] [varchar](20) NULL,
	[ecf_fab] [varchar](20) NULL,
	[dt_doc] [datetime] NULL,
	[cro] [varchar](3) NULL,
	[crz] [varchar](6) NULL,
	[num_coo_fin] [varchar](6) NULL,
	[gt_fin] [numeric](21, 2) NULL,
	[vl_brt] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d350_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d309](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d309_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d300](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc_ini] [varchar](6) NULL,
	[num_doc_fin] [varchar](255) NULL,
	[cfop] [varchar](4) NULL,
	[dt_ref] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d300_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d209](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d209_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d205](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d205_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d201](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d201_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc_ini] [varchar](9) NULL,
	[num_doc_fin] [varchar](9) NULL,
	[cfop] [varchar](4) NULL,
	[dt_ref] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d111](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d111_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d105](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_nat_frt] [varchar](1) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d105_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d101](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_nat_frt] [varchar](1) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d101_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [varchar](9) NULL,
	[chv_cte] [varchar](44) NULL,
	[dt_doc] [datetime] NULL,
	[dt_a_p] [datetime] NULL,
	[tp_cte] [varchar](1) NULL,
	[chv_cte_ref] [varchar](44) NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[ind_frt] [varchar](1) NULL,
	[vl_serv] [numeric](21, 2) NULL,
	[vl_bc_icms] [numeric](21, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[vl_nt] [numeric](21, 2) NULL,
	[cod_inf] [varchar](6) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d010_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_d001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_c] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c609](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c609_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c605](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c605_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c601](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c601_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c600](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_mun] [varchar](7) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[cod_cons] [varchar](2) NULL,
	[qtd_cons] [varchar](255) NULL,
	[qtd_canc] [varchar](255) NULL,
	[dt_doc] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[cons] [varchar](255) NULL,
	[vl_forn] [numeric](21, 2) NULL,
	[vl_serv_nt] [numeric](21, 2) NULL,
	[vl_terc] [numeric](21, 2) NULL,
	[vl_da] [numeric](21, 2) NULL,
	[vl_bc_icms] [numeric](21, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[vl_bc_icms_st] [numeric](21, 2) NULL,
	[vl_icms_st] [numeric](21, 2) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c509](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c509_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c505](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c505_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c501](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c501_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c500](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [varchar](60) NULL,
	[dt_doc] [datetime] NULL,
	[dt_e_s] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[cod_inf] [varchar](6) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c500_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c499](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c499_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c495](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_item] [varchar](60) NULL,
	[cst_cofins] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c495_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c491](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_item] [varchar](60) NULL,
	[cst_pis] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c491_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c490](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_doc_ini] [datetime] NULL,
	[dt_doc_fin] [datetime] NULL,
	[cod_mod] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c490_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c489](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c489_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c485](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_cta] [varchar](60) NULL,
	[natureza_receita] [varchar](3) NULL,
	[cod_antes] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c485_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c481](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_cta] [varchar](60) NULL,
	[natureza_receita] [varchar](3) NULL,
	[cod_antes] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c481_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c405](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_doc] [datetime] NULL,
	[cro] [varchar](3) NULL,
	[crz] [varchar](6) NULL,
	[num_coo_fin] [varchar](6) NULL,
	[gt_fin] [numeric](21, 2) NULL,
	[vl_brt] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c405_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c400](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[ecf_mod] [varchar](20) NULL,
	[ecf_fab] [varchar](20) NULL,
	[ecf_cx] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c400_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c396](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_item] [varchar](60) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c396_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c395](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_part] [varchar](60) NULL,
	[ser] [varchar](3) NULL,
	[sub_ser] [varchar](3) NULL,
	[num_doc] [varchar](6) NULL,
	[dt_doc] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c395_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c385](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[cod_item] [varchar](60) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[natureza_receita] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c385_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c381](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[cod_item] [varchar](60) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[natureza_receita] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c381_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c380](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[dt_doc_ini] [datetime] NULL,
	[dt_doc_fin] [datetime] NULL,
	[num_doc_ini] [varchar](6) NULL,
	[num_doc_fin] [varchar](6) NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[vl_doc_canc] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c380_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c199](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_doc_imp] [varchar](1) NULL,
	[num_doc_imp] [varchar](10) NULL,
	[vl_pis_imp] [numeric](21, 2) NULL,
	[vl_cofins_imp] [numeric](21, 2) NULL,
	[num_acdraw] [varchar](20) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c199_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c198](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c198_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c195](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cnpj_cpf_part] [varchar](14) NULL,
	[cst_cofins] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c195_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c191](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cnpj_cpf_part] [varchar](14) NULL,
	[cst_pis] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c191_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c190](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[dt_ref_ini] [datetime] NULL,
	[dt_ref_fin] [datetime] NULL,
	[cod_item] [varchar](60) NULL,
	[cod_ncm] [varchar](8) NULL,
	[ex_ipi] [varchar](3) NULL,
	[vl_tot_item] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c190_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c188](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c188_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c185](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_cofins] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c185_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c181](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_pis] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c181_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c180](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_mod] [varchar](2) NULL,
	[dt_doc_ini] [datetime] NULL,
	[dt_doc_fin] [datetime] NULL,
	[cod_item] [varchar](60) NULL,
	[cod_ncm] [varchar](8) NULL,
	[ex_ipi] [varchar](3) NULL,
	[vl_tot_item] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c180_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c170](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_item] [varchar](3) NULL,
	[cod_item] [varchar](60) NULL,
	[descr_compl] [varchar](255) NULL,
	[qtd] [numeric](24, 5) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[ind_mov] [varchar](1) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[cod_nat] [varchar](10) NULL,
	[vl_bc_icms] [numeric](21, 2) NULL,
	[aliq_icms] [numeric](8, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[vl_bc_icms_st] [numeric](21, 2) NULL,
	[aliq_st] [numeric](8, 2) NULL,
	[vl_icms_st] [numeric](21, 2) NULL,
	[ind_apur] [varchar](1) NULL,
	[cst_ipi] [varchar](2) NULL,
	[cod_enq] [varchar](3) NULL,
	[vl_bc_ipi] [numeric](21, 2) NULL,
	[aliq_ipi] [numeric](8, 2) NULL,
	[vl_ipi] [numeric](21, 2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](12, 4) NULL,
	[quant_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis_quant] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](12, 4) NULL,
	[quant_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins_quant] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[natureza_receita] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c170_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c120](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_doc_imp] [varchar](1) NULL,
	[num_doc_imp] [varchar](10) NULL,
	[vl_pis_imp] [numeric](21, 2) NULL,
	[vl_cofins_imp] [numeric](21, 2) NULL,
	[num_acdraw] [varchar](20) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c120_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c111](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c111_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c110](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_inf] [varchar](6) NULL,
	[txt_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c110_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](3) NULL,
	[num_doc] [varchar](9) NULL,
	[chv_nfe] [varchar](44) NULL,
	[dt_doc] [datetime] NULL,
	[dt_e_s] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[ind_pgto] [varchar](1) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_abat_nt] [numeric](21, 2) NULL,
	[vl_merc] [numeric](21, 2) NULL,
	[ind_frt] [varchar](1) NULL,
	[vl_frt] [numeric](21, 2) NULL,
	[vl_seg] [numeric](21, 2) NULL,
	[vl_out_da] [numeric](21, 2) NULL,
	[vl_bc_icms] [numeric](21, 2) NULL,
	[vl_icms] [numeric](21, 2) NULL,
	[vl_bc_icms_st] [numeric](21, 2) NULL,
	[vl_icms_st] [numeric](21, 2) NULL,
	[vl_ipi] [numeric](21, 2) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[vl_pis_st] [numeric](21, 2) NULL,
	[vl_cofins_st] [numeric](21, 2) NULL,
	[contribuicao] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[ind_escri] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c010_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_a] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a170](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_item] [varchar](4) NULL,
	[cod_item] [varchar](60) NULL,
	[descr_compl] [varchar](255) NULL,
	[vl_item] [numeric](21, 2) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[aliq_pis] [numeric](21, 2) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[aliq_cofins] [numeric](8, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a170_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a120](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_tot_serv] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[vl_pis_imp] [numeric](21, 2) NULL,
	[dt_pag_pis] [datetime] NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[vl_cofins_imp] [numeric](21, 2) NULL,
	[dt_pag_cofins] [datetime] NULL,
	[loc_exe_serv] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a120_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a111](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a111_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a110](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_inf] [varchar](6) NULL,
	[txt_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a110_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](20) NULL,
	[sub] [varchar](20) NULL,
	[num_doc] [varchar](128) NULL,
	[chv_nfse] [varchar](128) NULL,
	[dt_doc] [datetime] NULL,
	[dt_exe_serv] [datetime] NULL,
	[vl_doc] [numeric](21, 2) NULL,
	[ind_pgto] [varchar](1) NULL,
	[vl_desc] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](21, 2) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](21, 2) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[vl_pis_ret] [numeric](21, 2) NULL,
	[vl_cofins_ret] [numeric](21, 2) NULL,
	[vl_iss] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a010_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_a001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_9999](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9999_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_9990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_9] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_9900](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_reg_blc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9900_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_9001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_1] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1800](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[inc_imob] [varchar](90) NULL,
	[rec_receb_ret] [numeric](21, 2) NULL,
	[rec_fin_ret] [numeric](21, 2) NULL,
	[bc_ret] [numeric](21, 2) NULL,
	[aliq_ret] [numeric](8, 2) NULL,
	[vl_rec_uni] [numeric](21, 2) NULL,
	[dt_rec_uni] [datetime] NULL,
	[cod_rec] [varchar](4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1800_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1700](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_nat_ret] [varchar](2) NULL,
	[pr_rec_ret] [varchar](6) NULL,
	[vl_ret_apu] [numeric](21, 2) NULL,
	[vl_ret_ded] [numeric](21, 2) NULL,
	[vl_ret_per] [numeric](21, 2) NULL,
	[vl_ret_dcomp] [numeric](21, 2) NULL,
	[sld_ret] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1700_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1620](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_apu_cred] [varchar](6) NULL,
	[orig_cred] [varchar](2) NULL,
	[cod_cred] [varchar](3) NULL,
	[vl_cred] [numeric](21, 2) NULL,
 CONSTRAINT [reg_1620_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1610](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cnpj] [varchar](14) NULL,
	[cst_cofins] [varchar](2) NULL,
	[cod_part] [varchar](60) NULL,
	[dt_oper] [datetime] NULL,
	[vl_oper] [numeric](21, 2) NULL,
	[vl_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
 CONSTRAINT [reg_1610_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1600](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_apur_ant] [varchar](6) NULL,
	[nat_cont_rec] [varchar](2) NULL,
	[vl_cont_apur] [numeric](21, 2) NULL,
	[vl_cred_cofins_desc] [numeric](21, 2) NULL,
	[vl_cont_dev] [numeric](21, 2) NULL,
	[vl_out_ded] [numeric](21, 2) NULL,
	[vl_cont_ext] [numeric](21, 2) NULL,
	[vl_mul] [numeric](21, 2) NULL,
	[vl_jur] [numeric](21, 2) NULL,
	[dt_recol] [datetime] NULL,
 CONSTRAINT [reg_1600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1502](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_cred_cofins_trib_mi] [numeric](21, 2) NULL,
	[vl_cred_cofins_nt_mi] [numeric](21, 2) NULL,
	[vl_cred_cofins_exp] [numeric](21, 2) NULL,
 CONSTRAINT [reg_1502_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1501](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_part] [varchar](60) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub_ser] [varchar](3) NULL,
	[num_doc] [varchar](9) NULL,
	[dt_oper] [datetime] NULL,
	[chv_nfe] [varchar](44) NULL,
	[vl_oper] [numeric](21, 2) NULL,
	[cfop] [varchar](4) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [numeric](22, 3) NULL,
	[aliq_cofins] [numeric](23, 4) NULL,
	[vl_cofins] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
	[per_escrit] [varchar](6) NULL,
	[cnpj] [varchar](14) NULL,
 CONSTRAINT [reg_1501_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1500](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_apu_cred] [varchar](6) NULL,
	[orig_cred] [varchar](2) NULL,
	[cnpj_suc] [varchar](14) NULL,
	[cod_cred] [varchar](3) NULL,
	[vl_cred_apu] [numeric](21, 2) NULL,
	[vl_cred_ext_apu] [numeric](21, 2) NULL,
	[vl_tot_cred_apu] [numeric](21, 2) NULL,
	[vl_cred_desc_pa_ant] [numeric](21, 2) NULL,
	[vl_cred_per_pa_ant] [numeric](21, 2) NULL,
	[vl_cred_dcomp_pa_ant] [numeric](21, 2) NULL,
	[sd_cred_disp_efd] [numeric](21, 2) NULL,
	[vl_cred_desc_efd] [numeric](21, 2) NULL,
	[vl_cred_per_efd] [numeric](21, 2) NULL,
	[vl_cred_dcomp_efd] [numeric](21, 2) NULL,
	[vl_cred_trans] [numeric](21, 2) NULL,
	[vl_cred_out] [numeric](21, 2) NULL,
	[sld_cred_fim] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1500_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1300](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_nat_ret] [varchar](2) NULL,
	[pr_rec_ret] [varchar](6) NULL,
	[vl_ret_apu] [numeric](21, 2) NULL,
	[vl_ret_ded] [numeric](21, 2) NULL,
	[vl_ret_per] [numeric](21, 2) NULL,
	[vl_ret_dcomp] [numeric](21, 2) NULL,
	[sld_ret] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1300_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1220](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_apu_cred] [varchar](6) NULL,
	[orig_cred] [varchar](2) NULL,
	[cod_cred] [varchar](3) NULL,
	[vl_cred] [numeric](21, 2) NULL,
 CONSTRAINT [reg_1220_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1210](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cnpj] [varchar](14) NULL,
	[cst_pis] [varchar](2) NULL,
	[cod_part] [varchar](60) NULL,
	[dt_oper] [datetime] NULL,
	[vl_oper] [numeric](21, 2) NULL,
	[vl_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
 CONSTRAINT [reg_1210_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_apur_ant] [varchar](6) NULL,
	[nat_cont_rec] [varchar](2) NULL,
	[vl_cont_apur] [numeric](21, 2) NULL,
	[vl_cred_reg_desc] [numeric](21, 2) NULL,
	[vl_cont_dev] [numeric](21, 2) NULL,
	[vl_out_ded] [numeric](21, 2) NULL,
	[vl_cont_ext] [numeric](21, 2) NULL,
	[vl_mul] [numeric](21, 2) NULL,
	[vl_jur] [numeric](21, 2) NULL,
	[dt_recol] [varchar](8) NULL,
 CONSTRAINT [reg_1200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1102](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[vl_cred_reg_trib_mi] [numeric](21, 2) NULL,
	[vl_cred_pis_nt_mi] [numeric](21, 2) NULL,
	[vl_cred_pis_exp] [numeric](21, 2) NULL,
 CONSTRAINT [reg_1102_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1101](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_part] [varchar](60) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub_ser] [varchar](3) NULL,
	[num_doc] [varchar](9) NULL,
	[dt_oper] [datetime] NULL,
	[chv_nfe] [varchar](44) NULL,
	[vl_oper] [numeric](21, 2) NULL,
	[cfop] [varchar](4) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [numeric](22, 3) NULL,
	[aliq_pis] [numeric](23, 4) NULL,
	[vl_pis] [numeric](21, 2) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
	[per_escrit] [varchar](6) NULL,
	[cnpj] [varchar](14) NULL,
 CONSTRAINT [reg_1101_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[per_apu_cred] [varchar](6) NULL,
	[orig_cred] [varchar](2) NULL,
	[cnpj_suc] [varchar](14) NULL,
	[cod_cred] [varchar](3) NULL,
	[vl_cred_apu] [numeric](21, 2) NULL,
	[vl_cred_ext_apu] [numeric](21, 2) NULL,
	[vl_tot_cred_apu] [numeric](21, 2) NULL,
	[vl_cred_desc_pa_ant] [numeric](21, 2) NULL,
	[vl_cred_per_pa_ant] [numeric](21, 2) NULL,
	[vl_cred_dcomp_pa_ant] [numeric](21, 2) NULL,
	[sd_cred_disp_efd] [numeric](21, 2) NULL,
	[vl_cred_desc_efd] [numeric](21, 2) NULL,
	[vl_cred_per_efd] [numeric](21, 2) NULL,
	[vl_cred_dcomp_efd] [numeric](21, 2) NULL,
	[vl_cred_trans] [numeric](21, 2) NULL,
	[vl_cred_out] [numeric](21, 2) NULL,
	[sld_cred_fim] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1020](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[ind_nat_acao] [varchar](2) NULL,
	[dt_dec_adm] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1020_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1010](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[num_proc] [varchar](20) NULL,
	[id_sec_jud] [varchar](255) NULL,
	[id_vara] [varchar](2) NULL,
	[ind_nat_acao] [varchar](2) NULL,
	[desc_dec_jud] [varchar](100) NULL,
	[dt_sent_jud] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1010_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_1001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_0] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0600](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_alt] [datetime] NULL,
	[cod_ccus] [varchar](60) NULL,
	[ccus] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0500](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_alt] [datetime] NULL,
	[cod_nat_cc] [varchar](2) NULL,
	[ind_cta] [varchar](1) NULL,
	[nivel] [varchar](5) NULL,
	[cod_cta] [varchar](60) NULL,
	[nome_cta] [varchar](60) NULL,
	[cod_cta_ref] [varchar](60) NULL,
	[cnpj_est] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0500_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0450](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_inf] [varchar](6) NULL,
	[txt] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0450_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0400](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_nat] [varchar](10) NULL,
	[descr_nat] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0400_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0208](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_tab] [varchar](2) NULL,
	[cod_gru] [varchar](2) NULL,
	[marca_com] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0208_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0206](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_comb] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0206_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0205](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[descr_ant_item] [varchar](255) NULL,
	[dt_ini] [datetime] NULL,
	[dt_fim] [datetime] NULL,
	[cod_ant_item] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0205_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_item] [varchar](60) NULL,
	[descr_item] [varchar](255) NULL,
	[cod_barra] [varchar](255) NULL,
	[cod_ant_item] [varchar](60) NULL,
	[unid_inv] [varchar](6) NULL,
	[tipo_item] [varchar](2) NULL,
	[cod_ncm] [varchar](8) NULL,
	[ex_ipi] [varchar](3) NULL,
	[cod_gen] [varchar](2) NULL,
	[cod_lst] [varchar](4) NULL,
	[aliq_icms] [numeric](8, 2) NULL,
	[novo] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0190](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[unid] [varchar](6) NULL,
	[descr] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0190_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0150](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_part] [varchar](60) NULL,
	[nome] [varchar](100) NULL,
	[cod_pais] [varchar](5) NULL,
	[cnpj] [varchar](14) NULL,
	[cpf] [varchar](11) NULL,
	[ie] [varchar](14) NULL,
	[cod_mun] [varchar](7) NULL,
	[suframa] [varchar](9) NULL,
	[end] [varchar](60) NULL,
	[num] [varchar](255) NULL,
	[compl] [varchar](60) NULL,
	[bairro] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0150_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0145](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_inc_trib] [varchar](1) NULL,
	[vl_rec_tot] [numeric](21, 2) NULL,
	[vl_rec_ativ] [numeric](21, 2) NULL,
	[vl_rec_demais_ativ] [numeric](21, 2) NULL,
	[info_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0145_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0140](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_est] [varchar](60) NULL,
	[nome] [varchar](100) NULL,
	[cnpj] [varchar](14) NULL,
	[uf] [varchar](2) NULL,
	[ie] [varchar](14) NULL,
	[cod_mun] [varchar](7) NULL,
	[im] [varchar](255) NULL,
	[suframa] [varchar](9) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0140_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0120](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[mes_dispensa] [varchar](6) NULL,
	[inf_comp] [varchar](90) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0120_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0111](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[rec_bru_ncum_trib_mi] [numeric](21, 2) NULL,
	[rec_bru_ncum_nt_mi] [numeric](21, 2) NULL,
	[rec_bru_ncum_exp] [numeric](21, 2) NULL,
	[rec_bru_cum] [numeric](21, 2) NULL,
	[rec_bru_total] [numeric](21, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0111_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0110](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_inc_trib] [varchar](1) NULL,
	[ind_apro_cred] [varchar](1) NULL,
	[cod_tipo_cont] [varchar](1) NULL,
	[ind_reg_cum] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0110_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nome] [varchar](100) NULL,
	[cpf] [varchar](11) NULL,
	[crc] [varchar](15) NULL,
	[cnpj] [varchar](14) NULL,
	[cep] [varchar](8) NULL,
	[end] [varchar](60) NULL,
	[num] [varchar](255) NULL,
	[compl] [varchar](60) NULL,
	[bairro] [varchar](60) NULL,
	[fone] [varchar](10) NULL,
	[fax] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[cod_mun] [varchar](7) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0100_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0000](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_ver] [varchar](3) NULL,
	[tipo_escrit] [varchar](1) NULL,
	[ind_sit_esp] [varchar](1) NULL,
	[num_rec_anterior] [varchar](41) NULL,
	[dt_ini] [datetime] NULL,
	[dt_fin] [datetime] NULL,
	[nome] [varchar](100) NULL,
	[cnpj] [varchar](14) NULL,
	[uf] [varchar](2) NULL,
	[cod_mun] [varchar](7) NULL,
	[suframa] [varchar](9) NULL,
	[ind_nat_pj] [varchar](2) NULL,
	[ind_ativ] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0000_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_i001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_i001_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_i990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_i] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_i990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[reg_m800] ADD  DEFAULT ((0)) FOR [vl_tot_rec]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_rec_brt]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_bc_cont]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_apur]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_difer]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_difer_ant]
GO
ALTER TABLE [dbo].[reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_per]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_per]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc_ant]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_dev]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_ret_nc]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_out_ded_nc]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_cont_nc_rec]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_cum_per]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_ret_cum]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_out_ded_cum]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_cont_cum_rec]
GO
ALTER TABLE [dbo].[reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_rec]
GO
ALTER TABLE [dbo].[reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins_tot]
GO
ALTER TABLE [dbo].[reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins_cum]
GO
ALTER TABLE [dbo].[reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins_nc]
GO
ALTER TABLE [dbo].[reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_bc_cred]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred_dif]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred_disp]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred_desc]
GO
ALTER TABLE [dbo].[reg_m500] ADD  DEFAULT ((0)) FOR [sld_cred]
GO
ALTER TABLE [dbo].[reg_m410] ADD  DEFAULT ((0)) FOR [vl_rec]
GO
ALTER TABLE [dbo].[reg_m400] ADD  DEFAULT ((0)) FOR [vl_tot_rec]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_rec_brt]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_bc_cont]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_apur]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_difer]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_difer_ant]
GO
ALTER TABLE [dbo].[reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_per]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_per]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc_ant]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_dev]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_ret_nc]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_out_ded_nc]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_cont_nc_rec]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_cum_per]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_ret_cum]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_out_ded_cum]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_cont_cum_rec]
GO
ALTER TABLE [dbo].[reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_rec]
GO
ALTER TABLE [dbo].[reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis_tot]
GO
ALTER TABLE [dbo].[reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis_cum]
GO
ALTER TABLE [dbo].[reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis_nc]
GO
ALTER TABLE [dbo].[reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_bc_cred]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred_dif]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred_disp]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred_desc]
GO
ALTER TABLE [dbo].[reg_m100] ADD  DEFAULT ((0)) FOR [sld_cred]
GO
ALTER TABLE [dbo].[reg_c010] ADD  DEFAULT ((1)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c010] ADD  DEFAULT ((2)) FOR [ind_escri]
GO
USE [master]
GO
ALTER DATABASE [$(DbName)] SET  READ_WRITE
GO
