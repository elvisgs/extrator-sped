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
/****** Object:  Table [dbo].[reg_0000]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0000](
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
	[dt_fin] datetime NULL,
	[dt_ini] datetime NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_0000_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg_0001]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0001](
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
/****** Object:  Table [dbo].[reg_0005]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_0005](
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
/****** Object:  Table [dbo].[reg_c001]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c001](
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
/****** Object:  Table [dbo].[reg_c400]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c400](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[ecf_mod] [varchar](20) NULL,
	[ecf_fab] [varchar](20) NULL,
	[ecf_cx] [int] NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c400_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg_c405]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c405](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[dt_doc] [datetime] NULL,
	[cro] [int] NULL,
	[crz] [int] NULL,
	[num_coo_fin] [int] NULL,
	[gt_fin] [decimal](18, 2) NULL,
	[vl_brt] [decimal](18, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c405_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg_c420]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c420](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_tot_par] [varchar](7) NULL,
	[vlr_acum_tot] [decimal](18, 2) NULL,
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
/****** Object:  Table [dbo].[reg_c460]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c460](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_mod] [varchar](2) NULL,
	[cod_sit] [varchar](2) NULL,
	[num_doc] [int] NULL,
	[vl_doc] [decimal](18, 2) NULL,
	[vl_pis] [decimal](18, 2) NULL,
	[vl_cofins] [decimal](18, 2) NULL,
	[cpf_cnpj] [int] NULL,
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
/****** Object:  Table [dbo].[reg_c470]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c470](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cod_item] [varchar](60) NULL,
	[qtd] [decimal](18, 2) NULL,
	[qtd_canc] [decimal](18, 2) NULL,
	[unid] [varchar](6) NULL,
	[vl_item] [decimal](18, 2) NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 2) NULL,
	[vl_pis] [decimal](18, 2) NULL,
	[vl_cofins] [decimal](18, 2) NULL,
	[cnpj_pai] [varchar](14) NULL,
 CONSTRAINT [reg_c470_pkey] PRIMARY KEY CLUSTERED
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg_c481]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c481](
	[id] [int] NULL,
	[id_pai] [int] NULL,
	[cst_pis] [varchar](2) NULL,
	[vl_item] [decimal](18, 2) NULL,
	[vl_bc_pis] [decimal](18, 2) NULL,
	[aliq_pis] [decimal](8, 2) NULL,
	[quant_bc_pis] [decimal](18, 3) NULL,
	[aliq_pis_quant] [decimal](18, 4) NULL,
	[vl_pis] [decimal](18, 2) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg_c485]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c485](
	[id] [int] NULL,
	[id_pai] [int] NULL,
	[cst_cofins] [varchar](2) NULL,
	[vl_item] [decimal](18, 2) NULL,
	[vl_bc_cofins] [decimal](18, 2) NULL,
	[aliq_cofins] [decimal](18, 2) NULL,
	[quant_bc_cofins] [decimal](18, 3) NULL,
	[aliq_cofins_quant] [decimal](18, 4) NULL,
	[vl_cofins] [decimal](18, 2) NULL,
	[cod_item] [varchar](60) NULL,
	[cod_cta] [varchar](60) NULL,
	[cnpj_pai] [varchar](14) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[reg_c490]    Script Date: 03/02/2014 21:17:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[reg_c490](
	[id] [int] NOT NULL,
	[id_pai] [int] NULL,
	[cst_icms] [varchar](3) NULL,
	[cfop] [varchar](4) NULL,
	[aliq_icms] [decimal](18, 2) NULL,
	[vl_opr] [decimal](18, 2) NULL,
	[vl_bc_icms] [decimal](18, 2) NULL,
	[vl_icms] [decimal](18, 2) NULL,
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
/****** Object:  Index [idx_reg_0000_id]    Script Date: 03/02/2014 21:17:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0000_id] ON [dbo].[reg_0000]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_reg_0000_id_pai]    Script Date: 03/02/2014 21:17:19 ******/
CREATE NONCLUSTERED INDEX [idx_reg_0000_id_pai] ON [dbo].[reg_0000]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_reg_0001_id]    Script Date: 03/02/2014 21:17:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0001_id] ON [dbo].[reg_0001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_reg_0001_id_pai]    Script Date: 03/02/2014 21:17:19 ******/
CREATE NONCLUSTERED INDEX [idx_reg_0001_id_pai] ON [dbo].[reg_0001]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_reg_0005_id]    Script Date: 03/02/2014 21:17:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_0005_id] ON [dbo].[reg_0005]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_reg_0005_id_pai]    Script Date: 03/02/2014 21:17:19 ******/
CREATE NONCLUSTERED INDEX [idx_reg_0005_id_pai] ON [dbo].[reg_0005]
(
	[id_pai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [idx_reg_c001_id]    Script Date: 03/02/2014 21:17:19 ******/
CREATE UNIQUE NONCLUSTERED INDEX [idx_reg_c001_id] ON [dbo].[reg_c001]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[reg_0000] ADD  CONSTRAINT [DF__reg_0000__id_pai__2F10007B]  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_0000] ADD  CONSTRAINT [DF__reg_0000__cod_ve__300424B4]  DEFAULT ('004') FOR [cod_ver]
GO
ALTER TABLE [dbo].[reg_0000] ADD  CONSTRAINT [DF__reg_0000__cod_fi__30F848ED]  DEFAULT ('0') FOR [cod_fin]
GO
ALTER TABLE [dbo].[reg_0001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_0005] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c001] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c400] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c400] ADD  DEFAULT ((0)) FOR [ecf_cx]
GO
ALTER TABLE [dbo].[reg_c420] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c420] ADD  DEFAULT ((0)) FOR [vlr_acum_tot]
GO
ALTER TABLE [dbo].[reg_c420] ADD  DEFAULT ((0)) FOR [nr_tot]
GO
ALTER TABLE [dbo].[reg_c460] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c460] ADD  DEFAULT ((0)) FOR [num_doc]
GO
ALTER TABLE [dbo].[reg_c460] ADD  DEFAULT ((0)) FOR [vl_doc]
GO
ALTER TABLE [dbo].[reg_c460] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [dbo].[reg_c460] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [dbo].[reg_c460] ADD  DEFAULT ((0)) FOR [cpf_cnpj]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [qtd]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [qtd_canc]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [vl_item]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [vl_pis]
GO
ALTER TABLE [dbo].[reg_c470] ADD  DEFAULT ((0)) FOR [vl_cofins]
GO
ALTER TABLE [dbo].[reg_c490] ADD  DEFAULT ((0)) FOR [id_pai]
GO
ALTER TABLE [dbo].[reg_c490] ADD  DEFAULT ((0)) FOR [aliq_icms]
GO
ALTER TABLE [dbo].[reg_c490] ADD  DEFAULT ((0)) FOR [vl_opr]
GO
ALTER TABLE [dbo].[reg_c490] ADD  DEFAULT ((0)) FOR [vl_bc_icms]
GO
ALTER TABLE [dbo].[reg_c490] ADD  DEFAULT ((0)) FOR [vl_icms]
GO
USE [master]
GO
ALTER DATABASE [$(DbName)] SET  READ_WRITE
GO


