USE [master]
GO
CREATE DATABASE [Test]
GO
USE [Test]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Credits] [int] NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProject](
	[UserId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AssignedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (1, CAST(N'2019-01-10 00:00:00.000' AS DateTime), CAST(N'2020-02-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (2, CAST(N'2020-01-01 00:00:00.000' AS DateTime), CAST(N'2020-02-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (3, CAST(N'2019-02-10 00:00:00.000' AS DateTime), CAST(N'2020-03-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (4, CAST(N'2020-02-01 00:00:00.000' AS DateTime), CAST(N'2020-03-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (5, CAST(N'2019-03-10 00:00:00.000' AS DateTime), CAST(N'2020-04-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (6, CAST(N'2020-03-01 00:00:00.000' AS DateTime), CAST(N'2020-04-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (7, CAST(N'2019-04-10 00:00:00.000' AS DateTime), CAST(N'2020-05-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (8, CAST(N'2020-04-01 00:00:00.000' AS DateTime), CAST(N'2020-05-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (9, CAST(N'2019-05-10 00:00:00.000' AS DateTime), CAST(N'2020-06-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (10, CAST(N'2020-05-01 00:00:00.000' AS DateTime), CAST(N'2020-06-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (11, CAST(N'2019-05-10 00:00:00.000' AS DateTime), CAST(N'2020-07-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (12, CAST(N'2020-06-01 00:00:00.000' AS DateTime), CAST(N'2020-07-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (13, CAST(N'2019-07-10 00:00:00.000' AS DateTime), CAST(N'2020-08-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (14, CAST(N'2020-08-01 00:00:00.000' AS DateTime), CAST(N'2020-09-01 00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (15, CAST(N'2019-09-10 00:00:00.000' AS DateTime), CAST(N'2020-10-15 00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Project] ([Id], [StartDate], [EndDate], [Credits]) VALUES (16, CAST(N'2020-10-01 00:00:00.000' AS DateTime), CAST(N'2020-11-01 00:00:00.000' AS DateTime), 6)
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (1, N'Andres', N'Solano')
INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (2, N'Manuel', N'Brenes')
INSERT [dbo].[User] ([Id], [FirstName], [LastName]) VALUES (3, N'Antonio', N'Alvarado')
SET IDENTITY_INSERT [dbo].[User] OFF
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 1, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 2, 0, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 3, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 4, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 5, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 6, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 7, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 8, 0, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 9, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 10, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 11, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 12, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 13, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 14, 0, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[UserProject] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 15, 1, CAST(N'2020-01-01 00:00:00.000' AS DateTime))
USE [master]
GO
ALTER DATABASE [Test] SET  READ_WRITE 
GO
