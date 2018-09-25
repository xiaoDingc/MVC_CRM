USE [master]
GO
/****** Object:  Database [JKCRM]    Script Date: 2018/9/25 19:33:29 ******/
CREATE DATABASE [JKCRM] ON  PRIMARY 
( NAME = N'JKCRM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\JKCRM.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JKCRM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\JKCRM_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JKCRM] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JKCRM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JKCRM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JKCRM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JKCRM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JKCRM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JKCRM] SET ARITHABORT OFF 
GO
ALTER DATABASE [JKCRM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JKCRM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JKCRM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JKCRM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JKCRM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JKCRM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JKCRM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JKCRM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JKCRM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JKCRM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JKCRM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JKCRM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JKCRM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JKCRM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JKCRM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JKCRM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JKCRM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JKCRM] SET RECOVERY FULL 
GO
ALTER DATABASE [JKCRM] SET  MULTI_USER 
GO
ALTER DATABASE [JKCRM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JKCRM] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JKCRM', N'ON'
GO
USE [JKCRM]
GO
/****** Object:  Table [dbo].[sysFunction]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysFunction](
	[fID] [int] IDENTITY(1,1) NOT NULL,
	[mID] [int] NOT NULL,
	[fName] [nvarchar](100) NOT NULL,
	[fFunction] [nvarchar](100) NOT NULL,
	[fPicname] [nvarchar](100) NULL,
	[fStatus] [int] NULL,
	[fCreatorID] [int] NOT NULL,
	[fCreateTime] [datetime] NOT NULL,
	[fUpdateID] [int] NULL,
	[fUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_sysFunction] PRIMARY KEY CLUSTERED 
(
	[fID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysKeyValue]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysKeyValue](
	[KID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[KType] [int] NOT NULL,
	[KName] [nvarchar](100) NOT NULL,
	[Kvalue] [nvarchar](20) NULL,
	[KRemark] [nvarchar](100) NULL,
 CONSTRAINT [PK_sysKeyValue] PRIMARY KEY CLUSTERED 
(
	[KID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysMenus]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysMenus](
	[mID] [int] IDENTITY(1,1) NOT NULL,
	[mParentID] [int] NOT NULL,
	[mName] [nvarchar](100) NOT NULL,
	[mUrl] [nvarchar](200) NOT NULL,
	[mArea] [nvarchar](max) NULL,
	[mController] [nvarchar](max) NULL,
	[mAction] [nvarchar](max) NULL,
	[mSortid] [int] NOT NULL,
	[mStatus] [int] NOT NULL,
	[mPicname] [varchar](30) NOT NULL,
	[mLevel] [int] NOT NULL,
	[mExp1] [nvarchar](50) NULL,
	[mExp2] [int] NULL,
	[mCreatorID] [int] NOT NULL,
	[mCreateTime] [datetime] NOT NULL,
	[mUpdateID] [int] NULL,
	[mUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_sysMenus] PRIMARY KEY CLUSTERED 
(
	[mID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysOrganStruct]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysOrganStruct](
	[osID] [int] IDENTITY(1,1) NOT NULL,
	[osParentID] [int] NOT NULL,
	[osName] [nvarchar](100) NOT NULL,
	[osCode] [nvarchar](50) NOT NULL,
	[osCateID] [int] NOT NULL,
	[osLevel] [int] NULL,
	[osShortName] [nvarchar](100) NULL,
	[osRemark] [nvarchar](500) NULL,
	[osStatus] [int] NULL,
	[osCreatorID] [int] NULL,
	[osCreateTime] [datetime] NOT NULL,
	[osUpdateID] [int] NULL,
	[osUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_sysOrganStruct] PRIMARY KEY CLUSTERED 
(
	[osID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysPermissList]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysPermissList](
	[plid] [int] IDENTITY(1,1) NOT NULL,
	[rID] [int] NOT NULL,
	[mID] [int] NOT NULL,
	[fID] [int] NOT NULL,
	[plCreatorID] [int] NOT NULL,
	[plCreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_sysPermissList] PRIMARY KEY CLUSTERED 
(
	[plid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysRole]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysRole](
	[rID] [int] IDENTITY(1,1) NOT NULL,
	[eDepID] [int] NULL,
	[RoleType] [int] NOT NULL,
	[rName] [nvarchar](50) NULL,
	[rRemark] [nvarchar](100) NULL,
	[rSort] [int] NOT NULL,
	[rStatus] [int] NOT NULL,
	[rCreatorID] [int] NOT NULL,
	[rCreateTime] [datetime] NOT NULL,
	[rUpdateID] [int] NULL,
	[rUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_sysRole] PRIMARY KEY CLUSTERED 
(
	[rID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysUserInfo]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysUserInfo](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[uLoginName] [nvarchar](100) NOT NULL,
	[uLoginPWD] [nvarchar](100) NOT NULL,
	[uRealName] [nvarchar](100) NOT NULL,
	[uTelphone] [nvarchar](50) NULL,
	[uMobile] [nvarchar](15) NULL,
	[uEmial] [nvarchar](30) NULL,
	[uQQ] [nvarchar](12) NULL,
	[uGender] [int] NOT NULL,
	[uStatus] [int] NOT NULL,
	[uCompanyID] [int] NOT NULL,
	[uDepID] [int] NULL,
	[uWorkGroupID] [int] NULL,
	[uRemark] [nvarchar](500) NULL,
	[uCreatorID] [int] NOT NULL,
	[uCreateTime] [datetime] NOT NULL,
	[uUpdateID] [int] NULL,
	[uUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_sysUserInfo] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysUserInfo_Role]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysUserInfo_Role](
	[urID] [int] IDENTITY(1,1) NOT NULL,
	[uID] [int] NOT NULL,
	[rID] [int] NOT NULL,
 CONSTRAINT [PK_sysUserInfo_Role] PRIMARY KEY CLUSTERED 
(
	[urID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wfProcess]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wfProcess](
	[wfPID] [int] IDENTITY(1,1) NOT NULL,
	[wfRFID] [int] NOT NULL,
	[wfProcessor] [int] NOT NULL,
	[wfRFStatus] [int] NOT NULL,
	[wfPDescription] [nvarchar](200) NULL,
	[wfnID] [int] NOT NULL,
	[wfPExt1] [nvarchar](100) NULL,
	[wfPExt2] [int] NULL,
	[fCreatorID] [int] NOT NULL,
	[fCreateTime] [datetime] NOT NULL,
	[fUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_wfProcess] PRIMARY KEY CLUSTERED 
(
	[wfPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wfRequestForm]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wfRequestForm](
	[wfRFID] [int] IDENTITY(1,1) NOT NULL,
	[wfID] [int] NOT NULL,
	[wfRFTitle] [nvarchar](100) NOT NULL,
	[wfRFRemark] [nvarchar](1000) NULL,
	[wfRFPriority] [int] NOT NULL,
	[wfRFStatus] [int] NOT NULL,
	[wfRFExt1] [nvarchar](100) NULL,
	[wfRFExt2] [int] NULL,
	[wfRFLogicSymbol] [varchar](2) NULL,
	[wfRFNum] [decimal](18, 0) NOT NULL,
	[fCreatorID] [int] NOT NULL,
	[fCreateTime] [datetime] NOT NULL,
	[fUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_wfRequestForm] PRIMARY KEY CLUSTERED 
(
	[wfRFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wfWork]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wfWork](
	[wfID] [int] IDENTITY(1,1) NOT NULL,
	[wfTitle] [nvarchar](50) NOT NULL,
	[wfStatus] [int] NOT NULL,
	[wfRemark] [nvarchar](200) NULL,
	[fCreatorID] [int] NOT NULL,
	[fCreateTime] [datetime] NOT NULL,
	[fUpdateID] [int] NULL,
	[fUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_wfWork] PRIMARY KEY CLUSTERED 
(
	[wfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wfWorkBranch]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wfWorkBranch](
	[wfbID] [int] IDENTITY(1,1) NOT NULL,
	[wfnID] [int] NOT NULL,
	[wfnToken] [nvarchar](20) NOT NULL,
	[wfNodeID] [int] NOT NULL,
	[fCreatorID] [int] NOT NULL,
	[fCreateTime] [datetime] NOT NULL,
	[fUpdateID] [int] NULL,
	[fUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_wfWorkBranch] PRIMARY KEY CLUSTERED 
(
	[wfbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wfWorkNodes]    Script Date: 2018/9/25 19:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wfWorkNodes](
	[wfnID] [int] IDENTITY(1,1) NOT NULL,
	[wfID] [int] NOT NULL,
	[wfnOrderNo] [int] NOT NULL,
	[wfNodeType] [int] NOT NULL,
	[wfNodeTitle] [nvarchar](50) NOT NULL,
	[wfnBizMethod] [nvarchar](1000) NULL,
	[wfnMaxNum] [decimal](18, 0) NOT NULL,
	[wfnRoleType] [int] NOT NULL,
	[wfnExt1] [int] NULL,
	[wfnExt2] [nvarchar](100) NULL,
	[fCreatorID] [int] NOT NULL,
	[fCreateTime] [datetime] NOT NULL,
	[fUpdateID] [int] NULL,
	[fUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_wfWorkNodes] PRIMARY KEY CLUSTERED 
(
	[wfnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysFunction_sysMenus]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysFunction_sysMenus] ON [dbo].[sysFunction]
(
	[mID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_OrganStruct_KeyValue]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_OrganStruct_KeyValue] ON [dbo].[sysOrganStruct]
(
	[osCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysPermissList_sysFunction]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysPermissList_sysFunction] ON [dbo].[sysPermissList]
(
	[fID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysPermissList_sysMenus]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysPermissList_sysMenus] ON [dbo].[sysPermissList]
(
	[mID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysPermissList_sysRole]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysPermissList_sysRole] ON [dbo].[sysPermissList]
(
	[rID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysRole_sysKeyValue]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysRole_sysKeyValue] ON [dbo].[sysRole]
(
	[RoleType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysRole_sysOrganStruct]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysRole_sysOrganStruct] ON [dbo].[sysRole]
(
	[eDepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysUserInfo_sysOrganStruct]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysUserInfo_sysOrganStruct] ON [dbo].[sysUserInfo]
(
	[uCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysUserInfo_sysOrganStruct1]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysUserInfo_sysOrganStruct1] ON [dbo].[sysUserInfo]
(
	[uDepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysUserInfo_sysOrganStruct2]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysUserInfo_sysOrganStruct2] ON [dbo].[sysUserInfo]
(
	[uWorkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysUserInfo_Role_sysRole]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysUserInfo_Role_sysRole] ON [dbo].[sysUserInfo_Role]
(
	[rID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_sysUserInfo_Role_sysUserInfo]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_sysUserInfo_Role_sysUserInfo] ON [dbo].[sysUserInfo_Role]
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfProcess_sysKeyValue]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfProcess_sysKeyValue] ON [dbo].[wfProcess]
(
	[wfRFStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfProcess_wfRequestForm]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfProcess_wfRequestForm] ON [dbo].[wfProcess]
(
	[wfRFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfProcess_wfWorkNodes]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfProcess_wfWorkNodes] ON [dbo].[wfProcess]
(
	[wfnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfRequestForm_sysKeyValue]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfRequestForm_sysKeyValue] ON [dbo].[wfRequestForm]
(
	[wfRFPriority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfRequestForm_sysKeyValue1]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfRequestForm_sysKeyValue1] ON [dbo].[wfRequestForm]
(
	[wfRFStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfRequestForm_sysUserInfo]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfRequestForm_sysUserInfo] ON [dbo].[wfRequestForm]
(
	[fCreatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfRequestForm_wfWork]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfRequestForm_wfWork] ON [dbo].[wfRequestForm]
(
	[wfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfWorkBranch_wfWorkNodes]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfWorkBranch_wfWorkNodes] ON [dbo].[wfWorkBranch]
(
	[wfnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfWorkBranch_wfWorkNodes1]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfWorkBranch_wfWorkNodes1] ON [dbo].[wfWorkBranch]
(
	[wfNodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfWorkNodes_sysKeyValue]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfWorkNodes_sysKeyValue] ON [dbo].[wfWorkNodes]
(
	[wfNodeType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfWorkNodes_sysKeyValue1]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfWorkNodes_sysKeyValue1] ON [dbo].[wfWorkNodes]
(
	[wfnRoleType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_wfWorkNodes_wfWork]    Script Date: 2018/9/25 19:33:29 ******/
CREATE NONCLUSTERED INDEX [IX_FK_wfWorkNodes_wfWork] ON [dbo].[wfWorkNodes]
(
	[wfID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sysFunction]  WITH CHECK ADD  CONSTRAINT [FK_sysFunction_sysMenus] FOREIGN KEY([mID])
REFERENCES [dbo].[sysMenus] ([mID])
GO
ALTER TABLE [dbo].[sysFunction] CHECK CONSTRAINT [FK_sysFunction_sysMenus]
GO
ALTER TABLE [dbo].[sysOrganStruct]  WITH CHECK ADD  CONSTRAINT [FK_OrganStruct_KeyValue] FOREIGN KEY([osCateID])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[sysOrganStruct] CHECK CONSTRAINT [FK_OrganStruct_KeyValue]
GO
ALTER TABLE [dbo].[sysPermissList]  WITH CHECK ADD  CONSTRAINT [FK_sysPermissList_sysFunction] FOREIGN KEY([fID])
REFERENCES [dbo].[sysFunction] ([fID])
GO
ALTER TABLE [dbo].[sysPermissList] CHECK CONSTRAINT [FK_sysPermissList_sysFunction]
GO
ALTER TABLE [dbo].[sysPermissList]  WITH CHECK ADD  CONSTRAINT [FK_sysPermissList_sysMenus] FOREIGN KEY([mID])
REFERENCES [dbo].[sysMenus] ([mID])
GO
ALTER TABLE [dbo].[sysPermissList] CHECK CONSTRAINT [FK_sysPermissList_sysMenus]
GO
ALTER TABLE [dbo].[sysPermissList]  WITH CHECK ADD  CONSTRAINT [FK_sysPermissList_sysRole] FOREIGN KEY([rID])
REFERENCES [dbo].[sysRole] ([rID])
GO
ALTER TABLE [dbo].[sysPermissList] CHECK CONSTRAINT [FK_sysPermissList_sysRole]
GO
ALTER TABLE [dbo].[sysRole]  WITH CHECK ADD  CONSTRAINT [FK_sysRole_sysKeyValue] FOREIGN KEY([RoleType])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[sysRole] CHECK CONSTRAINT [FK_sysRole_sysKeyValue]
GO
ALTER TABLE [dbo].[sysRole]  WITH CHECK ADD  CONSTRAINT [FK_sysRole_sysOrganStruct] FOREIGN KEY([eDepID])
REFERENCES [dbo].[sysOrganStruct] ([osID])
GO
ALTER TABLE [dbo].[sysRole] CHECK CONSTRAINT [FK_sysRole_sysOrganStruct]
GO
ALTER TABLE [dbo].[sysUserInfo]  WITH CHECK ADD  CONSTRAINT [FK_sysUserInfo_sysOrganStruct] FOREIGN KEY([uCompanyID])
REFERENCES [dbo].[sysOrganStruct] ([osID])
GO
ALTER TABLE [dbo].[sysUserInfo] CHECK CONSTRAINT [FK_sysUserInfo_sysOrganStruct]
GO
ALTER TABLE [dbo].[sysUserInfo]  WITH CHECK ADD  CONSTRAINT [FK_sysUserInfo_sysOrganStruct1] FOREIGN KEY([uDepID])
REFERENCES [dbo].[sysOrganStruct] ([osID])
GO
ALTER TABLE [dbo].[sysUserInfo] CHECK CONSTRAINT [FK_sysUserInfo_sysOrganStruct1]
GO
ALTER TABLE [dbo].[sysUserInfo]  WITH CHECK ADD  CONSTRAINT [FK_sysUserInfo_sysOrganStruct2] FOREIGN KEY([uWorkGroupID])
REFERENCES [dbo].[sysOrganStruct] ([osID])
GO
ALTER TABLE [dbo].[sysUserInfo] CHECK CONSTRAINT [FK_sysUserInfo_sysOrganStruct2]
GO
ALTER TABLE [dbo].[sysUserInfo_Role]  WITH CHECK ADD  CONSTRAINT [FK_sysUserInfo_Role_sysRole] FOREIGN KEY([rID])
REFERENCES [dbo].[sysRole] ([rID])
GO
ALTER TABLE [dbo].[sysUserInfo_Role] CHECK CONSTRAINT [FK_sysUserInfo_Role_sysRole]
GO
ALTER TABLE [dbo].[sysUserInfo_Role]  WITH CHECK ADD  CONSTRAINT [FK_sysUserInfo_Role_sysUserInfo] FOREIGN KEY([uID])
REFERENCES [dbo].[sysUserInfo] ([uID])
GO
ALTER TABLE [dbo].[sysUserInfo_Role] CHECK CONSTRAINT [FK_sysUserInfo_Role_sysUserInfo]
GO
ALTER TABLE [dbo].[wfProcess]  WITH CHECK ADD  CONSTRAINT [FK_wfProcess_sysKeyValue] FOREIGN KEY([wfRFStatus])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[wfProcess] CHECK CONSTRAINT [FK_wfProcess_sysKeyValue]
GO
ALTER TABLE [dbo].[wfProcess]  WITH CHECK ADD  CONSTRAINT [FK_wfProcess_wfRequestForm] FOREIGN KEY([wfRFID])
REFERENCES [dbo].[wfRequestForm] ([wfRFID])
GO
ALTER TABLE [dbo].[wfProcess] CHECK CONSTRAINT [FK_wfProcess_wfRequestForm]
GO
ALTER TABLE [dbo].[wfProcess]  WITH CHECK ADD  CONSTRAINT [FK_wfProcess_wfWorkNodes] FOREIGN KEY([wfnID])
REFERENCES [dbo].[wfWorkNodes] ([wfnID])
GO
ALTER TABLE [dbo].[wfProcess] CHECK CONSTRAINT [FK_wfProcess_wfWorkNodes]
GO
ALTER TABLE [dbo].[wfRequestForm]  WITH CHECK ADD  CONSTRAINT [FK_wfRequestForm_sysKeyValue] FOREIGN KEY([wfRFPriority])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[wfRequestForm] CHECK CONSTRAINT [FK_wfRequestForm_sysKeyValue]
GO
ALTER TABLE [dbo].[wfRequestForm]  WITH CHECK ADD  CONSTRAINT [FK_wfRequestForm_sysKeyValue1] FOREIGN KEY([wfRFStatus])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[wfRequestForm] CHECK CONSTRAINT [FK_wfRequestForm_sysKeyValue1]
GO
ALTER TABLE [dbo].[wfRequestForm]  WITH CHECK ADD  CONSTRAINT [FK_wfRequestForm_sysUserInfo] FOREIGN KEY([fCreatorID])
REFERENCES [dbo].[sysUserInfo] ([uID])
GO
ALTER TABLE [dbo].[wfRequestForm] CHECK CONSTRAINT [FK_wfRequestForm_sysUserInfo]
GO
ALTER TABLE [dbo].[wfRequestForm]  WITH CHECK ADD  CONSTRAINT [FK_wfRequestForm_wfWork] FOREIGN KEY([wfID])
REFERENCES [dbo].[wfWork] ([wfID])
GO
ALTER TABLE [dbo].[wfRequestForm] CHECK CONSTRAINT [FK_wfRequestForm_wfWork]
GO
ALTER TABLE [dbo].[wfWorkBranch]  WITH CHECK ADD  CONSTRAINT [FK_wfWorkBranch_wfWorkNodes] FOREIGN KEY([wfnID])
REFERENCES [dbo].[wfWorkNodes] ([wfnID])
GO
ALTER TABLE [dbo].[wfWorkBranch] CHECK CONSTRAINT [FK_wfWorkBranch_wfWorkNodes]
GO
ALTER TABLE [dbo].[wfWorkBranch]  WITH CHECK ADD  CONSTRAINT [FK_wfWorkBranch_wfWorkNodes1] FOREIGN KEY([wfNodeID])
REFERENCES [dbo].[wfWorkNodes] ([wfnID])
GO
ALTER TABLE [dbo].[wfWorkBranch] CHECK CONSTRAINT [FK_wfWorkBranch_wfWorkNodes1]
GO
ALTER TABLE [dbo].[wfWorkNodes]  WITH CHECK ADD  CONSTRAINT [FK_wfWorkNodes_sysKeyValue] FOREIGN KEY([wfNodeType])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[wfWorkNodes] CHECK CONSTRAINT [FK_wfWorkNodes_sysKeyValue]
GO
ALTER TABLE [dbo].[wfWorkNodes]  WITH CHECK ADD  CONSTRAINT [FK_wfWorkNodes_sysKeyValue1] FOREIGN KEY([wfnRoleType])
REFERENCES [dbo].[sysKeyValue] ([KID])
GO
ALTER TABLE [dbo].[wfWorkNodes] CHECK CONSTRAINT [FK_wfWorkNodes_sysKeyValue1]
GO
ALTER TABLE [dbo].[wfWorkNodes]  WITH CHECK ADD  CONSTRAINT [FK_wfWorkNodes_wfWork] FOREIGN KEY([wfID])
REFERENCES [dbo].[wfWork] ([wfID])
GO
ALTER TABLE [dbo].[wfWorkNodes] CHECK CONSTRAINT [FK_wfWorkNodes_wfWork]
GO
USE [master]
GO
ALTER DATABASE [JKCRM] SET  READ_WRITE 
GO
