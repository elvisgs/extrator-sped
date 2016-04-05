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
CREATE TABLE [reg_0000](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_ver] [varchar](3) NULL,
	[cod_fin] [varchar](1) NULL,
	[nome] [varchar](100) NULL,
	[cnpj] [varchar](14) NULL,
	[cpf] [varchar](11) NULL,
	[uf] [varchar](2) NULL,
	[ie] [varchar](14) NULL,
	[cod_mun] [varchar](7) NULL,
	[im] [varchar](10) NULL,
	[suframa] [varchar](9) NULL,
	[ind_perfil] [varchar](1) NULL,
	[ind_ativ] [varchar](1) NULL,
	[dt_fin] [datetime] NULL,
	[dt_ini] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0000_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0001](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0005](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[fantasia] [varchar](60) NULL,
	[cep] [varchar](8) NULL,
	[endereco] [varchar](60) NULL,
	[num] [varchar](10) NULL,
	[compl] [varchar](60) NULL,
	[bairro] [varchar](60) NULL,
	[fone] [varchar](11) NULL,
	[fax] [varchar](11) NULL,
	[email] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0005_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0015](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[uf_st] [varchar](2) NULL,
	[ie_st] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0015_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0100](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[nome] [varchar](100) NULL,
	[cpf] [varchar](11) NULL,
	[crc] [varchar](15) NULL,
	[cnpj] [varchar](14) NULL,
	[cep] [varchar](8) NULL,
	[endereco] [varchar](60) NULL,
	[num] [varchar](10) NULL,
	[compl] [varchar](60) NULL,
	[bairro] [varchar](60) NULL,
	[fone] [varchar](11) NULL,
	[fax] [varchar](11) NULL,
	[email] [varchar](60) NULL,
	[cod_mun] [varchar](7) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0150](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[nome] [varchar](100) NULL,
	[cod_pais] [int] NULL,
	[cnpj] [varchar](15) NULL,
	[cpf] [varchar](11) NULL,
	[ie] [varchar](14) NULL,
	[cod_mun] [varchar](7) NULL,
	[suframa] [varchar](9) NULL,
	[endereco] [varchar](60) NULL,
	[num] [varchar](10) NULL,
	[compl] [varchar](60) NULL,
	[bairro] [varchar](60) NULL,
	[efd] [varchar](50) NULL,
	[pis] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0150_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0175](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_alt] [datetime] NULL,
	[nr_campo] [varchar](2) NULL,
	[cont_ant] [varchar](100) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0175_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0190](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[unid] [varchar](6) NULL,
	[descr] [varchar](60) NULL,
	[efd] [varchar](1) NULL,
	[pis] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0190_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0200](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_item] [varchar](60) NULL,
	[descr_item] [varchar](255) NULL,
	[cod_barra] [varchar](20) NULL,
	[cod_ant_item] [varchar](60) NULL,
	[unid_inv] [varchar](6) NULL,
	[tipo_item] [varchar](2) NULL,
	[cod_ncm] [varchar](8) NULL,
	[ex_ipi] [varchar](3) NULL,
	[cod_gen] [varchar](2) NULL,
	[cod_lst] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[efd] [varchar](1) NULL,
	[pis] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0200_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0205](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[descr_ant_item] [varchar](255) NULL,
	[dt_fim] [datetime] NULL,
	[cod_ant_item] [varchar](60) NULL,
	[dt_ini] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0205_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0206](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_comb] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0206_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0220](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[unid_conv] [varchar](6) NULL,
	[fat_conv] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0220_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0300](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_ind_bem] [varchar](60) NULL,
	[ident_merc] [varchar](1) NULL,
	[descr_item] [varchar](255) NULL,
	[cod_prnc] [varchar](60) NULL,
	[cod_cta] [varchar](60) NULL,
	[nr_parc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0300_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0305](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_ccus] [varchar](60) NULL,
	[func] [varchar](255) NULL,
	[vida_util] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0305_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0400](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_nat] [varchar](10) NULL,
	[descr_nat] [varchar](255) NULL,
	[pis] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0400_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0450](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_inf] [varchar](6) NULL,
	[txt] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0450_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0460](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_obs] [varchar](6) NULL,
	[txt] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0460_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_alt] [datetime] NULL,
	[cod_nat_cc] [varchar](2) NULL,
	[ind_cta] [varchar](1) NULL,
	[nivel] [int] NULL,
	[cod_cta] [varchar](60) NULL,
	[nome_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0600](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_alt] [datetime] NULL,
	[cod_ccus] [varchar](60) NULL,
	[ccus] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0600_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_0990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_0] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1010](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[ind_exp] [varchar](1) NULL,
	[ind_ccrf] [varchar](1) NULL,
	[ind_comb] [varchar](1) NULL,
	[ind_usina] [varchar](1) NULL,
	[ind_va] [varchar](1) NULL,
	[ind_ee] [varchar](1) NULL,
	[ind_cart] [varchar](1) NULL,
	[ind_form] [varchar](1) NULL,
	[ind_aer] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1010_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_doc] [int] NULL,
	[nro_de] [varchar](11) NULL,
	[dt_de] [datetime] NULL,
	[nat_exp] [int] NULL,
	[nro_re] [varchar](12) NULL,
	[dt_re] [datetime] NULL,
	[chc_emb] [varchar](18) NULL,
	[dt_chc] [datetime] NULL,
	[dt_avb] [datetime] NULL,
	[tp_chc] [varchar](2) NULL,
	[pais] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1105](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](3) NULL,
	[num_doc] [varchar](9) NULL,
	[chv_nfe] [varchar](44) NULL,
	[cod_item] [varchar](60) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1105_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1110](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[num_doc] [varchar](9) NULL,
	[chv_nfe] [varchar](44) NULL,
	[nr_memo] [int] NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1110_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1200](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_aj_apur] [varchar](8) NULL,
	[sld_cred] [decimal](18, 4) NULL,
	[cred_apr] [decimal](18, 4) NULL,
	[cred_receb] [decimal](18, 4) NULL,
	[cred_util] [decimal](18, 4) NULL,
	[sld_cred_fim] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1200_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1210](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[tipo_util] [varchar](4) NULL,
	[nr_doc] [varchar](255) NULL,
	[vl_cred_util] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1210_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1300](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[linha] [int] NULL,
	[reg] [varchar](4) NULL,
	[cod_item] [varchar](60) NULL,
	[dt_fech] [datetime] NULL,
	[estq_abert] [decimal](18, 4) NULL,
	[vol_entr] [decimal](18, 4) NULL,
	[vol_disp] [decimal](18, 4) NULL,
	[vol_saidas] [decimal](18, 4) NULL,
	[estq_escr] [decimal](18, 4) NULL,
	[val_aj_perda] [decimal](18, 4) NULL,
	[val_aj_ganho] [decimal](18, 4) NULL,
	[fech_fisico] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1300_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1310](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_tanque] [varchar](3) NULL,
	[estq_abert] [decimal](18, 4) NULL,
	[vol_entr] [decimal](18, 4) NULL,
	[vol_disp] [decimal](18, 4) NULL,
	[vol_saidas] [decimal](18, 4) NULL,
	[estq_escr] [decimal](18, 4) NULL,
	[val_aj_perda] [decimal](18, 4) NULL,
	[val_aj_ganho] [decimal](18, 4) NULL,
	[fech_fisico] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1310_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1320](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_bico] [int] NULL,
	[nr_interv] [int] NULL,
	[mot_interv] [varchar](50) NULL,
	[nom_interv] [varchar](30) NULL,
	[cnpj_interv] [varchar](14) NULL,
	[cpf_interv] [varchar](11) NULL,
	[val_fecha] [decimal](18, 4) NULL,
	[val_abert] [decimal](18, 4) NULL,
	[vol_aferi] [decimal](18, 4) NULL,
	[vol_vendas] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1320_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1350](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[serie] [varchar](255) NULL,
	[fabricante] [varchar](60) NULL,
	[modelo] [varchar](255) NULL,
	[tipo_medicao] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1350_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1360](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_lacre] [varchar](20) NULL,
	[dat_aplicacao] [varchar](8) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1360_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1370](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_bico] [varchar](3) NULL,
	[cod_item] [varchar](60) NULL,
	[num_tanque] [varchar](3) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1370_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1390](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_prod] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1390_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1391](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_registro] [datetime] NULL,
	[qtd_moid] [decimal](18, 4) NULL,
	[estq_ini] [decimal](18, 4) NULL,
	[qtd_produz] [decimal](18, 4) NULL,
	[ent_anid_hid] [decimal](18, 4) NULL,
	[outr_entr] [decimal](18, 4) NULL,
	[perda] [decimal](18, 4) NULL,
	[cons] [decimal](18, 4) NULL,
	[sai_ani_hid] [decimal](18, 4) NULL,
	[saidas] [decimal](18, 4) NULL,
	[estq_fin] [decimal](18, 4) NULL,
	[estq_ini_mel] [decimal](18, 4) NULL,
	[prod_dia_mel] [decimal](18, 4) NULL,
	[util_mel] [decimal](18, 4) NULL,
	[prod_alc_mel] [decimal](18, 4) NULL,
	[obs] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1391_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1400](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[mun] [varchar](7) NULL,
	[valor] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1400_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[cod_cons] [varchar](2) NULL,
	[num_doc] [int] NULL,
	[dt_e_s] [datetime] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_forn] [decimal](18, 4) NULL,
	[vl_serv_nt] [decimal](18, 4) NULL,
	[vl_terc] [decimal](18, 4) NULL,
	[vl_da] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[cod_inf] [varchar](6) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofis] [decimal](18, 4) NULL,
	[tp_ligacao] [int] NULL,
	[cod_grupo_tensao] [varchar](2) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1510](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[cod_class] [varchar](4) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[aliq_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[ind_rec] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofis] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1510_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1600](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[tot_credito] [decimal](18, 4) NULL,
	[tot_debito] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1600_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1700](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_disp] [varchar](2) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc_ini] [varchar](12) NULL,
	[num_doc_fin] [varchar](12) NULL,
	[num_aut] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1700_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1710](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_doc_ini] [varchar](12) NULL,
	[num_doc_fin] [varchar](12) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1710_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1800](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_carga] [decimal](18, 4) NULL,
	[vl_pass] [decimal](18, 4) NULL,
	[vl_fat] [decimal](18, 4) NULL,
	[ind_rat] [decimal](18, 4) NULL,
	[vl_icms_ant] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms_apur] [decimal](18, 4) NULL,
	[vl_bc_icms_apur] [decimal](18, 4) NULL,
	[vl_dif] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1800_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1900](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_apur_icms] [varchar](1) NULL,
	[descr_compl_out_apur] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1900_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1910](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_fin] [datetime] NULL,
	[dt_ini] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1910_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1920](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_tot_transf_debitos_oa] [decimal](18, 4) NULL,
	[vl_tot_aj_debitos_oa] [decimal](18, 4) NULL,
	[vl_estornos_cred_oa] [decimal](18, 4) NULL,
	[vl_tot_transf_creditos_oa] [decimal](18, 4) NULL,
	[vl_tot_aj_creditos_oa] [decimal](18, 4) NULL,
	[vl_estornos_deb_oa] [decimal](18, 4) NULL,
	[vl_sld_credor_ant_oa] [decimal](18, 4) NULL,
	[vl_sld_apurado_oa] [decimal](18, 4) NULL,
	[vl_tot_ded] [decimal](18, 4) NULL,
	[vl_icms_recolher_oa] [decimal](18, 4) NULL,
	[vl_sld_credor_transp_oa] [decimal](18, 4) NULL,
	[deb_esp_oa] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1920_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1921](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_aj_apur] [varchar](8) NULL,
	[descr_compl_aj] [varchar](255) NULL,
	[vl_aj_apur] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1921_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1922](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_da] [varchar](255) NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[proc] [varchar](255) NULL,
	[txt_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1922_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1923](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[vl_aj_item] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1923_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1925](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_inf_adic] [varchar](8) NULL,
	[vl_inf_adic] [decimal](18, 4) NULL,
	[desc_compl_aj] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1925_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1926](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_or] [varchar](3) NULL,
	[vl_or] [decimal](18, 4) NULL,
	[dt_vcto] [datetime] NULL,
	[cod_rec] [varchar](255) NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[proc] [varchar](255) NULL,
	[txt_compl] [varchar](255) NULL,
	[mes_ref] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1926_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_1990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_1] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_1990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_9001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [dbo].[reg_9900](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[reg_blc] [nvarchar](4) NULL,
	[qtd_reg_blc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [PK_reg_9900] PRIMARY KEY CLUSTERED
(
 [ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reg_9990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_9] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reg_9999](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_9999_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [reg_a001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a010_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](20) NULL,
	[sub] [varchar](20) NULL,
	[num_doc] [varchar](128) NULL,
	[chv_nfse] [varchar](128) NULL,
	[dt_exe_serv] [datetime] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[ind_pgto] [varchar](1) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[vl_pis_ret] [decimal](18, 4) NULL,
	[vl_cofins_ret] [decimal](18, 4) NULL,
	[vl_iss] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
 CONSTRAINT [reg_a100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a110](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_inf] [varchar](6) NULL,
	[txt_compl] [varchar](255) NULL,
 CONSTRAINT [reg_a110_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a111](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_a111_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a120](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_tot_serv] [decimal](18, 4) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[vl_pis_imp] [decimal](18, 4) NULL,
	[dt_pag_pis] [datetime] NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[vl_cofins_imp] [decimal](18, 4) NULL,
	[dt_pag_cofins] [datetime] NULL,
	[loc_exe_serv] [varchar](1) NULL,
 CONSTRAINT [reg_a120_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a170](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [varchar](4) NULL,
	[cod_item] [varchar](60) NULL,
	[descr_compl] [varchar](255) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
 CONSTRAINT [reg_a170_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_a990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_a] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_a990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[chv_nfe] [varchar](44) NULL,
	[dt_doc] [datetime] NULL,
	[dt_e_s] [datetime] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[ind_pgto] [varchar](1) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_abat_nt] [decimal](18, 4) NULL,
	[vl_merc] [decimal](18, 4) NULL,
	[ind_frt] [varchar](1) NULL,
	[vl_frt] [decimal](18, 4) NULL,
	[vl_seg] [decimal](18, 4) NULL,
	[vl_out_da] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_ipi] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[vl_pis_st] [decimal](18, 4) NULL,
	[vl_cofins_st] [decimal](18, 4) NULL,
	[id_pai_pis] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c105](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[oper] [int] NULL,
	[cod_uf] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c105_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c110](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_inf] [varchar](6) NULL,
	[txt_compl] [varchar](300) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c110_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c111](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c111_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c112](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_da] [varchar](1) NULL,
	[uf] [varchar](2) NULL,
	[num_da] [varchar](255) NULL,
	[cod_aut] [varchar](255) NULL,
	[vl_da] [decimal](18, 4) NULL,
	[dt_vcto] [datetime] NULL,
	[dt_pgto] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c112_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c113](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [int] NULL,
	[num_doc] [int] NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c113_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c114](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ecf_fab] [varchar](20) NULL,
	[ecf_cx] [int] NULL,
	[num_doc] [int] NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c114_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c115](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_carga] [int] NULL,
	[cnpj_col] [varchar](14) NULL,
	[ie_col] [varchar](14) NULL,
	[cpf_col] [varchar](11) NULL,
	[cod_mun_col] [varchar](7) NULL,
	[cnpj_entg] [varchar](14) NULL,
	[ie_entg] [varchar](14) NULL,
	[cpf_entg] [varchar](11) NULL,
	[cod_mun_entg] [varchar](7) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c115_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c116](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[nr_sat] [varchar](9) NULL,
	[chv_cfe] [varchar](44) NULL,
	[num_cfe] [varchar](6) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c116_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c120](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_doc_imp] [varchar](1) NULL,
	[num_doc_imp] [varchar](10) NULL,
	[pis_imp] [decimal](18, 4) NULL,
	[cofins_imp] [decimal](18, 4) NULL,
	[num_acdraw] [varchar](20) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c120_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c130](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_serv_nt] [decimal](18, 4) NULL,
	[vl_bc_issqn] [decimal](18, 4) NULL,
	[vl_issqn] [decimal](18, 4) NULL,
	[vl_bc_irrf] [decimal](18, 4) NULL,
	[vl_irrf] [decimal](18, 4) NULL,
	[vl_bc_prev] [decimal](18, 4) NULL,
	[vl_prev] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c130_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c140](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_emit] [varchar](1) NULL,
	[ind_tit] [varchar](2) NULL,
	[desc_tit] [varchar](255) NULL,
	[num_tit] [varchar](255) NULL,
	[qtd_parc] [varchar](2) NULL,
	[vl_tit] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c140_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c141](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_parc] [varchar](2) NULL,
	[dt_vcto] [datetime] NULL,
	[vl_parc] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c141_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c160](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[veic_id] [varchar](7) NULL,
	[qtd_vol] [int] NULL,
	[peso_brt] [decimal](18, 4) NULL,
	[peso_liq] [decimal](18, 4) NULL,
	[uf_id] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c160_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c165](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[linha] [int] NULL,
	[cod_part] [varchar](60),
	[veic_id] [varchar](7) NULL,
	[cod_aut] [varchar](255) NULL,
	[nr_passe] [varchar](255) NULL,
	[hora] [varchar](6) NULL,
	[temper] [decimal](18, 4) NULL,
	[qtd_vol] [int] NULL,
	[peso_brt] [decimal](18, 4) NULL,
	[peso_liq] [decimal](18, 4) NULL,
	[nom_mot] [varchar](60) NULL,
	[cpf] [varchar](11) NULL,
	[uf_id] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c165_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c170](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[descr_compl] [varchar](255) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[ind_mov] [varchar](1) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[cod_nat] [varchar](10) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[aliq_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[ind_apur] [varchar](1) NULL,
	[cst_ipi] [varchar](2) NULL,
	[cod_enq] [varchar](3) NULL,
	[vl_bc_ipi] [decimal](18, 4) NULL,
	[aliq_ipi] [decimal](18, 4) NULL,
	[vl_ipi] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis_perc] [decimal](18, 4) NULL,
	[quant_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis_reais] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins_perc] [decimal](18, 4) NULL,
	[quant_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins_reais] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c170_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c171](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_tanque] [varchar](3) NULL,
	[qtde] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c171_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c172](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_bc_issqn] [decimal](18, 4) NULL,
	[aliq_issqn] [decimal](18, 4) NULL,
	[vl_issqn] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c172_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c173](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[lote_med] [varchar](255) NULL,
	[qtd_item] [decimal](18, 4) NULL,
	[dt_fab] [datetime] NULL,
	[dt_val] [datetime] NULL,
	[ind_med] [varchar](1) NULL,
	[tp_prod] [varchar](1) NULL,
	[vl_tab_max] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c173_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c174](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_arm] [varchar](1) NULL,
	[num_arm] [varchar](255) NULL,
	[descr_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c174_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c175](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_veic_oper] [varchar](1) NULL,
	[cnpj] [varchar](14) NULL,
	[uf] [varchar](2) NULL,
	[chassi_veic] [varchar](17) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c175_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c176](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod_ult_e] [varchar](2) NULL,
	[num_doc_ult_e] [varchar](9) NULL,
	[ser_ult_e] [varchar](3) NULL,
	[dt_ult_e] [datetime] NULL,
	[cod_part_ult_e] [varchar](60) NULL,
	[quant_ult_e] [decimal](18, 4) NULL,
	[vl_unit_ult_e] [decimal](18, 4) NULL,
	[vl_unit_bc_st] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c176_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c177](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_selo_ipi] [varchar](6) NULL,
	[qt_selo_ipi] [varchar](12) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c177_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c178](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cl_enq] [varchar](5) NULL,
	[vl_unid] [decimal](18, 4) NULL,
	[quant_pad] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c178_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c179](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[bc_st_orig_dest] [decimal](18, 4) NULL,
	[icms_st_rep] [decimal](18, 4) NULL,
	[icms_st_compl] [decimal](18, 4) NULL,
	[bc_ret] [decimal](18, 4) NULL,
	[icms_ret] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c179_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c190](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[vl_ipi] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c190_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c195](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_obs] [varchar](6) NULL,
	[txt_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c195_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c197](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_aj] [varchar](10) NULL,
	[descr_compl_aj] [varchar](255) NULL,
	[cod_item] [varchar](60) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_outros] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c197_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c300](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc_ini] [int] NULL,
	[num_doc_fin] [int] NULL,
	[dt_doc] [date] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c300_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c310](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_doc_canc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c310_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c320](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c320_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c321](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c321_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c350](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ser] [varchar](3) NULL,
	[sub_ser] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[cnpj_cpf] [varchar](14) NULL,
	[vl_merc] [decimal](18, 4) NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofis] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c350_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c370](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c370_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c390](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c390_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c400](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ecf_mod] [varchar](20) NULL,
	[ecf_fab] [varchar](20) NULL,
	[ecf_cx] [int] NULL,
	[id_pai_pis] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c400_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c405](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_doc] [datetime] NULL,
	[cro] [int] NULL,
	[crz] [int] NULL,
	[num_coo_fin] [int] NULL,
	[gt_fin] [decimal](18, 4) NULL,
	[vl_brt] [decimal](18, 4) NULL,
	[num_coo_ini] [int] NULL,
	[gt_ini] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_canc] [decimal](18, 4) NULL,
	[vl_contab] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c405_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c410](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c410_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c420](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_tot_par] [varchar](7) NULL,
	[vlr_acum_tot] [decimal](18, 4) NULL,
	[nr_tot] [int] NULL,
	[descr_nr_tot] [varchar](100) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c420_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c425](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c425_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c460](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[num_doc] [int] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cpf_cnpj] [varchar](14) NULL,
	[nome_adq] [varchar](60) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c460_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c470](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[qtd_canc] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c470_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c490](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c490_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c495](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[qtd_canc] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_canc] [decimal](18, 4) NULL,
	[vl_acmo] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_isen] [decimal](18, 4) NULL,
	[vl_nt] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c495_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [int] NULL,
	[cod_cons] [varchar](2) NULL,
	[num_doc] [int] NULL,
	[dt_doc] [date] NULL,
	[dt_e_s] [date] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_forn] [decimal](18, 4) NULL,
	[vl_serv_nt] [decimal](18, 4) NULL,
	[vl_terc] [decimal](18, 4) NULL,
	[vl_da] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[cod_inf] [varchar](6) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[tp_ligacao] [int] NULL,
	[cod_grupo_tensao] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c501](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
 CONSTRAINT [reg_c501_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c505](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
 CONSTRAINT [reg_c505_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c510](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [varchar](3) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_class] [varchar](4) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[aliq_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[ind_rec] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c510_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c590](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c590_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c600](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_mun] [varchar](7) NULL,
	[ser] [varchar](4) NULL,
	[sub] [int] NULL,
	[cod_cons] [varchar](2) NULL,
	[qtd_cons] [int] NULL,
	[qtd_canc] [int] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cons] [int] NULL,
	[vl_forn] [decimal](18, 4) NULL,
	[vl_serv_nt] [decimal](18, 4) NULL,
	[vl_terc] [decimal](18, 4) NULL,
	[vl_da] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c600_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c601](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_doc_canc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c601_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c610](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_class] [varchar](4) NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c610_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c690](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c690_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c700](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[nro_ord_ini] [int] NULL,
	[nro_ord_fin] [int] NULL,
	[dt_doc_ini] [datetime] NULL,
	[dt_doc_fin] [datetime] NULL,
	[nom_mest] [varchar](15) NULL,
	[chv_cod_dig] [varchar](32) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c700_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c790](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c790_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c791](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[uf] [varchar](2) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c791_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c800](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[num_cfe] [int] NULL,
	[vl_cfe] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cnpj_cpf] [varchar](14) NULL,
	[nr_sat] [varchar](9) NULL,
	[chv_cfe] [varchar](44) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_merc] [decimal](18, 4) NULL,
	[vl_out_da] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_pis_st] [decimal](18, 4) NULL,
	[vl_cofins_st] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c800_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c850](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c850_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c860](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[nr_sat] [varchar](9) NULL,
	[doc_ini] [int] NULL,
	[doc_fim] [int] NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c860_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c890](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c890_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_c990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_c] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[chv_cte] [varchar](44) NULL,
	[dt_doc] [date] NULL,
	[dt_a_p] [date] NULL,
	[tp_ct_e] [int] NULL,
	[chv_cte_ref] [varchar](44) NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[ind_frt] [varchar](1) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_nt] [decimal](18, 4) NULL,
	[cod_inf] [varchar](60) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d110](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_out] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d110_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d120](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[veic_id] [varchar](7) NULL,
	[uf_id] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d120_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d130](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part_consg] [varchar](60) NULL,
	[cod_part_red] [varchar](60) NULL,
	[ind_frt_red] [varchar](1) NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[veic_id] [varchar](7) NULL,
	[vl_liq_frt] [decimal](18, 4) NULL,
	[vl_sec_cat] [decimal](18, 4) NULL,
	[vl_desp] [decimal](18, 4) NULL,
	[vl_pedg] [decimal](18, 4) NULL,
	[vl_out] [decimal](18, 4) NULL,
	[vl_frt] [decimal](18, 4) NULL,
	[uf_id] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d130_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d140](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part_consg] [varchar](60) NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[ind_veic] [varchar](1) NULL,
	[veic_id] [varchar](255) NULL,
	[ind_nav] [varchar](1) NULL,
	[viagem] [int] NULL,
	[vl_frt_liq] [decimal](18, 4) NULL,
	[vl_desp_port] [decimal](18, 4) NULL,
	[vl_desp_car_desc] [decimal](18, 4) NULL,
	[vl_out] [decimal](18, 4) NULL,
	[vl_frt_brt] [decimal](18, 4) NULL,
	[vl_frt_mm] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d140_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d150](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[veic_id] [varchar](255) NULL,
	[viagem] [varchar](255) NULL,
	[ind_tfa] [varchar](1) NULL,
	[vl_peso_tx] [decimal](18, 4) NULL,
	[vl_tx_terr] [decimal](18, 4) NULL,
	[vl_tx_red] [decimal](18, 4) NULL,
	[vl_out] [decimal](18, 4) NULL,
	[vl_tx_adv] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d150_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d160](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[despacho] [varchar](255) NULL,
	[cnpj_cpf_rem] [varchar](14) NULL,
	[ie_rem] [varchar](14) NULL,
	[cod_mun_ori] [varchar](7) NULL,
	[cnpj_cpf_dest] [varchar](14) NULL,
	[ie_dest] [varchar](14) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d160_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d161](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_carga] [int] NULL,
	[cnpj_cpf_col] [varchar](14) NULL,
	[ie_col] [varchar](14) NULL,
	[cod_mun_col] [varchar](7) NULL,
	[cnpj_cpf_entg] [varchar](14) NULL,
	[ie_entg] [varchar](14) NULL,
	[cod_mun_entg] [varchar](7) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d161_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d162](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[num_doc] [int] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_merc] [decimal](18, 4) NULL,
	[qtd_vol] [int] NULL,
	[peso_brt] [decimal](18, 4) NULL,
	[peso_liq] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d162_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d170](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part_consg] [varchar](60) NULL,
	[cod_part_red] [varchar](60) NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[otm] [varchar](255) NULL,
	[ind_nat_frt] [varchar](1) NULL,
	[vl_liq_frt] [decimal](18, 4) NULL,
	[vl_gris] [decimal](18, 4) NULL,
	[vl_pdg] [decimal](18, 4) NULL,
	[vl_out] [decimal](18, 4) NULL,
	[vl_frt] [decimal](18, 4) NULL,
	[veic_id] [varchar](7) NULL,
	[uf_id] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d170_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d180](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_seq] [varchar](255) NULL,
	[ind_emit] [varchar](1) NULL,
	[cnpj_cpf_emit] [varchar](14) NULL,
	[uf_emit] [varchar](2) NULL,
	[ie_emit] [varchar](14) NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[cnpj_cpf_tom] [varchar](14) NULL,
	[uf_tom] [varchar](2) NULL,
	[ie_tom] [varchar](14) NULL,
	[cod_mun_dest] [varchar](7) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [int] NULL,
	[num_doc] [int] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d180_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d190](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d190_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d300](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc_ini] [int] NULL,
	[num_doc_fin] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_seg] [decimal](18, 4) NULL,
	[vl_out_desp] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cod_cta] [varchar](255) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d300_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d301](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_doc_canc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d301_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d310](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d310_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d350](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ecf_mod] [varchar](20) NULL,
	[ecf_fab] [varchar](20) NULL,
	[ecf_cx] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d350_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d355](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cro] [int] NULL,
	[crz] [int] NULL,
	[num_coo_fin] [int] NULL,
	[gt_fin] [decimal](18, 4) NULL,
	[vl_brt] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d355_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d360](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d360_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d365](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_tot_par] [varchar](7) NULL,
	[vlr_acum_tot] [decimal](18, 4) NULL,
	[nr_tot] [int] NULL,
	[descr_nr_tot] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d365_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d370](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[qtd_bilh] [int] NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d370_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d390](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_issqn] [decimal](18, 4) NULL,
	[aliq_issqn] [decimal](18, 4) NULL,
	[vl_issqn] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d390_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d400](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d400_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d410](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc_ini] [int] NULL,
	[num_doc_fin] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d410_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d411](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_doc_canc] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d411_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d420](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mun_orig] [varchar](7) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d420_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[ind_emit] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[dt_doc] [date] NULL,
	[dt_a_p] [date] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_serv_nt] [decimal](18, 4) NULL,
	[vl_terc] [decimal](18, 4) NULL,
	[vl_da] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cod_inf] [varchar](6) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[tp_assinante] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d510](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_item] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[cod_class] [int] NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[ind_rec] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d510_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d530](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_serv] [varchar](1) NULL,
	[dt_ini_serv] [datetime] NULL,
	[dt_fin_serv] [datetime] NULL,
	[per_fiscal] [int] NULL,
	[cod_area] [varchar](255) NULL,
	[terminal] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d530_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d590](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d590_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d600](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_mun] [varchar](7) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[cod_cons] [int] NULL,
	[qtd_cons] [int] NULL,
	[vl_doc] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[vl_serv] [decimal](18, 4) NULL,
	[vl_serv_nt] [decimal](18, 4) NULL,
	[vl_terc] [decimal](18, 4) NULL,
	[vl_da] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d600_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d610](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_class] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 4) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 4) NULL,
	[vl_desc] [decimal](18, 4) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d610_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d690](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d690_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d695](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[nro_ord_ini] [int] NULL,
	[nro_ord_fin] [int] NULL,
	[dt_doc_ini] [datetime] NULL,
	[dt_doc_fin] [datetime] NULL,
	[nom_mest] [varchar](15) NULL,
	[chv_cod_dig] [varchar](32) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d695_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d696](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 4) NULL,
	[vl_opr] [decimal](18, 4) NULL,
	[vl_bc_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[vl_red_bc] [decimal](18, 4) NULL,
	[cod_obs] [varchar](6) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d696_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d697](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[uf] [varchar](2) NULL,
	[vl_bc_icms_st] [decimal](18, 4) NULL,
	[vl_icms_st] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d697_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_d990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_d] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_d990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_fin] [datetime] NULL,
	[dt_ini] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e110](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_tot_debitos] [decimal](18, 4) NULL,
	[vl_aj_debitos] [decimal](18, 4) NULL,
	[vl_tot_aj_debitos] [decimal](18, 4) NULL,
	[vl_estornos_cred] [decimal](18, 4) NULL,
	[vl_tot_creditos] [decimal](18, 4) NULL,
	[vl_aj_creditos] [decimal](18, 4) NULL,
	[vl_tot_aj_creditos] [decimal](18, 4) NULL,
	[vl_estornos_deb] [decimal](18, 4) NULL,
	[vl_sld_credor_ant] [decimal](18, 4) NULL,
	[vl_sld_apurado] [decimal](18, 4) NULL,
	[vl_tot_ded] [decimal](18, 4) NULL,
	[vl_icms_recolher] [decimal](18, 4) NULL,
	[vl_sld_credor_transportar] [decimal](18, 4) NULL,
	[deb_esp] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e110_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e111](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_aj_apur] [varchar](8) NULL,
	[descr_compl_aj] [varchar](255) NULL,
	[vl_aj_apur] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e111_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e112](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_da] [varchar](255) NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[proc] [varchar](255) NULL,
	[txt_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e112_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e113](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[vl_aj_item] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e113_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e115](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_inf_adic] [varchar](8) NULL,
	[vl_inf_adic] [decimal](18, 4) NULL,
	[descr_compl_aj] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e115_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e116](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_or] [varchar](3) NULL,
	[vl_or] [decimal](18, 4) NULL,
	[dt_vcto] [datetime] NULL,
	[cod_rec] [varchar](255) NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[proc] [varchar](255) NULL,
	[txt_compl] [varchar](255) NULL,
	[mes_ref] [varchar](6) NULL,
	[acao] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e116_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e200](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[uf] [varchar](2) NULL,
	[dt_fin] [datetime] NULL,
	[dt_ini] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e200_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e210](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov_st] [varchar](1) NULL,
	[vl_sld_cred_ant_st] [decimal](18, 4) NULL,
	[vl_devol_st] [decimal](18, 4) NULL,
	[vl_ressarc_st] [decimal](18, 4) NULL,
	[vl_out_cred_st] [decimal](18, 4) NULL,
	[vl_aj_creditos_st] [decimal](18, 4) NULL,
	[vl_retencao_st] [decimal](18, 4) NULL,
	[vl_out_deb_st] [decimal](18, 4) NULL,
	[vl_aj_debitos_st] [decimal](18, 4) NULL,
	[vl_sld_dev_ant_st] [decimal](18, 4) NULL,
	[vl_deducoes_st] [decimal](18, 4) NULL,
	[vl_icms_recol_st] [decimal](18, 4) NULL,
	[vl_sld_cred_st_transportar] [decimal](18, 4) NULL,
	[deb_esp_st] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e210_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e220](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_aj_apur] [varchar](8) NULL,
	[descr_compl_aj] [varchar](255) NULL,
	[vl_aj_apur] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e220_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e230](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_da] [varchar](255) NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[proc] [varchar](255) NULL,
	[txt_compl] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e230_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e240](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_part] [varchar](60) NULL,
	[cod_mod] [varchar](2) NULL,
	[ser] [varchar](4) NULL,
	[sub] [varchar](3) NULL,
	[num_doc] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[vl_aj_item] [decimal](18, 4) NULL,
	[dt_doc] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e240_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e250](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_or] [varchar](3) NULL,
	[vl_or] [decimal](18, 4) NULL,
	[dt_vcto] [datetime] NULL,
	[cod_rec] [varchar](255) NULL,
	[num_proc] [varchar](15) NULL,
	[ind_proc] [varchar](1) NULL,
	[proc] [varchar](255) NULL,
	[txt_compl] [varchar](255) NULL,
	[mes_ref] [varchar](6) NULL,
	[acao] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e250_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_apur] [varchar](1) NULL,
	[dt_fin] [datetime] NULL,
	[dt_ini] [datetime] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e510](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cfop] [varchar](4) NULL,
	[cst_ipi] [varchar](2) NULL,
	[vl_cont_ipi] [decimal](18, 4) NULL,
	[vl_bc_ipi] [decimal](18, 4) NULL,
	[vl_ipi] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e510_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e520](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_sd_ant_ipi] [decimal](18, 4) NULL,
	[vl_deb_ipi] [decimal](18, 4) NULL,
	[vl_cred_ipi] [decimal](18, 4) NULL,
	[vl_od_ipi] [decimal](18, 4) NULL,
	[vl_oc_ipi] [decimal](18, 4) NULL,
	[vl_sc_ipi] [decimal](18, 4) NULL,
	[vl_sd_ipi] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e520_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e530](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [decimal](18, 4) NULL,
	[cod_aj] [varchar](3) NULL,
	[ind_doc] [varchar](1) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e530_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_e990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_e] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_e990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
 CONSTRAINT [reg_f001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f010](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
 CONSTRAINT [reg_f010_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[cod_item] [varchar](60) NULL,
	[dt_oper] [datetime] NULL,
	[vl_oper] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_doc_oper] [varchar](255) NULL,
 CONSTRAINT [reg_f100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f111](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f111_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f120](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ident_bem_imob] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[ind_util_bem_imob] [varchar](1) NULL,
	[vl_oper_dep] [decimal](18, 4) NULL,
	[parc_oper_nao_bc_cred] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_bem_imob] [varchar](255) NULL,
 CONSTRAINT [reg_f120_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f129](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f129_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f130](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[ident_bem_imob] [varchar](2) NULL,
	[ind_orig_cred] [varchar](1) NULL,
	[ind_util_bem_imob] [varchar](1) NULL,
	[mes_oper_aquis] [varchar](6) NULL,
	[vl_oper_aquis] [decimal](18, 4) NULL,
	[parc_oper_nao_bc_cred] [decimal](18, 4) NULL,
	[vl_bc_cred] [decimal](18, 4) NULL,
	[ind_nr_parc] [varchar](1) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[cod_ccus] [varchar](60) NULL,
	[desc_bem_imob] [varchar](255) NULL,
 CONSTRAINT [reg_f130_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f139](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f139_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f150](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[vl_tot_est] [decimal](18, 4) NULL,
	[est_imp] [decimal](18, 4) NULL,
	[vl_bc_est] [decimal](18, 4) NULL,
	[vl_bc_men_est] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_cred_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cred_cofins] [decimal](18, 4) NULL,
	[desc_est] [varchar](100) NULL,
	[cod_cta] [varchar](60) NULL,
 CONSTRAINT [reg_f150_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f200](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_oper] [varchar](2) NULL,
	[unid_imob] [varchar](2) NULL,
	[ident_emp] [varchar](255) NULL,
	[desc_unid_imob] [varchar](90) NULL,
	[num_cont] [varchar](90) NULL,
	[cpf_cnpj_adqu] [varchar](14) NULL,
	[dt_oper] [datetime] NULL,
	[vl_tot_vend] [decimal](18, 4) NULL,
	[vl_rec_acum] [decimal](18, 4) NULL,
	[vl_tot_rec] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[perc_rec_receb] [decimal](18, 4) NULL,
	[ind_nat_emp] [varchar](1) NULL,
	[inf_comp] [varchar](90) NULL,
 CONSTRAINT [reg_f200_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f205](
	[id_pai] [int] NULL,
	[vl_cus_inc_acum_ant] [decimal](18, 4) NULL,
	[vl_cus_inc_per_esc] [decimal](18, 4) NULL,
	[vl_cus_inc_acum] [decimal](18, 4) NULL,
	[vl_exc_bc_cus_inc_acum] [decimal](18, 4) NULL,
	[vl_bc_cus_inc] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_cred_pis_acum] [decimal](18, 4) NULL,
	[vl_cred_pis_desc_ant] [decimal](18, 4) NULL,
	[vl_cred_pis_desc] [decimal](18, 4) NULL,
	[vl_cred_pis_desc_fut] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cred_cofins_acum] [decimal](18, 4) NULL,
	[vl_cred_cofins_desc_ant] [decimal](18, 4) NULL,
	[vl_cred_cofins_desc] [decimal](18, 4) NULL,
	[vl_cred_cofins_desc_fut] [decimal](18, 4) NULL,
	[id] [decimal](18, 4) NULL
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
CREATE TABLE [reg_f210](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_cus_orc] [decimal](18, 4) NULL,
	[vl_exc] [decimal](18, 4) NULL,
	[vl_cus_orc_aju] [decimal](18, 4) NULL,
	[vl_bc_cred] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_cred_pis_util] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cred_cofins_util] [decimal](18, 4) NULL,
 CONSTRAINT [reg_f210_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f211](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f211_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_rec_caixa] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_desc_pis] [decimal](18, 4) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_desc_cofins] [decimal](18, 4) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_mod] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[cod_cta] [varchar](60) NULL,
	[info_compl] [varchar](255) NULL,
 CONSTRAINT [reg_f500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f509](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f509_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f510](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_rec_caixa] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_desc_pis] [decimal](18, 4) NULL,
	[quant_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis_quant] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_desc_cofins] [decimal](18, 4) NULL,
	[quant_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins_quant] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_mod] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[cod_cta] [varchar](60) NULL,
	[info_compl] [varchar](255) NULL,
 CONSTRAINT [reg_f510_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f519](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f519_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f525](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_rec] [decimal](18, 4) NULL,
	[ind_rec] [varchar](2) NULL,
	[cnpj_cpf] [varchar](14) NULL,
	[num_doc] [varchar](60) NULL,
	[cod_item] [varchar](60) NULL,
	[vl_rec_det] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[info_compl] [varchar](255) NULL,
	[cod_cta] [varchar](60) NULL,
 CONSTRAINT [reg_f525_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f550](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_rec_comp] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_desc_pis] [decimal](18, 4) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_desc_cofins] [decimal](18, 4) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_mod] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[cod_cta] [varchar](60) NULL,
	[info_compl] [varchar](255) NULL,
 CONSTRAINT [reg_f550_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f559](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f559_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f560](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_rec_comp] [decimal](18, 4) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_desc_pis] [decimal](18, 4) NULL,
	[quant_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis_quant] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 4) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_desc_cofins] [decimal](18, 4) NULL,
	[quant_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins_quant] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 4) NULL,
	[cod_mod] [varchar](2) NULL,
	[cfop] [varchar](4) NULL,
	[cod_cta] [varchar](60) NULL,
	[info_compl] [varchar](255) NULL,
 CONSTRAINT [reg_f560_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f569](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[num_proc] [varchar](20) NULL,
	[ind_proc] [varchar](1) NULL,
 CONSTRAINT [reg_f569_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f600](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_nat_ret] [varchar](2) NULL,
	[dt_ret] [datetime] NULL,
	[vl_bc_ret] [decimal](18, 4) NULL,
	[vl_ret] [decimal](18, 4) NULL,
	[cod_rec] [varchar](4) NULL,
	[ind_nat_rec] [varchar](1) NULL,
	[cnpj] [varchar](14) NULL,
	[vl_ret_pis] [decimal](18, 4) NULL,
	[vl_ret_cofins] [decimal](18, 4) NULL,
	[ind_dec] [varchar](1) NULL,
 CONSTRAINT [reg_f600_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f700](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_ori_ded] [varchar](2) NULL,
	[ind_nat_ded] [varchar](1) NULL,
	[vl_ded_pis] [decimal](18, 4) NULL,
	[vl_ded_cofins] [decimal](18, 4) NULL,
	[vl_bc_oper] [decimal](18, 4) NULL,
	[cnpj] [varchar](14) NULL,
	[inf_comp] [varchar](90) NULL,
 CONSTRAINT [reg_f700_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f800](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_nat_even] [varchar](2) NULL,
	[dt_even] [datetime] NULL,
	[cnpj_suced] [varchar](14) NULL,
	[pa_cont_cred] [varchar](6) NULL,
	[cod_cred] [varchar](3) NULL,
	[vl_cred_pis] [decimal](18, 4) NULL,
	[vl_cred_cofins] [decimal](18, 4) NULL,
	[per_cred_cis] [decimal](18, 4) NULL,
 CONSTRAINT [reg_f800_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_f990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_f] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_f990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_g001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_g001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_g990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_g] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_g990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_h001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_h001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_h005](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[dt_inv] [datetime] NULL,
	[vl_inv] [decimal](18, 4) NULL,
	[mot_inv] [varchar](2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_h005_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_h010](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cod_item] [varchar](60) NULL,
	[unid] [varchar](6) NULL,
	[qtd] [decimal](18, 3) NULL,
	[vl_unit] [decimal](18, 6) NULL,
	[vl_item] [decimal](18, 2) NULL,
	[ind_prop] [varchar](1) NULL,
	[cod_part] [varchar](60) NULL,
	[txt_compl] [varchar](255) NULL,
	[cod_cta] [varchar](255) NULL,
	[vl_item_ir] [decimal](18, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_h010_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_h020](
	[id] [int] NOT NULL,
	[id_pai] [int] NOT NULL,
	[cst_icms] [varchar](3) NULL,
	[bl_icms] [decimal](18, 4) NULL,
	[vl_icms] [decimal](18, 4) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_h020_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_h990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_h] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_h990_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m001](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_mov] [varchar](1) NULL,
 CONSTRAINT [reg_m001_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m100](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_cred] [varchar](3) NULL,
	[ind_cred_ori] [varchar](1) NULL,
	[vl_bc_cred] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[quant_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis_quant] [decimal](18, 4) NULL,
	[vl_cred] [decimal](18, 4) NULL,
	[vl_ajus_acres] [decimal](18, 4) NULL,
	[vl_ajus_reduc] [decimal](18, 4) NULL,
	[vl_cred_dif] [decimal](18, 4) NULL,
	[vl_cred_disp] [decimal](18, 4) NULL,
	[ind_desc_cred] [varchar](1) NULL,
	[vl_cred_desc] [decimal](18, 4) NULL,
	[sld_cred] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m100_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m105](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_bc_pis_tot] [decimal](18, 4) NULL,
	[vl_bc_pis_cum] [decimal](18, 4) NULL,
	[vl_bc_pis_nc] [decimal](18, 4) NULL,
	[vl_bc_pis] [decimal](18, 4) NULL,
	[quant_bc_pis_tot] [decimal](18, 4) NULL,
	[quant_bc_pis] [decimal](18, 4) NULL,
	[desc_cred] [varchar](60) NULL,
 CONSTRAINT [reg_m105_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m110](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [decimal](18, 4) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
 CONSTRAINT [reg_m110_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m200](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_tot_cont_nc_per] [decimal](18, 4) NULL,
	[vl_tot_cred_desc] [decimal](18, 4) NULL,
	[vl_tot_cred_desc_ant] [decimal](18, 4) NULL,
	[vl_tot_cont_nc_dev] [decimal](18, 4) NULL,
	[vl_ret_nc] [decimal](18, 4) NULL,
	[vl_out_ded_nc] [decimal](18, 4) NULL,
	[vl_cont_nc_rec] [decimal](18, 4) NULL,
	[vl_tot_cont_cum_per] [decimal](18, 4) NULL,
	[vl_ret_cum] [decimal](18, 4) NULL,
	[vl_out_ded_cum] [decimal](18, 4) NULL,
	[vl_cont_cum_rec] [decimal](18, 4) NULL,
	[vl_tot_cont_rec] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m200_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [reg_m210](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_rec_brt] [decimal](18, 4) NULL,
	[vl_bc_cont] [decimal](18, 4) NULL,
	[aliq_pis] [decimal](18, 4) NULL,
	[quant_bc_pis] [decimal](18, 4) NULL,
	[aliq_pis_quant] [decimal](18, 4) NULL,
	[vl_cont_apur] [decimal](18, 4) NULL,
	[vl_ajus_acres] [decimal](18, 4) NULL,
	[vl_ajus_reduc] [decimal](18, 4) NULL,
	[vl_cont_difer] [decimal](18, 4) NULL,
	[vl_cont_difer_ant] [decimal](18, 4) NULL,
	[vl_cont_per] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m210_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m211](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_tip_coop] [varchar](2) NULL,
	[vl_bc_cont_ant_exc_coop] [decimal](18, 4) NULL,
	[vl_exc_coop_ger] [decimal](18, 4) NULL,
	[vl_exc_esp_coop] [decimal](18, 4) NULL,
	[vl_bc_cont] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m211_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m220](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [decimal](18, 4) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
 CONSTRAINT [reg_m220_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m230](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[vl_vend] [decimal](18, 4) NULL,
	[vl_nao_receb] [decimal](18, 4) NULL,
	[vl_cont_dif] [decimal](18, 4) NULL,
	[vl_cred_dif] [decimal](18, 4) NULL,
	[cod_cred] [varchar](3) NULL,
 CONSTRAINT [reg_m230_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m300](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_cont_apur_difer] [decimal](18, 4) NULL,
	[nat_cred_desc] [varchar](2) NULL,
	[vl_cred_desc_difer] [decimal](18, 4) NULL,
	[vl_cont_difer_ant] [decimal](18, 4) NULL,
	[per_apur] [varchar](6) NULL,
	[dt_receb] [datetime] NULL,
 CONSTRAINT [reg_m300_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m350](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_tot_fol] [decimal](18, 4) NULL,
	[vl_exc_bc] [decimal](18, 4) NULL,
	[vl_tot_bc] [decimal](18, 4) NULL,
	[aliq_pis_fol] [decimal](18, 4) NULL,
	[vl_tot_cont_fol] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m350_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [reg_m400](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_tot_rec] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
 CONSTRAINT [reg_m400_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m410](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_rec] [varchar](3) NULL,
	[vl_rec] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
 CONSTRAINT [reg_m410_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m500](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_cred] [varchar](3) NULL,
	[ind_cred_ori] [varchar](1) NULL,
	[vl_bc_cred] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[quant_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins_quant] [decimal](18, 4) NULL,
	[vl_cred] [decimal](18, 4) NULL,
	[vl_ajus_acres] [decimal](18, 4) NULL,
	[vl_ajus_reduc] [decimal](18, 4) NULL,
	[vl_cred_dif] [decimal](18, 4) NULL,
	[vl_cred_disp] [decimal](18, 4) NULL,
	[ind_desc_cred] [varchar](1) NULL,
	[vl_cred_desc] [decimal](18, 4) NULL,
	[sld_cred] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m500_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m505](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_bc_cred] [varchar](2) NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_bc_cofins_tot] [decimal](18, 4) NULL,
	[vl_bc_cofins_cum] [decimal](18, 4) NULL,
	[vl_bc_cofins_nc] [decimal](18, 4) NULL,
	[vl_bc_cofins] [decimal](18, 4) NULL,
	[quant_bc_cofins_tot] [decimal](18, 4) NULL,
	[quant_bc_cofins] [decimal](18, 4) NULL,
	[desc_cred] [varchar](60) NULL,
 CONSTRAINT [reg_m505_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m510](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [decimal](18, 4) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
 CONSTRAINT [reg_m510_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m600](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[vl_tot_cont_nc_per] [decimal](18, 4) NULL,
	[vl_tot_cred_desc] [decimal](18, 4) NULL,
	[vl_tot_cred_desc_ant] [decimal](18, 4) NULL,
	[vl_tot_cont_nc_dev] [decimal](18, 4) NULL,
	[vl_ret_nc] [decimal](18, 4) NULL,
	[vl_out_ded_nc] [decimal](18, 4) NULL,
	[vl_cont_nc_rec] [decimal](18, 4) NULL,
	[vl_tot_cont_cum_per] [decimal](18, 4) NULL,
	[vl_ret_cum] [decimal](18, 4) NULL,
	[vl_out_ded_cum] [decimal](18, 4) NULL,
	[vl_cont_cum_rec] [decimal](18, 4) NULL,
	[vl_tot_cont_rec] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m600_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [reg_m610](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_rec_brt] [decimal](18, 4) NULL,
	[vl_bc_cont] [decimal](18, 4) NULL,
	[aliq_cofins] [decimal](18, 4) NULL,
	[quant_bc_cofins] [decimal](18, 4) NULL,
	[aliq_cofins_quant] [decimal](18, 4) NULL,
	[vl_cont_apur] [decimal](18, 4) NULL,
	[vl_ajus_acres] [decimal](18, 4) NULL,
	[vl_ajus_reduc] [decimal](18, 4) NULL,
	[vl_cont_difer] [decimal](18, 4) NULL,
	[vl_cont_difer_ant] [decimal](18, 4) NULL,
	[vl_cont_per] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m610_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m611](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_tip_coop] [varchar](2) NULL,
	[vl_bc_cont_ant_exc_coop] [decimal](18, 4) NULL,
	[vl_exc_coop_ger] [decimal](18, 4) NULL,
	[vl_exc_esp_coop] [decimal](18, 4) NULL,
	[vl_bc_cont] [decimal](18, 4) NULL,
 CONSTRAINT [reg_m611_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m620](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[ind_aj] [varchar](1) NULL,
	[vl_aj] [decimal](18, 4) NULL,
	[cod_aj] [varchar](2) NULL,
	[num_doc] [varchar](255) NULL,
	[descr_aj] [varchar](255) NULL,
	[dt_ref] [datetime] NULL,
 CONSTRAINT [reg_m620_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m630](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cnpj] [varchar](14) NULL,
	[vl_vend] [decimal](18, 4) NULL,
	[vl_nao_receb] [decimal](18, 4) NULL,
	[vl_cont_dif] [decimal](18, 4) NULL,
	[vl_cred_dif] [decimal](18, 4) NULL,
	[cod_cred] [varchar](3) NULL,
 CONSTRAINT [reg_m630_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m700](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_cont] [varchar](2) NULL,
	[vl_cont_apur_difer] [decimal](18, 4) NULL,
	[nat_bc_cred_desc] [varchar](2) NULL,
	[vl_cred_desc_difer] [decimal](18, 4) NULL,
	[vl_cont_difer_ant] [decimal](18, 4) NULL,
	[per_apur] [varchar](6) NULL,
	[dt_receb] [datetime] NULL,
 CONSTRAINT [reg_m700_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m800](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_tot_rec] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
 CONSTRAINT [reg_m800_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m810](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[nat_rec] [varchar](3) NULL,
	[vl_rec] [decimal](18, 4) NULL,
	[cod_cta] [varchar](60) NULL,
	[desc_compl] [varchar](255) NULL,
 CONSTRAINT [reg_m810_pkey] PRIMARY KEY CLUSTERED
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
CREATE TABLE [reg_m990](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[qtd_lin_m] [varchar](255) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_m990_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO

CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0000_id] ON [reg_0000]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0000_id_pai] ON [reg_0000]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0001_id] ON [reg_0001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0001_id_pai] ON [reg_0001]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0005_id] ON [reg_0005]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0005_id_pai] ON [reg_0005]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0015_id] ON [reg_0015]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0015_id_pai] ON [reg_0015]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0100_id] ON [reg_0100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0100_id_pai] ON [reg_0100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0150_cod_part] ON [reg_0150]
(
	[cod_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0150_id] ON [reg_0150]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0175_id] ON [reg_0175]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0175_id_pai] ON [reg_0175]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0190_id] ON [reg_0190]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0190_id_pai] ON [reg_0190]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0190_unid] ON [reg_0190]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0200_cod_item] ON [reg_0200]
(
	[cod_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0200_efd] ON [reg_0200]
(
	[efd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0200_id] ON [reg_0200]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0200_id_pai] ON [reg_0200]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0200_pis] ON [reg_0200]
(
	[pis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0200_unid_inv] ON [reg_0200]
(
	[unid_inv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0205_id] ON [reg_0205]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0205_id_pai] ON [reg_0205]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0206_id] ON [reg_0206]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0206_id_pai] ON [reg_0206]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0220_id] ON [reg_0220]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0220_id_pai] ON [reg_0220]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0300_id] ON [reg_0300]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0300_id_pai] ON [reg_0300]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0300_ident_merc] ON [reg_0300]
(
	[ident_merc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0305_id] ON [reg_0305]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0305_id_pai] ON [reg_0305]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_0400_cod_nat] ON [reg_0400]
(
	[cod_nat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0400_id] ON [reg_0400]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0400_id_pai] ON [reg_0400]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0450_id] ON [reg_0450]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0450_id_pai] ON [reg_0450]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0460_id] ON [reg_0460]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0460_id_pai] ON [reg_0460]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0500_id] ON [reg_0500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0500_id_pai] ON [reg_0500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0600_id] ON [reg_0600]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_0600_id_pai] ON [reg_0600]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0990_id] ON [reg_0990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1001_id] ON [reg_1001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1010_id] ON [reg_1010]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1010_id_pai] ON [reg_1010]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1100_id] ON [reg_1100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1100_id_pai] ON [reg_1100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1105_id] ON [reg_1105]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1105_id_pai] ON [reg_1105]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1110_id] ON [reg_1110]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1110_id_pai] ON [reg_1110]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_1110_unid] ON [reg_1110]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1200_id] ON [reg_1200]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1200_id_pai] ON [reg_1200]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1210_id] ON [reg_1210]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1210_id_pai] ON [reg_1210]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1300_id] ON [reg_1300]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1300_id_pai] ON [reg_1300]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1310_id] ON [reg_1310]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1310_id_pai] ON [reg_1310]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1320_id] ON [reg_1320]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1320_id_pai] ON [reg_1320]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1350_id] ON [reg_1350]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1350_id_pai] ON [reg_1350]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1360_id] ON [reg_1360]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1360_id_pai] ON [reg_1360]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1370_id] ON [reg_1370]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1370_id_pai] ON [reg_1370]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_1390_cod_prod] ON [reg_1390]
(
	[cod_prod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1390_id] ON [reg_1390]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1390_id_pai] ON [reg_1390]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1391_ent_anid_hid] ON [reg_1391]
(
	[ent_anid_hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1391_id] ON [reg_1391]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1391_id_pai] ON [reg_1391]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1391_qtd_moid] ON [reg_1391]
(
	[qtd_moid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1391_sai_ani_hid] ON [reg_1391]
(
	[sai_ani_hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1400_id] ON [reg_1400]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1400_id_pai] ON [reg_1400]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1500_id] ON [reg_1500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1500_id_pai] ON [reg_1500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1510_id] ON [reg_1510]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1510_id_pai] ON [reg_1510]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_1510_unid] ON [reg_1510]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1600_id] ON [reg_1600]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1600_id_pai] ON [reg_1600]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1700_id] ON [reg_1700]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1700_id_pai] ON [reg_1700]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1710_id] ON [reg_1710]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1710_id_pai] ON [reg_1710]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1800_id] ON [reg_1800]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1800_id_pai] ON [reg_1800]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1900_id] ON [reg_1900]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1900_id_pai] ON [reg_1900]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1910_id] ON [reg_1910]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1910_id_pai] ON [reg_1910]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1920_id] ON [reg_1920]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1920_id_pai] ON [reg_1920]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1921_id] ON [reg_1921]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1921_id_pai] ON [reg_1921]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1922_id] ON [reg_1922]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1922_id_pai] ON [reg_1922]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1923_id] ON [reg_1923]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1923_id_pai] ON [reg_1923]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1925_id] ON [reg_1925]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1925_id_pai] ON [reg_1925]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1926_id] ON [reg_1926]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_1926_id_pai] ON [reg_1926]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_1990_id] ON [reg_1990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_9001_id] ON [reg_9001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_9990_id] ON [reg_9990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_9999_id] ON [reg_9999]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a001_id] ON [reg_a001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a001_id_pai] ON [reg_a001]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_a010_cnpj] ON [reg_a010]
(
	[cnpj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a010_id] ON [reg_a010]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a010_id_pai] ON [reg_a010]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a100_id] ON [reg_a100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a100_id_pai] ON [reg_a100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a110_id] ON [reg_a110]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a110_id_pai] ON [reg_a110]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a111_id] ON [reg_a111]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a111_id_pai] ON [reg_a111]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a120_id] ON [reg_a120]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a120_id_pai] ON [reg_a120]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_a170_cod_item] ON [reg_a170]
(
	[cod_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a170_id] ON [reg_a170]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a170_id_pai] ON [reg_a170]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_a990_id] ON [reg_a990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_a990_id_pai] ON [reg_a990]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c001_id] ON [reg_c001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c100_cod_part] ON [reg_c100]
(
	[cod_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c100_cod_sit] ON [reg_c100]
(
	[cod_sit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c100_id] ON [reg_c100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c100_id_pai] ON [reg_c100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c100_ind_oper] ON [reg_c100]
(
	[ind_oper] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c100_num_doc] ON [reg_c100]
(
	[num_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c105_id] ON [reg_c105]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c105_id_pai] ON [reg_c105]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c110_id] ON [reg_c110]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c110_id_pai] ON [reg_c110]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c111_id] ON [reg_c111]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c111_id_pai] ON [reg_c111]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c112_id] ON [reg_c112]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c112_id_pai] ON [reg_c112]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c113_id] ON [reg_c113]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c113_id_pai] ON [reg_c113]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c114_id] ON [reg_c114]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c114_id_pai] ON [reg_c114]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c115_id] ON [reg_c115]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c115_id_pai] ON [reg_c115]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c116_id] ON [reg_c116]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c116_id_pai] ON [reg_c116]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c120_id] ON [reg_c120]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c120_id_pai] ON [reg_c120]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c130_id] ON [reg_c130]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c130_id_pai] ON [reg_c130]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c140_id] ON [reg_c140]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c140_id_pai] ON [reg_c140]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c141_id] ON [reg_c141]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c141_id_pai] ON [reg_c141]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c160_id] ON [reg_c160]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c160_id_pai] ON [reg_c160]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c160_uf_id] ON [reg_c160]
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c160_veic_id] ON [reg_c160]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c165_id] ON [reg_c165]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c165_id_pai] ON [reg_c165]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c165_uf_id] ON [reg_c165]
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c165_veic_id] ON [reg_c165]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c170_aliq_icms] ON [reg_c170]
(
	[aliq_icms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c170_cfop] ON [reg_c170]
(
	[cfop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c170_cod_item] ON [reg_c170]
(
	[cod_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c170_cst_icms] ON [reg_c170]
(
	[cst_icms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c170_id] ON [reg_c170]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c170_id_pai] ON [reg_c170]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c170_unid] ON [reg_c170]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c171_id] ON [reg_c171]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c171_id_pai] ON [reg_c171]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c172_id] ON [reg_c172]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c172_id_pai] ON [reg_c172]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c173_id] ON [reg_c173]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c173_id_pai] ON [reg_c173]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c174_id] ON [reg_c174]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c174_id_pai] ON [reg_c174]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c175_id] ON [reg_c175]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c175_id_pai] ON [reg_c175]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c176_id] ON [reg_c176]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c176_id_pai] ON [reg_c176]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c177_id] ON [reg_c177]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c177_id_pai] ON [reg_c177]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c178_id] ON [reg_c178]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c178_id_pai] ON [reg_c178]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c178_vl_unid] ON [reg_c178]
(
	[vl_unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c179_id] ON [reg_c179]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c179_id_pai] ON [reg_c179]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c190_id] ON [reg_c190]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c190_id_pai] ON [reg_c190]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c195_id] ON [reg_c195]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c195_id_pai] ON [reg_c195]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c197_id] ON [reg_c197]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c197_id_pai] ON [reg_c197]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c300_id] ON [reg_c300]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c300_id_pai] ON [reg_c300]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c310_id] ON [reg_c310]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c310_id_pai] ON [reg_c310]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c320_id] ON [reg_c320]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c320_id_pai] ON [reg_c320]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c321_id] ON [reg_c321]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c321_id_pai] ON [reg_c321]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c321_unid] ON [reg_c321]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c350_id] ON [reg_c350]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c350_id_pai] ON [reg_c350]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c370_id] ON [reg_c370]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c370_id_pai] ON [reg_c370]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c370_unid] ON [reg_c370]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c390_id] ON [reg_c390]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c390_id_pai] ON [reg_c390]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c400_id] ON [reg_c400]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c400_id_pai] ON [reg_c400]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c400_id_pai_pis] ON [reg_c400]
(
	[id_pai_pis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_c405_id_pai] ON [reg_c405]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c410_id] ON [reg_c410]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c420_cod_tot_par] ON [reg_c420]
(
	[cod_tot_par] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c420_id] ON [reg_c420]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c420_id_pai] ON [reg_c420]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c425_id] ON [reg_c425]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c425_id_pai] ON [reg_c425]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c460_id] ON [reg_c460]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c460_id_pai] ON [reg_c460]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c470_id] ON [reg_c470]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c470_id_pai] ON [reg_c470]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c490_id] ON [reg_c490]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c490_id_pai] ON [reg_c490]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c495_id] ON [reg_c495]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c495_id_pai] ON [reg_c495]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c495_unid] ON [reg_c495]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c500_id] ON [reg_c500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c500_id_pai] ON [reg_c500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_c501_id] ON [reg_c501]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_c501_id_pai] ON [reg_c501]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_c505_id] ON [reg_c505]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_c505_id_pai] ON [reg_c505]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c510_id] ON [reg_c510]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c510_id_pai] ON [reg_c510]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c510_unid] ON [reg_c510]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c590_id] ON [reg_c590]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c590_id_pai] ON [reg_c590]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c600_id] ON [reg_c600]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c600_id_pai] ON [reg_c600]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c601_id] ON [reg_c601]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c601_id_pai] ON [reg_c601]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c610_id] ON [reg_c610]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c610_id_pai] ON [reg_c610]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_c610_unid] ON [reg_c610]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c690_id] ON [reg_c690]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c690_id_pai] ON [reg_c690]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c700_id] ON [reg_c700]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c700_id_pai] ON [reg_c700]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c790_id] ON [reg_c790]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c790_id_pai] ON [reg_c790]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c791_id] ON [reg_c791]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c791_id_pai] ON [reg_c791]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c800_id] ON [reg_c800]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c800_id_pai] ON [reg_c800]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c850_id] ON [reg_c850]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c850_id_pai] ON [reg_c850]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c860_id] ON [reg_c860]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c860_id_pai] ON [reg_c860]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c890_id] ON [reg_c890]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_c890_id_pai] ON [reg_c890]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c990_id] ON [reg_c990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d001_id] ON [reg_d001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d100_id] ON [reg_d100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d100_id_pai] ON [reg_d100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d110_id] ON [reg_d110]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d110_id_pai] ON [reg_d110]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d120_id] ON [reg_d120]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d120_id_pai] ON [reg_d120]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d120_uf_id] ON [reg_d120]
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d120_veic_id] ON [reg_d120]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d130_id] ON [reg_d130]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d130_id_pai] ON [reg_d130]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d130_uf_id] ON [reg_d130]
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d130_veic_id] ON [reg_d130]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d140_id] ON [reg_d140]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d140_id_pai] ON [reg_d140]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d140_veic_id] ON [reg_d140]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d150_id] ON [reg_d150]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d150_id_pai] ON [reg_d150]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d150_veic_id] ON [reg_d150]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d160_id] ON [reg_d160]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d160_id_pai] ON [reg_d160]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d161_id] ON [reg_d161]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d161_id_pai] ON [reg_d161]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d162_id] ON [reg_d162]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d162_id_pai] ON [reg_d162]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d170_id] ON [reg_d170]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d170_id_pai] ON [reg_d170]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d170_uf_id] ON [reg_d170]
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d170_veic_id] ON [reg_d170]
(
	[veic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d180_id] ON [reg_d180]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d180_id_pai] ON [reg_d180]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d190_id] ON [reg_d190]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d190_id_pai] ON [reg_d190]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d300_id] ON [reg_d300]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d300_id_pai] ON [reg_d300]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d301_id] ON [reg_d301]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d301_id_pai] ON [reg_d301]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d310_id] ON [reg_d310]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d310_id_pai] ON [reg_d310]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d350_id] ON [reg_d350]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d350_id_pai] ON [reg_d350]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d355_id] ON [reg_d355]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d355_id_pai] ON [reg_d355]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d360_id] ON [reg_d360]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d360_id_pai] ON [reg_d360]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d365_id] ON [reg_d365]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d365_id_pai] ON [reg_d365]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d370_id] ON [reg_d370]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d370_id_pai] ON [reg_d370]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d390_id] ON [reg_d390]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d390_id_pai] ON [reg_d390]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d400_id] ON [reg_d400]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d400_id_pai] ON [reg_d400]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d410_id] ON [reg_d410]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d410_id_pai] ON [reg_d410]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d411_id] ON [reg_d411]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d411_id_pai] ON [reg_d411]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d420_id] ON [reg_d420]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d420_id_pai] ON [reg_d420]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d500_id] ON [reg_d500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d500_id_pai] ON [reg_d500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d510_id] ON [reg_d510]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d510_id_pai] ON [reg_d510]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d510_unid] ON [reg_d510]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d530_id] ON [reg_d530]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d530_id_pai] ON [reg_d530]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d590_id] ON [reg_d590]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d590_id_pai] ON [reg_d590]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d600_id] ON [reg_d600]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d600_id_pai] ON [reg_d600]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d610_id] ON [reg_d610]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d610_id_pai] ON [reg_d610]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_d610_unid] ON [reg_d610]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d690_id] ON [reg_d690]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d690_id_pai] ON [reg_d690]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d695_id] ON [reg_d695]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d695_id_pai] ON [reg_d695]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d696_id] ON [reg_d696]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d696_id_pai] ON [reg_d696]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d697_id] ON [reg_d697]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_d697_id_pai] ON [reg_d697]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_d990_id] ON [reg_d990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e001_id] ON [reg_e001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e100_id] ON [reg_e100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e100_id_pai] ON [reg_e100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e110_id] ON [reg_e110]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e110_id_pai] ON [reg_e110]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e111_id] ON [reg_e111]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e111_id_pai] ON [reg_e111]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e112_id] ON [reg_e112]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e112_id_pai] ON [reg_e112]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e113_id] ON [reg_e113]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e113_id_pai] ON [reg_e113]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e115_id] ON [reg_e115]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e115_id_pai] ON [reg_e115]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e116_id] ON [reg_e116]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e116_id_pai] ON [reg_e116]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e200_id] ON [reg_e200]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e200_id_pai] ON [reg_e200]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e210_id] ON [reg_e210]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e210_id_pai] ON [reg_e210]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e220_id] ON [reg_e220]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e220_id_pai] ON [reg_e220]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e230_id] ON [reg_e230]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e230_id_pai] ON [reg_e230]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e240_id] ON [reg_e240]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e240_id_pai] ON [reg_e240]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e250_id] ON [reg_e250]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e250_id_pai] ON [reg_e250]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e500_id] ON [reg_e500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e500_id_pai] ON [reg_e500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e510_id] ON [reg_e510]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e510_id_pai] ON [reg_e510]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e520_id] ON [reg_e520]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e520_id_pai] ON [reg_e520]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e530_id] ON [reg_e530]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_e530_id_pai] ON [reg_e530]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_e990_id] ON [reg_e990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f001_id] ON [reg_f001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f001_id_pai] ON [reg_f001]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_f010_cnpj] ON [reg_f010]
(
	[cnpj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f010_id] ON [reg_f010]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f010_id_pai] ON [reg_f010]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f100_id] ON [reg_f100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f100_id_pai] ON [reg_f100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f111_id] ON [reg_f111]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f111_id_pai] ON [reg_f111]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f120_id] ON [reg_f120]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f120_id_pai] ON [reg_f120]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_f120_ident_bem_imob] ON [reg_f120]
(
	[ident_bem_imob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f129_id] ON [reg_f129]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f129_id_pai] ON [reg_f129]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f130_id] ON [reg_f130]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f130_id_pai] ON [reg_f130]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_f130_ident_bem_imob] ON [reg_f130]
(
	[ident_bem_imob] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f139_id] ON [reg_f139]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f139_id_pai] ON [reg_f139]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f150_id] ON [reg_f150]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f150_id_pai] ON [reg_f150]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f200_id] ON [reg_f200]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f200_id_pai] ON [reg_f200]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [idx_reg_f200_ident_emp] ON [reg_f200]
(
	[ident_emp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f205_id_pai] ON [reg_f205]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f210_id] ON [reg_f210]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f210_id_pai] ON [reg_f210]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f211_id] ON [reg_f211]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f211_id_pai] ON [reg_f211]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f500_id] ON [reg_f500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f500_id_pai] ON [reg_f500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f509_id] ON [reg_f509]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f509_id_pai] ON [reg_f509]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f510_id] ON [reg_f510]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f510_id_pai] ON [reg_f510]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f519_id] ON [reg_f519]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f519_id_pai] ON [reg_f519]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f525_id] ON [reg_f525]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f525_id_pai] ON [reg_f525]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f550_id] ON [reg_f550]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f550_id_pai] ON [reg_f550]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f559_id] ON [reg_f559]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f559_id_pai] ON [reg_f559]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f560_id] ON [reg_f560]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f560_id_pai] ON [reg_f560]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f569_id] ON [reg_f569]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f569_id_pai] ON [reg_f569]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f600_id] ON [reg_f600]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f600_id_pai] ON [reg_f600]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f700_id] ON [reg_f700]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f700_id_pai] ON [reg_f700]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f800_id] ON [reg_f800]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f800_id_pai] ON [reg_f800]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_f990_id] ON [reg_f990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_f990_id_pai] ON [reg_f990]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_g001_id] ON [reg_g001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_g990_id] ON [reg_g990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_h001_id] ON [reg_h001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [reg_h005_dbo_idx_chave_duplicidade] ON [reg_h005]
(
	[dt_inv] ASC,
	[mot_inv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_h005_dbo_idx_id_pai] ON [reg_h005]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [reg_h010_dbo_idx_chave_duplicidade] ON [reg_h010]
(
	[cod_item] ASC,
	[ind_prop] ASC,
	[cod_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [reg_h010_dbo_idx_cod_part] ON [reg_h010]
(
	[cod_part] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_h010_dbo_idx_id_pai] ON [reg_h010]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
CREATE NONCLUSTERED INDEX [reg_h010_dbo_idx_unid] ON [reg_h010]
(
	[unid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [reg_h020_dbo_idx_id_pai] ON [reg_h020]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_h990_id] ON [reg_h990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m001_id] ON [reg_m001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m001_id_pai] ON [reg_m001]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m100_id] ON [reg_m100]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m100_id_pai] ON [reg_m100]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m105_id] ON [reg_m105]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m105_id_pai] ON [reg_m105]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m110_id] ON [reg_m110]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m110_id_pai] ON [reg_m110]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m200_id] ON [reg_m200]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m200_id_pai] ON [reg_m200]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m210_id] ON [reg_m210]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m210_id_pai] ON [reg_m210]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m211_id] ON [reg_m211]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m211_id_pai] ON [reg_m211]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m220_id] ON [reg_m220]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m220_id_pai] ON [reg_m220]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m230_id] ON [reg_m230]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m230_id_pai] ON [reg_m230]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m300_id] ON [reg_m300]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m300_id_pai] ON [reg_m300]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m350_id] ON [reg_m350]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m350_id_pai] ON [reg_m350]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m400_id] ON [reg_m400]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m400_id_pai] ON [reg_m400]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m410_id] ON [reg_m410]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m410_id_pai] ON [reg_m410]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m500_id] ON [reg_m500]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m500_id_pai] ON [reg_m500]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m505_id] ON [reg_m505]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m505_id_pai] ON [reg_m505]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m510_id] ON [reg_m510]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m510_id_pai] ON [reg_m510]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m600_id] ON [reg_m600]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m600_id_pai] ON [reg_m600]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m610_id] ON [reg_m610]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m610_id_pai] ON [reg_m610]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m611_id] ON [reg_m611]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m611_id_pai] ON [reg_m611]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m620_id] ON [reg_m620]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m620_id_pai] ON [reg_m620]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m630_id] ON [reg_m630]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m630_id_pai] ON [reg_m630]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m700_id] ON [reg_m700]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m700_id_pai] ON [reg_m700]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m800_id] ON [reg_m800]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m800_id_pai] ON [reg_m800]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m810_id] ON [reg_m810]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m810_id_pai] ON [reg_m810]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_m990_id] ON [reg_m990]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [idx_reg_m990_id_pai] ON [reg_m990]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [reg_0000] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0000] ADD  DEFAULT ('004') FOR [cod_ver]
GO
ALTER TABLE [reg_0000] ADD  DEFAULT ('0') FOR [cod_fin]
GO
ALTER TABLE [reg_0001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0005] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0015] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0150] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0150] ADD  DEFAULT ((0)) FOR [cod_pais]
GO
ALTER TABLE [reg_0150] ADD  DEFAULT ('N''N') FOR [efd]
GO
ALTER TABLE [reg_0150] ADD  DEFAULT ('N') FOR [pis]
GO
ALTER TABLE [reg_0175] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0190] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0200] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0200] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_0205] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0206] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0220] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0220] ADD  DEFAULT ((0)) FOR [fat_conv]
GO
ALTER TABLE [reg_0300] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0300] ADD  DEFAULT ((0)) FOR [nr_parc]
GO
ALTER TABLE [reg_0305] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0305] ADD  DEFAULT ((0)) FOR [vida_util]
GO
ALTER TABLE [reg_0400] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0400] ADD  DEFAULT ('N') FOR [pis]
GO
ALTER TABLE [reg_0450] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0460] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0500] ADD  DEFAULT ((0)) FOR [nivel]
GO
ALTER TABLE [reg_0600] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_0990] ADD  DEFAULT ((0)) FOR [qtd_lin_0]
GO
ALTER TABLE [reg_1001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1010] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1100] ADD  DEFAULT ((0)) FOR [ind_doc]
GO
ALTER TABLE [reg_1100] ADD  DEFAULT ((0)) FOR [nat_exp]
GO
ALTER TABLE [reg_1100] ADD  DEFAULT ((0)) FOR [pais]
GO
ALTER TABLE [reg_1105] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1110] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1110] ADD  DEFAULT ((0)) FOR [nr_memo]
GO
ALTER TABLE [reg_1110] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_1200] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1200] ADD  DEFAULT ((0)) FOR [sld_cred]
GO
ALTER TABLE [reg_1200] ADD  DEFAULT ((0)) FOR [cred_apr]
GO
ALTER TABLE [reg_1200] ADD  DEFAULT ((0)) FOR [cred_receb]
GO
ALTER TABLE [reg_1200] ADD  DEFAULT ((0)) FOR [cred_util]
GO
ALTER TABLE [reg_1200] ADD  DEFAULT ((0)) FOR [sld_cred_fim]
GO
ALTER TABLE [reg_1210] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1210] ADD  DEFAULT ((0)) FOR [vl_cred_util]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [linha]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [estq_abert]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [vol_entr]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [vol_disp]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [vol_saidas]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [estq_escr]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [val_aj_perda]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [val_aj_ganho]
GO
ALTER TABLE [reg_1300] ADD  DEFAULT ((0)) FOR [fech_fisico]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [estq_abert]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [vol_entr]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [vol_disp]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [vol_saidas]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [estq_escr]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [val_aj_perda]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [val_aj_ganho]
GO
ALTER TABLE [reg_1310] ADD  DEFAULT ((0)) FOR [fech_fisico]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [num_bico]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [nr_interv]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [val_fecha]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [val_abert]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [vol_aferi]
GO
ALTER TABLE [reg_1320] ADD  DEFAULT ((0)) FOR [vol_vendas]
GO
ALTER TABLE [reg_1350] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1360] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1370] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1390] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [qtd_moid]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [estq_ini]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [qtd_produz]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [ent_anid_hid]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [outr_entr]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [perda]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [cons]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [sai_ani_hid]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [saidas]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [estq_fin]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [estq_ini_mel]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [prod_dia_mel]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [util_mel]
GO
ALTER TABLE [reg_1391] ADD  DEFAULT ((0)) FOR [prod_alc_mel]
GO
ALTER TABLE [reg_1400] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1400] ADD  DEFAULT ((0)) FOR [valor]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_forn]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_serv_nt]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_terc]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_da]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [vl_cofis]
GO
ALTER TABLE [reg_1500] ADD  DEFAULT ((0)) FOR [tp_ligacao]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [num_item]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [aliq_st]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_1510] ADD  DEFAULT ((0)) FOR [vl_cofis]
GO
ALTER TABLE [reg_1600] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1600] ADD  DEFAULT ((0)) FOR [tot_credito]
GO
ALTER TABLE [reg_1600] ADD  DEFAULT ((0)) FOR [tot_debito]
GO
ALTER TABLE [reg_1700] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1710] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_carga]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_pass]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_fat]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [ind_rat]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_icms_ant]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_icms_apur]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_bc_icms_apur]
GO
ALTER TABLE [reg_1800] ADD  DEFAULT ((0)) FOR [vl_dif]
GO
ALTER TABLE [reg_1900] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1910] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_tot_transf_debitos_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_tot_aj_debitos_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_estornos_cred_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_tot_transf_creditos_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_tot_aj_creditos_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_estornos_deb_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_sld_credor_ant_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_sld_apurado_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_tot_ded]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_icms_recolher_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [vl_sld_credor_transp_oa]
GO
ALTER TABLE [reg_1920] ADD  DEFAULT ((0)) FOR [deb_esp_oa]
GO
ALTER TABLE [reg_1921] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1921] ADD  DEFAULT ((0)) FOR [vl_aj_apur]
GO
ALTER TABLE [reg_1922] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1923] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1923] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_1923] ADD  DEFAULT ((0)) FOR [vl_aj_item]
GO
ALTER TABLE [reg_1925] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1925] ADD  DEFAULT ((0)) FOR [vl_inf_adic]
GO
ALTER TABLE [reg_1926] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1926] ADD  DEFAULT ((0)) FOR [vl_or]
GO
ALTER TABLE [reg_1990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_1990] ADD  DEFAULT ((0)) FOR [qtd_lin_1]
GO
ALTER TABLE [reg_9001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_9990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_9990] ADD  DEFAULT ((0)) FOR [qtd_lin_9]
GO
ALTER TABLE [reg_9999] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_9999] ADD  DEFAULT ((0)) FOR [qtd_lin]
GO
ALTER TABLE [reg_a001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a010] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_pis_ret]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_cofins_ret]
GO
ALTER TABLE [reg_a100] ADD  DEFAULT ((0)) FOR [vl_iss]
GO
ALTER TABLE [reg_a110] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a111] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a120] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a120] ADD  DEFAULT ((0)) FOR [vl_tot_serv]
GO
ALTER TABLE [reg_a120] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_a120] ADD  DEFAULT ((0)) FOR [vl_pis_imp]
GO
ALTER TABLE [reg_a120] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_a120] ADD  DEFAULT ((0)) FOR [vl_cofins_imp]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_a170] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_a990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_abat_nt]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_merc]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_frt]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_seg]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_out_da]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_ipi]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_pis_st]
GO
ALTER TABLE [reg_c100] ADD  DEFAULT ((0)) FOR [vl_cofins_st]
GO
ALTER TABLE [reg_c105] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c105] ADD  DEFAULT ((0)) FOR [oper]
GO
ALTER TABLE [reg_c110] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c111] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c112] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c112] ADD  DEFAULT ((0)) FOR [vl_da]
GO
ALTER TABLE [reg_c113] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c113] ADD  DEFAULT ((0)) FOR [sub]
GO
ALTER TABLE [reg_c113] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_c114] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c114] ADD  DEFAULT ((0)) FOR [ecf_cx]
GO
ALTER TABLE [reg_c114] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_c115] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c115] ADD  DEFAULT ((0)) FOR [ind_carga]
GO
ALTER TABLE [reg_c116] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c120] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c120] ADD  DEFAULT ((0)) FOR [pis_imp]
GO
ALTER TABLE [reg_c120] ADD  DEFAULT ((0)) FOR [cofins_imp]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_serv_nt]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_bc_issqn]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_issqn]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_bc_irrf]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_irrf]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_bc_prev]
GO
ALTER TABLE [reg_c130] ADD  DEFAULT ((0)) FOR [vl_prev]
GO
ALTER TABLE [reg_c140] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c140] ADD  DEFAULT ((0)) FOR [vl_tit]
GO
ALTER TABLE [reg_c141] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c141] ADD  DEFAULT ((0)) FOR [vl_parc]
GO
ALTER TABLE [reg_c160] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c160] ADD  DEFAULT ((0)) FOR [qtd_vol]
GO
ALTER TABLE [reg_c160] ADD  DEFAULT ((0)) FOR [peso_brt]
GO
ALTER TABLE [reg_c160] ADD  DEFAULT ((0)) FOR [peso_liq]
GO
ALTER TABLE [reg_c165] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c165] ADD  DEFAULT ((0)) FOR [linha]
GO
ALTER TABLE [reg_c165] ADD  DEFAULT ((0)) FOR [temper]
GO
ALTER TABLE [reg_c165] ADD  DEFAULT ((0)) FOR [qtd_vol]
GO
ALTER TABLE [reg_c165] ADD  DEFAULT ((0)) FOR [peso_brt]
GO
ALTER TABLE [reg_c165] ADD  DEFAULT ((0)) FOR [peso_liq]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [num_item]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_st]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_bc_ipi]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_ipi]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_ipi]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_pis_perc]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [quant_bc_pis]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_pis_reais]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_cofins_perc]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [quant_bc_cofins]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [aliq_cofins_reais]
GO
ALTER TABLE [reg_c170] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c171] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c171] ADD  DEFAULT ((0)) FOR [qtde]
GO
ALTER TABLE [reg_c172] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c172] ADD  DEFAULT ((0)) FOR [vl_bc_issqn]
GO
ALTER TABLE [reg_c172] ADD  DEFAULT ((0)) FOR [aliq_issqn]
GO
ALTER TABLE [reg_c172] ADD  DEFAULT ((0)) FOR [vl_issqn]
GO
ALTER TABLE [reg_c173] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c173] ADD  DEFAULT ((0)) FOR [qtd_item]
GO
ALTER TABLE [reg_c173] ADD  DEFAULT ((0)) FOR [vl_tab_max]
GO
ALTER TABLE [reg_c174] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c175] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c176] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c176] ADD  DEFAULT ((0)) FOR [quant_ult_e]
GO
ALTER TABLE [reg_c176] ADD  DEFAULT ((0)) FOR [vl_unit_ult_e]
GO
ALTER TABLE [reg_c176] ADD  DEFAULT ((0)) FOR [vl_unit_bc_st]
GO
ALTER TABLE [reg_c177] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c177] ADD  DEFAULT ((0)) FOR [qt_selo_ipi]
GO
ALTER TABLE [reg_c178] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c178] ADD  DEFAULT ((0)) FOR [vl_unid]
GO
ALTER TABLE [reg_c178] ADD  DEFAULT ((0)) FOR [quant_pad]
GO
ALTER TABLE [reg_c179] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c179] ADD  DEFAULT ((0)) FOR [bc_st_orig_dest]
GO
ALTER TABLE [reg_c179] ADD  DEFAULT ((0)) FOR [icms_st_rep]
GO
ALTER TABLE [reg_c179] ADD  DEFAULT ((0)) FOR [icms_st_compl]
GO
ALTER TABLE [reg_c179] ADD  DEFAULT ((0)) FOR [bc_ret]
GO
ALTER TABLE [reg_c179] ADD  DEFAULT ((0)) FOR [icms_ret]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_c190] ADD  DEFAULT ((0)) FOR [vl_ipi]
GO
ALTER TABLE [reg_c195] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c197] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c197] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c197] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c197] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c197] ADD  DEFAULT ((0)) FOR [vl_outros]
GO
ALTER TABLE [reg_c300] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c300] ADD  DEFAULT ((0)) FOR [num_doc_ini]
GO
ALTER TABLE [reg_c300] ADD  DEFAULT ((0)) FOR [num_doc_fin]
GO
ALTER TABLE [reg_c300] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_c300] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c300] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c310] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c310] ADD  DEFAULT ((0)) FOR [num_doc_canc]
GO
ALTER TABLE [reg_c320] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c320] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c320] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c320] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c320] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c320] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c321] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [vl_merc]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c350] ADD  DEFAULT ((0)) FOR [vl_cofis]
GO
ALTER TABLE [reg_c370] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c370] ADD  DEFAULT ((0)) FOR [num_item]
GO
ALTER TABLE [reg_c370] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c370] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c370] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c390] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c390] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c390] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c390] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c390] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c390] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_c400] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c400] ADD  DEFAULT ((0)) FOR [ecf_cx]
GO
ALTER TABLE [reg_c400] ADD  DEFAULT ((0)) FOR [id_pai_pis]
GO
ALTER TABLE [reg_c410] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c410] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c410] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c420] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c420] ADD  DEFAULT ((0)) FOR [vlr_acum_tot]
GO
ALTER TABLE [reg_c420] ADD  DEFAULT ((0)) FOR [nr_tot]
GO
ALTER TABLE [reg_c425] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c425] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c425] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c425] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c425] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c460] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c460] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_c460] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_c460] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c460] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c460] ADD  DEFAULT ((0)) FOR [cpf_cnpj]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [qtd_canc]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c470] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c490] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c490] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c490] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c490] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c490] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [qtd_canc]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_canc]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_acmo]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_isen]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_nt]
GO
ALTER TABLE [reg_c495] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [sub]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_forn]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_serv_nt]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_terc]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_da]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c500] ADD  DEFAULT ((0)) FOR [tp_ligacao]
GO
ALTER TABLE [reg_c501] ADD  DEFAULT ((0)) FOR [id]
GO
ALTER TABLE [reg_c501] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c505] ADD  DEFAULT ((0)) FOR [id]
GO
ALTER TABLE [reg_c505] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [aliq_st]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c510] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c590] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [sub]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [qtd_cons]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [qtd_canc]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [cons]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_forn]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_serv_nt]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_terc]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_da]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c600] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c601] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c601] ADD  DEFAULT ((0)) FOR [num_doc_canc]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c610] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c690] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c700] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c700] ADD  DEFAULT ((0)) FOR [nro_ord_ini]
GO
ALTER TABLE [reg_c700] ADD  DEFAULT ((0)) FOR [nro_ord_fin]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c790] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_c791] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c791] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_c791] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [num_cfe]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_cfe]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_merc]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_out_da]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_pis_st]
GO
ALTER TABLE [reg_c800] ADD  DEFAULT ((0)) FOR [vl_cofins_st]
GO
ALTER TABLE [reg_c850] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c850] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c850] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c850] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c850] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c860] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c860] ADD  DEFAULT ((0)) FOR [doc_ini]
GO
ALTER TABLE [reg_c860] ADD  DEFAULT ((0)) FOR [doc_fim]
GO
ALTER TABLE [reg_c890] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c890] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_c890] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_c890] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_c890] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_c990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_c990] ADD  DEFAULT ((0)) FOR [qtd_lin_c]
GO
ALTER TABLE [reg_d001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [tp_ct_e]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d100] ADD  DEFAULT ((0)) FOR [vl_nt]
GO
ALTER TABLE [reg_d110] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d110] ADD  DEFAULT ((0)) FOR [num_item]
GO
ALTER TABLE [reg_d110] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d110] ADD  DEFAULT ((0)) FOR [vl_out]
GO
ALTER TABLE [reg_d120] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [vl_liq_frt]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [vl_sec_cat]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [vl_desp]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [vl_pedg]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [vl_out]
GO
ALTER TABLE [reg_d130] ADD  DEFAULT ((0)) FOR [vl_frt]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [viagem]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [vl_frt_liq]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [vl_desp_port]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [vl_desp_car_desc]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [vl_out]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [vl_frt_brt]
GO
ALTER TABLE [reg_d140] ADD  DEFAULT ((0)) FOR [vl_frt_mm]
GO
ALTER TABLE [reg_d150] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d150] ADD  DEFAULT ((0)) FOR [vl_peso_tx]
GO
ALTER TABLE [reg_d150] ADD  DEFAULT ((0)) FOR [vl_tx_terr]
GO
ALTER TABLE [reg_d150] ADD  DEFAULT ((0)) FOR [vl_tx_red]
GO
ALTER TABLE [reg_d150] ADD  DEFAULT ((0)) FOR [vl_out]
GO
ALTER TABLE [reg_d150] ADD  DEFAULT ((0)) FOR [vl_tx_adv]
GO
ALTER TABLE [reg_d160] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d161] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d161] ADD  DEFAULT ((0)) FOR [ind_carga]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [vl_merc]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [qtd_vol]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [peso_brt]
GO
ALTER TABLE [reg_d162] ADD  DEFAULT ((0)) FOR [peso_liq]
GO
ALTER TABLE [reg_d170] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d170] ADD  DEFAULT ((0)) FOR [vl_liq_frt]
GO
ALTER TABLE [reg_d170] ADD  DEFAULT ((0)) FOR [vl_gris]
GO
ALTER TABLE [reg_d170] ADD  DEFAULT ((0)) FOR [vl_pdg]
GO
ALTER TABLE [reg_d170] ADD  DEFAULT ((0)) FOR [vl_out]
GO
ALTER TABLE [reg_d170] ADD  DEFAULT ((0)) FOR [vl_frt]
GO
ALTER TABLE [reg_d180] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d180] ADD  DEFAULT ((0)) FOR [sub]
GO
ALTER TABLE [reg_d180] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_d180] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_d190] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d190] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d190] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d190] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d190] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d190] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [num_doc_ini]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [num_doc_fin]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_seg]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_out_desp]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d300] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_d301] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d301] ADD  DEFAULT ((0)) FOR [num_doc_canc]
GO
ALTER TABLE [reg_d310] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d310] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d310] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d310] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d350] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d350] ADD  DEFAULT ((0)) FOR [ecf_cx]
GO
ALTER TABLE [reg_d355] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d355] ADD  DEFAULT ((0)) FOR [cro]
GO
ALTER TABLE [reg_d355] ADD  DEFAULT ((0)) FOR [crz]
GO
ALTER TABLE [reg_d355] ADD  DEFAULT ((0)) FOR [num_coo_fin]
GO
ALTER TABLE [reg_d355] ADD  DEFAULT ((0)) FOR [gt_fin]
GO
ALTER TABLE [reg_d355] ADD  DEFAULT ((0)) FOR [vl_brt]
GO
ALTER TABLE [reg_d360] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d360] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_d360] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_d365] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d365] ADD  DEFAULT ((0)) FOR [vlr_acum_tot]
GO
ALTER TABLE [reg_d365] ADD  DEFAULT ((0)) FOR [nr_tot]
GO
ALTER TABLE [reg_d370] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d370] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d370] ADD  DEFAULT ((0)) FOR [qtd_bilh]
GO
ALTER TABLE [reg_d370] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d370] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [vl_bc_issqn]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [aliq_issqn]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [vl_issqn]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d390] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_d400] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [num_doc_ini]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [num_doc_fin]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d410] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d411] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d411] ADD  DEFAULT ((0)) FOR [num_doc_canc]
GO
ALTER TABLE [reg_d420] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d420] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d420] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d420] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_serv_nt]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_terc]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_da]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_d500] ADD  DEFAULT ((0)) FOR [tp_assinante]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [num_item]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [cod_class]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_d510] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_d530] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d530] ADD  DEFAULT ((0)) FOR [per_fiscal]
GO
ALTER TABLE [reg_d530] ADD  DEFAULT ((0)) FOR [terminal]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_d590] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [cod_cons]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [qtd_cons]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_serv]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_serv_nt]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_terc]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_da]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_d600] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [cod_class]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_desc]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_d610] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_d690] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_d695] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d695] ADD  DEFAULT ((0)) FOR [nro_ord_ini]
GO
ALTER TABLE [reg_d695] ADD  DEFAULT ((0)) FOR [nro_ord_fin]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_d696] ADD  DEFAULT ((0)) FOR [vl_red_bc]
GO
ALTER TABLE [reg_d697] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d697] ADD  DEFAULT ((0)) FOR [vl_bc_icms_st]
GO
ALTER TABLE [reg_d697] ADD  DEFAULT ((0)) FOR [vl_icms_st]
GO
ALTER TABLE [reg_d990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_d990] ADD  DEFAULT ((0)) FOR [qtd_lin_d]
GO
ALTER TABLE [reg_e001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_tot_debitos]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_aj_debitos]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_tot_aj_debitos]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_estornos_cred]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_tot_creditos]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_aj_creditos]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_tot_aj_creditos]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_estornos_deb]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_sld_credor_ant]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_sld_apurado]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_tot_ded]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_icms_recolher]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [vl_sld_credor_transportar]
GO
ALTER TABLE [reg_e110] ADD  DEFAULT ((0)) FOR [deb_esp]
GO
ALTER TABLE [reg_e111] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e111] ADD  DEFAULT ((0)) FOR [vl_aj_apur]
GO
ALTER TABLE [reg_e112] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e113] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e113] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_e113] ADD  DEFAULT ((0)) FOR [vl_aj_item]
GO
ALTER TABLE [reg_e115] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e115] ADD  DEFAULT ((0)) FOR [vl_inf_adic]
GO
ALTER TABLE [reg_e116] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e116] ADD  DEFAULT ((0)) FOR [vl_or]
GO
ALTER TABLE [reg_e200] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ('1') FOR [ind_mov_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_sld_cred_ant_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_devol_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_ressarc_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_out_cred_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_aj_creditos_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_retencao_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_out_deb_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_aj_debitos_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_sld_dev_ant_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_deducoes_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_icms_recol_st]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [vl_sld_cred_st_transportar]
GO
ALTER TABLE [reg_e210] ADD  DEFAULT ((0)) FOR [deb_esp_st]
GO
ALTER TABLE [reg_e220] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e220] ADD  DEFAULT ((0)) FOR [vl_aj_apur]
GO
ALTER TABLE [reg_e230] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e230] ADD  DEFAULT ((0)) FOR [num_proc]
GO
ALTER TABLE [reg_e240] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e240] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [reg_e240] ADD  DEFAULT ((0)) FOR [vl_aj_item]
GO
ALTER TABLE [reg_e250] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e250] ADD  DEFAULT ((0)) FOR [vl_or]
GO
ALTER TABLE [reg_e500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e510] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e510] ADD  DEFAULT ((0)) FOR [vl_cont_ipi]
GO
ALTER TABLE [reg_e510] ADD  DEFAULT ((0)) FOR [vl_bc_ipi]
GO
ALTER TABLE [reg_e510] ADD  DEFAULT ((0)) FOR [vl_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_sd_ant_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_deb_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_cred_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_od_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_oc_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_sc_ipi]
GO
ALTER TABLE [reg_e520] ADD  DEFAULT ((0)) FOR [vl_sd_ipi]
GO
ALTER TABLE [reg_e530] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e530] ADD  DEFAULT ((0)) FOR [vl_aj]
GO
ALTER TABLE [reg_e990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_e990] ADD  DEFAULT ((0)) FOR [qtd_lin_e]
GO
ALTER TABLE [reg_f001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f010] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [vl_oper]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f100] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f111] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [vl_oper_dep]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [parc_oper_nao_bc_cred]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f120] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f129] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [vl_oper_aquis]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [parc_oper_nao_bc_cred]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [vl_bc_cred]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f130] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f139] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [vl_tot_est]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [est_imp]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [vl_bc_est]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [vl_bc_men_est]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [vl_cred_pis]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f150] ADD  DEFAULT ((0)) FOR [vl_cred_cofins]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_tot_vend]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_rec_acum]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_tot_rec]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f200] ADD  DEFAULT ((0)) FOR [perc_rec_receb]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cus_inc_acum_ant]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cus_inc_per_esc]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cus_inc_acum]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_exc_bc_cus_inc_acum]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_bc_cus_inc]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_pis_acum]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_pis_desc_ant]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_pis_desc]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_pis_desc_fut]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_cofins_acum]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_cofins_desc_ant]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_cofins_desc]
GO
ALTER TABLE [reg_f205] ADD  DEFAULT ((0)) FOR [vl_cred_cofins_desc_fut]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [vl_cus_orc]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [vl_exc]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [vl_cus_orc_aju]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [vl_bc_cred]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [vl_cred_pis_util]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f210] ADD  DEFAULT ((0)) FOR [vl_cred_cofins_util]
GO
ALTER TABLE [reg_f211] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_rec_caixa]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_desc_pis]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_desc_cofins]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f500] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f509] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [vl_rec_caixa]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [vl_desc_pis]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [quant_bc_pis]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [aliq_pis_quant]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [vl_desc_cofins]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [quant_bc_cofins]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [aliq_cofins_quant]
GO
ALTER TABLE [reg_f510] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f519] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f525] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f525] ADD  DEFAULT ((0)) FOR [vl_rec]
GO
ALTER TABLE [reg_f525] ADD  DEFAULT ((0)) FOR [vl_rec_det]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_rec_comp]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_desc_pis]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_desc_cofins]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_f550] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f559] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [vl_rec_comp]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [vl_desc_pis]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [quant_bc_pis]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [aliq_pis_quant]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [vl_desc_cofins]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [quant_bc_cofins]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [aliq_cofins_quant]
GO
ALTER TABLE [reg_f560] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [reg_f569] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f600] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f600] ADD  DEFAULT ((0)) FOR [vl_bc_ret]
GO
ALTER TABLE [reg_f600] ADD  DEFAULT ((0)) FOR [vl_ret]
GO
ALTER TABLE [reg_f600] ADD  DEFAULT ((0)) FOR [vl_ret_pis]
GO
ALTER TABLE [reg_f600] ADD  DEFAULT ((0)) FOR [vl_ret_cofins]
GO
ALTER TABLE [reg_f700] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f700] ADD  DEFAULT ((0)) FOR [vl_ded_pis]
GO
ALTER TABLE [reg_f700] ADD  DEFAULT ((0)) FOR [vl_ded_cofins]
GO
ALTER TABLE [reg_f700] ADD  DEFAULT ((0)) FOR [vl_bc_oper]
GO
ALTER TABLE [reg_f800] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_f800] ADD  DEFAULT ((0)) FOR [vl_cred_pis]
GO
ALTER TABLE [reg_f800] ADD  DEFAULT ((0)) FOR [vl_cred_cofins]
GO
ALTER TABLE [reg_f800] ADD  DEFAULT ((0)) FOR [per_cred_cis]
GO
ALTER TABLE [reg_f990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_g001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_g990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_g990] ADD  DEFAULT ((0)) FOR [qtd_lin_g]
GO
ALTER TABLE [reg_h001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_h990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_h990] ADD  DEFAULT ((0)) FOR [qtd_lin_h]
GO
ALTER TABLE [reg_m001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_bc_cred]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [quant_bc_pis]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [aliq_pis_quant]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred_dif]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred_disp]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [vl_cred_desc]
GO
ALTER TABLE [reg_m100] ADD  DEFAULT ((0)) FOR [sld_cred]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis_tot]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis_cum]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis_nc]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [vl_bc_pis]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [quant_bc_pis_tot]
GO
ALTER TABLE [reg_m105] ADD  DEFAULT ((0)) FOR [quant_bc_pis]
GO
ALTER TABLE [reg_m110] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m110] ADD  DEFAULT ((0)) FOR [vl_aj]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_per]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc_ant]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_dev]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_ret_nc]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_out_ded_nc]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_cont_nc_rec]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_cum_per]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_ret_cum]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_out_ded_cum]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_cont_cum_rec]
GO
ALTER TABLE [reg_m200] ADD  DEFAULT ((0)) FOR [vl_tot_cont_rec]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_rec_brt]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_bc_cont]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [aliq_pis]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [quant_bc_pis]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [aliq_pis_quant]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_apur]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_difer]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_difer_ant]
GO
ALTER TABLE [reg_m210] ADD  DEFAULT ((0)) FOR [vl_cont_per]
GO
ALTER TABLE [reg_m211] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m211] ADD  DEFAULT ((0)) FOR [vl_bc_cont_ant_exc_coop]
GO
ALTER TABLE [reg_m211] ADD  DEFAULT ((0)) FOR [vl_exc_coop_ger]
GO
ALTER TABLE [reg_m211] ADD  DEFAULT ((0)) FOR [vl_exc_esp_coop]
GO
ALTER TABLE [reg_m211] ADD  DEFAULT ((0)) FOR [vl_bc_cont]
GO
ALTER TABLE [reg_m220] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m220] ADD  DEFAULT ((0)) FOR [vl_aj]
GO
ALTER TABLE [reg_m230] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m230] ADD  DEFAULT ((0)) FOR [vl_vend]
GO
ALTER TABLE [reg_m230] ADD  DEFAULT ((0)) FOR [vl_nao_receb]
GO
ALTER TABLE [reg_m230] ADD  DEFAULT ((0)) FOR [vl_cont_dif]
GO
ALTER TABLE [reg_m230] ADD  DEFAULT ((0)) FOR [vl_cred_dif]
GO
ALTER TABLE [reg_m300] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m300] ADD  DEFAULT ((0)) FOR [vl_cont_apur_difer]
GO
ALTER TABLE [reg_m300] ADD  DEFAULT ((0)) FOR [vl_cred_desc_difer]
GO
ALTER TABLE [reg_m300] ADD  DEFAULT ((0)) FOR [vl_cont_difer_ant]
GO
ALTER TABLE [reg_m350] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m350] ADD  DEFAULT ((0)) FOR [vl_tot_fol]
GO
ALTER TABLE [reg_m350] ADD  DEFAULT ((0)) FOR [vl_exc_bc]
GO
ALTER TABLE [reg_m350] ADD  DEFAULT ((0)) FOR [vl_tot_bc]
GO
ALTER TABLE [reg_m350] ADD  DEFAULT ((0)) FOR [aliq_pis_fol]
GO
ALTER TABLE [reg_m350] ADD  DEFAULT ((0)) FOR [vl_tot_cont_fol]
GO
ALTER TABLE [reg_m400] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m400] ADD  DEFAULT ((0)) FOR [vl_tot_rec]
GO
ALTER TABLE [reg_m410] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m410] ADD  DEFAULT ((0)) FOR [vl_rec]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_bc_cred]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [quant_bc_cofins]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [aliq_cofins_quant]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred_dif]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred_disp]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [vl_cred_desc]
GO
ALTER TABLE [reg_m500] ADD  DEFAULT ((0)) FOR [sld_cred]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins_tot]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins_cum]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins_nc]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [vl_bc_cofins]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [quant_bc_cofins_tot]
GO
ALTER TABLE [reg_m505] ADD  DEFAULT ((0)) FOR [quant_bc_cofins]
GO
ALTER TABLE [reg_m510] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m510] ADD  DEFAULT ((0)) FOR [vl_aj]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_per]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cred_desc_ant]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_nc_dev]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_ret_nc]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_out_ded_nc]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_cont_nc_rec]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_cum_per]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_ret_cum]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_out_ded_cum]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_cont_cum_rec]
GO
ALTER TABLE [reg_m600] ADD  DEFAULT ((0)) FOR [vl_tot_cont_rec]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_rec_brt]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_bc_cont]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [aliq_cofins]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [quant_bc_cofins]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [aliq_cofins_quant]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_apur]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_ajus_acres]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_ajus_reduc]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_difer]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_difer_ant]
GO
ALTER TABLE [reg_m610] ADD  DEFAULT ((0)) FOR [vl_cont_per]
GO
ALTER TABLE [reg_m611] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m611] ADD  DEFAULT ((0)) FOR [vl_bc_cont_ant_exc_coop]
GO
ALTER TABLE [reg_m611] ADD  DEFAULT ((0)) FOR [vl_exc_coop_ger]
GO
ALTER TABLE [reg_m611] ADD  DEFAULT ((0)) FOR [vl_exc_esp_coop]
GO
ALTER TABLE [reg_m611] ADD  DEFAULT ((0)) FOR [vl_bc_cont]
GO
ALTER TABLE [reg_m620] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m620] ADD  DEFAULT ((0)) FOR [vl_aj]
GO
ALTER TABLE [reg_m630] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m630] ADD  DEFAULT ((0)) FOR [vl_vend]
GO
ALTER TABLE [reg_m630] ADD  DEFAULT ((0)) FOR [vl_nao_receb]
GO
ALTER TABLE [reg_m630] ADD  DEFAULT ((0)) FOR [vl_cont_dif]
GO
ALTER TABLE [reg_m630] ADD  DEFAULT ((0)) FOR [vl_cred_dif]
GO
ALTER TABLE [reg_m700] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m700] ADD  DEFAULT ((0)) FOR [vl_cont_apur_difer]
GO
ALTER TABLE [reg_m700] ADD  DEFAULT ((0)) FOR [vl_cred_desc_difer]
GO
ALTER TABLE [reg_m700] ADD  DEFAULT ((0)) FOR [vl_cont_difer_ant]
GO
ALTER TABLE [reg_m800] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m800] ADD  DEFAULT ((0)) FOR [vl_tot_rec]
GO
ALTER TABLE [reg_m810] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [reg_m810] ADD  DEFAULT ((0)) FOR [vl_rec]
GO
ALTER TABLE [reg_m990] ADD  DEFAULT ((0)) FOR [id_pai]
GO
USE [master]
GO
ALTER DATABASE [$(DbName)] SET  READ_WRITE
GO
