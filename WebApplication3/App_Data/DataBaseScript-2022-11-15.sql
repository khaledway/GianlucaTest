--Please First Create Database with "Test" Name




CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2022-11-15 10:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmloyeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmloyeeName] [nvarchar](50) NOT NULL,
	[HireDate] [datetime] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DepartmentID] [int] NOT NULL,
 CONSTRAINT [PK_Emloyee] PRIMARY KEY CLUSTERED 
(
	[EmloyeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (1, N'Software')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (2, N'Hardware')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (3, N'HR')
GO
INSERT [dbo].[Department] ([DepartmentID], [DepartmentName]) VALUES (4, N'Department new')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (1, N'Ahmed', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Ahmed@gmail.com', 1)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (2, N'Mohamed', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Mohamed@gmail.com', 1)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (3, N'Gamal', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Gamal@gmail.com', 2)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (4, N'Khaled', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Khaled@gmail.com', 2)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (5, N'Mona', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Mona@gmail.com', 3)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (6, N'Ayman', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Ayman@gmail.com', 3)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (7, N'Saad', CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'Saad@gmail.com', 3)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (8, N'dd', CAST(N'2022-11-15T17:48:43.007' AS DateTime), N'dd', 1)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (9, N'ahmed khaled', CAST(N'2022-10-25T00:00:00.000' AS DateTime), N'ahmed.khaled@gmail.com', 3)
GO
INSERT [dbo].[Employee] ([EmloyeeID], [EmloyeeName], [HireDate], [Email], [DepartmentID]) VALUES (10, N'dd', CAST(N'2022-12-08T00:00:00.000' AS DateTime), N'ahmed.khaled@gmail.com', 2)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Emloyee_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Emloyee_Department]
GO