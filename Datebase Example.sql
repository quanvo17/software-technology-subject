CREATE DATABASE [cnpm]
GO
USE [cnpm]
GO
/****** Object:  Table [dbo].[bestSale]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bestSale](
	[prodID] [int] NOT NULL,
	[numOfProd] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cateID] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[description] [varchar](200) NULL,
	[image] [varchar](50) NULL,
	[status] [bit] DEFAULT (1), 
PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[myOrder]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myOrder](
	[orderID] [varchar](50) NOT NULL,
	[userID] [int] NOT NULL,
	[contactName] [varchar](50) NOT NULL,
	[contactPhone] [varchar](15) NOT NULL,
	[shipAddress] [varchar](200) NOT NULL,
	[totalMoney] [int] NOT NULL,
	[dateCreate] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[myOrderDetail]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myOrderDetail](
	[orderID] [varchar](50) NOT NULL,
	[prodID] [int] NOT NULL,
	[unitPrice] [int] NOT NULL,
	[quantity] [tinyint] NOT NULL,
	[amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[prodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[myRole]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myRole](
	[roleID] [int] NOT NULL,
	[name] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[myUser]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[myUser](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[sex] [varchar](10) NULL,
	[phone] [varchar](15) NULL,
	[address] [varchar](200) NULL,
	[roleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[prodID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[cateID] [int] NOT NULL,
	[price] [int] NOT NULL,
	[thumbImage] [varchar](20) NULL,
	[status] [bit] DEFAULT (1),
PRIMARY KEY CLUSTERED 
(
	[prodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productDetail]    Script Date: 10/12/2019 7:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productDetail](
	[prodID] [int] NOT NULL,
	[info] [varchar](200) NULL,
	[description] [varchar](1000) NULL,
	[image1] [varchar](20) NULL,
	[image2] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[prodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (1, 10)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (3, 3)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (5, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (9, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (17, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (20, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (21, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (22, 2)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (23, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (28, 9)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (46, 2)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (52, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (53, 8)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (56, 1)
INSERT [dbo].[bestSale] ([prodID], [numOfProd]) VALUES (58, 4)
INSERT [dbo].[category] ([cateID], [name], [description], [image]) VALUES (1, N'For Men', N'Gentle & Manly', N'men.jpg')
INSERT [dbo].[category] ([cateID], [name], [description], [image]) VALUES (2, N'For Kids', N'Safety & Cute', N'kids.jpg')
INSERT [dbo].[category] ([cateID], [name], [description], [image]) VALUES (3, N'For Women', N'Beauty & Sexy', N'women.jpg')
INSERT [dbo].[category] ([cateID], [name], [description], [image]) VALUES (4, N'For Couple', N'Sweetie & Lovely', N'3.jpg')
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-08T12:29:00.921-7', 7, N'Vo Duc Quan', N'0915487259', N'Nghe An', 605, CAST(N'2019-12-08T12:29:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-08T13:22:49.024-6', 6, N'Dang Thi Thu', N'0348751249', N'Bac Giang', 915, CAST(N'2019-12-08T13:23:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-08T13:24:32.895-6', 6, N'Nguyen Thi Thuy', N'0914758354', N'Bac Ninh', 549, CAST(N'2019-12-08T13:25:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-08T13:48:39.726-7', 7, N'Nguyen Thi Thu Thanh', N'0918475348', N'Bac Giang', 2440, CAST(N'2019-12-08T13:49:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-08T13:53:10.680-6', 6, N'Nguyen Minh Dang', N'0365486119', N'Bac Ninh', 605, CAST(N'2019-12-08T13:53:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-09T10:15:18.059-7', 7, N'Vo Duc Quan', N'0918745698', N'Nghe An', 400, CAST(N'2019-12-09T10:15:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-09T23:14:08.172-6', 6, N'Nguyen Minh Dang', N'0345556239', N'Bac Ninh', 1750, CAST(N'2019-12-09T23:14:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-10T00:21:43.075-6', 6, N'Nguyen Minh Dang', N'0917536847', N'Bac Ninh', 1005, CAST(N'2019-12-10T00:22:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-10T06:53:01.544-6', 6, N'hello', N'hello', N'Bac Ninh', 1650, CAST(N'2019-12-10T06:53:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-10T07:13:55.451-6', 6, N'Nguyen Ky Tung', N'01997485221', N'Bac Ninh', 425, CAST(N'2019-12-10T07:14:00' AS SmallDateTime))
INSERT [dbo].[myOrder] ([orderID], [userID], [contactName], [contactPhone], [shipAddress], [totalMoney], [dateCreate]) VALUES (N'2019-12-10T10:19:14.920-6', 6, N'Nguyen Phuc Dai', N'test', N'Bac Ninh', 810, CAST(N'2019-12-10T10:19:00' AS SmallDateTime))
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T12:29:00.921-7', 52, 300, 1, 300)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T12:29:00.921-7', 58, 305, 1, 305)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:22:49.024-6', 58, 305, 3, 915)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:24:32.895-6', 3, 105, 3, 315)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:24:32.895-6', 5, 125, 1, 125)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:24:32.895-6', 9, 109, 1, 109)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:48:39.726-7', 20, 180, 1, 180)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:48:39.726-7', 21, 250, 1, 250)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:48:39.726-7', 28, 335, 6, 2010)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:53:10.680-6', 1, 100, 3, 300)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-08T13:53:10.680-6', 56, 305, 1, 305)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-09T10:15:18.059-7', 1, 100, 4, 400)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-09T23:14:08.172-6', 53, 350, 5, 1750)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T00:21:43.075-6', 28, 335, 3, 1005)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T06:53:01.544-6', 46, 300, 2, 600)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T06:53:01.544-6', 53, 350, 3, 1050)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T07:13:55.451-6', 1, 100, 3, 300)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T07:13:55.451-6', 17, 125, 1, 125)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T10:19:14.920-6', 22, 255, 2, 510)
INSERT [dbo].[myOrderDetail] ([orderID], [prodID], [unitPrice], [quantity], [amount]) VALUES (N'2019-12-10T10:19:14.920-6', 23, 300, 1, 300)
INSERT [dbo].[myRole] ([roleID], [name]) VALUES (0, N'admin')
INSERT [dbo].[myRole] ([roleID], [name]) VALUES (1, N'user')
SET IDENTITY_INSERT [dbo].[myUser] ON 

INSERT [dbo].[myUser] ([userID], [email], [username], [password], [name], [sex], [phone], [address], [roleID]) VALUES (1, N'meucute99@gmail.com', N'meucute99', N'123456', N'Nguyen Minh Dang', N'Male', N'0365486119', N'Bac Ninh', 1)
INSERT [dbo].[myUser] ([userID], [email], [username], [password], [name], [sex], [phone], [address], [roleID]) VALUES (6, N'tungnk@gmail.com', N'dangnm', N'123456', N'Nguyen Ky Tung', N'Male', N'0365486119', N'Thanh pho Ho Chi Minh', 1)
INSERT [dbo].[myUser] ([userID], [email], [username], [password], [name], [sex], [phone], [address], [roleID]) VALUES (7, N'quanvd@gmail.com', N'quandv', N'123456', N'Vo Duc Quan', N'LGBTQ+', NULL, N'Nghe An', 1)
INSERT [dbo].[myUser] ([userID], [email], [username], [password], [name], [sex], [phone], [address], [roleID]) VALUES (9, N'admin@gmail.com', N'admin', N'admin', N'admin', N'admin', N'admin', N'admin', 0)
INSERT [dbo].[myUser] ([userID], [email], [username], [password], [name], [sex], [phone], [address], [roleID]) VALUES (11, N'zonzoncow', N'zonzoncow', N'123456', N'Hello World', NULL, NULL, NULL, 1)
INSERT [dbo].[myUser] ([userID], [email], [username], [password], [name], [sex], [phone], [address], [roleID]) VALUES (12, N'thanhntt@gmail.com', N'thanhntt', N'123456', N'Nguyen Thi Thu Thanh', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[myUser] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (1, N'Spider-man', 2, 100, N'bo 1 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (2, N'Kaikaitu', 2, 90, N'bo 2.jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (3, N'Constr Pattern 3', 2, 105, N'bo 3 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (4, N'Ouy Xoxo', 2, 110, N'bo 4 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (5, N'Discovery', 2, 125, N'bo 5 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (6, N'Giraffe 2', 2, 103, N'bo 6 (1).png')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (7, N'Caro Long', 2, 95, N'bo 7 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (8, N'Caro Parse', 2, 85, N'bo 8 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (9, N'Wave Length ', 2, 109, N'bo 9 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (10, N'World Wide TNY', 2, 115, N'bo 10 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (11, N'Pink Jackid', 2, 130, N'bo 11 (3).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (12, N'Beans 67', 2, 150, N'bo 12 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (13, N'Pyjamid', 2, 120, N'bo 13 (2).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (14, N'Jeansid', 2, 125, N'bo 14 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (15, N'Object Pyrama', 2, 112, N'bo 15 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (16, N'Slice Packid', 2, 130, N'bo 16 (2).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (17, N'Startid', 2, 125, N'bo 17 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (18, N'Eat Beat', 2, 130, N'bo 18 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (19, N'HS Red Hoodie', 1, 200, N'hinh 1 (2).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (20, N'Deer Moon', 1, 180, N'hinh 2 (3).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (21, N'Aod Epne', 1, 250, N'hinh 3 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (22, N'Aon Ayc Depne', 1, 255, N'hinh 4 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (23, N'String Pants', 1, 300, N'hinh 5 (3).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (24, N'Red Long', 1, 230, N'hinh 6 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (25, N'Aom Uad Oong', 1, 320, N'hinh 7 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (26, N'Aok Hoac Depne', 1, 260, N'hinh 8 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (27, N'Muc Humflong', 1, 360, N'hinh 9 (2).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (28, N'Cxt Amduok', 1, 335, N'hinh 10 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (29, N'Marine Rare', 1, 240, N'hinh 11 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (30, N'Caro 3th Mango', 1, 240, N'hinh 12 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (31, N'Lap Pansbits', 1, 350, N'hinh 13 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (32, N'1975 GPMN', 1, 320, N'hinh 14 (2).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (33, N'Office Style Black', 1, 300, N'hinh 15 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (34, N'Aon Hulon V', 1, 200, N'hinh 16 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (35, N'Caron Ayc Ungdc', 1, 250, N'hinh 17 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (36, N'Dan Gmacao Nayne', 1, 260, N'hinh 18 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (37, N'Ima Gelikes Hit', 1, 200, N'hinh 19 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (38, N'Aop Haomu Adong', 1, 290, N'hinh 20 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (39, N'Tron Gcx Tam', 1, 295, N'hinh 21 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (40, N'Ki Eunay Cxdc', 1, 305, N'hinh 22 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (41, N'Mogto', 3, 290, N'Set 1 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (42, N'Aol Ensoc', 3, 295, N'Set 2 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (43, N'1945 Champion', 3, 265, N'Set 3 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (44, N'Licsusa Tr', 3, 293, N'Set 4 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (45, N'Bane Xicute', 3, 285, N'Set 5 (2).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (46, N'Sex Ylisu', 3, 300, N'Set 6 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (47, N'Silver Reighlay', 3, 305, N'Set 7 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (48, N'Nhi Ncxdc', 3, 295, N'Set 8 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (49, N'Long Black Night', 3, 300, N'Set 8 (4).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (50, N'Theway Yell', 3, 302, N'Set 9 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (51, N'Nhut Recon', 3, 295, N'Set 10 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (52, N'Rolen Bendeman', 3, 300, N'Set 11 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (53, N'Fornon 300', 3, 350, N'Set 12 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (54, N'Forseky 350', 3, 400, N'Set 13.jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (55, N'Zena Sena', 3, 300, N'Set 14 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (56, N'Giav Lv', 3, 305, N'Set 15 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (57, N'Loli Secyk', 3, 300, N'Set 16 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (58, N'Hide Square', 3, 305, N'Set 17 (1).jpg')
INSERT [dbo].[product] ([prodID], [name], [cateID], [price], [thumbImage]) VALUES (59, N'Satro Liksuj', 3, 301, N'Set 18 (1).jpg')
SET IDENTITY_INSERT [dbo].[product] OFF
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (1, N'Lucky Yang', N'Soft touch: exquisite design, skin-friendly breathable
 Environmental dyeing: healthy dyeing, environmentally friendly and harmless
 Fabric comfort: high-quality fabrics, healthy and natural, breathable and sweat absorption, soft, skin-friendly and smooth, wrinkle-resistant and not easy to pill
 Durable and Wearable: Excellent quality and generous aesthetic feeling. ', N'bo 1 (2).jpg', N'bo 1 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (2, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material :ImitationCowboy
Color:As Picutre ', N'bo 2 (2).jpg', N'bo 2 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (3, N'Lucky Yang', N'Features:
100% Brand New, High Quality!
Specification:
Material: Cotton Blend
Color: As Picture
Sleeve Length:Sleeveless
Design: Fashion', N'bo 3 (2).jpg', N'bo 3 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (4, N'Lucky Yang', N'Features:
100% Brand New, High Quality!
Specification:
Material: Polyester
Color: Pink
Size: 100-140cm', N'bo 4 (2).jpg', N'bo 4 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (5, N'Lucky Yang', N'Material:Polyester
Feature:Lovely ,Formal 
Age Reference: 1-3years 
Height Reference:80-100cm
Color: Red, white, black ', N'bo 5 (3).jpg', N'bo 5 (4).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (6, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material: Cotton Blend
Color: Yellow, Red, White
Sleeve Length:Sleeveless
Design: Fashion', N'bo 6 (2).png', N'bo 6 (3).png')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (7, N'Yang', N'Features:
100% Brand New, High Quality!
Specification:
Material: Cotton Blend
Color: Yellow, Pink, Black
Sleeve Length:Sleeveless
Design: Fashion', N'bo 7 (2).jpg', N'bo 7 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (8, N'Yang', N'Features:
100% Brand New, High Quality!
Specification: Polyester
Material: Cotton Blend
Sleeve Length:Sleeveless
Design: Fashion', N'bo 8 (2).jpg', N'bo 8 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (9, N'Lucky Yang', N'Features:
100% Brand New, High Quality!
Specification:
Material: Polyester
Color: Blue, Pink
Size: 100-140cm', N'bo 9 (2).jpg', N'bo 9 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (10, N'Lucky Yang', N'Features:
100% Brand New, High Quality!
Specification:
Material: Polyester
Color: Gray, Red, White
Size: 100-140cm', N'bo 10 (1).png', N'bo 10 (2).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (11, N'Yang', N'Material: Polyester
 Color: Pink
 Soft touch: exquisite design, skin-friendly breathable
 Environmental dyeing: healthy dyeing, environmentally friendly and harmless
 Fabric comfort: high-quality fabrics, healthy and natural, breathable and sweat absorption, soft, skin-friendly and smooth, wrinkle-resistant and not easy to pill
 Durable and Wearable: Excellent quality and generous aesthetic feeling. ', N'bo 11 (1).jpg', N'bo 11 (2).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (12, N'Yang', N'Material: Polyester
 Color: white, black
 Soft touch: exquisite design, skin-friendly breathable
 Environmental dyeing: healthy dyeing, environmentally friendly and harmless
 Fabric comfort: high-quality fabrics, healthy and natural, breathable and sweat absorption, soft, skin-friendly and smooth, wrinkle-resistant and not easy to pill
 Durable and Wearable: Excellent quality and generous aesthetic feeling. ', N'bo 12 (2).jpg', N'bo 12 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (13, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material :ImitationCowboy
Color:Brown ', N'bo 13 (1).jpg', N'bo 13 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (14, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material :ImitationCowboy
Color: As picture ', N'bo 14 (2).jpg', N'bo 14 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (15, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material: Cotton Blend
Color: Blue, Pink
Sleeve Length:Sleeveless
Design: Fashion', N'bo 15 (2).jpg', N'bo 15 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (16, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material: Cotton Blend
Color: Yellow
Sleeve Length:Sleeveless
Design: Fashion', N'bo 16 (1).jpg', N'bo 16 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (17, N'GreatBuy', N'Features:
100% Brand New, High Quality!
Specification:
Material: Polyester
Color: As Picture
Size: 100-130cm', N'bo 17 (2).jpg', N'bo 17 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (18, N'Lucky Yang', N'Features:
100% Brand New, High Quality!
Specification:
Material: Polyester
Color: Blue
Size: 120-150cm', N'bo 18 (2).jpg', N'bo 18 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (19, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: Red
Size:	S  M   L  XL  XXL ', N'hinh 1 (1).jpg', N'hinh 1 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (20, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: Gray
Size:	S  M   L  XL  XXL ', N'hinh 2 (4).jpg', N'hinh 2 (5).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (21, N'MRAH Co', N'Product Name: Latest Fashion Wholesale Mens Padding Jackets Men Outwear 4XL Jacket Male Clothing 
Size:Custom size
Color:Custom color
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 3 (2).jpg', N'hinh 3 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (22, N'MRAH Co', N'Yellow denim jacket male
Size:Custom size
Color: Yellow
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 4 (2).jpg', N'hinh 4 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (23, N'Nazeer sports', N'Material: Cotton Fleece or French Terry , or as custom required
Size: Standard sizes based Buyer country
Color: Do as you asked anycolor like red, white, blue ,etc.
Product Type: Sportswear
Style: Casual', N'hinh 5 (2).jpg', N'hinh 5 (1).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (24, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: Gray ,Red, Black
Size:	S  M   L  XL  XXL ', N'hinh 6 (2).jpg', N'hinh 6 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (25, N'MRAH Co', N'Denim jacket male
Size:Custom size
Color: Black
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 7 (2).jpg', N'hinh 7 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (26, N'MRAH Co', N'Product Name: Latest Fashion Wholesale Mens Padding Jackets Men Outwear 4XL Jacket Male Clothing 
Size:Custom size
Color: Yellow
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 8 (2).jpg', N'hinh 8 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (27, N'MRAH Co', N'Gray denim jacket male
Size:Custom size
Color: Gray
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 9 (1).jpg', N'hinh 9 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (28, N'MRAH Co', N'Black denim jacket male
Size:Custom size
Color: Black
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 10 (2).jpg', N'hinh 10 (1).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (29, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: As picture
Size:	S  M   L  XL  XXL ', N'hinh 11 (2).jpg', N'hinh 11 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (30, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: As picture
Size:	S  M   L  XL  XXL ', N'hinh 12 (4).jpg', N'hinh 12 (5).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (31, N'Nazeer sports', N'Material: Cotton Fleece or French Terry , or as custom required
Size: Standard sizes based Buyer country
Color: Do as you asked anycolor like red, white, blue ,etc.
Product Type: Sportswear
Style: Casual', N'hinh 13 (2).jpg', N'hinh 13 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (32, N'Nazeer sports', N'Material: Cotton Fleece or French Terry , or as custom required
Size: Standard sizes based Buyer country
Color: Do as you asked anycolor like red, white, blue ,etc.
Product Type: Sportswear
Style: Casual', N'hinh 14 (1).jpg', N'hinh 14 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (33, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: Black
Size:	S  M   L  XL  XXL ', N'hinh 15 (1).jpg', N'hinh 15 (2).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (34, N'Custom Label', N'
Material:	100% Cotton, 65% cotton&35% polyester, 35%cotton&65%polyester,100% polyester
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: As picture
Size:	S  M   L  XL  XXL ', N'hinh 16 (2).jpg', N'hinh 16 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (35, N'MRAH Co', N'
Material:	Cotton / Spandex ( 95% cotton 5% spandex )
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: As picture
Size:	S  M   L  XL  XXL ', N'hinh 17 (2).jpg', N'hinh 17 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (36, N'MRAH Co', N'Product Name:  Gray jacket male
Size:Custom size
Color: Gray
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 18 (2).jpg', N'hinh 18 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (37, N'Custom Label', N'
Material:	Cotton
Feature&style :	Plain, blank  can be printed logo or customize designs
Color: Blue
Size:	S  M   L  XL  XXL ', N'hinh 19 (2).jpg', N'hinh 19 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (38, N'MRAH Co', N'
Size: X, XL, XXL, XXXL
Color: White, Black, Blue
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 20 (2).jpg', N'hinh 20 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (39, N'MRAH Co', N'
Size: X, XL, XXL, XXXL
Color: White, Black, Blue
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 21 (2).jpg', N'hinh 21 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (40, N'MRAH Co', N'
Size: X, XL, XXL, XXXL
Color: Red
Techniques:Embroidery , sublimation printing , screen printing
Material:100% polyester ,Bubble 
Style:Jacket', N'hinh 22 (2).jpg', N'hinh 22 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (41, N'Teria', N'Description: Women Sexy Short Sleeve One Piece dress
Main Material:	Polyester/Chiffon/Rayon/Silk/Cotton/Spandex/Nylon
Style:	Western Women one-piece dress
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 1 (2).jpg', N'Set 1 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (42, N'Lancai', N'Material : polyester mix
Color : as picture
Size : S,M,L,XL
Dress Type: Casual Dresses', N'Set 2 (2).jpg', N'Set 2 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (43, N'Lancai', N'Material : polyester mix
Color : as picture
Size : S,M,L,XL
Dress Type: Casual Dresses', N'Set 3 (2).jpg', N'Set 3 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (44, N'LARAINE', N'Material: 95%Polyester 5%Spandex.
Size: S, M, L, XL
Our stylish long sleeve A-line shaped evening dress with round neck is now available with floral lace dress.
Above knee,retro elegant style be easily dress up and dress down.
Suit for Wedding Party,Formal Occasion, casual daily wear,club,work, business, vocation,etc.', N'Set 4 (2).jpg', N'Set 4 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (45, N'LARAINE', N'Material: 95%Polyester 5%Spandex.
Color: As picture
Size: S, M
Our stylish long sleeve A-line shaped evening dress with round neck is now available with floral lace dress.
Above knee,retro elegant style be easily dress up and dress down.
Suit for Wedding Party,Formal Occasion, casual daily wear,club,work, business, vocation,etc.', N'Set 5 (2).jpg', N'Set 5 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (46, N'Teria', N'
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 6 (2).jpg', N'Set 6 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (47, N'Teria', N'
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 7 (2).jpg', N'Set 7 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (48, N'LARAINE', N'Material: 95%Polyester 5%Spandex.
Color: Black
Size: S, M, L
Our stylish long sleeve A-line shaped evening dress with round neck is now available with floral lace dress.
Above knee,retro elegant style be easily dress up and dress down.
Suit for Evening,Cocktail,Wedding Party,Formal Occasion, casual daily wear,club,work, business, vocation,etc.', N'Set 8 (2).jpg', N'Set 8 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (49, N'Teria', N'
Size: M, L
Color: Pink
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 8 (5).jpg', N'Set 8 (6).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (50, N'Teria', N'
Size M, L, XL
Color : Black, Pink
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 9 (2).jpg', N'Set 9 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (51, N'Teria', N'
Color: White
Size: S, M, L
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 10 (1).jpg', N'Set 10 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (52, N'LARAINE', N'Material: 95%Polyester 5%Spandex.
Size: S, M
Color: White, Pink
Our stylish long sleeve A-line shaped evening dress with round neck is now available with floral lace dress.
Above knee,retro elegant style be easily dress up and dress down.
Suit for Evening,Cocktail,Wedding Party,Formal Occasion, casual daily wear,club,work, business, vocation,etc.', N'Set 11 (2).jpg', N'Set 11 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (53, N'LARAINE', N'Material: 95%Polyester 5%Spandex.
Size: S, M
Color: Black, Pink
Our stylish long sleeve A-line shaped evening dress with round neck is now available with floral lace dress.
Above knee,retro elegant style be easily dress up and dress down.
Suit for Evening,Cocktail,Wedding Party,Formal Occasion, casual daily wear,club,work, business, vocation,etc.', N'Set 12 (2).jpg', N'Set 12 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (54, N'Teria', N'
Color: Pink, White
Size: S, M, L
Main Material:	Polyester
Season:	Spring,  Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 13 (2).jpg', N'Set 13 (1).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (55, N'HAOLA', N'Material: 95%Polyester 5%Spandex.
Suitable for Club, Nightclub, Party, Night Out, Clubwear, Cocktail, Casual, Evening...
Color : Black, Blue, Yellow
Size : S,M,L,XL ', N'Set 14 (2).jpg', N'Set 14 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (56, N'Teria', N'
Color: White
Size: S, M, L
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 15 (2).jpg', N'Set 15 (3).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (57, N'Teria', N'
Color: As Picture
Size: S, M, L
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 16 (2).jpg', N'Set 16 (1).jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (58, N'Teria', N'
Color: Brown
Size: S, M, L
Main Material:	Polyester
Season:	Winter
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 17 (2).jpg', N'Set 17.jpg')
INSERT [dbo].[productDetail] ([prodID], [info], [description], [image1], [image2]) VALUES (59, N'Teria', N'
Size M, L, XL
Color : Black, Pink
Main Material:	Polyester
Season:	Spring, Summer, Autumn
Feature:	Eco-Friendly, Water Soluble, Other', N'Set 18 (2).jpg', N'Set 18 (3).jpg')
SET ANSI_PADDING ON
GO
/****** Object:  Index [FK_CHECK_USER]    Script Date: 10/12/2019 7:34:57 PM ******/
ALTER TABLE [dbo].[myUser] ADD  CONSTRAINT [FK_CHECK_USER] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[myOrder] ADD  DEFAULT (getdate()) FOR [dateCreate]
GO
ALTER TABLE [dbo].[bestSale]  WITH CHECK ADD  CONSTRAINT [FK_bestSale_product] FOREIGN KEY([prodID])
REFERENCES [dbo].[product] ([prodID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bestSale] CHECK CONSTRAINT [FK_bestSale_product]
GO
ALTER TABLE [dbo].[myOrder]  WITH CHECK ADD  CONSTRAINT [FK_myOrder_product] FOREIGN KEY([userID])
REFERENCES [dbo].[myUser] ([userID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[myOrder] CHECK CONSTRAINT [FK_myOrder_product]
GO
ALTER TABLE [dbo].[myOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_myOrderDetail_myOrder] FOREIGN KEY([orderID])
REFERENCES [dbo].[myOrder] ([orderID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[myOrderDetail] CHECK CONSTRAINT [FK_myOrderDetail_myOrder]
GO
ALTER TABLE [dbo].[myOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_myOrderDetail_product] FOREIGN KEY([prodID])
REFERENCES [dbo].[product] ([prodID])
GO
ALTER TABLE [dbo].[myOrderDetail] CHECK CONSTRAINT [FK_myOrderDetail_product]
GO
ALTER TABLE [dbo].[myUser]  WITH CHECK ADD  CONSTRAINT [FK_myUser_myRole] FOREIGN KEY([roleID])
REFERENCES [dbo].[myRole] ([roleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[myUser] CHECK CONSTRAINT [FK_myUser_myRole]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([cateID])
REFERENCES [dbo].[category] ([cateID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[productDetail]  WITH CHECK ADD  CONSTRAINT [FK_productDetail_product] FOREIGN KEY([prodID])
REFERENCES [dbo].[product] ([prodID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[productDetail] CHECK CONSTRAINT [FK_productDetail_product]
GO
/****** Object:  Trigger [dbo].[FK_update_bestSale]    Script Date: 10/12/2019 7:34:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[FK_update_bestSale]
on [dbo].[myOrderDetail]
after insert
as
begin
	declare @prodID int = (select prodID from inserted)
	declare @numOfProd int = (select sum(quantity) from myOrderDetail where prodID = @prodID group by prodID)
	if  @prodID not in (select prodID from bestSale)
	begin
		insert into bestSale (prodID, numOfProd) values
		(@prodID, @numOfProd)
	end
	else
	begin
		update bestSale
		set numOfProd = @numOfProd
		where prodID = @prodID
	end
end
GO
ALTER TABLE [dbo].[myOrderDetail] ENABLE TRIGGER [FK_update_bestSale]
GO
