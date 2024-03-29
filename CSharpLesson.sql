USE [CSharpLesson]
GO
/****** Object:  Table [dbo].[TestTable1]    Script Date: 2021/6/2 下午 08:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTable1](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Birthday] [datetime] NOT NULL,
	[NumberCol] [int] NOT NULL,
 CONSTRAINT [PK_TestTable1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestTable2]    Script Date: 2021/6/2 下午 08:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestTable2](
	[ID] [int] NOT NULL,
	[TestTable1ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 2021/6/2 下午 08:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2021/6/2 下午 08:57:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Sex] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (1, N'Curry', CAST(N'1989-02-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (2, N'Bryant', CAST(N'1980-08-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (3, N'James', CAST(N'1987-05-06T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (4, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (5, N'Zion', CAST(N'2020-05-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (6, N'Zion', CAST(N'2020-05-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (7, N'Zion', CAST(N'2020-05-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (8, N'Green', CAST(N'1997-09-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (9, N'Lillard', CAST(N'1992-04-03T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (10, N'Irving', CAST(N'1994-07-08T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (11, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (12, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (13, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (14, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (15, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (16, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (17, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (18, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (19, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (20, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (21, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (22, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (23, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (24, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (25, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (26, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (27, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (28, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (29, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (30, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[TestTable1] ([ID], [Name], [Birthday], [NumberCol]) VALUES (31, N'Wade', CAST(N'1974-08-09T00:00:00.000' AS DateTime), 3)
GO
INSERT [dbo].[TestTable2] ([ID], [TestTable1ID], [Name]) VALUES (1, 2, N'Temp')
INSERT [dbo].[TestTable2] ([ID], [TestTable1ID], [Name]) VALUES (2, 2, N'QQ')
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [Account], [Pwd], [Name]) VALUES (1, N'admin', N'asdf', N'curry')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
INSERT [dbo].[UserInfo] ([UserName], [Age], [Sex]) VALUES (N'Bary', 17, N'Male')
INSERT [dbo].[UserInfo] ([UserName], [Age], [Sex]) VALUES (N'John', 17, N'Male')
INSERT [dbo].[UserInfo] ([UserName], [Age], [Sex]) VALUES (N'Luka', 20, N'Male')
INSERT [dbo].[UserInfo] ([UserName], [Age], [Sex]) VALUES (N'Mary', 17, N'Female')
GO
