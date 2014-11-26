USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysDepartment]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysDepartment](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnglishName] [nvarchar](50) NULL,
	[OrganizationalId] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Adddrss] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](30) NULL,
	[Remark] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedTime] [datetime] NULL,
	[LastupdateBy] [nvarchar](20) NULL,
	[LastupdateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'EnglishName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯�ṹ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'OrganizationalId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'ParentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'Adddrss'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'Phone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'Fax'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'Remark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'LastupdateBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment', @level2type=N'COLUMN',@level2name=N'LastupdateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���Žṹ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysDepartment'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysEmployees]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysEmployees](
	[Id] [uniqueidentifier] NOT NULL,
	[Number] [nvarchar](20) NOT NULL,
	[JobNumber] [nvarchar](20) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sex] [int] NOT NULL,
	[Birth] [datetime] NULL,
	[Telephone] [nvarchar](50) NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[EntryTime] [datetime] NULL,
	[QuitTime] [datetime] NULL,
	[PositionId] [uniqueidentifier] NOT NULL,
	[WorkPart] [nvarchar](50) NULL,
	[SchoolRecord] [int] NOT NULL,
	[WorkPlaceWant] [nvarchar](250) NULL,
	[WorkRank] [nvarchar](250) NULL,
	[WorkCompetence] [nvarchar](250) NULL,
	[CurrentProjectId] [uniqueidentifier] NULL,
	[WorkExperience] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Census] [nvarchar](50) NULL,
	[NativePlace] [nvarchar](250) NULL,
	[Nation] [nvarchar](50) NULL,
	[Individualphone] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[IndirectContacts] [nvarchar](50) NULL,
	[IndirectContactsPhone] [nvarchar](50) NULL,
	[Idcard] [nvarchar](50) NULL,
	[Postalcode] [nvarchar](20) NULL,
	[Finishschool] [nvarchar](20) NULL,
	[Finishtime] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedTime] [datetime] NULL,
	[LastupdateBy] [nvarchar](20) NULL,
	[LastupdateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Number'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Զ���Ա�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'JobNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա���Ա�  1��   2Ů  3����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Sex'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա����������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Birth'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Telephone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ְʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'EntryTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ְλ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'PositionId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'WorkPart'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ѧλ   ö��  1����    2��ר   3����   4��ʿ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'SchoolRecord'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ص�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'WorkPlaceWant'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'WorkRank'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'WorkCompetence'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����������Ŀ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'CurrentProjectId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'WorkExperience'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ס��ַ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Address'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Census'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'NativePlace'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Nation'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ϵ�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Individualphone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Email'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ϵ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'IndirectContacts'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ϵ�˵绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'IndirectContactsPhone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���֤��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Idcard'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Finishschool'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ҵʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Finishtime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'Remark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'LastupdateBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees', @level2type=N'COLUMN',@level2name=N'LastupdateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysEmployees'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysGroup]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysGroup](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnglishName] [nvarchar](50) NULL,
	[OrganizationalId] [uniqueidentifier] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[IsEnable] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedTime] [datetime] NULL,
	[LastupdateBy] [nvarchar](50) NULL,
	[LastupdateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'EnglishName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������֯�ṹ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'OrganizationalId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'Remark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����  0����     1������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'IsEnable'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ɾ��   0 ��    1��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'LastupdateBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup', @level2type=N'COLUMN',@level2name=N'LastupdateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroup'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysGroupMenu]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysGroupMenu](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[OperationIds] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroupMenu', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroupMenu', @level2type=N'COLUMN',@level2name=N'GroupId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroupMenu', @level2type=N'COLUMN',@level2name=N'MenuId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵���ΪID�� ��,����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroupMenu', @level2type=N'COLUMN',@level2name=N'OperationIds'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ɫ�˵�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysGroupMenu'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysLog]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SysLog](
	[Id] [uniqueidentifier] NOT NULL,
	[EventId] [int] NOT NULL,
	[EventName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[CreateAt] [datetime] NOT NULL,
	[IP] [varchar](20) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[OrganizationalId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_SysLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysMenu]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysMenu](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Title] [nvarchar](50) NOT NULL,
	[EnglishTitle] [nvarchar](50) NULL,
	[PinYingName] [nvarchar](20) NULL,
	[PageUrl] [nvarchar](50) NULL,
	[LocationType] [nvarchar](50) NULL,
	[Depth] [int] NOT NULL,
	[IconUrl] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](50) NULL,
	[Ordinal] [int] NULL,
	[FullName] [nvarchar](20) NULL,
	[IsEnable] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[CraetedBy] [nvarchar](20) NULL,
	[CreatedTime] [datetime] NULL,
	[LastupdateBy] [nvarchar](20) NULL,
	[LastupdateTime] [datetime] NULL,
 CONSTRAINT [PK__SysMenu__3214EC077D98A078] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ϼ��˵�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'ParentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'EnglishTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ƴ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'PinYingName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'PageUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ת��ʽ   ö�� 1-blank  2-parent  3-search   4-self   5-Top' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'LocationType'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ǰ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'Depth'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼ��·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'IconUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ͼƬ·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ȫ·��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'FullName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����    0 ���� 1������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'IsEnable'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ɾ��    0 ��  1����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'CraetedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'LastupdateBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu', @level2type=N'COLUMN',@level2name=N'LastupdateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysMenu'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysOperation]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SysOperation](
	[Id] [uniqueidentifier] NOT NULL,
	[MenuID] [uniqueidentifier] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[EnglishTitle] [nvarchar](50) NULL,
	[ControlId] [nvarchar](50) NOT NULL,
	[IconUrl] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[IsEnable] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'MenuID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'Title'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'EnglishTitle'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ�Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'ControlId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ؼ�ͼ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'IconUrl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'Ordinal'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�����  0����     1������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation', @level2type=N'COLUMN',@level2name=N'IsEnable'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵���Ϊ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOperation'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysOrganizational]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysOrganizational](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnglishName] [nvarchar](50) NULL,
	[Adddrss] [nvarchar](200) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](30) NULL,
	[Remark] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedTime] [datetime] NULL,
	[LastupdateBy] [nvarchar](20) NULL,
	[LastupdateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EnglishName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯�ṹ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'EnglishName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'λ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'Adddrss'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�绰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'Phone'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'Fax'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'Remark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'LastupdateBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational', @level2type=N'COLUMN',@level2name=N'LastupdateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯�ṹ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysOrganizational'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysPosition]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysPosition](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EnglishName] [nvarchar](50) NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedTime] [datetime] NULL,
	[LastupdateBy] [nvarchar](20) NULL,
	[LastupdateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְλ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ӣ������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'EnglishName'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ע' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'Remark'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸�����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'LastupdateBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����޸���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition', @level2type=N'COLUMN',@level2name=N'LastupdateTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ְ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysPosition'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysUser]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SysUser](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Account] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[EmployeeId] [uniqueidentifier] NULL,
	[Status] [bit] NOT NULL,
	[Organizationals] [nvarchar](1000) NULL,
	[IsSystem] [bit] NOT NULL,
	[LoginIp] [varchar](20) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedTime] [datetime] NULL,
	[LoginAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Name'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�����ʺ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Account'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Password'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ա��Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'EmployeeId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�״̬ 0������   1�ǽ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Status'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯�ṹ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'Organizationals'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�Ϊϵͳ����Ա' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'IsSystem'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'LoginIp'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�Ƿ�ɾ��  0 false  1 true' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'IsDeleted'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'CreatedBy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'CreatedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ʱ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser', @level2type=N'COLUMN',@level2name=N'LoginAt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUser'
GO

USE [SZPSystem]
GO

/****** Object:  Table [dbo].[SysUserMenu]    Script Date: 08/15/2013 23:23:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SysUserMenu](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[OrganizationalId] [uniqueidentifier] NOT NULL,
	[MenuId] [uniqueidentifier] NOT NULL,
	[OperationIds] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserMenu', @level2type=N'COLUMN',@level2name=N'Id'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û�Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserMenu', @level2type=N'COLUMN',@level2name=N'UserId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��֯�ṹ���' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserMenu', @level2type=N'COLUMN',@level2name=N'OrganizationalId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵�Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserMenu', @level2type=N'COLUMN',@level2name=N'MenuId'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�˵���ΪID�� ��,����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserMenu', @level2type=N'COLUMN',@level2name=N'OperationIds'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�û��˵�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysUserMenu'
GO

ALTER TABLE [dbo].[SysDepartment]  WITH CHECK ADD  CONSTRAINT [Fk_SysDepartment_OrganizationalId] FOREIGN KEY([OrganizationalId])
REFERENCES [dbo].[SysOrganizational] ([Id])
GO

ALTER TABLE [dbo].[SysDepartment] CHECK CONSTRAINT [Fk_SysDepartment_OrganizationalId]
GO

ALTER TABLE [dbo].[SysDepartment] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysDepartment] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysDepartment] ADD  DEFAULT (getdate()) FOR [LastupdateTime]
GO

ALTER TABLE [dbo].[SysEmployees]  WITH CHECK ADD  CONSTRAINT [Fk_SysEmployees_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[SysDepartment] ([Id])
GO

ALTER TABLE [dbo].[SysEmployees] CHECK CONSTRAINT [Fk_SysEmployees_DepartmentId]
GO

ALTER TABLE [dbo].[SysEmployees]  WITH CHECK ADD  CONSTRAINT [Fk_SysEmployees_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[SysPosition] ([Id])
GO

ALTER TABLE [dbo].[SysEmployees] CHECK CONSTRAINT [Fk_SysEmployees_PositionId]
GO

ALTER TABLE [dbo].[SysEmployees] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysEmployees] ADD  DEFAULT (getdate()) FOR [EntryTime]
GO

ALTER TABLE [dbo].[SysEmployees] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysEmployees] ADD  DEFAULT (getdate()) FOR [LastupdateTime]
GO

ALTER TABLE [dbo].[SysGroup]  WITH CHECK ADD  CONSTRAINT [Fk_SysGroup_OrganizationalId] FOREIGN KEY([OrganizationalId])
REFERENCES [dbo].[SysOrganizational] ([Id])
GO

ALTER TABLE [dbo].[SysGroup] CHECK CONSTRAINT [Fk_SysGroup_OrganizationalId]
GO

ALTER TABLE [dbo].[SysGroup] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysGroup] ADD  DEFAULT ((0)) FOR [IsEnable]
GO

ALTER TABLE [dbo].[SysGroup] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO

ALTER TABLE [dbo].[SysGroup] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysGroup] ADD  DEFAULT (getdate()) FOR [LastupdateTime]
GO

ALTER TABLE [dbo].[SysGroupMenu]  WITH CHECK ADD  CONSTRAINT [Fk_SysGroupMenu_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[SysGroup] ([Id])
GO

ALTER TABLE [dbo].[SysGroupMenu] CHECK CONSTRAINT [Fk_SysGroupMenu_GroupId]
GO

ALTER TABLE [dbo].[SysGroupMenu]  WITH CHECK ADD  CONSTRAINT [Fk_SysGroupMenu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[SysMenu] ([Id])
GO

ALTER TABLE [dbo].[SysGroupMenu] CHECK CONSTRAINT [Fk_SysGroupMenu_MenuId]
GO

ALTER TABLE [dbo].[SysGroupMenu] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysLog] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysMenu] ADD  CONSTRAINT [DF__SysMenu__Id__7F80E8EA]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysMenu] ADD  CONSTRAINT [DF__SysMenu__Ordinal__00750D23]  DEFAULT ((0)) FOR [Ordinal]
GO

ALTER TABLE [dbo].[SysMenu] ADD  CONSTRAINT [DF__SysMenu__IsEnabl__0169315C]  DEFAULT ((0)) FOR [IsEnable]
GO

ALTER TABLE [dbo].[SysMenu] ADD  CONSTRAINT [DF__SysMenu__IsDelet__025D5595]  DEFAULT ((0)) FOR [IsDeleted]
GO

ALTER TABLE [dbo].[SysMenu] ADD  CONSTRAINT [DF__SysMenu__Created__035179CE]  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysMenu] ADD  CONSTRAINT [DF__SysMenu__Lastupd__04459E07]  DEFAULT (getdate()) FOR [LastupdateTime]
GO

ALTER TABLE [dbo].[SysOperation]  WITH CHECK ADD  CONSTRAINT [Fk_SysOperation_MenuID] FOREIGN KEY([MenuID])
REFERENCES [dbo].[SysMenu] ([Id])
GO

ALTER TABLE [dbo].[SysOperation] CHECK CONSTRAINT [Fk_SysOperation_MenuID]
GO

ALTER TABLE [dbo].[SysOperation] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysOperation] ADD  DEFAULT ((0)) FOR [Ordinal]
GO

ALTER TABLE [dbo].[SysOperation] ADD  DEFAULT ((0)) FOR [IsEnable]
GO

ALTER TABLE [dbo].[SysOrganizational] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysOrganizational] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysOrganizational] ADD  DEFAULT (getdate()) FOR [LastupdateTime]
GO

ALTER TABLE [dbo].[SysPosition]  WITH CHECK ADD  CONSTRAINT [Fk_SysPosition_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[SysDepartment] ([Id])
GO

ALTER TABLE [dbo].[SysPosition] CHECK CONSTRAINT [Fk_SysPosition_DepartmentId]
GO

ALTER TABLE [dbo].[SysPosition] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysPosition] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysPosition] ADD  DEFAULT (getdate()) FOR [LastupdateTime]
GO

ALTER TABLE [dbo].[SysUser]  WITH CHECK ADD  CONSTRAINT [Fk_SysUser_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[SysEmployees] ([Id])
GO

ALTER TABLE [dbo].[SysUser] CHECK CONSTRAINT [Fk_SysUser_EmployeeId]
GO

ALTER TABLE [dbo].[SysUser] ADD  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[SysUser] ADD  DEFAULT (getdate()) FOR [CreatedTime]
GO

ALTER TABLE [dbo].[SysUserMenu]  WITH CHECK ADD  CONSTRAINT [Fk_SysUserMenu_MenuId] FOREIGN KEY([MenuId])
REFERENCES [dbo].[SysMenu] ([Id])
GO

ALTER TABLE [dbo].[SysUserMenu] CHECK CONSTRAINT [Fk_SysUserMenu_MenuId]
GO

ALTER TABLE [dbo].[SysUserMenu]  WITH CHECK ADD  CONSTRAINT [Fk_SysUserMenu_OrganizationalId] FOREIGN KEY([OrganizationalId])
REFERENCES [dbo].[SysOrganizational] ([Id])
GO

ALTER TABLE [dbo].[SysUserMenu] CHECK CONSTRAINT [Fk_SysUserMenu_OrganizationalId]
GO

ALTER TABLE [dbo].[SysUserMenu]  WITH CHECK ADD  CONSTRAINT [Fk_SysUserMenu_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[SysUser] ([Id])
GO

ALTER TABLE [dbo].[SysUserMenu] CHECK CONSTRAINT [Fk_SysUserMenu_UserId]
GO

ALTER TABLE [dbo].[SysUserMenu] ADD  DEFAULT (newid()) FOR [Id]
GO


