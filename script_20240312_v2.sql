USE [Pilnik]
GO
/****** Object:  Table [dbo].[order_products]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
 CONSTRAINT [PK_order_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [varchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
	[place] [varchar](max) NOT NULL,
	[count_person] [int] NOT NULL,
 CONSTRAINT [PK_orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](max) NOT NULL,
	[price] [real] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shift_users]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shift_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[shift_id] [int] NOT NULL,
 CONSTRAINT [PK_shift_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shifts]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shifts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[start_shift] [datetime] NOT NULL,
	[end_shift] [datetime] NOT NULL,
	[status_shift] [varchar](max) NOT NULL,
 CONSTRAINT [PK_shifts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12.03.2024 22:23:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[surname] [varchar](max) NOT NULL,
	[role_id] [int] NOT NULL,
	[status] [varchar](max) NOT NULL,
	[login] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[order_products] ON 

INSERT [dbo].[order_products] ([id], [order_id], [product_id]) VALUES (1, 2, 4)
INSERT [dbo].[order_products] ([id], [order_id], [product_id]) VALUES (2, 3, 5)
INSERT [dbo].[order_products] ([id], [order_id], [product_id]) VALUES (4, 2, 1)
SET IDENTITY_INSERT [dbo].[order_products] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [date], [status], [user_id], [place], [count_person]) VALUES (2, CAST(N'2024-02-16T00:00:00.000' AS DateTime), N'ready', 1, N'23', 1)
INSERT [dbo].[orders] ([id], [date], [status], [user_id], [place], [count_person]) VALUES (3, CAST(N'2024-02-17T00:00:00.000' AS DateTime), N'prepare', 3, N'18', 4)
INSERT [dbo].[orders] ([id], [date], [status], [user_id], [place], [count_person]) VALUES (4, CAST(N'2024-02-18T00:00:00.000' AS DateTime), N'active', 4, N'36', 2)
INSERT [dbo].[orders] ([id], [date], [status], [user_id], [place], [count_person]) VALUES (1002, CAST(N'2024-03-12T16:50:00.000' AS DateTime), N'adopted', 1, N'12', 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([id], [title], [price], [count]) VALUES (1, N'Olivier', 120, 1)
INSERT [dbo].[products] ([id], [title], [price], [count]) VALUES (4, N'Boiled potatoes', 100, 6)
INSERT [dbo].[products] ([id], [title], [price], [count]) VALUES (5, N'Juice', 50, 4)
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([id], [name]) VALUES (1, N'Administrator')
INSERT [dbo].[roles] ([id], [name]) VALUES (2, N'Waiter')
INSERT [dbo].[roles] ([id], [name]) VALUES (3, N'Cook')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[shift_users] ON 

INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (1, 1, 1)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (2, 3, 3)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3, 4, 2)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (1002, 5, 1002)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (2002, 5, 2002)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (2003, 3, 2003)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (2004, 3, 2004)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (2005, 1, 2005)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (2006, 1, 2006)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3002, 4, 3002)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3003, 3, 3003)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3004, 1, 3004)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3005, 4, 3005)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3006, 4, 3006)
INSERT [dbo].[shift_users] ([id], [user_id], [shift_id]) VALUES (3007, 3, 3007)
SET IDENTITY_INSERT [dbo].[shift_users] OFF
GO
SET IDENTITY_INSERT [dbo].[shifts] ON 

INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (1, CAST(N'2024-02-17T10:00:00.000' AS DateTime), CAST(N'2024-02-17T18:49:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (2, CAST(N'2024-02-19T09:00:00.000' AS DateTime), CAST(N'2024-02-19T16:20:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3, CAST(N'2024-02-20T11:00:00.000' AS DateTime), CAST(N'2024-02-20T16:20:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (1002, CAST(N'2024-02-17T08:45:00.000' AS DateTime), CAST(N'2024-02-17T19:00:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (2002, CAST(N'2024-03-12T12:30:00.000' AS DateTime), CAST(N'2024-03-12T15:30:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (2003, CAST(N'2024-03-12T01:01:00.000' AS DateTime), CAST(N'2024-03-12T01:01:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (2004, CAST(N'2024-03-13T12:30:00.000' AS DateTime), CAST(N'2024-03-13T08:09:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (2005, CAST(N'2024-03-13T21:26:00.000' AS DateTime), CAST(N'2024-03-12T00:00:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (2006, CAST(N'2024-03-06T21:32:00.000' AS DateTime), CAST(N'2024-03-12T20:10:00.000' AS DateTime), N'??????????')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3002, CAST(N'2024-03-12T07:06:00.000' AS DateTime), CAST(N'2024-03-12T11:13:00.000' AS DateTime), N'inactive')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3003, CAST(N'2024-03-23T11:10:00.000' AS DateTime), CAST(N'2024-03-24T16:12:00.000' AS DateTime), N'????? ?????')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3004, CAST(N'2024-03-12T20:06:00.000' AS DateTime), CAST(N'2024-03-25T09:11:00.000' AS DateTime), N'active')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3005, CAST(N'2024-03-17T12:25:00.000' AS DateTime), CAST(N'2024-03-17T18:12:00.000' AS DateTime), N'????? ?????')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3006, CAST(N'2024-03-12T22:08:00.000' AS DateTime), CAST(N'2024-03-12T22:08:00.000' AS DateTime), N'inactive')
INSERT [dbo].[shifts] ([id], [start_shift], [end_shift], [status_shift]) VALUES (3007, CAST(N'2024-03-13T10:14:00.000' AS DateTime), CAST(N'2024-03-13T10:25:00.000' AS DateTime), N'????? ?????')
SET IDENTITY_INSERT [dbo].[shifts] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [name], [surname], [role_id], [status], [login], [password]) VALUES (1, N'Sasha', N'Pilnik', 1, N'active', N'sasha', N'123')
INSERT [dbo].[users] ([id], [name], [surname], [role_id], [status], [login], [password]) VALUES (3, N'Vika', N'Kononova', 2, N'active', N'vika', N'1234')
INSERT [dbo].[users] ([id], [name], [surname], [role_id], [status], [login], [password]) VALUES (4, N'Katya', N'Shevchenko', 3, N'active', N'katya', N'12345')
INSERT [dbo].[users] ([id], [name], [surname], [role_id], [status], [login], [password]) VALUES (5, N'Marina', N'Pi', 3, N'Inactive', N'marina', N'123456')
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[order_products]  WITH CHECK ADD  CONSTRAINT [FK_order_products_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_products] CHECK CONSTRAINT [FK_order_products_orders]
GO
ALTER TABLE [dbo].[order_products]  WITH CHECK ADD  CONSTRAINT [FK_order_products_products] FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_products] CHECK CONSTRAINT [FK_order_products_products]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_users]
GO
ALTER TABLE [dbo].[shift_users]  WITH CHECK ADD  CONSTRAINT [FK_shift_users_shifts] FOREIGN KEY([shift_id])
REFERENCES [dbo].[shifts] ([id])
GO
ALTER TABLE [dbo].[shift_users] CHECK CONSTRAINT [FK_shift_users_shifts]
GO
ALTER TABLE [dbo].[shift_users]  WITH CHECK ADD  CONSTRAINT [FK_shift_users_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[shift_users] CHECK CONSTRAINT [FK_shift_users_users]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_roles]
GO
