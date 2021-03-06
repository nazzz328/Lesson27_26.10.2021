USE [HomeWork27_26.10.2021]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 10/28/2021 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Person] ON 

INSERT [dbo].[Person] ([Id], [LastName], [FirstName], [MiddleName]) VALUES (1, N'Azizov', N'Aziz', N'Azizovich')
INSERT [dbo].[Person] ([Id], [LastName], [FirstName], [MiddleName]) VALUES (2, N'Sonya', N'Alieva', N'Kadirovna')
INSERT [dbo].[Person] ([Id], [LastName], [FirstName], [MiddleName]) VALUES (3, N'Ali', N'Bobojonov', N'Sodikovich')
SET IDENTITY_INSERT [dbo].[Person] OFF
GO
