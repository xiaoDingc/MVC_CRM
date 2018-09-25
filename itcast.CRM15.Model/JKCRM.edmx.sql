
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/25/2018 09:30:28
-- Generated from EDMX file: F:\mvc大项目\pack\我的资源\传智播客.NET就业班大结局版\黑马.NET第15期\7 张扬波 MVC大项目\20140918 MVC大项目第1天 框架搭建\20140918 MVC大项目第1天 框架搭建\源码和笔记\itcast.CRM15\itcast.CRM15.Model\JKCRM.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [JKCRM];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_OrganStruct_KeyValue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysOrganStruct] DROP CONSTRAINT [FK_OrganStruct_KeyValue];
GO
IF OBJECT_ID(N'[dbo].[FK_sysFunction_sysMenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysFunction] DROP CONSTRAINT [FK_sysFunction_sysMenus];
GO
IF OBJECT_ID(N'[dbo].[FK_sysPermissList_sysFunction]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysPermissList] DROP CONSTRAINT [FK_sysPermissList_sysFunction];
GO
IF OBJECT_ID(N'[dbo].[FK_sysPermissList_sysMenus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysPermissList] DROP CONSTRAINT [FK_sysPermissList_sysMenus];
GO
IF OBJECT_ID(N'[dbo].[FK_sysPermissList_sysRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysPermissList] DROP CONSTRAINT [FK_sysPermissList_sysRole];
GO
IF OBJECT_ID(N'[dbo].[FK_sysRole_sysKeyValue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysRole] DROP CONSTRAINT [FK_sysRole_sysKeyValue];
GO
IF OBJECT_ID(N'[dbo].[FK_sysRole_sysOrganStruct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysRole] DROP CONSTRAINT [FK_sysRole_sysOrganStruct];
GO
IF OBJECT_ID(N'[dbo].[FK_sysUserInfo_Role_sysRole]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysUserInfo_Role] DROP CONSTRAINT [FK_sysUserInfo_Role_sysRole];
GO
IF OBJECT_ID(N'[dbo].[FK_sysUserInfo_Role_sysUserInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysUserInfo_Role] DROP CONSTRAINT [FK_sysUserInfo_Role_sysUserInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_sysUserInfo_sysOrganStruct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysUserInfo] DROP CONSTRAINT [FK_sysUserInfo_sysOrganStruct];
GO
IF OBJECT_ID(N'[dbo].[FK_sysUserInfo_sysOrganStruct1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysUserInfo] DROP CONSTRAINT [FK_sysUserInfo_sysOrganStruct1];
GO
IF OBJECT_ID(N'[dbo].[FK_sysUserInfo_sysOrganStruct2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sysUserInfo] DROP CONSTRAINT [FK_sysUserInfo_sysOrganStruct2];
GO
IF OBJECT_ID(N'[dbo].[FK_wfProcess_sysKeyValue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfProcess] DROP CONSTRAINT [FK_wfProcess_sysKeyValue];
GO
IF OBJECT_ID(N'[dbo].[FK_wfProcess_wfRequestForm]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfProcess] DROP CONSTRAINT [FK_wfProcess_wfRequestForm];
GO
IF OBJECT_ID(N'[dbo].[FK_wfProcess_wfWorkNodes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfProcess] DROP CONSTRAINT [FK_wfProcess_wfWorkNodes];
GO
IF OBJECT_ID(N'[dbo].[FK_wfRequestForm_sysKeyValue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfRequestForm] DROP CONSTRAINT [FK_wfRequestForm_sysKeyValue];
GO
IF OBJECT_ID(N'[dbo].[FK_wfRequestForm_sysKeyValue1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfRequestForm] DROP CONSTRAINT [FK_wfRequestForm_sysKeyValue1];
GO
IF OBJECT_ID(N'[dbo].[FK_wfRequestForm_sysUserInfo]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfRequestForm] DROP CONSTRAINT [FK_wfRequestForm_sysUserInfo];
GO
IF OBJECT_ID(N'[dbo].[FK_wfRequestForm_wfWork]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfRequestForm] DROP CONSTRAINT [FK_wfRequestForm_wfWork];
GO
IF OBJECT_ID(N'[dbo].[FK_wfWorkBranch_wfWorkNodes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfWorkBranch] DROP CONSTRAINT [FK_wfWorkBranch_wfWorkNodes];
GO
IF OBJECT_ID(N'[dbo].[FK_wfWorkBranch_wfWorkNodes1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfWorkBranch] DROP CONSTRAINT [FK_wfWorkBranch_wfWorkNodes1];
GO
IF OBJECT_ID(N'[dbo].[FK_wfWorkNodes_sysKeyValue]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfWorkNodes] DROP CONSTRAINT [FK_wfWorkNodes_sysKeyValue];
GO
IF OBJECT_ID(N'[dbo].[FK_wfWorkNodes_sysKeyValue1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfWorkNodes] DROP CONSTRAINT [FK_wfWorkNodes_sysKeyValue1];
GO
IF OBJECT_ID(N'[dbo].[FK_wfWorkNodes_wfWork]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[wfWorkNodes] DROP CONSTRAINT [FK_wfWorkNodes_wfWork];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysFunction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysFunction];
GO
IF OBJECT_ID(N'[dbo].[sysKeyValue]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysKeyValue];
GO
IF OBJECT_ID(N'[dbo].[sysMenus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysMenus];
GO
IF OBJECT_ID(N'[dbo].[sysOrganStruct]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysOrganStruct];
GO
IF OBJECT_ID(N'[dbo].[sysPermissList]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysPermissList];
GO
IF OBJECT_ID(N'[dbo].[sysRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysRole];
GO
IF OBJECT_ID(N'[dbo].[sysUserInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysUserInfo];
GO
IF OBJECT_ID(N'[dbo].[sysUserInfo_Role]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysUserInfo_Role];
GO
IF OBJECT_ID(N'[dbo].[wfProcess]', 'U') IS NOT NULL
    DROP TABLE [dbo].[wfProcess];
GO
IF OBJECT_ID(N'[dbo].[wfRequestForm]', 'U') IS NOT NULL
    DROP TABLE [dbo].[wfRequestForm];
GO
IF OBJECT_ID(N'[dbo].[wfWork]', 'U') IS NOT NULL
    DROP TABLE [dbo].[wfWork];
GO
IF OBJECT_ID(N'[dbo].[wfWorkBranch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[wfWorkBranch];
GO
IF OBJECT_ID(N'[dbo].[wfWorkNodes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[wfWorkNodes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysFunction'
CREATE TABLE [dbo].[sysFunction] (
    [fID] int IDENTITY(1,1) NOT NULL,
    [mID] int  NOT NULL,
    [fName] nvarchar(100)  NOT NULL,
    [fFunction] nvarchar(100)  NOT NULL,
    [fPicname] nvarchar(100)  NULL,
    [fStatus] int  NULL,
    [fCreatorID] int  NOT NULL,
    [fCreateTime] datetime  NOT NULL,
    [fUpdateID] int  NULL,
    [fUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'sysKeyValue'
CREATE TABLE [dbo].[sysKeyValue] (
    [KID] int IDENTITY(1,1) NOT NULL,
    [ParentID] int  NOT NULL,
    [KType] int  NOT NULL,
    [KName] nvarchar(100)  NOT NULL,
    [Kvalue] nvarchar(20)  NULL,
    [KRemark] nvarchar(100)  NULL
);
GO

-- Creating table 'sysMenus'
CREATE TABLE [dbo].[sysMenus] (
    [mID] int IDENTITY(1,1) NOT NULL,
    [mParentID] int  NOT NULL,
    [mName] nvarchar(100)  NOT NULL,
    [mUrl] nvarchar(200)  NOT NULL,
    [mArea] nvarchar(max)  NULL,
    [mController] nvarchar(max)  NULL,
    [mAction] nvarchar(max)  NULL,
    [mSortid] int  NOT NULL,
    [mStatus] int  NOT NULL,
    [mPicname] varchar(30)  NOT NULL,
    [mLevel] int  NOT NULL,
    [mExp1] nvarchar(50)  NULL,
    [mExp2] int  NULL,
    [mCreatorID] int  NOT NULL,
    [mCreateTime] datetime  NOT NULL,
    [mUpdateID] int  NULL,
    [mUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'sysOrganStruct'
CREATE TABLE [dbo].[sysOrganStruct] (
    [osID] int IDENTITY(1,1) NOT NULL,
    [osParentID] int  NOT NULL,
    [osName] nvarchar(100)  NOT NULL,
    [osCode] nvarchar(50)  NOT NULL,
    [osCateID] int  NOT NULL,
    [osLevel] int  NULL,
    [osShortName] nvarchar(100)  NULL,
    [osRemark] nvarchar(500)  NULL,
    [osStatus] int  NULL,
    [osCreatorID] int  NULL,
    [osCreateTime] datetime  NOT NULL,
    [osUpdateID] int  NULL,
    [osUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'sysPermissList'
CREATE TABLE [dbo].[sysPermissList] (
    [plid] int IDENTITY(1,1) NOT NULL,
    [rID] int  NOT NULL,
    [mID] int  NOT NULL,
    [fID] int  NOT NULL,
    [plCreatorID] int  NOT NULL,
    [plCreateTime] datetime  NOT NULL
);
GO

-- Creating table 'sysRole'
CREATE TABLE [dbo].[sysRole] (
    [rID] int IDENTITY(1,1) NOT NULL,
    [eDepID] int  NULL,
    [RoleType] int  NOT NULL,
    [rName] nvarchar(50)  NULL,
    [rRemark] nvarchar(100)  NULL,
    [rSort] int  NOT NULL,
    [rStatus] int  NOT NULL,
    [rCreatorID] int  NOT NULL,
    [rCreateTime] datetime  NOT NULL,
    [rUpdateID] int  NULL,
    [rUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'sysUserInfo'
CREATE TABLE [dbo].[sysUserInfo] (
    [uID] int IDENTITY(1,1) NOT NULL,
    [uLoginName] nvarchar(100)  NOT NULL,
    [uLoginPWD] nvarchar(100)  NOT NULL,
    [uRealName] nvarchar(100)  NOT NULL,
    [uTelphone] nvarchar(50)  NULL,
    [uMobile] nvarchar(15)  NULL,
    [uEmial] nvarchar(30)  NULL,
    [uQQ] nvarchar(12)  NULL,
    [uGender] int  NOT NULL,
    [uStatus] int  NOT NULL,
    [uCompanyID] int  NOT NULL,
    [uDepID] int  NULL,
    [uWorkGroupID] int  NULL,
    [uRemark] nvarchar(500)  NULL,
    [uCreatorID] int  NOT NULL,
    [uCreateTime] datetime  NOT NULL,
    [uUpdateID] int  NULL,
    [uUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'sysUserInfo_Role'
CREATE TABLE [dbo].[sysUserInfo_Role] (
    [urID] int IDENTITY(1,1) NOT NULL,
    [uID] int  NOT NULL,
    [rID] int  NOT NULL
);
GO

-- Creating table 'wfProcess'
CREATE TABLE [dbo].[wfProcess] (
    [wfPID] int IDENTITY(1,1) NOT NULL,
    [wfRFID] int  NOT NULL,
    [wfProcessor] int  NOT NULL,
    [wfRFStatus] int  NOT NULL,
    [wfPDescription] nvarchar(200)  NULL,
    [wfnID] int  NOT NULL,
    [wfPExt1] nvarchar(100)  NULL,
    [wfPExt2] int  NULL,
    [fCreatorID] int  NOT NULL,
    [fCreateTime] datetime  NOT NULL,
    [fUpdateTime] datetime  NULL
);
GO

-- Creating table 'wfRequestForm'
CREATE TABLE [dbo].[wfRequestForm] (
    [wfRFID] int IDENTITY(1,1) NOT NULL,
    [wfID] int  NOT NULL,
    [wfRFTitle] nvarchar(100)  NOT NULL,
    [wfRFRemark] nvarchar(1000)  NULL,
    [wfRFPriority] int  NOT NULL,
    [wfRFStatus] int  NOT NULL,
    [wfRFExt1] nvarchar(100)  NULL,
    [wfRFExt2] int  NULL,
    [wfRFLogicSymbol] varchar(2)  NULL,
    [wfRFNum] decimal(18,0)  NOT NULL,
    [fCreatorID] int  NOT NULL,
    [fCreateTime] datetime  NOT NULL,
    [fUpdateTime] datetime  NULL
);
GO

-- Creating table 'wfWork'
CREATE TABLE [dbo].[wfWork] (
    [wfID] int IDENTITY(1,1) NOT NULL,
    [wfTitle] nvarchar(50)  NOT NULL,
    [wfStatus] int  NOT NULL,
    [wfRemark] nvarchar(200)  NULL,
    [fCreatorID] int  NOT NULL,
    [fCreateTime] datetime  NOT NULL,
    [fUpdateID] int  NULL,
    [fUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'wfWorkBranch'
CREATE TABLE [dbo].[wfWorkBranch] (
    [wfbID] int IDENTITY(1,1) NOT NULL,
    [wfnID] int  NOT NULL,
    [wfnToken] nvarchar(20)  NOT NULL,
    [wfNodeID] int  NOT NULL,
    [fCreatorID] int  NOT NULL,
    [fCreateTime] datetime  NOT NULL,
    [fUpdateID] int  NULL,
    [fUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'wfWorkNodes'
CREATE TABLE [dbo].[wfWorkNodes] (
    [wfnID] int IDENTITY(1,1) NOT NULL,
    [wfID] int  NOT NULL,
    [wfnOrderNo] int  NOT NULL,
    [wfNodeType] int  NOT NULL,
    [wfNodeTitle] nvarchar(50)  NOT NULL,
    [wfnBizMethod] nvarchar(1000)  NULL,
    [wfnMaxNum] decimal(18,0)  NOT NULL,
    [wfnRoleType] int  NOT NULL,
    [wfnExt1] int  NULL,
    [wfnExt2] nvarchar(100)  NULL,
    [fCreatorID] int  NOT NULL,
    [fCreateTime] datetime  NOT NULL,
    [fUpdateID] int  NULL,
    [fUpdateTime] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [fID] in table 'sysFunction'
ALTER TABLE [dbo].[sysFunction]
ADD CONSTRAINT [PK_sysFunction]
    PRIMARY KEY CLUSTERED ([fID] ASC);
GO

-- Creating primary key on [KID] in table 'sysKeyValue'
ALTER TABLE [dbo].[sysKeyValue]
ADD CONSTRAINT [PK_sysKeyValue]
    PRIMARY KEY CLUSTERED ([KID] ASC);
GO

-- Creating primary key on [mID] in table 'sysMenus'
ALTER TABLE [dbo].[sysMenus]
ADD CONSTRAINT [PK_sysMenus]
    PRIMARY KEY CLUSTERED ([mID] ASC);
GO

-- Creating primary key on [osID] in table 'sysOrganStruct'
ALTER TABLE [dbo].[sysOrganStruct]
ADD CONSTRAINT [PK_sysOrganStruct]
    PRIMARY KEY CLUSTERED ([osID] ASC);
GO

-- Creating primary key on [plid] in table 'sysPermissList'
ALTER TABLE [dbo].[sysPermissList]
ADD CONSTRAINT [PK_sysPermissList]
    PRIMARY KEY CLUSTERED ([plid] ASC);
GO

-- Creating primary key on [rID] in table 'sysRole'
ALTER TABLE [dbo].[sysRole]
ADD CONSTRAINT [PK_sysRole]
    PRIMARY KEY CLUSTERED ([rID] ASC);
GO

-- Creating primary key on [uID] in table 'sysUserInfo'
ALTER TABLE [dbo].[sysUserInfo]
ADD CONSTRAINT [PK_sysUserInfo]
    PRIMARY KEY CLUSTERED ([uID] ASC);
GO

-- Creating primary key on [urID] in table 'sysUserInfo_Role'
ALTER TABLE [dbo].[sysUserInfo_Role]
ADD CONSTRAINT [PK_sysUserInfo_Role]
    PRIMARY KEY CLUSTERED ([urID] ASC);
GO

-- Creating primary key on [wfPID] in table 'wfProcess'
ALTER TABLE [dbo].[wfProcess]
ADD CONSTRAINT [PK_wfProcess]
    PRIMARY KEY CLUSTERED ([wfPID] ASC);
GO

-- Creating primary key on [wfRFID] in table 'wfRequestForm'
ALTER TABLE [dbo].[wfRequestForm]
ADD CONSTRAINT [PK_wfRequestForm]
    PRIMARY KEY CLUSTERED ([wfRFID] ASC);
GO

-- Creating primary key on [wfID] in table 'wfWork'
ALTER TABLE [dbo].[wfWork]
ADD CONSTRAINT [PK_wfWork]
    PRIMARY KEY CLUSTERED ([wfID] ASC);
GO

-- Creating primary key on [wfbID] in table 'wfWorkBranch'
ALTER TABLE [dbo].[wfWorkBranch]
ADD CONSTRAINT [PK_wfWorkBranch]
    PRIMARY KEY CLUSTERED ([wfbID] ASC);
GO

-- Creating primary key on [wfnID] in table 'wfWorkNodes'
ALTER TABLE [dbo].[wfWorkNodes]
ADD CONSTRAINT [PK_wfWorkNodes]
    PRIMARY KEY CLUSTERED ([wfnID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [mID] in table 'sysFunction'
ALTER TABLE [dbo].[sysFunction]
ADD CONSTRAINT [FK_sysFunction_sysMenus]
    FOREIGN KEY ([mID])
    REFERENCES [dbo].[sysMenus]
        ([mID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysFunction_sysMenus'
CREATE INDEX [IX_FK_sysFunction_sysMenus]
ON [dbo].[sysFunction]
    ([mID]);
GO

-- Creating foreign key on [fID] in table 'sysPermissList'
ALTER TABLE [dbo].[sysPermissList]
ADD CONSTRAINT [FK_sysPermissList_sysFunction]
    FOREIGN KEY ([fID])
    REFERENCES [dbo].[sysFunction]
        ([fID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysPermissList_sysFunction'
CREATE INDEX [IX_FK_sysPermissList_sysFunction]
ON [dbo].[sysPermissList]
    ([fID]);
GO

-- Creating foreign key on [osCateID] in table 'sysOrganStruct'
ALTER TABLE [dbo].[sysOrganStruct]
ADD CONSTRAINT [FK_OrganStruct_KeyValue]
    FOREIGN KEY ([osCateID])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrganStruct_KeyValue'
CREATE INDEX [IX_FK_OrganStruct_KeyValue]
ON [dbo].[sysOrganStruct]
    ([osCateID]);
GO

-- Creating foreign key on [RoleType] in table 'sysRole'
ALTER TABLE [dbo].[sysRole]
ADD CONSTRAINT [FK_sysRole_sysKeyValue]
    FOREIGN KEY ([RoleType])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysRole_sysKeyValue'
CREATE INDEX [IX_FK_sysRole_sysKeyValue]
ON [dbo].[sysRole]
    ([RoleType]);
GO

-- Creating foreign key on [wfRFStatus] in table 'wfProcess'
ALTER TABLE [dbo].[wfProcess]
ADD CONSTRAINT [FK_wfProcess_sysKeyValue]
    FOREIGN KEY ([wfRFStatus])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfProcess_sysKeyValue'
CREATE INDEX [IX_FK_wfProcess_sysKeyValue]
ON [dbo].[wfProcess]
    ([wfRFStatus]);
GO

-- Creating foreign key on [wfRFPriority] in table 'wfRequestForm'
ALTER TABLE [dbo].[wfRequestForm]
ADD CONSTRAINT [FK_wfRequestForm_sysKeyValue]
    FOREIGN KEY ([wfRFPriority])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfRequestForm_sysKeyValue'
CREATE INDEX [IX_FK_wfRequestForm_sysKeyValue]
ON [dbo].[wfRequestForm]
    ([wfRFPriority]);
GO

-- Creating foreign key on [wfRFStatus] in table 'wfRequestForm'
ALTER TABLE [dbo].[wfRequestForm]
ADD CONSTRAINT [FK_wfRequestForm_sysKeyValue1]
    FOREIGN KEY ([wfRFStatus])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfRequestForm_sysKeyValue1'
CREATE INDEX [IX_FK_wfRequestForm_sysKeyValue1]
ON [dbo].[wfRequestForm]
    ([wfRFStatus]);
GO

-- Creating foreign key on [wfNodeType] in table 'wfWorkNodes'
ALTER TABLE [dbo].[wfWorkNodes]
ADD CONSTRAINT [FK_wfWorkNodes_sysKeyValue]
    FOREIGN KEY ([wfNodeType])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfWorkNodes_sysKeyValue'
CREATE INDEX [IX_FK_wfWorkNodes_sysKeyValue]
ON [dbo].[wfWorkNodes]
    ([wfNodeType]);
GO

-- Creating foreign key on [wfnRoleType] in table 'wfWorkNodes'
ALTER TABLE [dbo].[wfWorkNodes]
ADD CONSTRAINT [FK_wfWorkNodes_sysKeyValue1]
    FOREIGN KEY ([wfnRoleType])
    REFERENCES [dbo].[sysKeyValue]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfWorkNodes_sysKeyValue1'
CREATE INDEX [IX_FK_wfWorkNodes_sysKeyValue1]
ON [dbo].[wfWorkNodes]
    ([wfnRoleType]);
GO

-- Creating foreign key on [mID] in table 'sysPermissList'
ALTER TABLE [dbo].[sysPermissList]
ADD CONSTRAINT [FK_sysPermissList_sysMenus]
    FOREIGN KEY ([mID])
    REFERENCES [dbo].[sysMenus]
        ([mID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysPermissList_sysMenus'
CREATE INDEX [IX_FK_sysPermissList_sysMenus]
ON [dbo].[sysPermissList]
    ([mID]);
GO

-- Creating foreign key on [eDepID] in table 'sysRole'
ALTER TABLE [dbo].[sysRole]
ADD CONSTRAINT [FK_sysRole_sysOrganStruct]
    FOREIGN KEY ([eDepID])
    REFERENCES [dbo].[sysOrganStruct]
        ([osID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysRole_sysOrganStruct'
CREATE INDEX [IX_FK_sysRole_sysOrganStruct]
ON [dbo].[sysRole]
    ([eDepID]);
GO

-- Creating foreign key on [uCompanyID] in table 'sysUserInfo'
ALTER TABLE [dbo].[sysUserInfo]
ADD CONSTRAINT [FK_sysUserInfo_sysOrganStruct]
    FOREIGN KEY ([uCompanyID])
    REFERENCES [dbo].[sysOrganStruct]
        ([osID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysUserInfo_sysOrganStruct'
CREATE INDEX [IX_FK_sysUserInfo_sysOrganStruct]
ON [dbo].[sysUserInfo]
    ([uCompanyID]);
GO

-- Creating foreign key on [uDepID] in table 'sysUserInfo'
ALTER TABLE [dbo].[sysUserInfo]
ADD CONSTRAINT [FK_sysUserInfo_sysOrganStruct1]
    FOREIGN KEY ([uDepID])
    REFERENCES [dbo].[sysOrganStruct]
        ([osID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysUserInfo_sysOrganStruct1'
CREATE INDEX [IX_FK_sysUserInfo_sysOrganStruct1]
ON [dbo].[sysUserInfo]
    ([uDepID]);
GO

-- Creating foreign key on [uWorkGroupID] in table 'sysUserInfo'
ALTER TABLE [dbo].[sysUserInfo]
ADD CONSTRAINT [FK_sysUserInfo_sysOrganStruct2]
    FOREIGN KEY ([uWorkGroupID])
    REFERENCES [dbo].[sysOrganStruct]
        ([osID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysUserInfo_sysOrganStruct2'
CREATE INDEX [IX_FK_sysUserInfo_sysOrganStruct2]
ON [dbo].[sysUserInfo]
    ([uWorkGroupID]);
GO

-- Creating foreign key on [rID] in table 'sysPermissList'
ALTER TABLE [dbo].[sysPermissList]
ADD CONSTRAINT [FK_sysPermissList_sysRole]
    FOREIGN KEY ([rID])
    REFERENCES [dbo].[sysRole]
        ([rID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysPermissList_sysRole'
CREATE INDEX [IX_FK_sysPermissList_sysRole]
ON [dbo].[sysPermissList]
    ([rID]);
GO

-- Creating foreign key on [rID] in table 'sysUserInfo_Role'
ALTER TABLE [dbo].[sysUserInfo_Role]
ADD CONSTRAINT [FK_sysUserInfo_Role_sysRole]
    FOREIGN KEY ([rID])
    REFERENCES [dbo].[sysRole]
        ([rID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysUserInfo_Role_sysRole'
CREATE INDEX [IX_FK_sysUserInfo_Role_sysRole]
ON [dbo].[sysUserInfo_Role]
    ([rID]);
GO

-- Creating foreign key on [uID] in table 'sysUserInfo_Role'
ALTER TABLE [dbo].[sysUserInfo_Role]
ADD CONSTRAINT [FK_sysUserInfo_Role_sysUserInfo]
    FOREIGN KEY ([uID])
    REFERENCES [dbo].[sysUserInfo]
        ([uID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sysUserInfo_Role_sysUserInfo'
CREATE INDEX [IX_FK_sysUserInfo_Role_sysUserInfo]
ON [dbo].[sysUserInfo_Role]
    ([uID]);
GO

-- Creating foreign key on [fCreatorID] in table 'wfRequestForm'
ALTER TABLE [dbo].[wfRequestForm]
ADD CONSTRAINT [FK_wfRequestForm_sysUserInfo]
    FOREIGN KEY ([fCreatorID])
    REFERENCES [dbo].[sysUserInfo]
        ([uID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfRequestForm_sysUserInfo'
CREATE INDEX [IX_FK_wfRequestForm_sysUserInfo]
ON [dbo].[wfRequestForm]
    ([fCreatorID]);
GO

-- Creating foreign key on [wfRFID] in table 'wfProcess'
ALTER TABLE [dbo].[wfProcess]
ADD CONSTRAINT [FK_wfProcess_wfRequestForm]
    FOREIGN KEY ([wfRFID])
    REFERENCES [dbo].[wfRequestForm]
        ([wfRFID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfProcess_wfRequestForm'
CREATE INDEX [IX_FK_wfProcess_wfRequestForm]
ON [dbo].[wfProcess]
    ([wfRFID]);
GO

-- Creating foreign key on [wfnID] in table 'wfProcess'
ALTER TABLE [dbo].[wfProcess]
ADD CONSTRAINT [FK_wfProcess_wfWorkNodes]
    FOREIGN KEY ([wfnID])
    REFERENCES [dbo].[wfWorkNodes]
        ([wfnID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfProcess_wfWorkNodes'
CREATE INDEX [IX_FK_wfProcess_wfWorkNodes]
ON [dbo].[wfProcess]
    ([wfnID]);
GO

-- Creating foreign key on [wfID] in table 'wfRequestForm'
ALTER TABLE [dbo].[wfRequestForm]
ADD CONSTRAINT [FK_wfRequestForm_wfWork]
    FOREIGN KEY ([wfID])
    REFERENCES [dbo].[wfWork]
        ([wfID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfRequestForm_wfWork'
CREATE INDEX [IX_FK_wfRequestForm_wfWork]
ON [dbo].[wfRequestForm]
    ([wfID]);
GO

-- Creating foreign key on [wfID] in table 'wfWorkNodes'
ALTER TABLE [dbo].[wfWorkNodes]
ADD CONSTRAINT [FK_wfWorkNodes_wfWork]
    FOREIGN KEY ([wfID])
    REFERENCES [dbo].[wfWork]
        ([wfID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfWorkNodes_wfWork'
CREATE INDEX [IX_FK_wfWorkNodes_wfWork]
ON [dbo].[wfWorkNodes]
    ([wfID]);
GO

-- Creating foreign key on [wfnID] in table 'wfWorkBranch'
ALTER TABLE [dbo].[wfWorkBranch]
ADD CONSTRAINT [FK_wfWorkBranch_wfWorkNodes]
    FOREIGN KEY ([wfnID])
    REFERENCES [dbo].[wfWorkNodes]
        ([wfnID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfWorkBranch_wfWorkNodes'
CREATE INDEX [IX_FK_wfWorkBranch_wfWorkNodes]
ON [dbo].[wfWorkBranch]
    ([wfnID]);
GO

-- Creating foreign key on [wfNodeID] in table 'wfWorkBranch'
ALTER TABLE [dbo].[wfWorkBranch]
ADD CONSTRAINT [FK_wfWorkBranch_wfWorkNodes1]
    FOREIGN KEY ([wfNodeID])
    REFERENCES [dbo].[wfWorkNodes]
        ([wfnID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_wfWorkBranch_wfWorkNodes1'
CREATE INDEX [IX_FK_wfWorkBranch_wfWorkNodes1]
ON [dbo].[wfWorkBranch]
    ([wfNodeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------