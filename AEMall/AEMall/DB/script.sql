USE [AEMall]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_ROLES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Roles', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Sequence] [int] NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_REGIONS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Regions', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Regions', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Regions', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Regions', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'ced584ec-ce94-4856-afe3-03bab24b5172', N'山西', 5, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'0b0a25d7-c11c-48b4-9b8e-060757f86803', N'北京', 1, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'a748aeb9-dcd6-418a-bd85-1a63b5ae8d61', N'江苏', 2, N'09ed1671-f3cf-4c48-9775-a94a2aeaad5a')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'513b6f72-d197-4f62-a367-1b960bb95606', N'云南', 5, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'山东', 4, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'e520e670-0a38-40da-8994-377ca371fb85', N'香港', 8, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'5cee84e3-5b3e-47a1-ad1d-3d1cbe163285', N'湖南', 4, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'd92848b0-86b3-480b-8a98-4341b52e5940', N'黑龙江', 10, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'3d7b9b77-759f-4dc3-9943-4bf0cd9c57d3', N'吉林', 9, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'96903518-2a67-41f8-b41f-56163cfdbfd3', N'西南区', 4, NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'9f8bbf1a-b07c-49c4-85e4-5a9b74d5425c', N'贵州', 4, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'790a6a3a-cc58-4364-ac83-5c8dbdf3ae0f', N'安徽', 4, N'09ed1671-f3cf-4c48-9775-a94a2aeaad5a')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'8cc2f71e-0f28-4950-9bb0-61ca863a313c', N'辽宁', 8, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'0ab37ecf-d72a-48ed-a0bd-62f0322e0a27', N'上海', 1, N'09ed1671-f3cf-4c48-9775-a94a2aeaad5a')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'4c205997-e55c-4cad-8039-6bac83e27076', N'华北区', 1, NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'8e62f491-f777-4a7a-9465-6c8adf116f79', N'广东', 1, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'bd6868d0-b723-4019-b70a-81fe1cc94b8f', N'广西', 2, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'c591a6d7-ecc6-4a15-a4fc-831e51a8b557', N'江西', 5, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'0e67948f-d3e4-4642-951e-850e55d3a9ec', N'天津', 2, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'8c063fc7-9b23-4f15-a082-8996971c130c', N'湖北', 7, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'62716de7-fc3f-4c09-a41e-8e37a6503a43', N'华南区', 3, NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'283590b6-1afc-41c7-9ae4-8efff85f4882', N'河北', 3, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'09ed1671-f3cf-4c48-9775-a94a2aeaad5a', N'华东区', 2, NULL)
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'efd4ada2-fdac-4972-8d42-a9ffb3d9291a', N'澳门', 9, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'9a24d955-ab28-4dcd-a26e-ae235c7df5c3', N'新疆', 10, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'内蒙古', 11, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'dfd68772-1578-4dcd-b913-b5f6872cfc3b', N'甘肃', 7, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'ef66473a-a529-47e0-8870-c114a82ab6a6', N'青海', 8, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'ed567878-3032-4e28-8054-c30f6081423b', N'宁夏', 9, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'2e3e011f-4e2b-410c-af09-c341c3d0dade', N'河南', 6, N'4c205997-e55c-4cad-8039-6bac83e27076')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'add9a3cc-25fd-4ca8-bb56-c927a5d87ef8', N'西藏', 6, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'865e609b-8efd-4cd0-a441-ccc5153e6f6a', N'重庆', 2, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'0697c4f7-a3fd-4855-a22c-d21c580b8a8b', N'海南', 6, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'84b0bc5f-342f-4f67-b12d-dd38b02596d0', N'四川', 1, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'b5674e35-689e-47bf-8151-e02cd9be3766', N'陕西', 3, N'96903518-2a67-41f8-b41f-56163cfdbfd3')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'f67c5df1-d66e-4aff-8561-e7ad55a786cd', N'福建', 3, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'7f2cfc77-8ecf-46db-a39a-ec510bfebf03', N'浙江', 3, N'09ed1671-f3cf-4c48-9775-a94a2aeaad5a')
INSERT [dbo].[Regions] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'c3fd4052-7d8c-47c4-8de5-f9f2390fdf19', N'台湾', 7, N'62716de7-fc3f-4c09-a41e-8e37a6503a43')
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[Sequence] [int] NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PRODUCTTYPES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductTypes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductTypes', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductTypes', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductTypes', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductTypes', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'5aff2f29-cbfb-4a32-b66c-00a60756f980', N'地方特产', N'', 6, N'cd0b525b-7300-4e24-812d-d1f724452625')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'd317929c-851e-4fea-b4fd-0bbb95740c50', N'青海', N'蓝宝石', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'4ac10386-7f6d-424d-bae6-11100f25c78e', N'辽宁', N'阜新玛瑙', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'ef9599f5-6812-426b-a940-144e3e3d7c8e', N'500-600', N'', 5, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'10c172b6-531d-42b9-8a49-1be24f6234db', N'山东特产', N'内画壶', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'55ab3fb5-33e7-40d0-8eab-1deddc4f226b', N'内蒙特产', N'手撕牛肉', 8, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'67abdba2-df11-4330-8c31-1f5fe43cb786', N'按价格分', N'', 3, NULL)
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'2c6ec5a2-6a47-4d53-8d98-1f9c6f5cd400', N'300-400', N'', 3, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'99fd299a-84fd-4297-af52-2015a5173758', N'400-500', N'', 4, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'0cc7914b-457b-4e1d-a071-250f4a4c3886', N'陶瓷', N'', 5, N'cd0b525b-7300-4e24-812d-d1f724452625')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'0dc524c6-b80f-4a56-ab16-2d10d041d8dd', N'甘肃', N'夜光杯', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'c2374de1-b93f-4002-8ba3-2d19163e91e0', N'陕西', N'凤翔罩金漆器', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'a8e10a3f-b2e9-405e-851a-3d1c1a07ab3d', N'100-200', N'', 1, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'c9a7c831-ff1e-471d-9ee7-3e2bc21e2a8e', N'特色', N'', 3, N'7f902385-5784-4f06-a17d-548ee4042c2d')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'7f902385-5784-4f06-a17d-548ee4042c2d', N'按促销方式分', N'首页促销', 4, NULL)
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'0cdf564b-2c1d-413c-9bcd-56ac51949ed5', N'江苏', N'东海水晶', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'f5151af8-09b8-41ea-9c1b-57c77df7516f', N'工艺', N'', 4, N'7f902385-5784-4f06-a17d-548ee4042c2d')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'5490c7d6-007f-4383-b8a1-5acaaeea4f83', N'800以上', N'', 8, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'02b28b89-2354-4430-8775-5d1f3f9979c7', N'四川特产', N'一品汤底', 4, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'6a9d7273-3bb1-45f7-8c10-69c6eaf91fae', N'新疆特产', N'和田玉枣', 2, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'6e7738a8-e5be-46bb-9288-7d1ef0e5611b', N'200-300', N'', 2, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'8c7c4610-ea8d-46f9-a0d1-8c4c58add226', N'美国特产', N'大杏仁', 10, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'cea7f2fc-4a07-4ebf-b4de-8eb13f22e01e', N'福建特产', N'猪肉脯', 7, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'3800e6d0-408f-4b9b-8e13-954843cfb2d1', N'包邮', N'', 2, N'7f902385-5784-4f06-a17d-548ee4042c2d')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'6cdd9c0e-3a26-44ae-8f5a-9bdb65856881', N'海产品', N'', 1, N'cd0b525b-7300-4e24-812d-d1f724452625')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'985fe4f7-fb63-42a1-b3a4-a15c888a91ad', N'宝石', N'', 4, N'cd0b525b-7300-4e24-812d-d1f724452625')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'e1710c87-fc7a-4cfc-9e5f-a5a3268c0c49', N'宁夏特产', N'中宁枸杞', 6, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'299b7bbb-422d-4d83-919f-a70b979e1820', N'600-700', N'', 6, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'6f3849ac-29ed-4235-8ab1-a7de409ec325', N'茗茶', NULL, 2, N'cd0b525b-7300-4e24-812d-d1f724452625')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'8c77622f-1eaf-468e-a4f5-b7673c8e347e', N'热销', N'', 1, N'7f902385-5784-4f06-a17d-548ee4042c2d')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'1732ac22-c2e3-49c9-8a30-c8194712ddf1', N'700-800', N'', 7, N'67abdba2-df11-4330-8c31-1f5fe43cb786')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'f2fb6fe6-ba66-4e0e-8f2e-cf275eecc469', N'山西特产', N'汾酒', 3, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'44d03333-c0e4-43dc-99f8-d09f9cc64554', N'河北', N'唐山陶瓷', 1, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'cd0b525b-7300-4e24-812d-d1f724452625', N'按类别分', NULL, 2, NULL)
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'11c69fcd-0651-48da-9860-d3cc65cce1c8', N'按地域分', NULL, 1, NULL)
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'3a3ff17e-b2ab-4b3c-872c-e6264bdfe704', N'云南特产', N'普洱茶', 5, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'799372ab-3e87-45b8-8513-eaa8d9d38282', N'茗酒', N'', 3, N'cd0b525b-7300-4e24-812d-d1f724452625')
INSERT [dbo].[ProductTypes] ([Id], [Name], [Description], [Sequence], [ParentId]) VALUES (N'6c965965-7480-4431-a1a5-faa74fad37c8', N'贵州特产', N'腊肠', 9, N'11c69fcd-0651-48da-9860-d3cc65cce1c8')
/****** Object:  Table [dbo].[PaymentModes]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentModes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[MerchantCode] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SecretKey] [nvarchar](4000) NULL,
	[SecondKey] [nvarchar](4000) NULL,
	[Password] [nvarchar](4000) NULL,
	[Partner] [nvarchar](255) NULL,
	[Gateway] [nvarchar](255) NULL,
	[Sequence] [int] NULL,
	[Charge] [money] NULL,
	[IsPercent] [bit] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_PAYMENTMODES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商家代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'MerchantCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首选蜜月' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'SecretKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备选密钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'SecondKey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'伙伴' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Partner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网关' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Gateway'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'限额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Charge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'百分比？' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'IsPercent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PaymentModes'
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Sequence] [int] NULL,
	[ParentId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_GENRES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genres', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genres', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genres', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genres', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章分类表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Genres'
GO
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'42c75214-33bd-4df4-8547-234d8ed42115', N'支付方式', 3, N'08ac3c94-e3b1-4711-bf91-240b034aa797')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'08ac3c94-e3b1-4711-bf91-240b034aa797', N'网站相关', 1, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'be14f470-2b1c-42a6-a5bd-36c7a3b78e7c', N'配送方式', 2, N'08ac3c94-e3b1-4711-bf91-240b034aa797')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'其它综合', 6, N'08ac3c94-e3b1-4711-bf91-240b034aa797')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'天宝动态', 2, N'5316ce0d-009f-4335-93bd-ca026be944a4')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'455f0ea3-8b9d-4624-bc2f-51e0ecd497ca', N'金银首饰', 2, N'b77404b4-5889-4471-889b-939ef28c4050')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'631943b8-836a-49c9-879b-5dc693960973', N'热点推荐', 4, N'5316ce0d-009f-4335-93bd-ca026be944a4')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'8bacdac9-9511-41c5-912c-6b5aa2b48833', N'购物指南', 1, N'08ac3c94-e3b1-4711-bf91-240b034aa797')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'f9cee1ff-105e-4673-b827-702a216c82c0', N'固定广告右', 6, N'5316ce0d-009f-4335-93bd-ca026be944a4')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'08ce5d21-2439-4b6a-8844-7508ed4a3ee5', N'特色服务', 5, N'08ac3c94-e3b1-4711-bf91-240b034aa797')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'5d44f169-a67c-411d-916f-7cf48ec767a9', N'固定广告左', 5, N'5316ce0d-009f-4335-93bd-ca026be944a4')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'cb37761f-7843-424f-9a2c-8baaa9cd3a06', N'售后服务', 4, N'08ac3c94-e3b1-4711-bf91-240b034aa797')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'b77404b4-5889-4471-889b-939ef28c4050', N'商品知识', 2, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'促销活动', 1, N'5316ce0d-009f-4335-93bd-ca026be944a4')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'c36e37f2-d1f0-452d-a91d-c59b1201bfa0', N'食品相关', 3, N'b77404b4-5889-4471-889b-939ef28c4050')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'5316ce0d-009f-4335-93bd-ca026be944a4', N'活动相关', 3, NULL)
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'd9d1c46f-14e2-44e2-b257-d4e92819d2b5', N'焦点滚动', 3, N'5316ce0d-009f-4335-93bd-ca026be944a4')
INSERT [dbo].[Genres] ([Id], [Name], [Sequence], [ParentId]) VALUES (N'4708b8bb-55b9-4f3f-ab18-e13107054604', N'玉器知识', 1, N'b77404b4-5889-4471-889b-939ef28c4050')
/****** Object:  Table [dbo].[Configs]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configs](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[IsValid] [bit] NULL,
	[Content] [nvarchar](200) NULL,
 CONSTRAINT [PK_CONFIGS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Configs', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Configs', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开关' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Configs', @level2type=N'COLUMN',@level2name=N'IsValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Configs', @level2type=N'COLUMN',@level2name=N'Content'
GO
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'd8d7fe8e-03e6-4af9-9a3a-04376143d512', N'Url', 1, N'http://www.gift163.cn')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'5d13e625-1954-41af-9aca-1b07b7c9c6a8', N'WatermarkImg', 0, N'图片水印')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'c9bd3563-b12e-4aac-b0f7-2109edd575a6', N'SysName', 1, N'物华天宝')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'db7cf067-058d-46e4-b463-270901a67875', N'WatermarkMethod', 1, N'水印方式：图片/文字')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'fa0575b8-d259-4da9-a63a-35634344a62e', N'Authcode', 1, N'验证码启用/关闭')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'40203adb-b0b6-4278-a74c-4546b9851e17', N'SysOpen', 1, N'系统启用/关闭登录')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'18a6b548-d50c-473b-a33f-4ce69cf34351', N'RegOpen', 1, N'系统启用/关闭注册')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'55e97bc4-9a81-48a7-aa60-8a7cc931994c', N'watermark', 1, N'物华天宝版权所有')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'9b17b234-c4e5-4a11-a226-928538c2eafc', N'Address', 1, N'山东省青岛市经济技术开发区前湾港路579号')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'f9de80a7-dc69-4e1c-8425-9bf9f436feb9', N'YearFounded', 1, N'2011')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'84980d07-a81c-4b92-8639-cb3402ce1246', N'Beian', 1, N'鲁ICP备12000059号')
INSERT [dbo].[Configs] ([Id], [Name], [IsValid], [Content]) VALUES (N'9c1e40d8-8e2c-4ea1-920d-eec6e9f4f3c8', N'OrderOpen', 0, N'系统启用/关闭订购')
/****** Object:  Table [dbo].[UserRanks]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRanks](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Sequence] [int] NULL,
 CONSTRAINT [PK_USERRANKS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRanks', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRanks', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRanks', @level2type=N'COLUMN',@level2name=N'Sequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户级别表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRanks'
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Password] [nvarchar](32) NULL,
	[RealName] [nvarchar](50) NULL,
	[RankId] [uniqueidentifier] NULL,
	[IsPower] [bit] NULL,
	[IsActive] [bit] NULL,
	[RegionId] [uniqueidentifier] NULL,
	[Email] [nvarchar](50) NULL,
	[Mobil] [nvarchar](20) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'RankId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理用户？' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IsPower'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否激活' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属地区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'RegionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Users', @level2type=N'COLUMN',@level2name=N'Mobil'
GO
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'35e23e28-abc8-4281-8693-2c6aeebbb001', N'哥是店主', N'20DB437C6C74AF2ABADC3DBCB01369', NULL, NULL, 0, 1, NULL, N'kissfrinde@163.com', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'b27aa182-6862-4050-84fa-30f020dc9ea2', N'mike', N'34682F9E7AA64A40B484EE578F8D0', NULL, NULL, 0, 1, NULL, N'mike@sina.com', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'6d60ad05-529c-49d9-9bfe-474de57529c3', N'dsdfsdfs', N'27545E83DBB95F21A88F344DC99DCDC', NULL, NULL, 0, 1, NULL, N'hhhh@sina.com', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'5363219a-f88f-4737-b121-4d8c526d8e75', N'喜出望外', N'3C1B8656E753F873DA5D9615C65B0', NULL, NULL, 0, 1, NULL, N'80698081@163.com', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'bf02b1cd-b327-47af-8d79-4edce372775e', N'lblb', N'C6396677DF2663DE93C81F8C2AD7E1B', NULL, NULL, 0, 1, NULL, N'lb@sdkd.net.cn', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'e52e183a-f71d-408d-9066-9b095778537f', N'51aspx', N'7EB7E488E5C8BEFDBE733B28E1489FF3', N'赵红波', NULL, 1, 1, NULL, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'ce278fb6-c790-47a9-806e-e15208d15584', N'hooper', N'28FBC526942E9C28FC81F6DA93D3D', NULL, NULL, 0, 1, NULL, N'hooper@sina.com', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'01818e6d-1403-4a29-8532-f8e1ada1871f', N'asdfad', N'F64189254E5F987E3507CDCCD4A60', NULL, NULL, 0, 1, NULL, N'hddd@saa.com', NULL)
INSERT [dbo].[Users] ([Id], [Name], [Password], [RealName], [RankId], [IsPower], [IsActive], [RegionId], [Email], [Mobil]) VALUES (N'd3b0e49d-9192-40ea-bbaf-fb79d336837c', N'zook', N'C999EEBF91BB6C41929FCF9FAB85A61', NULL, NULL, 0, 1, NULL, N'zook@sina.com', NULL)
/****** Object:  Table [dbo].[UsersInRoles]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersInRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_USERSINROLES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInRoles', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInRoles', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInRoles', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UsersInRoles', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[IP] [nvarchar](50) NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_LOGS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'涉及用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Logs'
GO
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'6316dd39-4a53-43e5-8262-011aaeab3216', N'用户登录', N'admin用户登录成功', CAST(0x00009FA4009C5A32 AS DateTime), N'182.40.192.52', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'3bf6f16e-1a9f-422f-993d-030b10892a00', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300A8917A AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'37843e05-104f-4093-b171-04eb7fa2ab51', N'用户登录', N'admin用户登录成功', CAST(0x00009FF400A68095 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'16f152ca-e2e4-4de0-9ce7-052537a99bf3', N'用户登录', N'admin用户登录成功', CAST(0x00009FAF016EFA1B AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fd346d32-b7e6-4af3-84b5-0695b3958bd8', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC00981352 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'0ca5d1fd-4319-424b-be55-085c60924776', N'用户登录', N'admin用户登录成功', CAST(0x00009FF400BA41CD AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'e0d585e7-7410-49a3-84a4-10afbd051d7c', N'用户登录', N'admin用户登录成功', CAST(0x00009FCD01197E8B AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'f331afa2-d3e0-40cd-b2a6-117bfd0d50d4', N'用户登录', N'admin用户登录成功', CAST(0x00009FAA0185C77E AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'74364105-5e6c-4fbe-97fe-13dd326fc0b6', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200B61861 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'192e8a0a-ac4b-471b-8370-147559dc5be5', N'用户登录', N'admin用户登录成功', CAST(0x00009FFF00A34A0E AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'237d0db7-30dc-4245-8db9-15b5395d408d', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200E0196E AS DateTime), N'182.40.187.26', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'6e710557-ca5b-431a-a340-19516b48e73b', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC008D1833 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'9280e0be-c38f-485e-b88f-20164a490baa', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200AE4B29 AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'8dcc6d93-c9b3-427f-9a27-20ec90e1b880', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC009A1F41 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'3f1e2dc7-5185-4482-a829-21d36033f57f', N'用户登录', N'admin用户登录成功', CAST(0x00009FFF0096D140 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'c085451d-4bc5-4434-928c-2896a8e3b486', N'用户登录', N'admin用户登录成功', CAST(0x00009FA4011262B9 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'9b17cc52-f628-4382-ab7a-2b12e2f96f4c', N'用户登录', N'admin用户登录成功', CAST(0x00009FB00094D3FA AS DateTime), N'182.40.189.180', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd46be245-7baf-4012-9281-2ea17237953c', N'用户登录', N'admin用户登录成功', CAST(0x00009FD8017225CE AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'55741be2-f059-4e89-a434-2f5cec17411d', N'用户登录', N'admin用户登录成功', CAST(0x00009FA4016AD796 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'384256ab-2ecb-4586-9aa8-2f760330fc3b', N'用户登录', N'admin用户登录成功', CAST(0x00009FA4016B7D35 AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'1ed845ed-455a-40b2-b1c5-2fd2dc5c7ffb', N'用户登录', N'admin用户登录成功', CAST(0x00009FCD007FF996 AS DateTime), N'10.10.211.170', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd554832a-3088-414c-a649-2fd37d94c40e', N'用户登录', N'admin用户登录成功', CAST(0x00009FAA00D4F1CA AS DateTime), N'192.168.53.43', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'40439718-2f80-4b37-b816-2ffa681be8fa', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3010BCC82 AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'0f09471d-89f4-4951-92f6-30f495f0313e', N'用户登录', N'<span style=''color:red''>失败的用户登录尝试。</span>', CAST(0x00009FA200D3D179 AS DateTime), N'::1', NULL)
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'09ea6732-9cd6-4172-bf2a-31b6a5bf5c0d', N'用户登录', N'51aspx用户登录成功', CAST(0x0000A0D100B7D343 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'1275a130-185c-4e02-9310-34d20b24e2c5', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200B2BD8A AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'c9438248-17ae-48a7-af56-351a67c40a70', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC0186ACC2 AS DateTime), N'10.10.211.170', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'28db7737-a89f-4135-8c94-358d39de8b51', N'用户登录', N'admin用户登录成功', CAST(0x00009FA201064963 AS DateTime), N'182.40.187.26', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fe4de74e-e112-495f-a493-36ed3ca2a722', N'用户登录', N'admin用户登录成功', CAST(0x00009FCE00960E7D AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'ec6e1d49-2523-44af-abd1-3ca3bd2efcd8', N'用户登录', N'admin用户登录成功', CAST(0x00009FA400F397EE AS DateTime), N'182.40.192.52', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'e23a5f77-4e42-46a4-b4b8-3d117f686b58', N'用户登录', N'<span style=''color:red''>失败的用户登录尝试。</span>', CAST(0x00009FA200D4666E AS DateTime), N'::1', NULL)
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd6ad6fb2-0e9c-4535-bc1b-3e0561a4464c', N'用户登录', N'admin用户登录成功', CAST(0x00009FD800EFC525 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fd51ee55-8eb9-4e89-accd-424eff2d1c73', N'用户登录', N'admin用户登录成功', CAST(0x00009FAB008FDA9A AS DateTime), N'192.168.53.43', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'a436684a-b442-4067-bb2e-430051641619', N'用户登录', N'admin用户登录成功', CAST(0x00009FA1016FD623 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'2e25e0c1-76e8-466b-9196-465acf351c66', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300ED37E2 AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'dad55120-7971-4c5a-8959-46e162d9aba3', N'用户登录', N'admin用户登录成功', CAST(0x00009FB500CC8355 AS DateTime), N'182.40.194.118', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'edb21fbe-4935-46a3-988b-47d36e5d5aea', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC01803166 AS DateTime), N'10.10.211.170', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'aa6c675a-2156-4076-8a02-481414d29e75', N'用户登录', N'admin用户登录成功', CAST(0x00009FA4013E17D2 AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'b6063fbc-21af-4f5e-83c2-484ae53deea9', N'用户密码更改', N'用户密码更改成功', CAST(0x0000A0D100B6A38E AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'870f17f0-19a1-4369-b829-4b265c15e1cc', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC0189FC6D AS DateTime), N'10.10.211.170', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'250b927d-a5b8-470e-82d1-4e3972d6381a', N'用户登录', N'admin用户登录成功', CAST(0x00009FCD00B929A1 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'3efea5aa-baf3-4310-bbf1-4e8f0946ca58', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC016D86E0 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'a91cc277-4161-4b3e-be62-517fcf437f6b', N'用户登录', N'admin用户登录成功', CAST(0x0000A0D00173E997 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'0093b346-3e6a-4e31-bef2-51abe56a2217', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200D46C42 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd8d25ec2-a35e-418f-91fc-536de422701b', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC00E7C51B AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'a4637da9-fab3-4645-ad8f-54972aa15de0', N'用户登录', N'admin用户登录成功', CAST(0x00009FB000AB7F0F AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'229cf3a4-ae18-4e63-9868-59892ab213cc', N'用户登录', N'admin用户登录成功', CAST(0x0000A00801534404 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'bfe3ed2d-a23b-4de5-91c9-5b8a08f0b3c8', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC00958650 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'1144cd10-0cd5-4b4c-aad4-5bd905a8ea4b', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3009FFF71 AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'aede88fb-ddc5-4924-bb5e-5db8fa1e668c', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200ADED9B AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'3ccf03fc-d7de-4a80-a193-5e2fe9ab3c26', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC00AD2A15 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'23aca280-4f89-4695-a138-5fd9a5d3a651', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC009B09C3 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'4c5e0500-5edb-4c18-87e4-606a6f2f8ec6', N'用户登录', N'admin用户登录成功', CAST(0x00009FD900896CD6 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'70d170e6-ba18-4e45-a3f9-62dfb25f7620', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200F3F83A AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'c4786be4-e4dd-4533-a38f-687ef8b3481a', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300A865CE AS DateTime), N'10.10.211.179', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'eef7241c-bdab-480c-bec6-6b5fbd8d0279', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3016F0541 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fc5a8702-d50a-445f-ad2f-6c02b3012a8a', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC00D89ECA AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'51e57dd1-0b22-41b0-9276-71406ef10cf9', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC00832582 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'4c2308c8-4d9f-4d5d-b694-71a14df014b0', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200B2814E AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'accbaa5a-2fde-4a92-be49-74aa08078061', N'用户登录', N'admin用户登录成功', CAST(0x00009FC800A70A18 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'99b0cb3a-6d78-429a-a381-751a5ef54a1a', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300EBED68 AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'f288b792-155c-4e78-858d-7744005ba098', N'用户登录', N'admin用户登录成功', CAST(0x00009FCD008ECAAF AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'a0521a44-b813-4a93-a6b7-78521a044674', N'用户登录', N'admin用户登录成功', CAST(0x00009FA2009875BB AS DateTime), N'182.40.187.26', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'da808d0b-5573-4d4a-beae-7a208ee1aff9', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC00DAD7B1 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'6e6b838e-aa18-4171-8729-7c84a025aae9', N'用户登录', N'admin用户登录成功', CAST(0x0000A0D100B6B8D4 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'64f06c87-7b25-4549-9ac0-7ee0a71709e8', N'用户登录', N'admin用户登录成功', CAST(0x00009FCD00EC5DD8 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'711edca4-86a3-4896-b0f1-80fa91126573', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200F35FDB AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'071ae176-ea5f-419f-ac3a-81155b29f4d7', N'用户登录', N'admin用户登录成功', CAST(0x00009FB100E00618 AS DateTime), N'182.40.188.190', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'11750d6b-4d2c-4a73-b7c5-81452c2dbfa8', N'用户登录', N'admin用户登录成功', CAST(0x00009FB5013B155E AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'99a34a30-ef27-4a1f-a61f-830db6182ee5', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC01815973 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'8ebba76a-07a6-49ce-b87e-8a98a8b93629', N'用户登录', N'admin用户登录成功', CAST(0x0000A0D100B61C64 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'60064490-9080-473f-b511-8ae712ddf610', N'用户登录', N'admin用户登录成功', CAST(0x00009FB000B740BA AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'269775df-585f-4ecd-952e-8cf1964f5176', N'用户登录', N'admin用户登录成功', CAST(0x0000A0080153D96D AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'2edd5fdf-48dc-4c01-add0-8ef32317a940', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300A91929 AS DateTime), N'10.10.211.179', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'62625657-1260-4fc0-8ffd-8f73adfb6eaf', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300A8DA51 AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'04daf298-89fa-41cc-943b-9438ec29bd8f', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC0096850E AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'9bd8f483-4e19-450c-a58c-9696861505b3', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3001DB3FE AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'ea650a3c-0dca-4be7-ac84-9a380a2948fb', N'用户登录', N'admin用户登录成功', CAST(0x00009FA90093AD6C AS DateTime), N'192.168.53.43', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fc87d91d-c25b-4c32-b3f2-9b2116828ca1', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC0083CCC2 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'aef6d9df-3ea0-4aa6-a206-9e3ec7fc789d', N'用户登录', N'admin用户登录成功', CAST(0x0000A0D100B5F242 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'106b441b-4c81-445f-9a56-9e457fa4b423', N'用户登录', N'admin用户登录成功', CAST(0x00009FD000A4F973 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'4c076106-a1eb-4c46-87a4-9f17f45b6a10', N'用户登录', N'admin用户登录成功', CAST(0x0000A00801531C3A AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'2d748b67-4562-4bdd-8ae5-9fe8fe58906f', N'用户登录', N'admin用户登录成功', CAST(0x00009FAA0157B49D AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'226321e0-c13c-45da-a95c-a2c86822ec4e', N'用户登录', N'admin用户登录成功', CAST(0x0000A01300FE71F7 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'475ec9df-7e07-4ba0-a447-a3a7b6790af9', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300286B20 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'6e13dc27-7d33-472e-b6a4-a410fed32906', N'用户登录', N'admin用户登录成功', CAST(0x00009FB00092294F AS DateTime), N'182.40.189.180', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'664f0208-f325-4c6d-bf41-a4f4a84931ff', N'用户登录', N'admin用户登录成功', CAST(0x00009FCD0087C541 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'cbc1197b-3695-4719-9bc8-a7a7540335be', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC0095A698 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'bc2c6130-32e9-48fe-95ba-abbeb20265b6', N'用户登录', N'admin用户登录成功', CAST(0x00009FAE008BC7B9 AS DateTime), N'182.40.189.119', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'e2ede247-887d-4eaf-a4cb-abd17c8e7b51', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC00E79C6B AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fadfca89-fdee-4b6e-9456-ac6ba0b99534', N'用户登录', N'admin用户登录成功', CAST(0x00009FA401108B55 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'5ce48c6b-8805-4f0f-ae50-b1b6364bf187', N'用户登录', N'admin用户登录成功', CAST(0x00009FA301736B02 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'06866b45-4d73-47ed-b9aa-b32f942da8dd', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3010C9BE2 AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'1aed918b-3503-4647-beb4-b3dd3427ee4a', N'用户登录', N'admin用户登录成功', CAST(0x00009FA9008CDE2E AS DateTime), N'192.168.53.43', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'37f871ea-a343-4adc-9f8e-b42c5f6ca107', N'用户登录', N'admin用户登录成功', CAST(0x00009FA20098665E AS DateTime), N'182.40.187.26', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd8454d45-987a-4aef-b69d-b66a9e67fed9', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3010C3A28 AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'62608bc6-ebca-4874-843d-b772a30d3672', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200CBC28A AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'c1b96bff-6fb4-4b09-b1bc-b79754072938', N'用户登录', N'admin用户登录成功', CAST(0x00009FAB006E4954 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'5d5d7410-3dab-4c92-97ee-b7ce955d6189', N'用户登录', N'admin用户登录成功', CAST(0x00009FD301198FDC AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'878a6eda-f55d-4b2a-a0e4-bb94ca46bfc6', N'用户登录', N'admin用户登录成功', CAST(0x00009FD30166D5BB AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'0d7543aa-e685-4093-876e-bd02ae993064', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC00D9755F AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
GO
print 'Processed 100 total records'
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd3cb8dd9-c5c9-407e-bd14-c16ea6873907', N'用户登录', N'admin用户登录成功', CAST(0x00009FAF016EC670 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'69fa26f4-6f17-4e19-95c4-c2222e026488', N'用户登录', N'admin用户登录成功', CAST(0x00009FA200987575 AS DateTime), N'182.40.187.26', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'de9a276d-8057-42ac-b74e-c3dd59df5b5c', N'用户登录', N'admin用户登录成功', CAST(0x00009FD2011C3F33 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'a6509ae4-46b8-419e-b0fe-c3e3cfb9f5a9', N'用户登录', N'admin用户登录成功', CAST(0x00009FFF009EE343 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'8d3de9f4-3f69-4e53-9b7d-c717d74f9627', N'用户登录', N'admin用户登录成功', CAST(0x00009FD3016834E4 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'19d24f29-6ecb-4ffe-80b0-c82dd8280a84', N'用户登录', N'admin用户登录成功', CAST(0x00009FA2016EC5B4 AS DateTime), N'10.10.211.179', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'46bcfac9-a956-4f05-9049-cac840b25423', N'用户登录', N'admin用户登录成功', CAST(0x00009FB20096203F AS DateTime), N'182.40.190.56', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'1fffd205-b610-4173-b569-cc12b7c57a22', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300BA117B AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'5767776e-9f51-4beb-9648-d1aae8506508', N'用户登录', N'<span style=''color:red''>失败的用户登录尝试。</span>', CAST(0x00009FA101702A2C AS DateTime), N'::1', NULL)
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'ec7f93c0-7da4-4d87-9ed9-d2a796bcacc7', N'用户登录', N'admin用户登录成功', CAST(0x00009FAC009BA953 AS DateTime), N'182.40.191.213', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'5c28f96c-7026-4285-beda-d3dbf7c9f9e4', N'用户登录', N'<span style=''color:red''>失败的用户登录尝试。</span>', CAST(0x00009FA200D3EF5B AS DateTime), N'::1', NULL)
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'ce67b9be-e953-4017-9ab1-d5b6dbc868ad', N'用户登录', N'admin用户登录成功', CAST(0x00009FB00107109B AS DateTime), N'182.40.189.180', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'9a30841f-0057-410e-a5b2-dce9f66dca5b', N'用户登录', N'admin用户登录成功', CAST(0x00009FC4014E2960 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'14305e3a-c053-4b88-b6cb-dceb4e9a6d42', N'用户登录', N'admin用户登录成功', CAST(0x00009FA10170201A AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'a2a0ee8b-9298-4a8a-bc77-df75ae643407', N'用户登录', N'admin用户登录成功', CAST(0x00009FB100913D5E AS DateTime), N'182.40.188.190', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'dd23aa23-6d40-4c6e-89e9-df7ec26c1b67', N'用户登录', N'admin用户登录成功', CAST(0x00009FC600B5E2DC AS DateTime), N'182.40.190.126', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'2ac2ee27-7460-48be-a27c-e7e688c12b80', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300A3C069 AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'207118c9-4c69-4b88-890e-e9a5adf8a203', N'用户登录', N'admin用户登录成功', CAST(0x00009FB100932BE4 AS DateTime), N'182.40.188.190', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'822a28bf-87a4-4373-90d3-ea000eb3a2d9', N'用户登录', N'admin用户登录成功', CAST(0x00009FB501302D1B AS DateTime), N'192.168.34.222', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'78ce1147-9b22-4a72-b001-eb7ea9d3271e', N'用户登录', N'admin用户登录成功', CAST(0x00009FF400ABEB4C AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'cf7f4702-5aa9-4a6f-b4ca-ec0d4b195c36', N'用户登录', N'admin用户登录成功', CAST(0x00009FA300234300 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fce5d963-1043-4f7e-9caf-ecd0229b6a24', N'用户登录', N'admin用户登录成功', CAST(0x00009FA1017039BA AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'd24744dc-901e-47a0-8d6d-f25fe088ab19', N'用户登录', N'admin用户登录成功', CAST(0x00009FAE00EC5267 AS DateTime), N'182.40.189.119', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'991f3fdc-267c-4175-9ee9-f347b5569731', N'用户登录', N'admin用户登录成功', CAST(0x00009FA4009DAA76 AS DateTime), N'182.40.192.52', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'25cd4679-c316-4076-8176-f553f069c261', N'用户登录', N'admin用户登录成功', CAST(0x00009FD400A176EA AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'63a03de5-6e78-4906-8ad1-f562cad865d9', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC00C22235 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'818f5d1c-4193-41c1-8265-f5dbe4c345dd', N'用户登录', N'admin用户登录成功', CAST(0x00009FA3009DAF52 AS DateTime), N'182.40.189.8', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'c6e57555-09f4-407b-a266-f63b1f942d8d', N'用户登录', N'admin用户登录成功', CAST(0x00009FB100919CB2 AS DateTime), N'182.40.188.190', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Logs] ([Id], [Name], [Content], [CreateTime], [IP], [UserId]) VALUES (N'fe10dbc2-2da3-4aba-a6ed-fc93289a3a64', N'用户登录', N'admin用户登录成功', CAST(0x00009FCC015BA786 AS DateTime), N'::1', N'e52e183a-f71d-408d-9066-9b095778537f')
/****** Object:  Table [dbo].[Articles]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Content] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[VoidTime] [datetime] NULL,
	[Url] [nvarchar](255) NULL,
	[GenreId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ARTICLES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'失效时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'VoidTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'GenreId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Articles'
GO
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'464c697f-422e-4e12-8d27-08e87f78817e', N'会员介绍', N'<p>
	&nbsp;</p>
<p align="left">
	所有会员在物华天宝礼品网购物均可获得积分，积分可以用来参与兑换活动。物华天宝礼品网会不定期推出各类积分兑换活动，请随时关注关于积分的活动告知。</p>
<p align="left">
	<strong>积分制度</strong></p>
<p align="left">
	积分获得</p>
<p align="left">
	1.注册积分，顾客第一次注册获得相应积分</p>
<p align="left">
	2.购物积分，顾客购物时获得相应积分，每消费1元就可以获得1个积分。购物积分=礼品总金额-优惠券金额</p>
<p align="left">
	3.赠送积分，活动赠送或者会员奖励积分，具体金额见当时活动说明</p>
<p align="left">
	<strong>积分规则</strong></p>
<p align="left">
	1.按单计算的积分，会员打折后直接取整数金额做为积分，按客服最后改价金额为准<br />
	2.积分会在订单状态变为&ldquo;交易成功&rdquo;后记入您的帐户。如发生退货，将扣除由于退货部分产生的积分</p>
<p align="left">
	<strong>积分有效期</strong></p>
<p align="left">
	物华天宝礼品网积分没有失效期。</p>
<p align="left">
	<br />
	<strong>积分查询</strong><br />
	您可以在&ldquo;我的账户-我的积分&rdquo;中，查看您的累计积分</p>
<p align="left">
	&nbsp;</p>
<p align="left">
	<strong>积分活动</strong></p>
<p align="left">
	物华天宝礼品网会不定期地推出各种积分活动，请随时关注关于积分促销的告知。&nbsp;<br />
	1.会员可以用积分参与物华天宝礼品网指定的各种活动，参与后会扣减相应的积分。<br />
	2.积分不可用于兑换现金，仅限参加物华天宝礼品网指定兑换物品、参与抽奖等各种活动。</p>
<p align="left">
	<br />
	<strong>会员积分计划细则</strong><br />
	不同帐户积分不可合并使用；<br />
	本计划只适用于个人用途而进行的购物，不适用于团体购物、以营利或销售为目的的购买行为、其他非个人用途购买行为。<br />
	会员积分计划及原VIP制度的最终解释权归物华天宝礼品网所有。</p>
<p align="left">
	<strong><img height="12" src="file:///C:/DOCUME~1/ADMINI~1/LOCALS~1/Temp/msohtml1/01/clip_image001.gif" width="12" /></strong><strong>　免责条款</strong></p>
<p align="left">
	感谢您访问物华天宝礼品网的会员积分计划，本计划由北京物华天宝礼品网信息技术有限公司/或其关联企业提供。以上计划条款和条件，连同计划有关的任何促销内容的相应条款和条件，构成本计划会员与物华天宝礼品网之间关于制度的完整协议。如果您使用物华天宝礼品网，您就参加了本计划并接受了这些条款、条件、限制和要求。请注意，您对物华天宝礼品网站的使用以及您的会员资格还受制于物华天宝礼品网站上时常更新的所有条款、条件、限制和要求，请仔细阅读这些条款和条件。</p>
<p align="left">
	<strong>协议的变更</strong><br />
	物华天宝礼品网可以在没有特殊通知的情况下自行变更本条款、物华天宝礼品网的任何其它条款和条件、或您的计划会员资格的任何方面。对这些条款的任何修改将被包含在物华天宝礼品网的更新的条款中。如果任何变更被认定为无效、废止或因任何原因不可执行，则该变更是可分割的，且不影响其它变更或条件的有效性或可执行性。在我们变更这些条款后，您对物华天宝礼品网的继续使用，构成您对变更的接受。</p>
<p align="left">
	<strong>协议的终止</strong><br />
	物华天宝礼品网可以不经通知而自行决定终止全部或部分计划，或终止您的计划会员资格。即使物华天宝礼品网没有要求或强制您严格遵守这些条款，也并不构成对属于物华天宝礼品网的任何权利的放弃。如果您在物华天宝礼品网的客户帐户被关闭，那么您也将丧失您的会员资格。对于该会员资格的丧失，您对物华天宝礼品网不能主张任何权利或为此索赔。</p>
<p align="left">
	<strong>责任限制</strong><br />
	除了物华天宝礼品网的使用条件中规定的其它限制和除外情况之外，在中国法律法规所允许的限度内，对于因会员积分计划而引起的或与之有关的任何直接的、间接的、特殊的、附带的、后果性的或惩罚性的损害，或任何其它性质的损害，物华天宝礼品网、物华天宝礼品网的董事、管理人员、雇员、代理或其它代表在任何情况下都不承担责任。物华天宝礼品网的全部责任，不论是合同、保证、侵权（包括过失）项下的还是其它的责任，均不超过您所购买的与该索赔有关的商品价值额。这些责任排除和限制条款将在法律所允许的最大限度内适用，并在您的计划会员资格被撤销或终止后仍继续有效。</p>
<p align="left">
	<strong>积分兑换优惠券</strong></p>
<p align="left">
	登陆&ldquo;我的帐户&rdquo;，可以看到您目前的积分数额。<br />
	点击&ldquo;兑换优惠券&rdquo;，进入兑换页面，选择您要兑换的礼券金额，点击&ldquo;兑换&rdquo;后，系统自动生成一个优惠券号码，请妥善保管该号码。</p>
<p align="left">
	<strong>如何使用优惠券</strong></p>
<p align="left">
	&nbsp;</p>
<p align="left">
	只有通过物华天宝网网站订购时才可以使用代金礼券，在填写定单内容页面&ldquo;代金礼券号码&rdquo;一栏中填写代金券号码，提交定单后，系统将自动减少相应的付款金额。</p>
', CAST(0x00009FA40099069C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8bacdac9-9511-41c5-912c-6b5aa2b48833', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'4c440169-72b5-48e4-835d-0a60802de0e2', N'关于我们', N'<p>
	&nbsp;</p>
<p align="left">
	物华天宝礼品网（<a href="http://gift.ikao580.com/">http://www.gift163.cn/</a>）是青岛得宝信息技术有限公司旗下网站，公司位于青岛保税区，本着传播礼仪文化、引领时尚礼品潮流的初衷，依托经济、科技、文化和创意之都北京，由IT行业资深人士创办，同时集结了来自山东科技大学，青岛理工大学等高校的优秀人才，以及在网站管理和营销方面经验丰富的专业人士，形成了技术精良、经验丰富、拼搏奋进的一流运营团队。<br />
	　　我们的目标是成为中国最大的时尚创意礼品企业，为广大个人和企业客户提供礼品选择、创意、包装、寄语和配送等送礼一站式服务，让客户以最经济的支出，获得最满意的礼物，并使客户的祝福情谊得到充分而真切的表达！&nbsp;<br />
	　　&ldquo;送人玫瑰，手有余香&rdquo;。每一份情感都在与他人的分享之中显得更加可贵，在恰当的时机送上一份恰到好处的礼物，可以让亲情更加温馨浓烈，可以让爱情更添浪漫甜蜜，可以让友情深如桃花潭水，可以让事业前程似锦。可以说，当礼物被赋予一种美好的情感时，它便不仅仅是&ldquo;物&rdquo;，而是一颗真心、一份真情、一种友爱的象征。</p>
<p align="left">
	<strong>客户服务</strong><br />
	　　物华天宝网（<a href="http://gift.ikao580.com/">http://www.gift163.cn/</a>）向客户提供了简便、安全的网上订购、支付和配送系统，让客户可以随心所欲地浏览、方便快捷地选购。</p>
<p align="left">
	<br />
	　　物华天宝网（<a href="http://gift.ikao580.com/">http://www.gift163.cn/</a>）根据不同节日、不同客户的需求，以及性别、年龄、职业、身份等，对国内外数十万礼品进行了精心细致的挑选、分类和创意制作，使每一款礼物都各具特色，从时尚到古典，从简约到华贵，从实用到浪漫。目标就是让客户以最经济的支出，获得最满意的礼物，让自己的祝福情谊得到充分的表达。</p>
<p align="left">
	&nbsp;</p>
<p align="left">
	<strong>公司定位</strong><br />
	　　成为中国创意礼品网站第一品牌！</p>
<p align="left">
	<strong>公司理念</strong><br />
	　　为客户提供优质的礼品和服务，传达最真心的祝福，传播最具时尚、创意和实用的礼仪文化。</p>
<p>
	<strong>公司承诺</strong><br />
	　　本着质量第一、求实创新、客户至上、诚信为本的经营理念，向客户提供优质的礼物和服务，传达美好的祝福。我们会竭尽全力，用真心换来您满意的笑容！</p>
', CAST(0x00009FA40097EC30 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'be0e0842-9a00-4199-ad5f-146faffe151d', N'特快专递（EMS）', N'<p>
	特快专递（EMS）</p>
', CAST(0x00009FA300ACA1C0 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'be14f470-2b1c-42a6-a5bd-36c7a3b78e7c', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'28e501ef-ca12-4889-95f6-17d716b854f7', N'免责声明', N'<p>
	&nbsp;</p>
<p align="left">
	物华天宝网提醒您：在使用物华天宝网搜索引擎前，请您务必仔细阅读并透彻理解本声明。您可以选择不使用物华天宝网搜索引擎，如果您选择使用，您的使用行为将被视为对本声明全部内容的认可。</p>
<p align="left">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 鉴于物华天宝搜索引擎以非人工检索方式、根据您键入的关键字自动生成到第三方网页的链接，相关内容来自搜索结果所链接到的第三方网站，物华天宝网不对第三方网页中内容之合法性、准确性、真实性、适用性、安全性负责，对于您可能从该第三方网页上获得的资讯及享用的服务，请审慎辨别和选择，物华天宝网将不承担任何法律责任。</p>
<p align="left">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 任何通过使用物华天宝网搜索而链接到的第三方网页均系他人制作或提供，不反映物华天宝网之任何意见或主张，也不表示物华天宝网同意或支持该等第三方网页上的任何内容、主张或立场。</p>
<p align="left">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 除与物华天宝网有另行书面约定的服务外，您应该对使用物华天宝搜索引擎的结果自行承担风险，一切因使用物华天宝搜索引擎而可能遭致的意外、侵权及其他损失（包括下载被搜索链接到的第三方网页中的内容被感染电脑病毒等），物华天宝网对其概不负责，亦不承担任何法律责任。</p>
<p align="left">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 对于物华天宝搜索引擎，物华天宝网不做任何形式的保证：不保证搜索结果满足您的要求，不保证搜索服务不中断等。因网络状况、通讯线路、电力故障、第三方网站等任何原因而导致您不能正常使用物华天宝网，物华天宝网不承担任何法律责任。</p>
<p align="left">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 物华天宝网尊重并保护所有使用物华天宝网服务的用户的个人隐私权，详情请参隐私权政策。</p>
<p align="left">
	&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 任何单位或个人认为通过物华天宝搜索链接到的第三方网页内容可能涉嫌侵犯其信息网络传播权，应该及时向物华天宝网提出书面权利通知，并提供身份证明、权属证明及详细侵权情况证明。物华天宝网在收到上述法律文件后，将会依法尽快断开相关链接内容。</p>
', CAST(0x00009FA400954B88 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'933b3d3c-2e76-49ca-8a6e-1af3bd1e87e1', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C8024 AS DateTime), CAST(0x0000A01C009C732C AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'a5cba6b4-4002-4cfc-a1f6-1cbc9dba6aa6', N'天宝动态测试标题6', N'<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
', CAST(0x00009FA3001FB468 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'01270669-b92b-45f2-89d8-1d36bfaebc20', N'每日幸运好礼', N'<p>
	每日幸运好礼</p>
', CAST(0x00009FA300ADD84C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'08ce5d21-2439-4b6a-8844-7508ed4a3ee5', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'7f82bdfc-bc20-4923-a5d1-1f8bef2eac39', N'焦点', N'<p>
	asdasd焦点asdsad</p>
', CAST(0x00009FFF009CD0EC AS DateTime), CAST(0x0000A01C009CB850 AS DateTime), NULL, N'd9d1c46f-14e2-44e2-b257-d4e92819d2b5', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'30d4b274-3640-4416-a9cd-20398863202e', N'投诉建议', N'<p>
	投诉建议</p>
', CAST(0x00009FA300ADB77C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'cb37761f-7843-424f-9a2c-8baaa9cd3a06', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'f7c4cf92-1808-4d7c-bbfb-260632eb3648', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C3571 AS DateTime), CAST(0x0000A01C009C2700 AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'5ea7a941-5bc8-4b51-b39a-26220bf0f748', N'促销活动测试标题', N'<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
', CAST(0x00009FA3001E3408 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'1fbe3d51-e566-49ea-9f13-268cdbd60da3', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C539E AS DateTime), CAST(0x0000A01C009C46A4 AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'4f1e0841-9340-4802-a1d4-294377fc0584', N'合作伙伴', N'<p>
	合作伙伴</p>
', CAST(0x00009FA300F0AC80 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'554badcf-ef39-422e-96d2-3387698a7bda', N'在线支付', N'<p>
	在线支付</p>
', CAST(0x00009FA300AD2884 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'42c75214-33bd-4df4-8547-234d8ed42115', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'4f4ff51b-cbac-4eca-aa74-347133940f85', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C7228 AS DateTime), CAST(0x0000A01C009C651C AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'120a152e-f636-4131-9f84-3d95bfb7dc39', N'天宝动态测试标题3', N'<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
', CAST(0x00009FA3001F80D8 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'b7ba5573-9b8c-4e9f-8554-46feae9e297a', N'上门自提', N'<p>
	上门自提</p>
', CAST(0x00009FA300ABDE0C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'be14f470-2b1c-42a6-a5bd-36c7a3b78e7c', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'cc733906-fe93-414a-9933-4dfc2a2a10c5', N'热点1', N'<p>
	热点1</p>
', CAST(0x00009FFF009BC919 AS DateTime), CAST(0x0000A01C009B3214 AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'9232b614-de19-4f4a-99ac-5488f3733205', N'广告', N'<p>
	0000</p>
', CAST(0x00009FFF009A483E AS DateTime), CAST(0x0000A01C009A1B2C AS DateTime), NULL, N'f9cee1ff-105e-4673-b827-702a216c82c0', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'2ecd1606-85a2-44bd-85df-65c7840ff9d9', N'分期付款', N'<p>
	分期付款</p>
', CAST(0x00009FA300AD3FF4 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'42c75214-33bd-4df4-8547-234d8ed42115', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'c75951b1-c66e-4017-a9f6-6c1a028d0610', N'联系客服', N'<p>
	咨询热线：0532-80983889</p>
', CAST(0x00009FB10091C788 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8bacdac9-9511-41c5-912c-6b5aa2b48833', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'cf3d0410-a7d4-41f6-8367-6f2fcac6171f', N'邮局汇款', N'<p>
	邮局汇款</p>
', CAST(0x00009FA300AD75DC AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'42c75214-33bd-4df4-8547-234d8ed42115', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'64b4560c-43d8-43fc-918e-71479145223a', N'团购', N'<p>
	团购</p>
', CAST(0x00009FA300AAF028 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8bacdac9-9511-41c5-912c-6b5aa2b48833', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'94b08bfb-4d90-4d15-9520-74f541d97465', N'购物流程', N'<p>
	1. 进入物华天宝礼品网挑选商品。<br />
	2. 选择好礼品点击&ldquo;立即购买&rdquo;。<br />
	3. 进入购物车，可以进行数量修改。点击&ldquo;继续购物&rdquo;继续挑选其他礼品。点击&ldquo;现在结款，进入结算中心。<br />
	4. 用户登录、注册<br />
	如果您没有登陆，会要求您登陆。您是老顾客,请直接输入用户名和密码登录；如果您是新顾客,请输入您常用的电子邮箱作为用户名,并设定密码,点击&ldquo;完成&rdquo;。另外，您也可以不注册直接在网站购买。<br />
	5. 填写送礼人，收礼人信息<br />
	为了确保礼物能的按时送达，请您务必填写收礼物人的详细信息和真实姓名。</p>
<p>
	6. 选择支付方式<br />
	我们提供的支付方式有：货到付款、第三方支付平台支付、网上银行支付、物华天宝礼品卡支付、邮局汇款。<br />
	7.填写备注、索取发票<br />
	在备注里填写您的要求，如发票抬头及内容、选择包装、贺卡等。<br />
	8. 订单确认<br />
	完成上述所有流程后您可以点击＂订单确认＂，订单提交以后页面会提示订单号，注册用户可以在&ldquo;我的账户&rdquo;查看或修改您的订单，我们将通过电子邮件发送给您一封订单确认信。<br />
	<strong>温馨提示：</strong><br />
	1. 优惠券券支付：请在付款详情处输入有效的物华天宝网优惠礼券号码，成功支付礼品卡后，页面提示已经用优惠券支付**元。<br />
	2. 发票开具：在提交订单页面时可以修改发票开具。您可以&ldquo;备注&rdquo;中填写抬头等发票内容。</p>
', CAST(0x00009FA301112F28 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8bacdac9-9511-41c5-912c-6b5aa2b48833', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'34575747-7c6a-4534-803a-757ca487483e', N'天宝动态测试标题4', N'<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
', CAST(0x00009FA3001F926C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'c5f9a851-3981-4192-b9e6-88a8d72aab47', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C1E3E AS DateTime), CAST(0x0000A01C009BCB98 AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'c4d141db-04e3-4ec1-bd58-8a133ee5ca33', N'天宝动态测试标题1', N'<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
', CAST(0x00009FA3001F43E8 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'e5f03fc7-365f-4839-b281-9425bcd647c2', N'促销活动测试标题', N'<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
', CAST(0x00009FA3001E8160 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'd919ce03-0fe3-40b5-a63c-9467103d1199', N'退换货政策', N'<p>
	&nbsp;</p>
<p>
	<span style="font-size: 14px; "><span style="background-color: rgb(0, 255, 255); ">退货原则：</span></span></p>
<p>
	1.客户收到物华天宝售出的礼物后，请立即检查礼物有无损坏，一旦出现损坏情况，及时和我们的售后服务人员联系，告诉损坏情况，并提供图片或相关证明。便于我们及时为您办理退换货手续。<br />
	<br />
	2青岛客户收到物华天宝送货人员递送的礼物时，请当场认真仔细检查验收礼物。一旦验收合格签收，在礼物正常使用情况下，礼物没有出现质量问题，物华天宝概不承担退换服务。<br />
	<br />
	3.部分礼物因客户误购、多购、或对礼物不满意等原因，在货物本身性能完好，并在不影响我们第二次销售的前提下，客户可以申请退货，退货时运费由客户自行承担，退货需扣除退货手续费，手续费为退货价的30%。要求客户在签收货物后7日内寄送到公司，逾期将不予办理。<br />
	<br />
	4.退货时，务必保证礼物的完整（礼物附件、说明书、保修单、标签，发票等）。如礼物中任一项丢失或损坏，则不符合退货要求，物华天宝有权拒绝提供退货服务。<br />
	<br />
	5.如对接收到的礼物不满意，需要换取其它礼物，可在7日内及时与我们的售后人员联系，我们会在接收到退回的礼物后，及时检查，验收通过后，会立即给您寄出新品。如果验收不合格，将原品原封退回。<br />
	<br />
	6.数码类、电子类、小家电类、保健器械类、手表类的礼物，自客户收到礼物之日起七日内，如出现质量问题，请客户先行按照说明书上的联系方式与厂家的售后部门联系。如果厂家确认属于质量问题，请客户与物华天宝客服中心联系办理退换货事宜。退换货，请您务必将商品的外包装、内带附件、保修卡、说明书等随同礼物一起退回。<br />
	<br />
	7.换货的礼物，物华天宝将以平邮的方式寄出，如客户需加急服务，客户可自行承担快递费用。<br />
	<br />
	8.如果礼物因质量问题退货，物华天宝承担平邮运费。若客户以快递方式退回，客户自己承担运输费用，或物华天宝在退款中直接扣除快递费用。<br />
	<br />
	9.物华天宝保证礼物的质量和进货渠道。如果顾客在使用时对礼物质量表示置疑，欢迎投诉，我们会根据国家法律规定予以处理。&nbsp;<br />
	<br />
	10.以下产品，不接受退货：使用过的，受损，污染的礼物；化妆品及个人护理用品；已经拆开包装的保健食品；任何因非正常使用、保管而出现质量问题的礼物；服装类商品的外包装破损（包括包裹填充物及外包装箱或外包装袋）；礼物附件、说明书、保修单、标签等有缺失。<br />
	<strong>注：</strong>物华天宝会尽最大努力为您把礼物尽快送达，万一由于一些自然原因和不可抗力的影响而造成礼物迟到，物华天宝承诺的最大责任是为您办理全额退款，并给您和收礼人作口头道歉，但不负有诸如精神损失赔偿等其它任何连带责任。</p>
<p>
	&nbsp;</p>
<p align="left">
	<strong><span style="background-color: rgb(0, 255, 255); ">退货流程：</span></strong><br />
	请您在退换货前联系售后服务部门告知退换货的订单号、礼物名称、退货原因、礼物金额；同时符合退货原则。请准备好发票，退货时发票需一并退回。&nbsp;</p>
<p align="left">
	<strong>一般商品：</strong><br />
	请将原包装与发送清单随商品以平邮（普通包裹）形式寄回。<br />
	<strong>注：</strong>清单上注明退换货原因，发送清单丢失，请附纸注明您的姓名、收货地址、Email 、订单号、礼物名称及退换货原因。</p>
<p align="left">
	<strong>服装、数码类商品：</strong><br />
	(1) 写明订单号、礼物名称及型号、礼物代码和退换原因；<br />
	(2) 将礼物随同其附带品、保修卡、三包凭证、发票、发货单一并邮寄；<br />
	(3) 发邮件至debaoxixin@163.com备案，请在主题中写明&ldquo;退货（换货）订单号&rdquo;；邮件内容中写明邮寄号、礼物名称及型号、礼物代码和退换原因。<br />
	<strong>退货时间：</strong><br />
	退货时间：接到退换货物后的7个工作日内（青岛地区2个工作日内）为您办理。<br />
	<strong>办理费用：</strong><br />
	办理费用：礼品货物发生退换货的邮寄费用，根据具体情况处理。因客户原因要求退换的，由客户承担；由于礼品本身原因退换货的，由物华天宝承担。<br />
	<strong>注意：</strong><br />
	(1) 退货或换货礼物缺货时会产生余款，请查看退款方式；<br />
	货到付款的礼品订单，款项均通过邮寄的方式退回本人；<br />
	(2) 换货后，我们将按照您在提交订单时选择的送货方式送货；<br />
	(3) 我们收到您邮寄回来的礼物，经专业人员检测，如有质量问题，我们将在7天内为您办理退货。如无质量问题将以邮寄方式退还给您。</p>
', CAST(0x00009FA400981FC0 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'cb37761f-7843-424f-9a2c-8baaa9cd3a06', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'4424aa90-da1e-431c-a283-94823ecee6f9', N'焦点', N'<p>
	焦点</p>
', CAST(0x00009FFF009CB725 AS DateTime), CAST(0x0000A01C009CAB6C AS DateTime), NULL, N'd9d1c46f-14e2-44e2-b257-d4e92819d2b5', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'a90523d9-0e14-4431-a683-95b3c0dcf163', N'常见问题', N'<p>
	&nbsp;</p>
<p align="left">
	<strong>1.</strong><strong>进行网上在线支付前，银行卡需要办理开通手续吗？</strong><br />
	如您是第一次进行网上在线支付，建议事先拨打银行卡所属发卡银行的热线电话，详细咨询可在其网上进行在线支付的银行卡种类及相关开通手续。全国各主要银行的热线电话如下：</p>
<table border="0" cellpadding="0" cellspacing="0" style="width:500px;" width="500">
	<tbody>
		<tr>
			<td style="height:25px;">
				<p align="center">
					银行名称</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					服务热线</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					银行名称</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					服务热线</p>
			</td>
		</tr>
		<tr>
			<td style="height:25px;">
				<p align="center">
					中国工商银行</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					95588</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					交通银行</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					95559</p>
			</td>
		</tr>
		<tr>
			<td style="height:25px;">
				<p align="center">
					中国建设银行</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					95533</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					北京银行</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					010-96169</p>
			</td>
		</tr>
		<tr>
			<td style="height:25px;">
				<p align="center">
					中国农业银行</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					95599</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					中国邮政</p>
			</td>
			<td style="height:25px;">
				<p align="center">
					800-820-5072</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
	<br />
	<strong>2.</strong><strong>目前中、农、工、建行的哪些银行卡（借记卡或贷记卡）可以进行网上在线支付？</strong><br />
	农业银行：准贷记卡即卡号以9359和4910开头的，以及借记卡可以实行网上在线支付，贷记卡暂不可以进行网上在线支付。<br />
	工商银行：目前，理财金账户、牡丹灵通卡、牡丹灵通卡、e时代、牡丹信用卡、牡丹贷记卡及牡丹国际卡，在其营业网点注册网上银行或登录其网站自助注册网上银行后，可进行网上在线支付；&nbsp;<br />
	建设银行：客户需要先使用借记卡开通个人网上银行，申领并注册用户名（客户本人身分证号码）和密码，凭此用户名和密码，客户可使用其贷记卡进行网上在线支付；<br />
	<strong>3.</strong><strong>民生、农、工、建行的银行卡网上在线支付有无金额限制？</strong><br />
	根据《中国人民银行公告》和《电子支付指引（第一号）》的相关规定，目前各银行对于网上在线支付都有一定金额的限额，由于各银行的限额标准不一致，并且会随政策进行调整，所以在此不做具体说明，建议您在银行办理网上在线支付申请时，问明限额标准，或拨打您的银行卡发卡银行热线电话咨询。&nbsp;<br />
	<strong>4.</strong><strong>当订单在物华天宝上生成并选定网上在线支付平台后，有时会出现一些诸如链接速度慢或根本无法进行链接、重复支付、不能输入银行卡密码等问题，这是什么原因？</strong><br />
	当选择（点击）网上在线支付平台后，您已离开了物华天宝。出现上述问题的原因可能与支付平台或其支持的发卡银行网络有关，或与您计算机所在的网络或您的计算机自身设置有关，建议您与您的系统管理员联系。<br />
	<strong>5.</strong><strong>如何知道网上在线支付是否成功？</strong><br />
	当您完成网上在线支付过程后，系统应提示支付成功；如果系统没有提示支付失败或成功，您可通过电话、柜台、ATM或登录网上银行等各种方式查询银行卡余额，如果款项已被扣除，网上支付交易应该是成功的，请您耐心等待；如果出现信用卡超额透支、存折余额不足、意外断线等导致支付不成功，请您登录物华天宝礼品网&ldquo;我的帐户&rdquo;，找到该张未支付成功的订单，重新完成支付。&nbsp;<br />
	<strong>6.</strong><strong>进行网上在线支付后，由于某种原因未能看到</strong><strong>&ldquo;</strong><strong>支付成功</strong><strong>&rdquo;</strong><strong>字样，此时如何知道网上在线支付是否成功？</strong><br />
	进行网上在线支付后，可能由于客户支付时网络连接有问题，未能看到&ldquo;支付成功&rdquo;的提示但可能支付已经成功了，但页面没有提示。这种情况下，使用工商银行、招商银行支付平台进行支付的客户、以及使用首信易支付平台进行支付操作，支付金额在1,000元以下（含1,000元）的客户可实时查询。查询步骤如下：<br />
	(1)登录发卡银行网络，查询自己帐户中的交易明细，确定网上在线支付是否成功。<br />
	(2)登录物华天宝&ldquo;我的帐户&rdquo;查询自己所下订单的状态，如果订单已支付成功，&ldquo;我的帐户&rdquo;中的&ldquo;订单处理&rdquo;状态会显示为&ldquo;完全付款&rdquo;。<br />
	<strong>7.</strong><strong>完成网上在线支付后，由于某种原因客户要求退款的，退款过程需要多长时间？</strong><br />
	一般情况下，根据发卡银行的规定时限，对于国内发卡行发行的单币种银行卡（借记卡或贷记卡）物华天宝财务会在接到客服通知后15天内退款到客户帐户。对于国内发卡行发行的双币种贷记卡和国外发行的贷记卡由于手续较多，需要到帐时间较长（大约一个月的时间）。<br />
	<strong>8.</strong><strong>客户可以从哪些银行向物华天宝汇款？</strong><br />
	客户可以向下列银行中物华天宝开立的账户汇款。物华天宝开立的账户信息具体如下：<br />
	开户行：农行青岛开发区支行<br />
	账号：38110101040056320</p>
<p>
	户名：青岛得宝信息技术有限公司<br />
	<br />
	<strong>9 .</strong><strong>如果采用银行电汇或邮局汇款的方式支付货款，如何查询并确认物华天宝是否已收款？</strong><br />
	一般情况下，客户办理银行电汇或邮局汇款的当个工作日，物华天宝会收到货款安排发货。客户可在付款后1个工作日在物华天宝&ldquo;我的账户&rdquo;查询订单处理的状态，如显示&ldquo;完全付款&rdquo;，则表明已支付成功。&nbsp;<br />
	<strong>10 .</strong><strong>如果采用银行电汇或邮局汇款的方式支付货款后</strong><strong>2</strong><strong>个工作日，在物华天宝查询</strong><strong>&ldquo;</strong><strong>我的账户</strong><strong>&rdquo;</strong><strong>中</strong><strong>&ldquo;</strong><strong>订单处理</strong><strong>&rdquo;</strong><strong>状态仍为</strong><strong>&ldquo;</strong><strong>提交待确认</strong><strong>&rdquo;</strong><strong>（尚未显示</strong><strong>&ldquo;</strong><strong>已付款</strong><strong>&rdquo;</strong><strong>），客户应该怎样查询订单付款情况？</strong><br />
	如果采用银行电汇或邮局汇款的方式支付货款2个工作日后，查询&ldquo;我的账户&rdquo;中&ldquo;订单处理&rdquo;状态仍为&ldquo;提交待确认订单&rdquo;（尚未显示&ldquo;已付款&rdquo;），可能是以下原因导致收款确认不及时：<br />
	(1) 相关订单号有误<br />
	(2) 汇款地址或汇款邮编有误导致寄错邮局<br />
	您可以依据以下步骤查询：<br />
	(1) 通过汇出邮局、汇出银行查询付款状态<br />
	(2) 致电物华天宝客服中心查询</p>
', CAST(0x00009FA4009C7908 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8bacdac9-9511-41c5-912c-6b5aa2b48833', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'6e057bb9-dd8c-486e-8200-97de7176745b', N'货到付款', N'<p>
	货到付款</p>
', CAST(0x00009FA300AD15C4 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'42c75214-33bd-4df4-8547-234d8ed42115', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'03d7d632-265b-4c63-86f4-9a019591a119', N'焦点', N'<p>
	焦点</p>
', CAST(0x00009FFF009CAAA2 AS DateTime), CAST(0x0000A01C009C9D5C AS DateTime), NULL, N'd9d1c46f-14e2-44e2-b257-d4e92819d2b5', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'1a62e33a-841e-43dd-a297-9b4ab9056538', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C4586 AS DateTime), CAST(0x0000A01C009C3768 AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'78e95c01-354d-4247-83b4-9d7ec798844c', N'诚征英才', N'<p>
	诚征英才</p>
', CAST(0x00009FA300F0BA90 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'e3ebdc49-d680-44b7-a3df-a757532bfa5d', N'促销活动测试标题2', N'<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
', CAST(0x00009FA3001EC42C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'd91b9245-e709-4dbc-80be-a9016c6f47d9', N'帮助中心', N'<p>
	帮助中心</p>
', CAST(0x00009FA300F0C8A0 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'c010d217-09ef-4e62-a9b0-abbeb268a585', N'天宝动态测试标题2', N'<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
', CAST(0x00009FA3001F6CEC AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'38f0bab6-8c3e-4225-be7c-be97b41ad304', N'快递运输', N'<p>
	快递运输</p>
', CAST(0x00009FA300AC0BC0 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'be14f470-2b1c-42a6-a5bd-36c7a3b78e7c', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'0c23bda0-1e8a-4892-917c-c339f929ad2d', N'热点', N'<p>
	热点</p>
', CAST(0x00009FFF009C6211 AS DateTime), CAST(0x0000A01C009C54B4 AS DateTime), NULL, N'631943b8-836a-49c9-879b-5dc693960973', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'f4bed4cb-42cb-48e3-9dcb-c809d3ab102d', N'公司转账', N'<p>
	公司转账</p>
', CAST(0x00009FA300AD8518 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'42c75214-33bd-4df4-8547-234d8ed42115', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'b1ce5669-9ca7-4266-80be-ca85752e07f1', N'联系我们', N'<p>
	&nbsp;</p>
<table border="1" cellpadding="0" cellspacing="0" style="width:580px;" width="580">
	<tbody>
		<tr>
			<td style="width:74px;">
				<p align="left">
					联系地址</p>
			</td>
			<td>
				<p align="left">
					保税区北京路60号新天地大厦A座802室<br />
					此地址暂不接受支付宝邮政汇款和现金缴款</p>
			</td>
		</tr>
		<tr>
			<td>
				<p align="left">
					邮政编码</p>
			</td>
			<td>
				<p align="left">
					266555</p>
			</td>
		</tr>
		<tr>
			<td style="height:10px;">
				<p align="left">
					客服电话</p>
			</td>
			<td style="height:10px;">
				<p align="left">
					0532-80983889</p>
			</td>
		</tr>
		<tr>
			<td style="height:10px;">
				<p align="center">
					网址</p>
			</td>
			<td style="height:10px;">
				<p align="left">
					http://www.gift163.cn/</p>
			</td>
		</tr>
	</tbody>
</table>
', CAST(0x00009FA400976314 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'8321ef85-db91-4659-b6ec-4040bc28ea3f', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'e47713b5-2bbf-452a-a2ae-cbc16fdb2a09', N'天宝动态测试标题5', N'<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
<p>
	天宝动态测试文字</p>
', CAST(0x00009FA3001FA1A8 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'44775ae2-c0ba-4fc6-b74b-475701e24287', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'd6ef6195-43d4-4ff9-91c3-cf27a3e13fb5', N'焦点', N'<p>
	焦点</p>
', CAST(0x00009FFF009C9C67 AS DateTime), CAST(0x0000A01C009C8394 AS DateTime), NULL, N'd9d1c46f-14e2-44e2-b257-d4e92819d2b5', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'6088e81d-0c04-4d18-9f4d-d492cf25f56d', N'广告测试', N'<p>
	1111000</p>
', CAST(0x00009FF400B74530 AS DateTime), CAST(0x0000A01100B73144 AS DateTime), NULL, N'5d44f169-a67c-411d-916f-7cf48ec767a9', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'896d21a4-a0d1-4293-ba6e-d80c4533b729', N'促销活动测试标题1', N'<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
', CAST(0x00009FA3001EB298 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'a4091191-5159-44e1-b783-dff4a5a0ff95', N'如何送礼', N'<p>
	如何送礼</p>
', CAST(0x00009FA300ACD0A0 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'be14f470-2b1c-42a6-a5bd-36c7a3b78e7c', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'74d19ea7-9236-4dcb-8c28-e3d0f93f5e8a', N'海外购物', N'<p>
	海外购物</p>
', CAST(0x00009FA300ACF9A4 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'be14f470-2b1c-42a6-a5bd-36c7a3b78e7c', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'6c889753-7fde-4096-9e8c-e4b427d0364c', N'礼品卡派送', N'<p>
	礼品卡派送</p>
', CAST(0x00009FA300ADEE90 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'08ce5d21-2439-4b6a-8844-7508ed4a3ee5', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'10d011dd-36f2-4b7b-a680-ec5d171067f2', N'促销活动测试标题', N'<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
', CAST(0x00009FA3001E9420 AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Articles] ([Id], [Name], [Content], [CreateTime], [VoidTime], [Url], [GenreId], [UserId]) VALUES (N'dc6b4529-40dc-46bf-9620-f93bdd71c2cd', N'促销活动测试标题3', N'<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
<p>
	促销活动测试文字</p>
', CAST(0x00009FA3001EE04C AS DateTime), CAST(0x0000A00800C5C100 AS DateTime), NULL, N'5cb7eeab-97ff-46b8-865c-a5be19084ed0', N'e52e183a-f71d-408d-9066-9b095778537f')
/****** Object:  Table [dbo].[Orders]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[UserId] [uniqueidentifier] NULL,
	[RealName] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[ShippingRegion] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[PostCode] [nvarchar](20) NULL,
	[Mobil] [nvarchar](20) NULL,
	[Tel] [nvarchar](20) NULL,
	[PaymentModeId] [uniqueidentifier] NULL,
	[PaymentGateway] [nvarchar](20) NULL,
	[IsPaid] [bit] NULL,
	[Freight] [money] NULL,
	[Weight] [decimal](18, 0) NULL,
	[CostPrice] [money] NULL,
	[ShipOrderNumber] [nvarchar](20) NULL,
	[IsPOD] [bit] NULL,
	[Total] [int] NULL,
	[IsActive] [bit] NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ORDERS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顾客编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顾客姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运送地区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShippingRegion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运送地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Mobil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'PaymentModeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付网关' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'PaymentGateway'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'费用结清' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'IsPaid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运费' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Freight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'净重' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'CostPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货运单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'ShipOrderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货到付款' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'IsPOD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否激活' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'IsActive'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Orders', @level2type=N'COLUMN',@level2name=N'Remark'
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[UserId] [uniqueidentifier] NULL,
	[Gender] [bit] NULL,
	[Avatar] [nvarchar](255) NULL,
	[TotalOrder] [int] NULL,
	[QQ] [nvarchar](20) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_USERPROFILE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'Avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单个数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'TotalOrder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserProfile', @level2type=N'COLUMN',@level2name=N'Remark'
GO
/****** Object:  Table [dbo].[Statistics]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistics](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[TotalUsers] [int] NULL,
	[TotalCustomers] [int] NULL,
	[TotalProducts] [int] NULL,
	[TotalOrders] [int] NULL,
	[NewUserInPast24Hrs] [int] NULL,
	[NewestUserId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_STATISTICS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'TotalUsers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顾客数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'TotalCustomers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'TotalProducts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'TotalOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'近24小时注册人数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'NewUserInPast24Hrs'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最新注册顾客' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Statistics', @level2type=N'COLUMN',@level2name=N'NewestUserId'
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[Quantity] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UserId] [uniqueidentifier] NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_SHOPPINGCART] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'顾客' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShoppingCart', @level2type=N'COLUMN',@level2name=N'Remark'
GO
/****** Object:  Table [dbo].[ShippingAddress]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingAddress](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Mobil] [nvarchar](20) NULL,
	[Tel] [nvarchar](20) NULL,
	[Address] [nvarchar](255) NULL,
	[PostCode] [nvarchar](20) NULL,
	[UserId] [uniqueidentifier] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_SHIPPINGADDRESS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'Mobil'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详细地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'PostCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ShippingAddress', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[SKU] [nvarchar](50) NULL,
	[RegionId] [uniqueidentifier] NULL,
	[Brand] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [decimal](6, 3) NULL,
	[Keywords] [nvarchar](100) NULL,
	[IsRecommended] [bit] NULL,
	[SalePrice] [money] NULL,
	[MarketPrice] [money] NULL,
	[SoldCount] [int] NULL,
	[Discount] [decimal](18, 0) NULL,
	[Latitude] [decimal](18, 6) NULL,
	[Longitude] [decimal](18, 6) NULL,
	[Stock] [int] NULL,
	[CreateTime] [datetime] NULL,
	[VistiCounts] [int] NULL,
	[SuperId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SKU'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属地区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'RegionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Brand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重量（Kg）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Weight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Keywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐？' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'IsRecommended'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'售价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SalePrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'MarketPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已售数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SoldCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'促销折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'Stock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'VistiCounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上架用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Products', @level2type=N'COLUMN',@level2name=N'SuperId'
GO
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'37e68e60-4ce9-4369-bc7a-042d2e9fd99e', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAD8E AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'01879d0c-3083-4311-a23d-045924f64942', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0232 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'34f785b0-86f9-4c45-a87e-07803066d206', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFB82 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5ebc4fa7-9a39-450a-8c6c-09a0ab9b6297', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFEC3 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'6358f353-2dd0-4963-a08b-0ebca974b38f', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D006A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'46553cc3-877c-4d2d-90fc-11a0cf2338c0', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFF62 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'cb8e0efa-574b-4a98-9858-11ece13d1efb', N'崂池云峰茶（一级）125gX2', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'崂池云峰茶', N'<p>
	&nbsp;</p>
<p>
	青岛崂池云峰茶业出产于青岛著名旅游度假区--崂山。崂山三面环海，是中国海岸线惟一山海相连的海上名山。鲜茶种植生产基地就坐落在群山环抱的崂山自然保护区内。茶园周边青山碧海、云雾缭绕、空气湿润、土壤肥沃、水质优良，得天独厚的自然条件为崂池云峰茶的优良品质奠定了坚实的基础。所在生产基地是山东省惟一茶叶《绿色食品》示范基地。</p>
<p>
	生产公司是崂山区农业龙头企业，《青岛市免检企业》和《守合同重信用企业》，是青岛市工商局确立的《青岛市知名企业打假维权重点保护单位》，青岛市茶叶学会常务理事单位和中国茶叶学会团体会员，2004年通过了ISO 9001国际质量管理体系认证。</p>
<p>
	通过多年的不断改革创新，崂池云峰茶以优秀的内在品质、精细典雅的包装赢得社会各界的普遍认可和欢迎。是青岛市《消费者放心满意产品》。在中国国际茶文化博览会上，被授予《国际五星级钻石奖》。是青岛市的《旅游特色产品》《金奖产品》《名牌产品》和山东省名茶。&ldquo;崂池&rdquo;商标2006年荣获青岛市著名商标、2007年获岛城十大商标。</p>
', CAST(0.250 AS Decimal(6, 3)), N'茶', 1, 150.0000, 200.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400FB792B AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5e2b2070-644e-467d-8947-129c9b77de4f', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0500 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'62dd28a5-fa8b-437e-9d3c-13753061c518', N'生肖葫芦', N'个', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'木缘阁', N'<p>
	山东肥城桃树栽培已有千年历史，肥城桃花节一般在4月份。桃木具有镇宅辟邪之功能，凡盖新房就用桃枝订在房屋四角，以保家宅安宁，大吉大利；迎亲嫁娶，也用桃枝，意为婚姻美满，富贵平安，逢年过节，也要取桃枝挂门边，用来镇宅接福，节日祥和，桃木应用在我国和东南亚国家广为流传和使用。桃木以果实为主，它的树干，粗短弯曲，又易变形，所以取材极难，经泡、蒸、煮、捂、晾、干燥等处理十八道工艺，处理后的桃木剑经久耐用，色如紫铜，清香亦人</p>
', CAST(0.050 AS Decimal(6, 3)), N'桃木', 0, 3.0000, 5.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FD400D17418 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'2ac66b9f-50f1-426a-be95-15fc9ad0eaeb', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFD88 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'3f280560-82b1-4067-8bc1-17a80ea61bb0', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D01FF AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0a88f98d-16d9-4be0-8b43-185ae8b40674', N'蓝宝石', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'中国蓝宝石', N'<p>
	蓝宝石以其晶莹剔透的美丽颜色，被古代人们蒙上神秘的超自然的色彩，被视为吉祥之物。早在古埃及、古希腊和古罗马、还有北欧各国，被用来装饰清真寺、教堂和寺院，和随身携带并作为宗教仪式的贡品。它也曾与钻石、珍珠一起成为英帝国国王、俄国沙皇皇冠上和礼服上不可缺少的饰物。自从近百年宝石进入民间以来，蓝宝石分别跻身于世界五大珍辰石之列，是人们珍爱的宝石品。世界宝石学界定蓝宝石为九月的生辰石。日本人选其作为结婚23周年（蓝宝石）、26周年（星光蓝宝石）的珍贵纪念品</p>
', CAST(1.000 AS Decimal(6, 3)), N'宝石', 0, 450.0000, 500.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FD400D19088 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5d1d8548-8bf4-4bb5-851f-1f10fdc5b3fd', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEBEA AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'768b0438-e4cf-4cea-a73b-1f898e2c4503', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D02CD AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'8da788e3-cf7c-4908-aaed-1fd65fc65c08', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE9AB AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'30332d45-876e-49c3-98b6-20de68f9d8b5', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFCEC AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0898ad2a-b6f4-46d7-8daa-231548b382d2', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEA4B AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'1f1f14b1-cbe5-4775-af12-289255d87d78', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFC18 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'bbeef4f6-3d73-4138-8b6d-28f0e62bc4c6', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE7B1 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f1d2695a-880e-42d3-9ef3-28ffa401738e', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0001 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'ba30c3d7-4671-4bd4-974e-2a1045c25b8a', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D016D AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'a1e1b8c0-cfdb-46a9-bfc8-2edb7a0282ec', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEB7F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'8594b959-9749-46ac-b105-2eee33614ef6', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAD60 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'993ab84d-1507-4b3e-ac1f-32d35e95ff5e', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAB88 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'c2bb26d4-de75-4bf4-9666-332e86a908f4', N'陶瓷刀（24件装）', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'景泰蓝', N'<p>
	&nbsp;</p>
<p>
	陶瓷刀具有&ldquo;贵族刀&rdquo;之美称,是世界上最受欢迎的绿色产品之一。与传统钢刀相比，陶瓷刀的制作技术更加先进，其柔和的色泽，永远锋利的刀刃，人性化的手握设计，一定会让您在厨房工作时的心情变得愉快开朗!!!<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 陶瓷刀充分体现了新世纪、新材料的绿色环保概念, 是现代礼品的经典之作，是身份和品味的象征！<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本品外形美观，实用性强，自用实惠，送礼高贵，赠送亲朋好友倍添面子，也是企事业单位节庆典礼之最佳赠品。</p>
', CAST(3.000 AS Decimal(6, 3)), N'陶瓷', 1, 280.0000, 380.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400FD4A6A AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5f106730-5ff5-41da-b214-33344bf795f5', N'陶瓷餐具（24件礼盒）', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'景泰蓝', N'<p>
	陶瓷刀具有&ldquo;贵族刀&rdquo;之美称,是世界上最受欢迎的绿色产品之一。与传统钢刀相比，陶瓷刀的制作技术更加先进，其柔和的色泽，永远锋利的刀刃，人性化的手握设计，一定会让您在厨房工作时的心情变得愉快开朗!!!<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 陶瓷刀充分体现了新世纪、新材料的绿色环保概念, 是现代礼品的经典之作，是身份和品味的象征！<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本品外形美观，实用性强，自用实惠，送礼高贵，赠送亲朋好友倍添面子，也是企事业单位节庆典礼之最佳赠品。<br />
	&nbsp;</p>
', CAST(2.000 AS Decimal(6, 3)), N'陶瓷', NULL, 600.0000, 750.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA20100E909 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'38185a14-7e9b-4501-b14a-34e21467f9d2', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFEF5 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'636cf383-0119-4ad6-927d-35c5c2f2c5f3', N'烟式原酒70° ', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	<span style="font-size: 9pt; ">本公司为青岛琅琊台酒经销商，主导产品琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度），坚持深掘传统</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">老五甑</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">工艺，</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">应用现代高新技术，采用矿物质含量丰富的琅琊台山泉水和优质高梁、小麦、大麦、豌豆等多种原料精心酿制而成。琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度）具有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">窖香浓郁、绵甜甘</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">冽、落口爽净、回味悠长</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">的独特风格，受到酿酒专家高度评价，享有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">青岛小茅台</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo; </span><span style="font-size: 9pt; ">之称，并被国际友人誉为</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">天下一绝</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">。琅琊台原酒具有滋阴壮阳，缓解身体疲劳，改善睡眠质量，防皱抗衰老，延年益寿之功效，纯粮食酿造，活血化瘀，对于风湿病、腰腿疼痛有独特功效。</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; "><o:p></o:p></span></p>
', CAST(0.500 AS Decimal(6, 3)), N'酒', 1, 368.0000, 408.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF00990659 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'2937d9db-c25f-4a65-b936-360b1b3d81e5', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0400 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'1862f7ce-e781-4557-97ae-373c0bcddbd5', N'陶瓷刀（七件装）', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'景泰蓝 ', N'<p>
	&nbsp;</p>
<p>
	陶瓷刀具有&ldquo;贵族刀&rdquo;之美称,是世界上最受欢迎的绿色产品之一。与传统钢刀相比，陶瓷刀的制作技术更加先进，其柔和的色泽，永远锋利的刀刃，人性化的手握设计，一定会让您在厨房工作时的心情变得愉快开朗!!!<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 陶瓷刀充分体现了新世纪、新材料的绿色环保概念, 是现代礼品的经典之作，是身份和品味的象征！<br />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本品外形美观，实用性强，自用实惠，送礼高贵，赠送亲朋好友倍添面子，也是企事业单位节庆典礼之最佳赠品。</p>
', CAST(1.000 AS Decimal(6, 3)), N'陶瓷', 1, 135.0000, 185.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400FCE086 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'1e1dc43f-2617-4fda-a3d3-375be2fb7cfc', N'琅琊台70°原酒	110ml*20 ', N'箱', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	<span style="font-size: 9pt; ">本公司为青岛琅琊台酒经销商，主导产品琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度），坚持深掘传统</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">老五甑</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">工艺，</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">应用现代高新技术，采用矿物质含量丰富的琅琊台山泉水和优质高梁、小麦、大麦、豌豆等多种原料精心酿制而成。琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度）具有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">窖香浓郁、绵甜甘</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">冽、落口爽净、回味悠长</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">的独特风格，受到酿酒专家高度评价，享有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">青岛小茅台</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo; </span><span style="font-size: 9pt; ">之称，并被国际友人誉为</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">天下一绝</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">。琅琊台原酒具有滋阴壮阳，缓解身体疲劳，改善睡眠质量，防皱抗衰老，延年益寿之功效，纯粮食酿造，活血化瘀，对于风湿病、腰腿疼痛有独特功效。</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; "><o:p></o:p></span></p>
', CAST(2.500 AS Decimal(6, 3)), N'酒', 1, 1380.0000, 1450.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF0098F320 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'bc916377-c89c-4250-84f5-3864b716e419', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFE5B AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'91686c6d-7820-476e-96c3-39ab6777fd3a', N'内画金一品', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p>
	内画，是我国一种特有的传统工艺，它的产生起源于画鼻烟壶。内画的画法是以特制的变形细笔，在玻璃、水晶、琥珀等材质的壶坯内，手绘出细致入微的画面，格调典雅、笔触精妙。</p>
<p>
	内画工艺品，能把您心中的完美图案，想对朋友、家人或者领导、客户想说的祝福语言，都能手工的画到坯料内，请注意，是纯手工画进去的，与一般的印制或者激光雕刻有着不同的特殊意义。您不想给您的家人、朋友、领导、客户一个有特殊意义的礼品么？内画工艺品绝对是您的首选。</p>
', CAST(0.500 AS Decimal(6, 3)), N'内画', 1, 600.0000, 800.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF00988809 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'18ddb15d-c278-4f46-9c5c-39c18c1d8f85', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFC80 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'小琅高 100mlX4', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	<em>数间茅屋 藏书万卷 投老村家 山中何事？</em><br />
	&nbsp;&nbsp;<em>梨花酿酒 春水煎茶 竹林听雨 对酒当歌~</em></p>
<p>
	09年琅琊台酒厂刚刚推出的新款高档酒，不锈钢瓶身，71&deg;特香酒质。</p>
<p>
	<strong>琅琊台集团独特的地理环境、气候和历史因素，造就了70</strong><strong>&deg;</strong><strong>琅琊台原酒、71</strong><strong>&deg;</strong><strong>小琅高无可复制的独特个性，稀缺性、差异化、高品质成为热销全国的内在因素。二是70</strong><strong>&deg;</strong><strong>原酒、71</strong><strong>&deg;</strong><strong>小琅高精巧、人文的包装设计，极大地方便了全国来青旅游者、公务、商务人士携带。正是以上特色，使70</strong><strong>&deg;</strong><strong>琅琊台原酒、71</strong><strong>&deg;</strong><strong>小琅高连续十年高居青岛市十佳旅游商品之首，成为全国来青朋友的首选。尤其是71</strong><strong>&deg;</strong><strong>小琅高独特的不锈钢瓶，把白酒国粹表现得淋漓尽致，成为许多老首长、老将军爱不释手之物，往往是酒尽壶未了，成为他们外出旅游，忘情山水不可或缺的随身之物。</strong></p>
', CAST(0.400 AS Decimal(6, 3)), N'酒', 1, 980.0000, 1080.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF00987525 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'43b14e8d-35a8-4509-9da4-3b62977bf437', N'崂池云峰茶（特级）125gX2', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'崂池云峰茶', N'<p>
	&nbsp;</p>
<p>
	青岛崂池云峰茶业出产于青岛著名旅游度假区--崂山。崂山三面环海，是中国海岸线惟一山海相连的海上名山。鲜茶种植生产基地就坐落在群山环抱的崂山自然保护区内。茶园周边青山碧海、云雾缭绕、空气湿润、土壤肥沃、水质优良，得天独厚的自然条件为崂池云峰茶的优良品质奠定了坚实的基础。所在生产基地是山东省惟一茶叶《绿色食品》示范基地。</p>
<p>
	生产公司是崂山区农业龙头企业，《青岛市免检企业》和《守合同重信用企业》，是青岛市工商局确立的《青岛市知名企业打假维权重点保护单位》，青岛市茶叶学会常务理事单位和中国茶叶学会团体会员，2004年通过了ISO 9001国际质量管理体系认证。</p>
<p>
	通过多年的不断改革创新，崂池云峰茶以优秀的内在品质、精细典雅的包装赢得社会各界的普遍认可和欢迎。是青岛市《消费者放心满意产品》。在中国国际茶文化博览会上，被授予《国际五星级钻石奖》。是青岛市的《旅游特色产品》《金奖产品》《名牌产品》和山东省名茶。&ldquo;崂池&rdquo;商标2006年荣获青岛市著名商标、2007年获岛城十大商标。</p>
', CAST(0.250 AS Decimal(6, 3)), N'茶', 1, 315.0000, 420.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400F6CA90 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'fd569a57-dbbe-47d2-a794-3cb9a435e74b', N'内画文房四宝', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p>
	内画，是我国一种特有的传统工艺，它的产生起源于画鼻烟壶。内画的画法是以特制的变形细笔，在玻璃、水晶、琥珀等材质的壶坯内，手绘出细致入微的画面，格调典雅、笔触精妙。</p>
<p>
	内画工艺品，能把您心中的完美图案，想对朋友、家人或者领导、客户想说的祝福语言，都能手工的画到坯料内，请注意，是纯手工画进去的，与一般的印制或者激光雕刻有着不同的特殊意义。您不想给您的家人、朋友、领导、客户一个有特殊意义的礼品么？内画工艺品绝对是您的首选。</p>
', CAST(3.000 AS Decimal(6, 3)), N'内画', 0, 135.0000, 180.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAC009C58F2 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'00de6ab7-e769-43f7-a730-3f992a64ff95', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0035 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'29b8c392-6915-4f08-9ae7-412beb85611f', N'花开富贵内画水晶球', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p>
	内画，是我国一种特有的传统工艺，它的产生起源于画鼻烟壶。内画的画法是以特制的变形细笔，在玻璃、水晶、琥珀等材质的壶坯内，手绘出细致入微的画面，格调典雅、笔触精妙。</p>
<p>
	内画工艺品，能把您心中的完美图案，想对朋友、家人或者领导、客户想说的祝福语言，都能手工的画到坯料内，请注意，是纯手工画进去的，与一般的印制或者激光雕刻有着不同的特殊意义。您不想给您的家人、朋友、领导、客户一个有特殊意义的礼品么？内画工艺品绝对是您的首选。&nbsp;</p>
', CAST(3.500 AS Decimal(6, 3)), N'内画', 0, 320.0000, 400.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF00991EF4 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'87049684-7384-475b-a3b4-41c4351ddeeb', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFDBC AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'63ac26a5-b340-46b7-8e02-43c317decddf', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEA7B AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'2bcadcdc-ae6d-44fd-90cc-43e2757f3d8e', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFE2A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'92ef10c7-b12f-4068-957f-4bfff7509092', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFFC9 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'1d394fbf-a3c2-42b5-a294-5098677053dd', N'一品景芝53°尚品', N'瓶', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'一品景芝', N'<p>
	<strong>芝麻香酒是景芝酒业历经半个世纪的创新成果，一品景芝是中国原创国标芝麻香型代表产品。被商务部酒类流通管理办公室和中国酿酒工业协会联合授予中国白酒芝麻香型代表；</strong><strong>2008</strong><strong>年被授予国家地理标志保护产品；</strong><strong>2009</strong><strong>年荣获中国轻工业科技成果一等奖、中国白酒质检红榜第一名。</strong></p>
<p>
	<strong>作为芝麻香型白酒的创始者，景芝酒业自</strong><strong>1957</strong><strong>年在中华老字号景芝白乾中发现</strong><strong>&ldquo;</strong><strong>芝麻香</strong><strong>&rdquo;</strong><strong>引子后，历经半个世纪的不懈研究和实践，终于总结出了芝麻香型白酒的工艺特点，成功开发出芝麻香型白酒</strong><strong>---</strong><strong>一品景芝。它以优质高粱、小麦为主要原料，加适量麸皮，泥底砖池，清蒸续渣，量质分级，长期储存，科学勾兑。具有</strong><strong>&ldquo;</strong><strong>四高一长</strong><strong>&rdquo;</strong><strong>的特点：即高氮配料、高温曲与强化菌混合使用、高温堆积、高温入池发酵、贮酒时间长。集酱、浓、清三大香型生产工艺之精华，融合大曲、麸曲酒之优点，多种微生物混合发酵，使其达到了闻香幽雅、香甜醇厚、绵柔舒适、余香悠长的芝麻香风味。</strong></p>
', CAST(0.500 AS Decimal(6, 3)), N'酒', 0, 918.0000, 1058.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAC009B7B62 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'15498368-36bc-4588-8879-51e6839674ad', N'镇宅剑', N'件', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'木缘阁', N'<p>
	桃木剑传说：<br />
	用桃木削制的&ldquo;捉鬼&rdquo;或&ldquo;斩鬼&rdquo;的法宝，和&ldquo;桃印符&rdquo;、苇索等配套</p>
<p>
	使用，这已是&ldquo;牛鼻道人&rdquo;之类手中的宝物了，但取义源于古人笃信桃</p>
<p>
	木有镇鬼的神力。《封神榜》载：姜子牙（太公）用桃木剑降妖兴周，</p>
<p>
	可谓家喻户晓。现东南亚各国华裔以桃木剑置于户中用以压邪避灾求赐</p>
<p>
	吉祥安康</p>
', CAST(0.250 AS Decimal(6, 3)), N'桃木', 0, 560.0000, 740.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAE00EEE0D1 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'd15588ac-c255-469c-b251-54600eae5983', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D019F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'332f0a2a-8d02-460d-a228-59a1e20d31b0', N'水晶雕件', N'块', N'a748aeb9-dcd6-418a-bd85-1a63b5ae8d61', N'东海水晶', N'<div>
	<strong><font color="#ffff33" size="4">&nbsp;</font></strong>
	<p>
		<span style="color: #0000cd"><font size="4"><strong>白水晶是佛教七宝之一，对于供佛、避邪、挡刹、镇宅都拥有强大的正向能力，对于清除负性能量更是拥有其强大功效。白色是红、橙、黄、绿、蓝、靛、紫所有光色的综合体，代表著平衡和美满。</strong></font></span></p>
	<p>
		<span style="color: #0000cd"><strong><font size="4">白水晶，相应人体七轮中的顶轮，可使心灵平静，和谐纯洁，具集中精神、提高注意力、开启心智、开发潜能的功用，可将体内之病气，从脚底排出，使人头脑清晰、精神爽利;白水晶的磁场可攻破不良的气流，净化全身，使人体恢复健康，负性能量消散后，即是好运的开始。</font></strong></span></p>
	<p>
		<span style="color: #0000cd"><strong><font size="4">白水晶:在光线中会产生持续、稳定的震荡，所以对于使人头脑清晰、增强记忆力和理解力的功能，更是有显著的帮助</font></strong></span></p>
</div>
', CAST(0.196 AS Decimal(6, 3)), N'水晶', 0, 468.0000, 585.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA200F8285F AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'4a874fb6-85a3-4f54-8724-5a39ce5e3dbf', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFBB5 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'd4dc5e65-d961-436a-942f-5a4582d96eae', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAC97 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'cfb0f0ee-9eb6-4b65-ac1e-5efcf81a3e2b', N'温子余内画（富贵吉祥）', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p>
	内画，是我国一种特有的传统工艺，它的产生起源于画鼻烟壶。内画的画法是以特制的变形细笔，在玻璃、水晶、琥珀等材质的壶坯内，手绘出细致入微的画面，格调典雅、笔触精妙。</p>
<p>
	内画工艺品，能把您心中的完美图案，想对朋友、家人或者领导、客户想说的祝福语言，都能手工的画到坯料内，请注意，是纯手工画进去的，与一般的印制或者激光雕刻有着不同的特殊意义。您不想给您的家人、朋友、领导、客户一个有特殊意义的礼品么？内画工艺品绝对是您的首选。</p>
', CAST(0.500 AS Decimal(6, 3)), N'内画', 1, 600.0000, 800.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAC009D3A81 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'7b1c08c0-f50f-4e78-8d5f-61572410ecc9', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE6CE AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0ae374da-fcf3-4982-a51c-636acf22c629', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE97A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'4cf3957b-1c7b-4bd7-a64c-65bdf1a4500a', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFD1F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e5dc82fe-0fc3-48b0-820d-65dadc869668', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFF96 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'c4a83188-58f9-45ef-9bce-6629e19cc529', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0266 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'eaff8d55-602e-4df2-ab8d-67d24e190765', N'崂池云峰茶（两筒装）', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'崂池云峰', N'<p>
	&nbsp;</p>
<p>
	青岛崂池云峰茶业出产于青岛著名旅游度假区--崂山。崂山三面环海，是中国海岸线惟一山海相连的海上名山。鲜茶种植生产基地就坐落在群山环抱的崂山自然保护区内。茶园周边青山碧海、云雾缭绕、空气湿润、土壤肥沃、水质优良，得天独厚的自然条件为崂池云峰茶的优良品质奠定了坚实的基础。所在生产基地是山东省惟一茶叶《绿色食品》示范基地。</p>
<p>
	生产公司是崂山区农业龙头企业，《青岛市免检企业》和《守合同重信用企业》，是青岛市工商局确立的《青岛市知名企业打假维权重点保护单位》，青岛市茶叶学会常务理事单位和中国茶叶学会团体会员，2004年通过了ISO 9001国际质量管理体系认证。</p>
<p>
	通过多年的不断改革创新，崂池云峰茶以优秀的内在品质、精细典雅的包装赢得社会各界的普遍认可和欢迎。是青岛市《消费者放心满意产品》。在中国国际茶文化博览会上，被授予《国际五星级钻石奖》。是青岛市的《旅游特色产品》《金奖产品》《名牌产品》和山东省名茶。&ldquo;崂池&rdquo;商标2006年荣获青岛市著名商标、2007年获岛城十大商标。</p>
', CAST(0.500 AS Decimal(6, 3)), N'茶', 1, 180.0000, 240.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400F8C5FB AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'896c11de-3f9b-4d61-8c1d-6d6f2b187c9e', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CABD0 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'3e80bff4-8b50-4c88-8ddd-6ec4a773e41c', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CED2B AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5a086608-f406-4f05-bdc6-74af428a7f92', N'蓝宝石', N'颗', N'ef66473a-a529-47e0-8870-c114a82ab6a6', N'中国蓝宝石', N'<p align="left">
	红宝石和蓝宝石同属于刚玉宝石，其中主要由Cr3+致色的红色刚玉宝石称为红宝石，其它除红色外的其它颜色刚玉宝石均属于蓝宝石，包括蓝色蓝宝石、粉色蓝宝石、金黄色蓝宝石、绿色蓝宝石等。<br />
	<br />
	红宝石是七月的生辰石，象征着勇敢、热情、很久不变的爱。蓝宝石是九月份的生辰石，象征着忠诚、坚贞和智慧。<br />
	<br />
	红蓝宝石颜色丰富、艳丽，产量稀少，其中尤以鸽血红红宝石、矢车菊蓝蓝宝石被广大消费者熟知，加工而成的首饰广泛受欧美等发达国家消费者的推崇。</p>
', CAST(0.250 AS Decimal(6, 3)), N'宝石', 1, 1390.0000, 1500.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF009936EA AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0bfc6257-5397-4781-892c-78216a5c1f08', N'和田玉枣', N'包', N'9a24d955-ab28-4dcd-a26e-ae235c7df5c3', N'和田', N'<p>
	测试测试测试</p>
', CAST(1.000 AS Decimal(6, 3)), N'枣', NULL, 20.0000, 28.0000, NULL, NULL, NULL, NULL, 100, CAST(0x00009FA0017FDC14 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0b88112e-e5bd-4aed-9a43-79651a5166b7', N'琅琊台70°原酒 110mlX8', N'琅琊台', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	<span style="font-size: 9pt; ">本公司为青岛琅琊台酒经销商，主导产品琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度），坚持深掘传统</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">老五甑</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">工艺，</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">应用现代高新技术，采用矿物质含量丰富的琅琊台山泉水和优质高梁、小麦、大麦、豌豆等多种原料精心酿制而成。琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度）具有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">窖香浓郁、绵甜甘</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">冽、落口爽净、回味悠长</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">的独特风格，受到酿酒专家高度评价，享有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">青岛小茅台</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo; </span><span style="font-size: 9pt; ">之称，并被国际友人誉为</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">天下一绝</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">。琅琊台原酒具有滋阴壮阳，缓解身体疲劳，改善睡眠质量，防皱抗衰老，延年益寿之功效，纯粮食酿造，活血化瘀，对于风湿病、腰腿疼痛有独特功效。</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; "><o:p></o:p></span></p>
', CAST(1.000 AS Decimal(6, 3)), N'酒', 1, 548.0000, 628.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF0098AF13 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f0d5ba92-5fc9-48a1-bf25-7aab20827e76', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0306 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'9da9207c-cbe6-48df-8369-7d4996ffbaf4', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE777 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'474d55c9-2920-4160-ab52-7e7f0987d063', N'琅琊台原酒', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	本公司为青岛琅琊台酒经销商，主导产品琅琊台酒70&deg;原酒（七十度），坚持深掘传统&ldquo;老五甑&rdquo;工艺， 应用现代高新技术，采用矿物质含量丰富的琅琊台山泉水和优质高梁、小麦、大麦、豌豆等多种原料精心酿制而成。琅琊台酒70&deg;原酒（七十度）具有&ldquo;窖香浓郁、绵甜甘 冽、落口爽净、回味悠长&rdquo;的独特风格，受到酿酒专家高度评价，享有&ldquo;青岛小茅台&rdquo; 之称，并被国际友人誉为&ldquo;天下一绝&rdquo;。琅琊台原酒具有滋阴壮阳，缓解身体疲劳，改善睡眠质量，防皱抗衰老，延年益寿之功效，纯粮食酿造，活血化瘀，对于风湿病、腰腿疼痛有独特功效。</p>
', CAST(1.000 AS Decimal(6, 3)), N'原酒', 0, 548.0000, 628.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA20109E01B AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'654118ab-b8db-4eaa-87a2-82c7e310cf92', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE73F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'66033e80-e386-4df4-b93c-8342c3a701f9', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE9DF AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'814d1359-033a-4b2d-97dc-838be4db773b', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFD55 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'7031b37d-2c98-4c08-a30d-847bb2299120', N'崂池云峰茶（一级）200g', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'崂池云峰茶', N'<p>
	&nbsp;</p>
<p>
	青岛崂池云峰茶业出产于青岛著名旅游度假区--崂山。崂山三面环海，是中国海岸线惟一山海相连的海上名山。鲜茶种植生产基地就坐落在群山环抱的崂山自然保护区内。茶园周边青山碧海、云雾缭绕、空气湿润、土壤肥沃、水质优良，得天独厚的自然条件为崂池云峰茶的优良品质奠定了坚实的基础。所在生产基地是山东省惟一茶叶《绿色食品》示范基地。</p>
<p>
	生产公司是崂山区农业龙头企业，《青岛市免检企业》和《守合同重信用企业》，是青岛市工商局确立的《青岛市知名企业打假维权重点保护单位》，青岛市茶叶学会常务理事单位和中国茶叶学会团体会员，2004年通过了ISO 9001国际质量管理体系认证。</p>
<p>
	通过多年的不断改革创新，崂池云峰茶以优秀的内在品质、精细典雅的包装赢得社会各界的普遍认可和欢迎。是青岛市《消费者放心满意产品》。在中国国际茶文化博览会上，被授予《国际五星级钻石奖》。是青岛市的《旅游特色产品》《金奖产品》《名牌产品》和山东省名茶。&ldquo;崂池&rdquo;商标2006年荣获青岛市著名商标、2007年获岛城十大商标。</p>
', CAST(0.200 AS Decimal(6, 3)), N'茶', 1, 195.0000, 260.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400F78A22 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'8970efd0-2a74-44a6-9beb-855c2db51a20', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE874 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'aed0d777-aecb-4fea-bcf4-8663cdb01240', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0105 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'118a5a32-8908-4280-8d1a-867b898955ff', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D029C AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'3d38907c-ff9d-441b-ae85-89b2cfa28147', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEDC8 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e2dc3aea-7da8-4e8d-989e-8a9f05551cc5', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFDF2 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'824be7b6-8231-4ed5-8fa8-8cc2341522db', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CECBF AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'99dfff3f-75b4-41f5-87d4-8db1ecb6b68f', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE842 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'012bb065-bea8-4fa2-84dd-8f7d0b24181c', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAC25 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'b6c55653-d6ae-4dad-af33-9054c404d588', N'桃木九龙剑', N'件', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'木缘阁', N'<p>
	桃木剑传说：<br />
	用桃木削制的&ldquo;捉鬼&rdquo;或&ldquo;斩鬼&rdquo;的法宝，和&ldquo;桃印符&rdquo;、苇索等配套</p>
<p>
	使用，这已是&ldquo;牛鼻道人&rdquo;之类手中的宝物了，但取义源于古人笃信桃</p>
<p>
	木有镇鬼的神力。《封神榜》载：姜子牙（太公）用桃木剑降妖兴周，</p>
<p>
	可谓家喻户晓。现东南亚各国华裔以桃木剑置于户中用以压邪避灾求赐</p>
<p>
	吉祥安康</p>
', CAST(0.250 AS Decimal(6, 3)), N'桃木', 0, 360.0000, 500.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAE00EE2B48 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e57d8868-322d-4c38-b00c-91fe87b8d835', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEB45 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'491b0afa-dcfc-448c-97d3-95fc083e55b1', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEA16 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'd4fc9ac5-6d30-451d-b9ac-993838cfd703', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEC8A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'd63f0036-4af4-41ed-841e-9a3e5d6d9ea4', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEE5F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'8e9d62ea-cf99-4c9d-b2fd-a142cafa1c88', N'花开富贵内画水晶球', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p>
	内画，是我国一种特有的传统工艺，它的产生起源于画鼻烟壶。内画的画法是以特制的变形细笔，在玻璃、水晶、琥珀等材质的壶坯内，手绘出细致入微的画面，格调典雅、笔触精妙。</p>
<p>
	内画工艺品，能把您心中的完美图案，想对朋友、家人或者领导、客户想说的祝福语言，都能手工的画到坯料内，请注意，是纯手工画进去的，与一般的印制或者激光雕刻有着不同的特殊意义。您不想给您的家人、朋友、领导、客户一个有特殊意义的礼品么？内画工艺品绝对是您的首选。</p>
', CAST(1.500 AS Decimal(6, 3)), N'内画', 1, 1350.0000, 1600.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAC009E27AB AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e536e699-7993-48f4-be4e-a66f59f54ac4', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAAAC AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'94c3bd21-2c6a-4445-8c92-a694a33b7dd6', N'内画壶', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺源阁', N'<p>
	内画艺术是中国特有的一种艺术形式，艺术家们以水晶料为壶坯，用特制的变形细笔，在口小如豆的瓶内反手内绘精妙入微的画面，作画时，气收于丹田之中，力发于手腕之上，精细之处非目力所能及，可谓鬼斧神功，创造了奇特瑰丽的艺术珍品。</p>
', CAST(3.200 AS Decimal(6, 3)), N'内画壶', 0, 1860.0000, 2680.0000, NULL, NULL, NULL, NULL, 2, CAST(0x00009FA200A2FB02 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5392ac8d-cd75-4ec1-b183-a7469b3c95d0', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0369 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'2baabb0d-de66-46de-abe9-a793614c5936', N'松鹤延年', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p align="center">
	<strong><font size="6"><font color="#cc0099" face="楷体_GB2312" size="6"><strong>松，傲霜斗雪，卓然不群；</strong></font></font></strong></p>
<p align="center">
	<strong><font size="6"><font color="#cc0099" face="楷体_GB2312" size="6"><strong>鹤，长生不老，高雅高洁。</strong></font></font></strong></p>
', CAST(5.000 AS Decimal(6, 3)), N'内画', 0, 300.0000, 390.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA200F0B5CB AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'54fd9525-8b20-4456-ac1e-ad0e56fcfdf3', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEBB9 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'测试一下', N'套', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'百家', N'<p>
	测试一下吧。。。。。。。。。</p>
', CAST(1.000 AS Decimal(6, 3)), N'特产', 1, 100.0000, 200.0000, NULL, CAST(80 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF0097A992 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'b4d4eab9-8811-4dca-aeaa-aff4b638ad20', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFC4A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'9b6e27d6-154b-4c3f-b41e-b0479d32e7d4', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAB3F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'387cc998-c0e0-4db2-b08f-b22f959d026c', N'12', N'212', N'c591a6d7-ecc6-4a15-a4fc-831e51a8b557', N'21', N'<p>
	1212</p>
', CAST(11.000 AS Decimal(6, 3)), N'22', NULL, 12.0000, 11.0000, NULL, NULL, NULL, NULL, 22, CAST(0x00009FA0018652D6 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'14349f4b-ed32-44d1-90c9-b3516fea2d44', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFF2A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'81a923e3-3c4f-4251-8976-b3bbd3a4fc8f', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEAAE AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'22acaad4-b724-4741-8971-b4418f75f1c4', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEE92 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'329c7dec-74d3-4e43-9a8a-bb9a27945f15', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CADBE AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f3755693-4e8b-4dc7-b4cd-bc1b61aee513', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0466 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'af19a289-992e-438f-b85d-bcd9c03c15c0', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEAE3 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'12455e51-c7b2-4211-8460-bfb10cb54259', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CED62 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'38af8f87-3e18-475e-b809-c0c7d3129e69', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE530 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'93f3410e-55ee-490d-9d2b-c171a0152c47', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEC1F AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0a099e4b-1cb4-48f6-937d-c22063f73f2c', N'一品景芝42°吉品', N'瓶', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'一品景芝', N'<p>
	<strong>芝麻香酒是景芝酒业历经半个世纪的创新成果，一品景芝是中国原创国标芝麻香型代表产品。被商务部酒类流通管理办公室和中国酿酒工业协会联合授予中国白酒芝麻香型代表；</strong><strong>2008</strong><strong>年被授予国家地理标志保护产品；</strong><strong>2009</strong><strong>年荣获中国轻工业科技成果一等奖、中国白酒质检红榜第一名。</strong></p>
<p>
	<strong>作为芝麻香型白酒的创始者，景芝酒业自</strong><strong>1957</strong><strong>年在中华老字号景芝白乾中发现</strong><strong>&ldquo;</strong><strong>芝麻香</strong><strong>&rdquo;</strong><strong>引子后，历经半个世纪的不懈研究和实践，终于总结出了芝麻香型白酒的工艺特点，成功开发出芝麻香型白酒</strong><strong>---</strong><strong>一品景芝。它以优质高粱、小麦为主要原料，加适量麸皮，泥底砖池，清蒸续渣，量质分级，长期储存，科学勾兑。具有</strong><strong>&ldquo;</strong><strong>四高一长</strong><strong>&rdquo;</strong><strong>的特点：即高氮配料、高温曲与强化菌混合使用、高温堆积、高温入池发酵、贮酒时间长。集酱、浓、清三大香型生产工艺之精华，融合大曲、麸曲酒之优点，多种微生物混合发酵，使其达到了闻香幽雅、香甜醇厚、绵柔舒适、余香悠长的芝麻香风味。</strong></p>
', CAST(0.500 AS Decimal(6, 3)), N'酒', 0, 185.0000, 218.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAC009AAA62 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
GO
print 'Processed 100 total records'
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'a522c737-8525-4ec0-bdb5-c32c0be3ed75', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE595 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f7e9847b-671c-4289-b28f-c34fab63ae53', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE703 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'44b9c1c6-34b5-4f07-8054-c4ae44c32938', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE62C AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'2c684565-bfd6-4cf0-baf1-c5c0def416ee', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CECF8 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0f80a7ed-f114-49ce-b0ca-c92c620d7888', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CED94 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f2cbe357-c38d-4e29-868a-ce9bc38ff3f1', N'天然紫晶洞', N'个', N'a748aeb9-dcd6-418a-bd85-1a63b5ae8d61', N'东海水晶', N'<p align="left">
	<span style="color: #ee82ee"><span style="font-size: 18px"><font face="方正北魏楷书简体" size="4">紫晶洞以前叫雷公蛋，有圆形或椭圆形的，中空的。在其内壁布满了很多紫水晶，向着球形的中心方向生长。将球形切开后，便成为人们用来摆设的，或作为风水用途的紫晶了。紫晶洞为佛教七宝之一,在所有水晶中具王者的&ldquo;尊贵之气&rdquo;,除了有艺术之美以外,还具有改善阳宅及个人的磁场功能。</font></span></span></p>
<div align="left">
	<span style="color: #ee82ee"><font size="4"><font face="方正北魏楷书简体">紫晶洞为佛教七宝之一，在所有水晶中具王者的&ldquo;尊贵之气&rdquo;，除了有艺术之美以外，还有改善阳宅及个人的磁场功能，经过启发进程，对个人运途与事业、财运、阳宅，都会有相当好的磁场能量的改善。紫晶洞孕育是在地底是经历了亿万年以上的生命，经历过无数的磁波与磁场，根据专家认为紫晶洞的成长阅历无限，可让人恢复完整的灵气而改善运途，所以才会成为佛教文物之宝。紫晶洞摆放在办公桌、书桌、客厅、店面等等改变势，无论爱情、事业、学习通通顺顺利利！另外市面上许多紫晶洞，造型优美搭配紫晶洞陈列，更显气宇非凡，搭配家中装璜相得益彰!&nbsp;</font></font></span></div>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">紫晶洞的形成：</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">紫晶洞形成于亿万年前的地质生成时代,地壳中的无水硅酸流入空洞,在一定的压力和温度下附着崖壁结晶而成.紫水晶乃宇宙之造化，天地之结晶，日月之精华。&ldquo;正宗&rdquo;的紫晶，晶体内含有平等排列或相交45&deg;夹角的色带，色彩常常由双晶引起色带，颜色的两个位置是对称的，在紫晶断口上见到&ldquo;人&rdquo;字形的双晶细缝，它是天然紫晶的重要标志。巴西是著名的紫晶洞产地。紫晶以颜色明艳、洁净、无瑕、深紫的底色中透出闪闪红色光辉者奉为上品，正如《博物要览》所描述的那样：&ldquo;色如葡萄，光莹可爱&rdquo;。</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">紫晶洞的特性：</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">白水晶簇是外放型、放射状的水晶能量体，而紫水晶洞则是内敛型、聚合状的，使得在风水上运用可以轻易做到能收能放、能聚能散。紫水晶洞是玛瑙洞含有二氧化矽的地下水从边缘慢慢渗透进来凝聚、结晶形成的。而当许多小颗的紫水晶结晶密集生长在一起时，就会形成紫晶花，同紫晶洞一样，在风水上有挡冲、避煞的作用。紫晶洞或紫晶花应避免阳光的直接暴晒，且搬动时切记从底下抬起。 一般我们所见到的紫晶洞都有三层，最内层是紫水晶晶粒、中间层是玛瑙，最外层是工人加上的水泥保护层。也有很好的晶洞是外面抛光的，这种抛光的晶洞通常要求外面的玛瑙壁要很厚才行，所以通常见的抛光晶洞少贵，原因在于此！</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">紫晶洞与五行：</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">(一)金型?－呈三角型，就如古钟般，下宽上窄；</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">(二)木型－呈修长长方型，如树干般；</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">(三)水型－呈下方稳定，上方作不规则波浪型，最罕见； 　　</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">(四)火型－略似金型，下宽上窄的三角型，但顶端较金型尖锐，像火焰般； 　　</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">(五)土型－四四方方，沉稳敦厚，又称布袋型；</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">紫晶洞灵性作用：</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">(1).可以作为其它水晶、护身符、幸运符净化、充电的理想工具。(2).可以将紫晶洞摆放在入门后的走道、行进动线的末端或在财位方，有吸纳、聚集人气、财气的作用。屋内两墙壁交接处，常常也是气的聚合点，摆放紫晶洞可使气聚集得更为稳固、集中、精炼。摆放方向按逆水方向。(3).将紫晶洞摆放在财位方，可以延续赚钱的时间，深化赚取的财富，更能长期保存所积累的财富，特别适合已经在赚钱，还想继续赚钱的情况。(4).将紫晶洞摆放在福德位，可以长期的积福、纳德，为全家人累积福德。 (5).对于若有路冲、屋角煞等，可将洞口对向来源，可有吸纳作用，在洞里放置水晶球，则可将煞气转换，化阻力为助力；而房间有门对门情况发生，可在长辈的门后摆放，可以减少冲突的发生。(6).对于在读的学生，在文昌位摆放紫晶洞，有助于考运、晋升，亦能获贵人相助。(7).营业场所需要强化人际关系、和谐相处，可将紫晶洞摆放在丁位、财位方可以促成此目的。(8).紫晶洞对于开张、乔迁之喜送礼，可以安座、定居之意，也有镇宅、化煞、聚集贵气、文昌鼎盛的功效；对于同事、长官升迁、升官，也以送紫晶洞为佳，有助于名望的提升，更受人尊重，步步高升，也有稳扎稳打、一路到顶的意思。</font></span></p>
<p align="left">
	<span style="color: #ee82ee"><font face="方正北魏楷书简体" size="4">紫晶洞风水说：<br />
	紫晶洞一直以来都是居家风水摆设的最爱，因内蕴闪烁紫晶簇的紫晶洞，常吸引许多人的眼光，开采紫晶洞最原始的型态是一颗如球型般的原矿，一剖为二後，成为市面上常见的紫水晶洞，据说两边晶洞有阴阳之分，用手伸入洞中时，敏感的人可感受到一边是温热的磁场能量，另一边则是阴凉的磁场能量。如果在桌上摆上一座小型的紫晶洞或紫晶片，更是可以提高聪明度，并且让自己做出最正确的判断及思考，相当有助于需要大量思考动脑的学生或上班族，而且，有佩带水晶的朋友也都知道，将自身的水晶置于晶洞内，让无数的紫晶结晶以原矿的生生不息能量使之净化提升，所以紫晶洞也是净化水晶的不二之选。将紫晶座放置在文昌位，有助於考运，若是放置在财位，则有旺财的效果。摆置一座紫晶座于家中桌上，不但可增加室内美观，更可镇宅避邪，改善风水。招财气顺，让您周围都是祥瑞之气，事事顺心如意。</font></span><font face="方正北魏楷书简体" size="4"><span style="display: none">&nbsp;</span></font></p>
', CAST(11.600 AS Decimal(6, 3)), N'水晶', 0, 778.0000, 972.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA200FB9B21 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'ab3921a4-64f1-4824-8697-cf03e13b4db5', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE665 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'de309b14-00f7-4dc5-9ee8-d02e99816724', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEB14 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'53c73889-619f-4ed8-8d8e-d0809f43316f', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0338 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'54ca3caf-6530-4aed-84c1-d30bc476d23b', N'东海水晶配件', N'个', N'a748aeb9-dcd6-418a-bd85-1a63b5ae8d61', N'红锦添', N'<p>
	<strong>白水晶是佛教七宝之一，对于供佛、避邪、挡刹、镇宅都拥有强大的正向能力，对于清除负性能量更是拥有其强大功效。白色是红、橙、黄、绿、蓝、靛、紫所有光色的综合体，代表著平衡和美满。</strong></p>
<p>
	<strong>白水晶，相应人体七轮中的顶轮，可使心灵平静，和谐纯洁，具集中精神、提高注意力、开启心智、开发潜能的功用，可将体内之病气，从脚底排出，使人头脑清晰、精神爽利</strong><strong>;</strong><strong>白水晶的磁场可攻破不良的气流，净化全身，使人体恢复健康，负性能量消散后，即是好运的开始。</strong></p>
<p>
	<strong>白水晶</strong><strong>:</strong><strong>在光线中会产生持续、稳定的震荡，所以对于使人头脑清晰、增强记忆力和理解力的功能，更是有显著的帮助</strong></p>
', CAST(0.250 AS Decimal(6, 3)), N'水晶', 0, 288.0000, 400.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FD400D4ABBF AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'aa9300f5-f883-405c-8e46-d60c8825c43d', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CACFE AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'3bc4509a-7957-4cde-b69f-d70edab9f3c0', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE7E9 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'ba059407-9e03-4316-902b-d7b4f5fb55ec', N'52°中华贡', N'瓶', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	青岛琅琊台集团是依托酒类产业发展起来的企业。酒类产业主导产品<span lang="EN-US">&ldquo;</span>琅琊台<span lang="EN-US">&rdquo;</span>牌白酒，深掘传统<span lang="EN-US">&ldquo;</span>老五甑<span lang="EN-US">&rdquo;</span>工艺，精耕细做，具备了<span lang="EN-US">&ldquo;</span>窖香浓郁、绵甜甘冽、落口爽净、回味悠长<span lang="EN-US">&rdquo;</span>等典型的浓香型白酒特点，屡次行评，均受到酿酒专家好评。产品先后荣获青岛名牌和山东名牌称号，被评为山东省白酒工业十大品牌产品、山东省白酒行业推荐中国名牌产品，并被授予山东省食品行业最佳质量奖，山东省免检产品。<span lang="EN-US">2006</span>年，<span lang="EN-US">&ldquo;</span>琅琊台<span lang="EN-US">&rdquo;</span>商标被认定为中国驰名商标。</p>
', CAST(0.500 AS Decimal(6, 3)), N'酒', 1, 130.0000, 148.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400FE6C5F AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'451da740-fe15-472a-89b5-d7c6e43555b8', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE562 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'b0e9fb4c-1aa2-4511-a845-d8ff276868fc', N'玛瑙原石聚宝盆', N'个', N'8cc2f71e-0f28-4950-9bb0-61ca863a313c', N'阜新', N'<p>
	<strong>玛瑙颜色丰富，素有</strong><strong>&ldquo;</strong><strong>千种玛瑙</strong><strong>&rdquo;</strong><strong>之说，玛瑙可促进血液循环，又镇定神经的效果。玛瑙是一种胶体矿物，在矿物学中，它属于玉髓类。自古以来，玛瑙就受到人们的欢迎，古代的</strong><strong>&ldquo;</strong><strong>七宝</strong><strong>&rdquo;</strong><strong>之一就是玛瑙</strong><strong>.</strong><br />
	<br />
	<strong>玛　瑙：是最具疗效的宝石之一（如：消化系统、胃痛），可平衡正负能量，消除精神紧张及压力。维持身体及心灵和谐，增强爱、忠诚、及勇气，可促进富足、幸福及长寿，有保平安功效。能发挥如王者的力量，令事件容易达成协议，名成利就，有避邪招财及聚财的作用。能激发勇气，带来信心使人勇敢的宝石；做事能贯彻始终，做人能坚守原则；亦可加强肉体生命力，适合体弱多病、或刚痊愈的人配戴。</strong></p>
', CAST(12.000 AS Decimal(6, 3)), N'玛瑙', 0, 268.0000, 328.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF00994858 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'0343d6c2-d18c-4bc6-839d-d970b8290d24', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D00D4 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'6f4eec20-0193-4737-9251-da4a19487b78', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEDFB AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'25d9a60c-c89c-45c7-bb7a-da9a770e4244', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CAC64 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'b5d63333-1f98-47c7-9ae5-dff334a155f0', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CADF1 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'43dcc803-d518-4bfc-9542-e031cb894cfc', N'小琅高 75mlX4', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	<em>数间茅屋 藏书万卷 投老村家 山中何事？</em><br />
	&nbsp;&nbsp;<em>梨花酿酒 春水煎茶 竹林听雨 对酒当歌~</em></p>
<p>
	09年琅琊台酒厂刚刚推出的新款高档酒，不锈钢瓶身，71&deg;特香酒质。</p>
<p>
	<strong>琅琊台集团独特的地理环境、气候和历史因素，造就了70</strong><strong>&deg;</strong><strong>琅琊台原酒、71</strong><strong>&deg;</strong><strong>小琅高无可复制的独特个性，稀缺性、差异化、高品质成为热销全国的内在因素。二是70</strong><strong>&deg;</strong><strong>原酒、71</strong><strong>&deg;</strong><strong>小琅高精巧、人文的包装设计，极大地方便了全国来青旅游者、公务、商务人士携带。正是以上特色，使70</strong><strong>&deg;</strong><strong>琅琊台原酒、71</strong><strong>&deg;</strong><strong>小琅高连续十年高居青岛市十佳旅游商品之首，成为全国来青朋友的首选。尤其是71</strong><strong>&deg;</strong><strong>小琅高独特的不锈钢瓶，把白酒国粹表现得淋漓尽致，成为许多老首长、老将军爱不释手之物，往往是酒尽壶未了，成为他们外出旅游，忘情山水不可或缺的随身之物。</strong></p>
', CAST(0.300 AS Decimal(6, 3)), N'酒', 0, 880.0000, 980.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA4010BC64E AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'7564930b-c3fc-423e-adc9-e230c995664b', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0431 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f0f7a156-964d-4352-a670-e3128d412a66', N'松鹤延年内画水晶球', N'只', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'艺缘阁', N'<p>
	内画，是我国一种特有的传统工艺，它的产生起源于画鼻烟壶。内画的画法是以特制的变形细笔，在玻璃、水晶、琥珀等材质的壶坯内，手绘出细致入微的画面，格调典雅、笔触精妙。</p>
<p>
	内画工艺品，能把您心中的完美图案，想对朋友、家人或者领导、客户想说的祝福语言，都能手工的画到坯料内，请注意，是纯手工画进去的，与一般的印制或者激光雕刻有着不同的特殊意义。您不想给您的家人、朋友、领导、客户一个有特殊意义的礼品么？内画工艺品绝对是您的首选。</p>
', CAST(1.500 AS Decimal(6, 3)), N'内画', 0, 600.0000, 800.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FAC009E8290 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'41ff51e9-4eaa-4f37-9de8-e39dd9b2a8c2', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFCB6 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'7695b52b-7441-4b84-947e-e76370af368d', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D049A AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'711845aa-1129-4fd7-9cd2-e7a415bd6fd1', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE5FC AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'089bf908-c74a-418b-af42-e8a5880eb90b', N'崂池云峰茶（四筒装）125X4', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'崂池云峰茶', N'<p>
	&nbsp;</p>
<p>
	青岛崂池云峰茶业出产于青岛著名旅游度假区--崂山。崂山三面环海，是中国海岸线惟一山海相连的海上名山。鲜茶种植生产基地就坐落在群山环抱的崂山自然保护区内。茶园周边青山碧海、云雾缭绕、空气湿润、土壤肥沃、水质优良，得天独厚的自然条件为崂池云峰茶的优良品质奠定了坚实的基础。所在生产基地是山东省惟一茶叶《绿色食品》示范基地。</p>
<p>
	生产公司是崂山区农业龙头企业，《青岛市免检企业》和《守合同重信用企业》，是青岛市工商局确立的《青岛市知名企业打假维权重点保护单位》，青岛市茶叶学会常务理事单位和中国茶叶学会团体会员，2004年通过了ISO 9001国际质量管理体系认证。</p>
<p>
	通过多年的不断改革创新，崂池云峰茶以优秀的内在品质、精细典雅的包装赢得社会各界的普遍认可和欢迎。是青岛市《消费者放心满意产品》。在中国国际茶文化博览会上，被授予《国际五星级钻石奖》。是青岛市的《旅游特色产品》《金奖产品》《名牌产品》和山东省名茶。&ldquo;崂池&rdquo;商标2006年荣获青岛市著名商标、2007年获岛城十大商标。</p>
', CAST(0.500 AS Decimal(6, 3)), N'茶', 1, 270.0000, 360.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA400F8294B AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e59828b4-3c89-4887-8ced-e8f8410ed3ea', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D01CF AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'da99bb19-d79e-490f-b863-eb3021656f7c', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE5C9 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5bb24d28-9a39-4439-999e-edf41e1a99ae', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFE8C AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e867d4b7-d1f9-4221-88a7-edfd9fe1d86e', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D00A2 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'6b882bc6-45f7-4bb7-9587-f03d3088f9ff', N'七星葫芦阵', N'串', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'木缘阁', N'<p>
	<strong>可做车挂亦可挂在卧室客厅</strong></p>
<p>
	<strong>在神话和故事里,葫芦始终与神仙和英雄为伴，如八仙中的铁拐李，寿星南极翁，济公和尚等都身背葫芦或腰悬葫芦，被认为是给人类带来福禄、驱魔辟邪的灵物。所以葫芦自古以来就是&quot;福禄吉祥&quot;、&quot;健康长寿&quot;的象征，也是保宅护家的良品。</strong></p>
<p>
	&nbsp;&nbsp;&nbsp;&nbsp;<strong>葫芦用作除病之用，只须挂在病者的睡床尾或摆放在病者的睡侧。就可以吸取病人身上的病气,使其快速的好起来.如果是健康人,可以吸走人身上的晦气,提升运势。 葫芦挂在大门外，则有保屋内人平安的作用 葫芦化病，人所共知，但葫芦可添夫妻情分则甚少人知道。若夫妻缘薄，可挂一只葫芦在床头，增加夫妻恩爱。另外，凡家中有病人，可挂此法器，对健康有利，家有小孩及长者更应选用。此物在一定程度亦可化煞挡灾，用途广泛。</strong></p>
', CAST(0.150 AS Decimal(6, 3)), N'桃木', 0, 7.0000, 10.5000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FD301727377 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'c969abd8-725d-4f32-befd-f0e8b91d064d', N'一品景芝46°妙品', N'瓶', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'一品景芝', N'<p>
	<strong>芝麻香酒是景芝酒业历经半个世纪的创新成果，一品景芝是中国原创国标芝麻香型代表产品。被商务部酒类流通管理办公室和中国酿酒工业协会联合授予中国白酒芝麻香型代表；</strong><strong>2008</strong><strong>年被授予国家地理标志保护产品；</strong><strong>2009</strong><strong>年荣获中国轻工业科技成果一等奖、中国白酒质检红榜第一名。</strong></p>
<p>
	<strong>作为芝麻香型白酒的创始者，景芝酒业自</strong><strong>1957</strong><strong>年在中华老字号景芝白乾中发现</strong><strong>&ldquo;</strong><strong>芝麻香</strong><strong>&rdquo;</strong><strong>引子后，历经半个世纪的不懈研究和实践，终于总结出了芝麻香型白酒的工艺特点，成功开发出芝麻香型白酒</strong><strong>---</strong><strong>一品景芝。它以优质高粱、小麦为主要原料，加适量麸皮，泥底砖池，清蒸续渣，量质分级，长期储存，科学勾兑。具有</strong><strong>&ldquo;</strong><strong>四高一长</strong><strong>&rdquo;</strong><strong>的特点：即高氮配料、高温曲与强化菌混合使用、高温堆积、高温入池发酵、贮酒时间长。集酱、浓、清三大香型生产工艺之精华，融合大曲、麸曲酒之优点，多种微生物混合发酵，使其达到了闻香幽雅、香甜醇厚、绵柔舒适、余香悠长的芝麻香风味。</strong></p>
', CAST(0.500 AS Decimal(6, 3)), N'酒', 1, 296.0000, 328.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FFF0098C5C9 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'21c0e611-685f-415f-9399-f17d358b0849', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE699 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e22e3b59-4ee5-4724-8711-f45e340630bb', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CFBE6 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'2301dbf3-dc5a-46dc-8400-f683c52f952d', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0399 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e8c1b862-abae-427a-bf2b-f6ff7ce231ba', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEC54 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f246a90f-8234-47d2-8ee1-f7c60fbf2027', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D0138 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e31cec18-89fa-46b5-bb9f-f83c1a6155f7', N'天然紫晶洞', N'个', N'ef66473a-a529-47e0-8870-c114a82ab6a6', N'巴西', N'<p align="left">
	紫晶洞以前叫雷公蛋，有圆形或椭圆形的，中空的。在其内壁布满了很多紫水晶，向着球形的中心方向生长。将球形切开后，便成为人们用来摆设的，或作为风水用途的紫晶了。紫晶洞为佛教七宝之一,在所有水晶中具王者的&ldquo;尊贵之气&rdquo;,除了有艺术之美以外,还具有改善阳宅及个人的磁场功能。</p>
<p align="left">
	紫晶洞为佛教七宝之一，在所有水晶中具王者的&ldquo;尊贵之气&rdquo;，除了有艺术之美以外，还有改善阳宅及个人的磁场功能，经过启发进程，对个人运途与事业、财运、阳宅，都会有相当好的磁场能量的改善。紫晶洞孕育是在地底是经历了亿万年以上的生命，经历过无数的磁波与磁场，根据专家认为紫晶洞的成长阅历无限，可让人恢复完整的灵气而改善运途，所以才会成为佛教文物之宝。紫晶洞摆放在办公桌、书桌、客厅、店面等等改变势，无论爱情、事业、学习通通顺顺利利！另外市面上许多紫晶洞，造型优美搭配紫晶洞陈列，更显气宇非凡，搭配家中装璜相得益彰!</p>
', CAST(11.000 AS Decimal(6, 3)), N'水晶', 0, 1580.0000, 1880.0000, NULL, CAST(8 AS Decimal(18, 0)), NULL, NULL, 100, CAST(0x00009FD400D186E6 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'29af9b25-2fe2-4b93-8b31-fac6f2d8309c', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D04CF AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'f02b0a4d-87e4-490d-8728-fb93ef861b29', N'琅琊台70°原酒	110mlX4 ', N'盒', N'aacbc345-0a9f-4e44-89d5-2daa6d65ff46', N'琅琊台', N'<p>
	&nbsp;</p>
<p>
	<span style="font-size: 9pt; ">本公司为青岛琅琊台酒经销商，主导产品琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度），坚持深掘传统</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">老五甑</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">工艺，</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">应用现代高新技术，采用矿物质含量丰富的琅琊台山泉水和优质高梁、小麦、大麦、豌豆等多种原料精心酿制而成。琅琊台酒</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">70&deg;</span><span style="font-size: 9pt; ">原酒（七十度）具有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">窖香浓郁、绵甜甘</span><span style="font-size: 9pt; font-family: Arial; "> </span><span style="font-size: 9pt; ">冽、落口爽净、回味悠长</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">的独特风格，受到酿酒专家高度评价，享有</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">青岛小茅台</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo; </span><span style="font-size: 9pt; ">之称，并被国际友人誉为</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&ldquo;</span><span style="font-size: 9pt; ">天下一绝</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; ">&rdquo;</span><span style="font-size: 9pt; ">。琅琊台原酒具有滋阴壮阳，缓解身体疲劳，改善睡眠质量，防皱抗衰老，延年益寿之功效，纯粮食酿造，活血化瘀，对于风湿病、腰腿疼痛有独特功效。</span><span lang="EN-US" style="font-size: 9pt; font-family: Arial; "><o:p></o:p></span></p>
', CAST(0.500 AS Decimal(6, 3)), N'酒', 1, 308.0000, 368.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA401035A22 AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'b8185c13-eda7-4e9f-9f41-fbba6b11c206', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015D03CE AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'7f6ca723-9c7a-47c3-8f68-fbf763b2b021', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CACC9 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'707babc2-f111-4c24-bb67-fd06a7d188d5', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CE817 AS DateTime), 222, NULL)
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'5f7a7726-3d08-4fa6-9280-fed0da22c7e2', N'玛瑙聚宝盆', N'个', N'8cc2f71e-0f28-4950-9bb0-61ca863a313c', N'阜新玛瑙', N'<p>
	<strong><font color="#ff0000" face="宋体" size="4">玛瑙颜色丰富，素有&ldquo;千种玛瑙&rdquo;之说，玛瑙可促进血液循环，又镇定神经的效果。玛瑙是一种胶体矿物，在矿物学中，它属于玉髓类。自古以来，玛瑙就受到人们的欢迎，古代的&ldquo;七宝&rdquo;之一就是玛瑙.<br />
	<br />
	玛　瑙：是最具疗效的宝石之一（如：消化系统、胃痛），可平衡正负能量，消除精神紧张及压力。维持身体及心灵和谐，增强爱、忠诚、及勇气，可促进富足、幸福及长寿，有保平安功效。能发挥如王者的力量，令事件容易达成协议，名成利就，有避邪招财及聚财的作用。能激发勇气，带来信心使人勇敢的宝石；做事能贯彻始终，做人能坚守原则；亦可加强肉体生命力，适合体弱多病、或刚痊愈的人配戴。</font></strong><br />
	&nbsp;</p>
', CAST(2.600 AS Decimal(6, 3)), N'玛瑙', NULL, 1260.0000, 1575.0000, NULL, CAST(8 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009FA200FE31CE AS DateTime), NULL, N'e52e183a-f71d-408d-9066-9b095778537f')
INSERT [dbo].[Products] ([Id], [Name], [SKU], [RegionId], [Brand], [Description], [Weight], [Keywords], [IsRecommended], [SalePrice], [MarketPrice], [SoldCount], [Discount], [Latitude], [Longitude], [Stock], [CreateTime], [VistiCounts], [SuperId]) VALUES (N'e4aa4265-ad33-4eaa-a2c1-fef5a4afdd3f', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', N'套', N'11d4e039-18c7-4ada-ae43-b2ca0182de88', N'草原王', N'[内蒙特产]精心搭配 美味一季 美味3号套餐744g', CAST(3.500 AS Decimal(6, 3)), N'奶酪', 1, 35.0000, 48.0000, 20, CAST(1 AS Decimal(18, 0)), CAST(0.000000 AS Decimal(18, 6)), CAST(0.000000 AS Decimal(18, 6)), 100, CAST(0x00009F93015CEE33 AS DateTime), 222, NULL)
/****** Object:  Table [dbo].[Pictures]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[ArticleId] [uniqueidentifier] NULL,
	[ThumbnailsUrl] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
 CONSTRAINT [PK_PICTURES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'ArticleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'ThumbnailsUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures'
GO
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'cc53d6f2-ec85-4c0f-bab5-0fcf49528660', N'文章图片', N'6088e81d-0c04-4d18-9f4d-d492cf25f56d', N'/Uploads/Gallery/Thumbnails/2012/2/4CBCBFD7-0853-45D3-B7F6-5880E3B06D56.jpg', N'/Uploads/Gallery/Published/2012/2/4CBCBFD7-0853-45D3-B7F6-5880E3B06D56.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'536cead9-dd5a-45bb-a49a-154e8d314428', N'文章图片', N'd6ef6195-43d4-4ff9-91c3-cf27a3e13fb5', N'/Uploads/Gallery/Thumbnails/2012/2/02AC4DAF-7FC6-4F8A-A330-F8180272636C.jpg', N'/Uploads/Gallery/Published/2012/2/02AC4DAF-7FC6-4F8A-A330-F8180272636C.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'b06c4329-a510-473a-90d8-18894853b826', N'文章图片', N'1fbe3d51-e566-49ea-9f13-268cdbd60da3', N'/Uploads/Gallery/Thumbnails/2012/2/110C4B2D-57F4-4498-B2A5-9FCE5D0E8781.jpg', N'/Uploads/Gallery/Published/2012/2/110C4B2D-57F4-4498-B2A5-9FCE5D0E8781.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'090e44e5-4fa0-4524-a015-2a299cc0d12d', N'文章图片', N'9232b614-de19-4f4a-99ac-5488f3733205', N'/Uploads/Gallery/Thumbnails/2012/2/B9A4D96A-1C0A-4837-B908-10571C0B2E7D.jpg', N'/Uploads/Gallery/Published/2012/2/B9A4D96A-1C0A-4837-B908-10571C0B2E7D.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'339394ac-ffd9-4895-8cbe-32dfad2933bc', N'文章图片', N'7f82bdfc-bc20-4923-a5d1-1f8bef2eac39', N'/Uploads/Gallery/Thumbnails/2012/2/539B299A-741F-4A78-A22C-D51429472B58.jpg', N'/Uploads/Gallery/Published/2012/2/539B299A-741F-4A78-A22C-D51429472B58.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'8060951b-8c79-4735-8096-4042283d111a', N'文章图片', N'0c23bda0-1e8a-4892-917c-c339f929ad2d', N'/Uploads/Gallery/Thumbnails/2012/2/594668E9-0560-49F8-9AC3-8520173488DA.jpg', N'/Uploads/Gallery/Published/2012/2/594668E9-0560-49F8-9AC3-8520173488DA.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'79e2869b-d549-4ef4-9a21-4e29a12603a0', N'文章图片', N'cc733906-fe93-414a-9933-4dfc2a2a10c5', N'/Uploads/Gallery/Thumbnails/2012/2/BC613978-E45E-4F76-905E-AFAD810C5B10.jpg', N'/Uploads/Gallery/Published/2012/2/BC613978-E45E-4F76-905E-AFAD810C5B10.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'15532b2c-81a0-4d88-b948-739d03bb4683', N'文章图片', N'03d7d632-265b-4c63-86f4-9a019591a119', N'/Uploads/Gallery/Thumbnails/2012/2/0FB800AE-F732-41D6-A8E9-0DD26D57CDB4.jpg', N'/Uploads/Gallery/Published/2012/2/0FB800AE-F732-41D6-A8E9-0DD26D57CDB4.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'16cd0bec-8605-465b-99cb-7af55efc2bd8', N'文章图片', N'4f4ff51b-cbac-4eca-aa74-347133940f85', N'/Uploads/Gallery/Thumbnails/2012/2/BF0DDF6C-649F-456B-992C-6F121895D887.jpg', N'/Uploads/Gallery/Published/2012/2/BF0DDF6C-649F-456B-992C-6F121895D887.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'41fdc69d-e224-488a-81ef-9000700c8ead', N'文章图片', N'c5f9a851-3981-4192-b9e6-88a8d72aab47', N'/Uploads/Gallery/Thumbnails/2012/2/5DA0E1BB-A475-48F0-84A7-C1F1C09FED1A.jpg', N'/Uploads/Gallery/Published/2012/2/5DA0E1BB-A475-48F0-84A7-C1F1C09FED1A.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'ec56d0da-100e-4c34-9515-9f99132292ea', N'文章图片', N'4424aa90-da1e-431c-a283-94823ecee6f9', N'/Uploads/Gallery/Thumbnails/2012/2/6DAA58C4-3B15-493B-AE41-843A2B866631.jpg', N'/Uploads/Gallery/Published/2012/2/6DAA58C4-3B15-493B-AE41-843A2B866631.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'251cd606-003c-4e95-8ea3-a9740f72bbb9', N'文章图片', N'f7c4cf92-1808-4d7c-bbfb-260632eb3648', N'/Uploads/Gallery/Thumbnails/2012/2/2BB2FF68-F5BE-4CD4-AD4A-75B7D147135F.jpg', N'/Uploads/Gallery/Published/2012/2/2BB2FF68-F5BE-4CD4-AD4A-75B7D147135F.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'cc83e2dc-9327-43c1-8abb-b4d1385c8be7', N'文章图片', N'933b3d3c-2e76-49ca-8a6e-1af3bd1e87e1', N'/Uploads/Gallery/Thumbnails/2012/2/4B111CE9-37A2-44AA-9F21-16F1CF0C1EA1.jpg', N'/Uploads/Gallery/Published/2012/2/4B111CE9-37A2-44AA-9F21-16F1CF0C1EA1.jpg')
INSERT [dbo].[Pictures] ([Id], [Name], [ArticleId], [ThumbnailsUrl], [Url]) VALUES (N'8eb20f4b-65c2-4549-aa66-d3202cc88f3c', N'文章图片', N'1a62e33a-841e-43dd-a297-9b4ab9056538', N'/Uploads/Gallery/Thumbnails/2012/2/826F5D1F-66DD-4F02-9D72-E8D48CD9EDFF.jpg', N'/Uploads/Gallery/Published/2012/2/826F5D1F-66DD-4F02-9D72-E8D48CD9EDFF.jpg')
/****** Object:  Table [dbo].[ProductsToRegions]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsToRegions](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[RegionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PRODUCTSTOREGIONS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsToRegions', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsToRegions', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsToRegions', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsToRegions', @level2type=N'COLUMN',@level2name=N'RegionId'
GO
/****** Object:  Table [dbo].[ProductsInTypes]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsInTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[TypeId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PRODUCTSINTYPES] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsInTypes', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsInTypes', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsInTypes', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsInTypes', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品类型配对表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductsInTypes'
GO
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'8e33e1ad-2114-426c-9150-0660bc3b8c9d', N'', N'62dd28a5-fa8b-437e-9d3c-13753061c518', N'10c172b6-531d-42b9-8a49-1be24f6234db')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'b3c221f7-0d26-4f15-a983-07d3f34f9689', N'', N'5a086608-f406-4f05-bdc6-74af428a7f92', N'0cc7914b-457b-4e1d-a071-250f4a4c3886')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'e0292494-8bb2-4532-9a7f-080a53ece3c0', N'', N'e31cec18-89fa-46b5-bb9f-f83c1a6155f7', N'299b7bbb-422d-4d83-919f-a70b979e1820')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'65d64868-1c3d-492c-b519-0950cc0202ad', N'', N'6b882bc6-45f7-4bb7-9587-f03d3088f9ff', N'5aff2f29-cbfb-4a32-b66c-00a60756f980')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'6b48b3a9-4d92-49d7-952e-0a94a1979289', N'', N'29b8c392-6915-4f08-9ae7-412beb85611f', N'3800e6d0-408f-4b9b-8e13-954843cfb2d1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'acb82343-83c4-4341-b15e-18333fd25b28', N'', N'636cf383-0119-4ad6-927d-35c5c2f2c5f3', N'6e7738a8-e5be-46bb-9288-7d1ef0e5611b')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'b0c048a7-9e63-4cff-9055-191369de08ae', N'', N'b0e9fb4c-1aa2-4511-a845-d8ff276868fc', N'6f3849ac-29ed-4235-8ab1-a7de409ec325')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'4d63a1dc-e2d0-4a80-b30b-1ffc032a3be1', N'', N'636cf383-0119-4ad6-927d-35c5c2f2c5f3', N'3800e6d0-408f-4b9b-8e13-954843cfb2d1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'2418122f-a050-4dc3-9c7f-23a7e4af1bc7', N'', N'0a88f98d-16d9-4be0-8b43-185ae8b40674', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'4a066c4f-1d7b-454f-9472-285f2de26c9e', N'', N'29b8c392-6915-4f08-9ae7-412beb85611f', N'5aff2f29-cbfb-4a32-b66c-00a60756f980')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'360428ce-8b2a-478b-adc8-2a2e9fb9c5c0', N'', N'62dd28a5-fa8b-437e-9d3c-13753061c518', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'92015ea6-28c1-43b8-990b-2d990f587560', N'', N'91686c6d-7820-476e-96c3-39ab6777fd3a', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'7e4f899f-9ea6-49db-a669-2f1f2818b3b2', N'', N'1e1dc43f-2617-4fda-a3d3-375be2fb7cfc', N'ef9599f5-6812-426b-a940-144e3e3d7c8e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'5ab4cb7d-7837-4012-9d54-34e64e158927', N'', N'54ca3caf-6530-4aed-84c1-d30bc476d23b', N'4ac10386-7f6d-424d-bae6-11100f25c78e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'6cddf53d-f0e5-47b6-9477-37adeaeaf98e', N'', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'5aff2f29-cbfb-4a32-b66c-00a60756f980')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'125a1444-6540-4abb-9415-3cb7e465dbe7', N'', N'c969abd8-725d-4f32-befd-f0e8b91d064d', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'3f79a275-a77a-4cb3-928c-3f7f6ebb2d0e', N'', N'0a88f98d-16d9-4be0-8b43-185ae8b40674', N'985fe4f7-fb63-42a1-b3a4-a15c888a91ad')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'02971d2b-181e-4a00-a733-44b4718888c0', N'', N'0b88112e-e5bd-4aed-9a43-79651a5166b7', N'cea7f2fc-4a07-4ebf-b4de-8eb13f22e01e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'2412ad6f-8045-42e1-808a-46ecae52f5c3', N'', N'91686c6d-7820-476e-96c3-39ab6777fd3a', N'0cdf564b-2c1d-413c-9bcd-56ac51949ed5')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'378c3a90-549a-4121-934d-4a19e432b2f0', N'', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'a8e10a3f-b2e9-405e-851a-3d1c1a07ab3d')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'789a813d-92b3-4522-817d-4c44217fa9c0', N'', N'b0e9fb4c-1aa2-4511-a845-d8ff276868fc', N'3800e6d0-408f-4b9b-8e13-954843cfb2d1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'fba990e2-86e3-4533-b859-4e8f6e09e083', N'', N'e31cec18-89fa-46b5-bb9f-f83c1a6155f7', N'10c172b6-531d-42b9-8a49-1be24f6234db')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'50104894-e00b-4862-9d54-5795b1eaf10f', N'', N'91686c6d-7820-476e-96c3-39ab6777fd3a', N'5aff2f29-cbfb-4a32-b66c-00a60756f980')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'86339461-8eef-4e3e-956c-5d89842cfb90', N'', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'799372ab-3e87-45b8-8513-eaa8d9d38282')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'197b0990-590c-414c-b1ee-6051b08316d6', N'', N'c969abd8-725d-4f32-befd-f0e8b91d064d', N'0cdf564b-2c1d-413c-9bcd-56ac51949ed5')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'39fdf369-cfea-4bb6-bbe2-61f43b498eea', N'', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'548700a3-c125-44d9-aae5-664be9eda9d1', N'', N'c969abd8-725d-4f32-befd-f0e8b91d064d', N'299b7bbb-422d-4d83-919f-a70b979e1820')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'2c2481d9-fa36-43ff-bf85-67a1848e7c0a', N'', N'1e1dc43f-2617-4fda-a3d3-375be2fb7cfc', N'3800e6d0-408f-4b9b-8e13-954843cfb2d1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'94611e4f-f36d-4ef7-afe6-68bf317a9e35', N'', N'91686c6d-7820-476e-96c3-39ab6777fd3a', N'299b7bbb-422d-4d83-919f-a70b979e1820')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'440c616d-cc97-481c-8544-6f1a05a8a3b7', N'', N'b0e9fb4c-1aa2-4511-a845-d8ff276868fc', N'10c172b6-531d-42b9-8a49-1be24f6234db')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'6144a3a5-8232-41c8-894d-6f8c5447c377', N'', N'0b88112e-e5bd-4aed-9a43-79651a5166b7', N'799372ab-3e87-45b8-8513-eaa8d9d38282')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'bd8d411f-b13b-4d1d-bfbb-7a431a5b98e5', N'', N'e31cec18-89fa-46b5-bb9f-f83c1a6155f7', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'892e9fc5-e1f9-4a94-ac86-8ca1e7026ad4', N'', N'c969abd8-725d-4f32-befd-f0e8b91d064d', N'799372ab-3e87-45b8-8513-eaa8d9d38282')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'82548814-c6ca-4eb7-9a37-948d35cbff5e', N'', N'5a086608-f406-4f05-bdc6-74af428a7f92', N'3800e6d0-408f-4b9b-8e13-954843cfb2d1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'fc123f2f-aed8-49c5-94dd-9a6abde4b26e', N'', N'29b8c392-6915-4f08-9ae7-412beb85611f', N'ef9599f5-6812-426b-a940-144e3e3d7c8e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'7ebf5e52-450f-462e-aa07-a0aab435c056', N'', N'636cf383-0119-4ad6-927d-35c5c2f2c5f3', N'd317929c-851e-4fea-b4fd-0bbb95740c50')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'7d4c7180-79f0-4e8f-b08f-a10fa7e23d9a', N'', N'5a086608-f406-4f05-bdc6-74af428a7f92', N'f2fb6fe6-ba66-4e0e-8f2e-cf275eecc469')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'3b5e0bef-48cd-4299-807f-a1853b431a09', N'', N'6b882bc6-45f7-4bb7-9587-f03d3088f9ff', N'99fd299a-84fd-4297-af52-2015a5173758')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'0d9ccdbc-fdc6-4738-a8ff-ae1f35bcf641', N'', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'0cdf564b-2c1d-413c-9bcd-56ac51949ed5')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'ad58e920-ae65-4086-8f88-b267a0ee3b8d', N'', N'5a086608-f406-4f05-bdc6-74af428a7f92', N'1732ac22-c2e3-49c9-8a30-c8194712ddf1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'a07223f0-869c-4c33-9e5a-b2b964ae41cf', N'', N'0b88112e-e5bd-4aed-9a43-79651a5166b7', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'2bf5855d-a1d6-43fc-9f6e-b3b03fbee5b9', N'', N'0b88112e-e5bd-4aed-9a43-79651a5166b7', N'a8e10a3f-b2e9-405e-851a-3d1c1a07ab3d')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'76612f6b-afc3-4c87-a64d-bb359000991b', N'', N'62dd28a5-fa8b-437e-9d3c-13753061c518', N'5aff2f29-cbfb-4a32-b66c-00a60756f980')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'ac69abc2-b233-41aa-bb98-bcf4e659fe6f', N'', N'1e1dc43f-2617-4fda-a3d3-375be2fb7cfc', N'6cdd9c0e-3a26-44ae-8f5a-9bdb65856881')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'a5315e95-99fa-4523-ae75-c1ec008b504e', N'', N'b0e9fb4c-1aa2-4511-a845-d8ff276868fc', N'6e7738a8-e5be-46bb-9288-7d1ef0e5611b')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'd62e73b1-b68b-492c-a7af-c2d6c16759ad', N'', N'62dd28a5-fa8b-437e-9d3c-13753061c518', N'2c6ec5a2-6a47-4d53-8d98-1f9c6f5cd400')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'69880699-46c0-495f-80e8-cbdc2e7e2257', N'', N'6b882bc6-45f7-4bb7-9587-f03d3088f9ff', N'10c172b6-531d-42b9-8a49-1be24f6234db')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'53ab0a9d-d9b1-4031-9d27-de46c78075f8', N'', N'54ca3caf-6530-4aed-84c1-d30bc476d23b', N'799372ab-3e87-45b8-8513-eaa8d9d38282')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'bf76adda-5f6a-48ca-a4c3-df8b5d799839', N'', N'29b8c392-6915-4f08-9ae7-412beb85611f', N'6c965965-7480-4431-a1a5-faa74fad37c8')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'7b985474-ce70-4ef7-bd1f-dfc52f9faeb9', N'', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'e356ca53-85cf-494b-9a01-e347132e0190', N'', N'636cf383-0119-4ad6-927d-35c5c2f2c5f3', N'6cdd9c0e-3a26-44ae-8f5a-9bdb65856881')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'6a371471-f76a-48c6-8699-e5e9182ae6f4', N'', N'e31cec18-89fa-46b5-bb9f-f83c1a6155f7', N'5aff2f29-cbfb-4a32-b66c-00a60756f980')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'6183fe7b-22fb-483b-94b9-e66e3b190f70', N'', N'1e1dc43f-2617-4fda-a3d3-375be2fb7cfc', N'4ac10386-7f6d-424d-bae6-11100f25c78e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'e53b8375-8171-4ea9-aed5-e6cf7cbf9abd', N'', N'54ca3caf-6530-4aed-84c1-d30bc476d23b', N'a8e10a3f-b2e9-405e-851a-3d1c1a07ab3d')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'369dbb15-7f14-40a5-af93-eb9f438c8713', N'', N'54ca3caf-6530-4aed-84c1-d30bc476d23b', N'8c77622f-1eaf-468e-a4f5-b7673c8e347e')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'b97083a0-a2c3-4b9a-bcc7-ec9fe027c006', N'', N'0a88f98d-16d9-4be0-8b43-185ae8b40674', N'1732ac22-c2e3-49c9-8a30-c8194712ddf1')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'f027c715-c097-443b-9506-eeb1e867a01c', N'', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'10c172b6-531d-42b9-8a49-1be24f6234db')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'0d6b43ec-87ae-4523-a078-ef738700a639', N'', N'0a88f98d-16d9-4be0-8b43-185ae8b40674', N'd317929c-851e-4fea-b4fd-0bbb95740c50')
INSERT [dbo].[ProductsInTypes] ([Id], [Name], [ProductId], [TypeId]) VALUES (N'f61f63e1-1ed5-42dc-a3ee-f1d0d4fc7c82', N'', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'299b7bbb-422d-4d83-919f-a70b979e1820')
/****** Object:  Table [dbo].[OrderItems]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[OrderId] [uniqueidentifier] NULL,
	[ProductId] [uniqueidentifier] NULL,
	[Quantity] [int] NULL,
	[ThumbUrl] [nvarchar](255) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ORDERITEMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'OrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'Quantity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'ThumbUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OrderItems', @level2type=N'COLUMN',@level2name=N'Remark'
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 06/17/2015 15:04:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[ProductId] [uniqueidentifier] NULL,
	[ThumbnailsUrl] [nvarchar](255) NULL,
	[Url] [nvarchar](255) NULL,
 CONSTRAINT [PK_GALLERY] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'ThumbnailsUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Gallery'
GO
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'a98234d9-7453-4bdd-8f20-045a39d8ae08', N'商品图片', N'1d394fbf-a3c2-42b5-a294-5098677053dd', N'\Uploads\Gallery\Thumbnails\2011\12\5FA1143F-75C0-47EC-BA58-E617FCA6914E.jpg', N'\Uploads\Gallery\Published\2011\12\5FA1143F-75C0-47EC-BA58-E617FCA6914E.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'7c73fe7e-b3af-4cba-95cc-061fe95694cd', N'商品图片', N'0b88112e-e5bd-4aed-9a43-79651a5166b7', N'/Uploads/Gallery/Thumbnails/2011/11/1622B1BF-66F9-4489-9CB7-8F6F37F866B2.jpg', N'/Uploads/Gallery/Published/2011/11/1622B1BF-66F9-4489-9CB7-8F6F37F866B2.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'6d221594-659d-4bd4-bbe7-0fc8d9ad7c07', N'商品图片', N'fd569a57-dbbe-47d2-a794-3cb9a435e74b', N'\Uploads\Gallery\Thumbnails\2011\12\A68399D1-057B-4F33-A7A4-E74D5EBA6005.jpg', N'\Uploads\Gallery\Published\2011\12\A68399D1-057B-4F33-A7A4-E74D5EBA6005.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'b1ac40a2-5dc5-42ea-8557-11dc4a2f2cba', N'商品图片', N'0a099e4b-1cb4-48f6-937d-c22063f73f2c', N'\Uploads\Gallery\Thumbnails\2011\12\AA8D6C33-74BA-4E6D-BD9E-4E143E8B94F2.jpg', N'\Uploads\Gallery\Published\2011\12\AA8D6C33-74BA-4E6D-BD9E-4E143E8B94F2.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'34432e54-4e30-4943-ab82-17fc921ed337', N'商品图片', N'e31cec18-89fa-46b5-bb9f-f83c1a6155f7', N'/Uploads/Gallery/Thumbnails/2011/12/F3F6BBF4-96AA-4339-AA2F-0F3C038D02D8.JPG', N'/Uploads/Gallery/Published/2011/12/F3F6BBF4-96AA-4339-AA2F-0F3C038D02D8.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'c0e7c9e1-1cf1-48bd-b53d-1c4e7477ac6b', N'商品图片', N'5f7a7726-3d08-4fa6-9280-fed0da22c7e2', N'\Uploads\Gallery\Thumbnails\2011\11\16B987DD-B7D0-4FED-808C-3F59801AD273.JPG', N'\Uploads\Gallery\Published\2011\11\16B987DD-B7D0-4FED-808C-3F59801AD273.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'b3feabc6-7b56-4c47-8f33-1c70da970e74', N'商品图片', N'089bf908-c74a-418b-af42-e8a5880eb90b', N'\Uploads\Gallery\Thumbnails\2011\11\AEE3022A-8963-4329-BF7F-59D674A20CDC.jpg', N'\Uploads\Gallery\Published\2011\11\AEE3022A-8963-4329-BF7F-59D674A20CDC.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'a8a44c1d-45f9-4d61-9b4a-3144842056d8', N'商品图片', N'387cc998-c0e0-4db2-b08f-b22f959d026c', N'\Uploads\Gallery\Thumbnails\2011\11\E76C0A95-E260-4991-9B7E-4463D6C42610.jpg', N'\Uploads\Gallery\Published\2011\11\E76C0A95-E260-4991-9B7E-4463D6C42610.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'0ba46754-b93c-45ca-835f-416d1c7f889a', N'商品图片', N'0bfc6257-5397-4781-892c-78216a5c1f08', N'\Uploads\Gallery\Thumbnails\2011\11\61740780-8515-4372-8CB9-41DEA19909A8.jpg', N'\Uploads\Gallery\Published\2011\11\61740780-8515-4372-8CB9-41DEA19909A8.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'8963648e-9daa-4f69-bb9d-46b528020421', N'商品图片', N'7031b37d-2c98-4c08-a30d-847bb2299120', N'\Uploads\Gallery\Thumbnails\2011\11\CBC90601-A083-46D4-9DCC-CAADF241B3F0.jpg', N'\Uploads\Gallery\Published\2011\11\CBC90601-A083-46D4-9DCC-CAADF241B3F0.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'951bf622-9b97-4b8a-af2c-4706f6d21ae3', N'商品图片', N'91686c6d-7820-476e-96c3-39ab6777fd3a', N'/Uploads/Gallery/Thumbnails/2011/12/595BCC4E-BA7D-44C2-B0ED-5D2BA8317C4C.jpg', N'/Uploads/Gallery/Published/2011/12/595BCC4E-BA7D-44C2-B0ED-5D2BA8317C4C.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'547a8576-5d42-4b8a-853c-4f868f1feb1c', N'商品图片', N'94c3bd21-2c6a-4445-8c92-a694a33b7dd6', N'\Uploads\Gallery\Thumbnails\2011\11\4B98EE29-2C8D-450B-8EF1-A05CB3CA722F.JPG', N'\Uploads\Gallery\Published\2011\11\4B98EE29-2C8D-450B-8EF1-A05CB3CA722F.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'f7ab9ce5-d8c7-4cb0-a407-54fef539d978', N'商品图片', N'b0e9fb4c-1aa2-4511-a845-d8ff276868fc', N'/Uploads/Gallery/Thumbnails/2011/12/6F7DDBE6-3327-45B1-8951-7E83E85278DB.JPG', N'/Uploads/Gallery/Published/2011/12/6F7DDBE6-3327-45B1-8951-7E83E85278DB.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'cc8fcaaf-8954-4642-9f4f-55ab172dece8', N'商品图片', N'0bfc6257-5397-4781-892c-78216a5c1f08', N'\Uploads\Gallery\Thumbnails\2011\11\01CAFBCC-3275-429F-B019-708190C65B29.jpg', N'\Uploads\Gallery\Published\2011\11\01CAFBCC-3275-429F-B019-708190C65B29.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'9f7d2a3e-0a3c-4f96-a625-5af70460b0a3', N'商品图片', N'387cc998-c0e0-4db2-b08f-b22f959d026c', N'\Uploads\Gallery\Thumbnails\2011\11\5ACB6D0A-BB8B-4ECF-98CE-85AE8094F9CE.jpg', N'\Uploads\Gallery\Published\2011\11\5ACB6D0A-BB8B-4ECF-98CE-85AE8094F9CE.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'f016c2fc-7568-4efc-b99e-6463c4cf49ec', N'商品图片', N'94c3bd21-2c6a-4445-8c92-a694a33b7dd6', N'错误: Maximum request length exceeded.', N'错误: Maximum request length exceeded.')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'fd2579e9-9791-4068-8fc3-6563bc5d2409', N'商品图片', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'/Uploads/Gallery/Thumbnails/2011/11/4962F535-0C25-4DBF-B4EF-9C6053E7C839.jpg', N'/Uploads/Gallery/Published/2011/11/4962F535-0C25-4DBF-B4EF-9C6053E7C839.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'8dcd0bde-a735-4123-82a5-6656e78e4ef6', N'商品图片', N'62dd28a5-fa8b-437e-9d3c-13753061c518', N'/Uploads/Gallery/Thumbnails/2011/12/E3F0E9A6-5915-4F87-9F82-0C1278858860.jpg', N'/Uploads/Gallery/Published/2011/12/E3F0E9A6-5915-4F87-9F82-0C1278858860.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'896258cd-9a68-4e22-985a-68d1370dff55', N'商品图片', N'1862f7ce-e781-4557-97ae-373c0bcddbd5', N'\Uploads\Gallery\Thumbnails\2011\11\36672554-93C2-4096-B390-A807CF8F14B7.jpg', N'\Uploads\Gallery\Published\2011\11\36672554-93C2-4096-B390-A807CF8F14B7.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'afd5ea30-401a-48ec-bc35-6ef2f11db7fa', N'商品图片', N'43b14e8d-35a8-4509-9da4-3b62977bf437', N'\Uploads\Gallery\Thumbnails\2011\11\DA705973-388E-40B6-AF4E-1678C75739B1.JPG', N'\Uploads\Gallery\Published\2011\11\DA705973-388E-40B6-AF4E-1678C75739B1.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'21c4f042-106b-438f-96eb-7141b111328b', N'商品图片', N'eaff8d55-602e-4df2-ab8d-67d24e190765', N'\Uploads\Gallery\Thumbnails\2011\11\5FBD733F-FFD5-4AF6-9496-795EC2404558.jpg', N'\Uploads\Gallery\Published\2011\11\5FBD733F-FFD5-4AF6-9496-795EC2404558.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'c215bfa6-75e9-4c71-bf47-7603b276f750', N'商品图片', N'f0f7a156-964d-4352-a670-e3128d412a66', N'\Uploads\Gallery\Thumbnails\2011\12\FA1CAEE1-A2C5-4955-9825-11E9AF74D451.JPG', N'\Uploads\Gallery\Published\2011\12\FA1CAEE1-A2C5-4955-9825-11E9AF74D451.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'adf50aa9-a207-40bd-b3be-7acc7a23bddd', N'商品图片', N'1e1dc43f-2617-4fda-a3d3-375be2fb7cfc', N'/Uploads/Gallery/Thumbnails/2011/11/85AA8496-C1D0-4C0B-8503-CC5B02C6522B.jpg', N'/Uploads/Gallery/Published/2011/11/85AA8496-C1D0-4C0B-8503-CC5B02C6522B.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'dfa0f2e7-7c68-44b1-a5d3-800c91e08085', N'商品图片', N'6b882bc6-45f7-4bb7-9587-f03d3088f9ff', N'/Uploads/Gallery/Thumbnails/2011/12/D82BF305-722D-47A4-9F80-1D4184001A21.jpg', N'/Uploads/Gallery/Published/2011/12/D82BF305-722D-47A4-9F80-1D4184001A21.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'c1853657-0f5a-4cf5-8a7c-81398c0c8aea', N'商品图片', N'5f106730-5ff5-41da-b214-33344bf795f5', N'\Uploads\Gallery\Thumbnails\2011\11\1A69A5F3-EB54-4CFA-8758-EAB2B89D34A8.JPG', N'\Uploads\Gallery\Published\2011\11\1A69A5F3-EB54-4CFA-8758-EAB2B89D34A8.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'36e8b573-b17b-4377-b363-8177a3ef06b2', N'商品图片', N'ba059407-9e03-4316-902b-d7b4f5fb55ec', N'\Uploads\Gallery\Thumbnails\2011\11\B096F4D0-B309-4BB3-84CD-01E041814BDD.jpg', N'\Uploads\Gallery\Published\2011\11\B096F4D0-B309-4BB3-84CD-01E041814BDD.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'd3f9fbba-36e1-4441-9a14-832593ce73af', N'商品图片', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'/Uploads/Gallery/Thumbnails/2012/2/1E9DA219-9664-47FF-8F71-A40CC2B8A77F.jpg', N'/Uploads/Gallery/Published/2012/2/1E9DA219-9664-47FF-8F71-A40CC2B8A77F.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'de2f7325-9b97-45e6-ad38-86468645d50c', N'商品图片', N'55cd6fdf-191a-4ca8-9c98-3b2dcc3f1913', N'/Uploads/Gallery/Thumbnails/2012/2/9EF99303-FA7B-467A-9546-9A1C2C0D5A37.jpg', N'/Uploads/Gallery/Published/2012/2/9EF99303-FA7B-467A-9546-9A1C2C0D5A37.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'49ff8106-e911-4a24-8096-95ddd3c5ea62', N'商品图片', N'0bfc6257-5397-4781-892c-78216a5c1f08', N'\Uploads\Gallery\Thumbnails\2011\11\6601F6EC-7392-4179-8906-59C269CAFEB9.jpg', N'\Uploads\Gallery\Published\2011\11\6601F6EC-7392-4179-8906-59C269CAFEB9.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'6ef3e03d-6cee-4bda-8f40-9ecadde553a9', N'商品图片', N'cb8e0efa-574b-4a98-9858-11ece13d1efb', N'\Uploads\Gallery\Thumbnails\2011\11\B6315A1D-4D5D-4700-9B5D-C1D95D0B9A03.JPG', N'\Uploads\Gallery\Published\2011\11\B6315A1D-4D5D-4700-9B5D-C1D95D0B9A03.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'985d381e-ddd8-4ee8-9c49-a9f921fac3a6', N'商品图片', N'089bf908-c74a-418b-af42-e8a5880eb90b', N'\Uploads\Gallery\Thumbnails\2011\11\35C0F414-40AB-4B5E-A3BC-FDF3D12C3C0D.jpg', N'\Uploads\Gallery\Published\2011\11\35C0F414-40AB-4B5E-A3BC-FDF3D12C3C0D.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'73c7aed1-76e0-4116-9f11-aa3f7fb8bfa0', N'商品图片', N'cfb0f0ee-9eb6-4b65-ac1e-5efcf81a3e2b', N'\Uploads\Gallery\Thumbnails\2011\12\125BD8DA-5266-4BDC-A82D-F72730275FDA.JPG', N'\Uploads\Gallery\Published\2011\12\125BD8DA-5266-4BDC-A82D-F72730275FDA.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'c8d0706c-acca-4c7d-8b67-b96ba0c40f83', N'商品图片', N'7031b37d-2c98-4c08-a30d-847bb2299120', N'\Uploads\Gallery\Thumbnails\2011\11\548AB770-E4D6-4CDD-93CA-473A7F886C5C.jpg', N'\Uploads\Gallery\Published\2011\11\548AB770-E4D6-4CDD-93CA-473A7F886C5C.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'82197a6e-c26e-4eec-b42c-bccaf09709c5', N'商品图片', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'/Uploads/Gallery/Thumbnails/2012/2/667B2515-99C5-4F5A-A343-2F8C47CC761D.jpg', N'/Uploads/Gallery/Published/2012/2/667B2515-99C5-4F5A-A343-2F8C47CC761D.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'd8cdaac6-0100-4052-bffd-bd286d2d4f84', N'商品图片', N'43dcc803-d518-4bfc-9542-e031cb894cfc', N'\Uploads\Gallery\Thumbnails\2011\11\C8B6A849-7280-41E5-A2B0-B4F1C65F525D.jpg', N'\Uploads\Gallery\Published\2011\11\C8B6A849-7280-41E5-A2B0-B4F1C65F525D.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'0c3779d4-6e62-42af-9d7b-bdd489a13ac2', N'商品图片', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'/Uploads/Gallery/Thumbnails/2012/2/84908740-9BF4-474C-AE4C-C27816E48342.jpg', N'/Uploads/Gallery/Published/2012/2/84908740-9BF4-474C-AE4C-C27816E48342.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'5d81a4ee-96ae-427a-b02a-bdf3ab70449a', N'商品图片', N'387cc998-c0e0-4db2-b08f-b22f959d026c', N'\Uploads\Gallery\Thumbnails\2011\11\AB217671-4842-46ED-B6B6-360927BDEBAA.jpg', N'\Uploads\Gallery\Published\2011\11\AB217671-4842-46ED-B6B6-360927BDEBAA.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'5b9e42c1-a6a0-48a6-9477-c1228d08e8b0', N'商品图片', N'8e9d62ea-cf99-4c9d-b2fd-a142cafa1c88', N'\Uploads\Gallery\Thumbnails\2011\12\E79256EE-817E-49BD-BACA-66495DCAB893.JPG', N'\Uploads\Gallery\Published\2011\12\E79256EE-817E-49BD-BACA-66495DCAB893.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'3a636f4a-7a9d-4a0b-b5d0-c314133b8833', N'商品图片', N'0a88f98d-16d9-4be0-8b43-185ae8b40674', N'/Uploads/Gallery/Thumbnails/2011/12/D49683CC-C516-419A-814E-D478FB154FEB.JPG', N'/Uploads/Gallery/Published/2011/12/D49683CC-C516-419A-814E-D478FB154FEB.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'831e4ad5-aff6-4e39-9efa-c46596f9ab40', N'商品图片', N'c969abd8-725d-4f32-befd-f0e8b91d064d', N'/Uploads/Gallery/Thumbnails/2011/12/9EBB161F-16A1-4469-A49F-1CA6C5120AE1.jpg', N'/Uploads/Gallery/Published/2011/12/9EBB161F-16A1-4469-A49F-1CA6C5120AE1.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'5bc94c58-2b3a-4576-90d5-c4ed9efe99fa', N'商品图片', N'387cc998-c0e0-4db2-b08f-b22f959d026c', N'\Uploads\Gallery\Thumbnails\2011\11\273F9340-ED7B-47DA-A8DA-4959C6BD4D47.jpg', N'\Uploads\Gallery\Published\2011\11\273F9340-ED7B-47DA-A8DA-4959C6BD4D47.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'd52eca6d-e08e-44a7-bf65-c4f615133cec', N'商品图片', N'332f0a2a-8d02-460d-a228-59a1e20d31b0', N'\Uploads\Gallery\Thumbnails\2011\11\FDED87F9-02BF-4068-BE86-23BD3CBA7460.JPG', N'\Uploads\Gallery\Published\2011\11\FDED87F9-02BF-4068-BE86-23BD3CBA7460.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'd551fb3c-a398-4c41-9e29-c5099d678ffe', N'商品图片', N'0bfc6257-5397-4781-892c-78216a5c1f08', N'\Uploads\Gallery\Thumbnails\2011\11\58A90712-3BFF-4018-84A8-1F79CBF70E94.jpg', N'\Uploads\Gallery\Published\2011\11\58A90712-3BFF-4018-84A8-1F79CBF70E94.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'744d48b6-cb57-4173-a877-cd286c9cf87b', N'商品图片', N'29b8c392-6915-4f08-9ae7-412beb85611f', N'/Uploads/Gallery/Thumbnails/2011/11/72B3DF98-EC49-4FAF-B47B-9DD90CC6798A.JPG', N'/Uploads/Gallery/Published/2011/11/72B3DF98-EC49-4FAF-B47B-9DD90CC6798A.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'c44c2aa9-235b-4910-bce4-cdd8060bcb0a', N'商品图片', N'5a086608-f406-4f05-bdc6-74af428a7f92', N'/Uploads/Gallery/Thumbnails/2011/11/5FFF24D5-DF21-4D9A-9C0A-EB915C651C3A.JPG', N'/Uploads/Gallery/Published/2011/11/5FFF24D5-DF21-4D9A-9C0A-EB915C651C3A.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'5807da09-3e62-46f1-bcfb-db711efe48c4', N'商品图片', N'54ca3caf-6530-4aed-84c1-d30bc476d23b', N'/Uploads/Gallery/Thumbnails/2011/12/D10B8F24-3DD8-43B8-8695-9433646B3131.jpg', N'/Uploads/Gallery/Published/2011/12/D10B8F24-3DD8-43B8-8695-9433646B3131.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'b9b9a441-f8d3-4847-b528-e0af58a8c613', N'商品图片', N'636cf383-0119-4ad6-927d-35c5c2f2c5f3', N'/Uploads/Gallery/Thumbnails/2011/11/E035C4D4-6726-4692-9E1D-F2214750A45D.jpg', N'/Uploads/Gallery/Published/2011/11/E035C4D4-6726-4692-9E1D-F2214750A45D.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'caeacbfc-3c30-476f-8796-e1cf41a101dc', N'商品图片', N'281d2e40-fe2a-48fb-b7b9-aea89df70d03', N'/Uploads/Gallery/Thumbnails/2012/2/549EC044-C86B-4D8E-802C-F397274D3417.jpg', N'/Uploads/Gallery/Published/2012/2/549EC044-C86B-4D8E-802C-F397274D3417.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'de2c7f45-5708-4fa5-9824-e3da3d9a7ea3', N'商品图片', N'c2bb26d4-de75-4bf4-9666-332e86a908f4', N'\Uploads\Gallery\Thumbnails\2011\11\6A20AA1A-0300-43AC-B755-F64EFEE907D8.jpg', N'\Uploads\Gallery\Published\2011\11\6A20AA1A-0300-43AC-B755-F64EFEE907D8.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'8974ef98-7866-4583-b1f9-eb2b09608af3', N'商品图片', N'2baabb0d-de66-46de-abe9-a793614c5936', N'\Uploads\Gallery\Thumbnails\2011\11\D7C6B2A7-6C92-4ED4-8CF1-77E39526FFE4.JPG', N'\Uploads\Gallery\Published\2011\11\D7C6B2A7-6C92-4ED4-8CF1-77E39526FFE4.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'07b58326-2f1c-45ef-98b8-ec22227fff4a', N'商品图片', N'b6c55653-d6ae-4dad-af33-9054c404d588', N'\Uploads\Gallery\Thumbnails\2011\12\CEC37C59-A41B-40E6-A379-06767BE21405.jpg', N'\Uploads\Gallery\Published\2011\12\CEC37C59-A41B-40E6-A379-06767BE21405.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'bebd641b-2dcc-46e4-b907-ee48f1ad9ac1', N'商品图片', N'15498368-36bc-4588-8879-51e6839674ad', N'\Uploads\Gallery\Thumbnails\2011\12\871769A0-59D5-4FF4-8829-0374CCC3FCB0.jpg', N'\Uploads\Gallery\Published\2011\12\871769A0-59D5-4FF4-8829-0374CCC3FCB0.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'932e8495-e6d3-4fff-af70-f82729eea385', N'商品图片', N'f02b0a4d-87e4-490d-8728-fb93ef861b29', N'\Uploads\Gallery\Thumbnails\2011\11\14A40C93-C4C6-4B8B-810D-46E728D62239.jpg', N'\Uploads\Gallery\Published\2011\11\14A40C93-C4C6-4B8B-810D-46E728D62239.jpg')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'64f0e97c-44d2-4f53-8877-f892ba639c0b', N'商品图片', N'474d55c9-2920-4160-ab52-7e7f0987d063', N'\Uploads\Gallery\Thumbnails\2011\11\667820EF-DC70-4EE5-B913-5D53B8928DC3.JPG', N'\Uploads\Gallery\Published\2011\11\667820EF-DC70-4EE5-B913-5D53B8928DC3.JPG')
INSERT [dbo].[Gallery] ([Id], [Name], [ProductId], [ThumbnailsUrl], [Url]) VALUES (N'caad1ad2-008c-4ec8-8738-fa9bc39ed2d3', N'商品图片', N'f2cbe357-c38d-4e29-868a-ce9bc38ff3f1', N'\Uploads\Gallery\Thumbnails\2011\11\7AD4755A-C1D1-4846-8C88-0AEE4270A6B9.JPG', N'\Uploads\Gallery\Published\2011\11\7AD4755A-C1D1-4846-8C88-0AEE4270A6B9.JPG')
/****** Object:  ForeignKey [FK_ARTICLES_REFERENCE_GENRES]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLES_REFERENCE_GENRES] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_ARTICLES_REFERENCE_GENRES]
GO
/****** Object:  ForeignKey [FK_ARTICLES_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Articles]  WITH CHECK ADD  CONSTRAINT [FK_ARTICLES_REFERENCE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Articles] CHECK CONSTRAINT [FK_ARTICLES_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_GALLERY_REFERENCE_PRODUCTS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Gallery]  WITH CHECK ADD  CONSTRAINT [FK_GALLERY_REFERENCE_PRODUCTS] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Gallery] CHECK CONSTRAINT [FK_GALLERY_REFERENCE_PRODUCTS]
GO
/****** Object:  ForeignKey [FK_GENRES_REFERENCE_GENRES]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Genres]  WITH CHECK ADD  CONSTRAINT [FK_GENRES_REFERENCE_GENRES] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Genres] ([Id])
GO
ALTER TABLE [dbo].[Genres] CHECK CONSTRAINT [FK_GENRES_REFERENCE_GENRES]
GO
/****** Object:  ForeignKey [FK_LOGS_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_LOGS_REFERENCE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_LOGS_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_ORDERITE_REFERENCE_ORDERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_REFERENCE_ORDERS] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_ORDERITE_REFERENCE_ORDERS]
GO
/****** Object:  ForeignKey [FK_ORDERITE_REFERENCE_PRODUCTS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_REFERENCE_PRODUCTS] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_ORDERITE_REFERENCE_PRODUCTS]
GO
/****** Object:  ForeignKey [FK_ORDERS_REFERENCE_PAYMENTM]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_REFERENCE_PAYMENTM] FOREIGN KEY([PaymentModeId])
REFERENCES [dbo].[PaymentModes] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_ORDERS_REFERENCE_PAYMENTM]
GO
/****** Object:  ForeignKey [FK_ORDERS_REFERENCE_USER1]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_REFERENCE_USER1] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_ORDERS_REFERENCE_USER1]
GO
/****** Object:  ForeignKey [FK_PICTURES_REFERENCE_ARTICLES]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Pictures]  WITH CHECK ADD  CONSTRAINT [FK_PICTURES_REFERENCE_ARTICLES] FOREIGN KEY([ArticleId])
REFERENCES [dbo].[Articles] ([Id])
GO
ALTER TABLE [dbo].[Pictures] CHECK CONSTRAINT [FK_PICTURES_REFERENCE_ARTICLES]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_REFERENCE_REGION1]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_REFERENCE_REGION1] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_PRODUCTS_REFERENCE_REGION1]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_REFERENCE_USERS] FOREIGN KEY([SuperId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_PRODUCTS_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_REFERENCE_PRODUCTS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ProductsInTypes]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_REFERENCE_PRODUCTS] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductsInTypes] CHECK CONSTRAINT [FK_PRODUCTS_REFERENCE_PRODUCTS]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_REFERENCE_PRODUCTT]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ProductsInTypes]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_REFERENCE_PRODUCTT] FOREIGN KEY([TypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
GO
ALTER TABLE [dbo].[ProductsInTypes] CHECK CONSTRAINT [FK_PRODUCTS_REFERENCE_PRODUCTT]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_REFERENCE_PRODUCT3]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ProductsToRegions]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_REFERENCE_PRODUCT3] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ProductsToRegions] CHECK CONSTRAINT [FK_PRODUCTS_REFERENCE_PRODUCT3]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_REFERENCE_REGIONS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ProductsToRegions]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_REFERENCE_REGIONS] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[ProductsToRegions] CHECK CONSTRAINT [FK_PRODUCTS_REFERENCE_REGIONS]
GO
/****** Object:  ForeignKey [FK_PRODUCTT_REFERENCE_PRODUCTT]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ProductTypes]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTT_REFERENCE_PRODUCTT] FOREIGN KEY([ParentId])
REFERENCES [dbo].[ProductTypes] ([Id])
GO
ALTER TABLE [dbo].[ProductTypes] CHECK CONSTRAINT [FK_PRODUCTT_REFERENCE_PRODUCTT]
GO
/****** Object:  ForeignKey [FK_REGIONS_REFERENCE_REGIONS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Regions]  WITH CHECK ADD  CONSTRAINT [FK_REGIONS_REFERENCE_REGIONS] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Regions] CHECK CONSTRAINT [FK_REGIONS_REFERENCE_REGIONS]
GO
/****** Object:  ForeignKey [FK_SHIPPING_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ShippingAddress]  WITH CHECK ADD  CONSTRAINT [FK_SHIPPING_REFERENCE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ShippingAddress] CHECK CONSTRAINT [FK_SHIPPING_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_SHOPPING_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_SHOPPING_REFERENCE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_SHOPPING_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_STATISTI_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Statistics]  WITH CHECK ADD  CONSTRAINT [FK_STATISTI_REFERENCE_USERS] FOREIGN KEY([NewestUserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Statistics] CHECK CONSTRAINT [FK_STATISTI_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERPROF_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_USERPROF_REFERENCE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_USERPROF_REFERENCE_USERS]
GO
/****** Object:  ForeignKey [FK_USERS_REFERENCE_REGIONS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_USERS_REFERENCE_REGIONS] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_USERS_REFERENCE_REGIONS]
GO
/****** Object:  ForeignKey [FK_USERS_REFERENCE_USERRANK]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_USERS_REFERENCE_USERRANK] FOREIGN KEY([RankId])
REFERENCES [dbo].[UserRanks] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_USERS_REFERENCE_USERRANK]
GO
/****** Object:  ForeignKey [FK_USERSINR_REFERENCE_ROLES]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_USERSINR_REFERENCE_ROLES] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [FK_USERSINR_REFERENCE_ROLES]
GO
/****** Object:  ForeignKey [FK_USERSINR_REFERENCE_USERS]    Script Date: 06/17/2015 15:04:41 ******/
ALTER TABLE [dbo].[UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_USERSINR_REFERENCE_USERS] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[UsersInRoles] CHECK CONSTRAINT [FK_USERSINR_REFERENCE_USERS]
GO
