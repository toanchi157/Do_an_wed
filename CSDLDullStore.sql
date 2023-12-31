USE [DullShop]
GO
/****** Object:  Table [dbo].[ChiTietGioHang]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGioHang](
	[magiohang] [int] NOT NULL,
	[magiay] [int] NOT NULL,
	[soluong] [int] NULL,
	[dongia] [nchar](20) NULL,
 CONSTRAINT [PK_chitietgiohang] PRIMARY KEY CLUSTERED 
(
	[magiohang] ASC,
	[magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[tendanhmuc] [varchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[makhachhang] [int] NULL,
	[ngaydathang] [date] NULL CONSTRAINT [DF_GioHang_ngaydathang]  DEFAULT (getdate()),
	[ngaygiaohang] [date] NULL,
	[tinhtranggiaohang] [nvarchar](50) NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[diachi] [nvarchar](100) NULL,
	[sodienthoai] [varchar](50) NULL,
	[email] [varchar](100) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[giaban] [decimal](18, 0) NULL,
	[linkanh] [nvarchar](200) NULL,
	[xuatxu] [nvarchar](50) NULL,
	[madanhmuc] [int] NULL,
	[mastyle] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Style]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[ma] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 04/06/2017 3:16:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[userName] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChiTietGioHang] ([magiohang], [magiay], [soluong], [dongia]) VALUES (3, 2, 1, N'2500000             ')
INSERT [dbo].[ChiTietGioHang] ([magiohang], [magiay], [soluong], [dongia]) VALUES (4, 1, 1, N'3200000             ')
INSERT [dbo].[ChiTietGioHang] ([magiohang], [magiay], [soluong], [dongia]) VALUES (4, 2, 2, N'5000000             ')
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([ma], [tendanhmuc]) VALUES (1, N'Lacoste')
INSERT [dbo].[DanhMuc] ([ma], [tendanhmuc]) VALUES (2, N'Canifa')
INSERT [dbo].[DanhMuc] ([ma], [tendanhmuc]) VALUES (3, N'Converse')
INSERT [dbo].[DanhMuc] ([ma], [tendanhmuc]) VALUES (4, N'Aristino')
INSERT [dbo].[DanhMuc] ([ma], [tendanhmuc]) VALUES (5, N'Biluxury')
INSERT [dbo].[DanhMuc] ([ma], [tendanhmuc]) VALUES (7, N'poloRalphLauren')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([ma], [makhachhang], [ngaydathang], [ngaygiaohang], [tinhtranggiaohang]) VALUES (3, 7, CAST(N'2017-06-04' AS Date), CAST(N'2017-06-04' AS Date), N'Đã giao hàng và khách hàng đã thanh toán đầy đủ')
INSERT [dbo].[GioHang] ([ma], [makhachhang], [ngaydathang], [ngaygiaohang], [tinhtranggiaohang]) VALUES (4, 7, CAST(N'2017-06-04' AS Date), CAST(N'2017-06-04' AS Date), N'Đang giao hàng')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([ma], [hoten], [diachi], [sodienthoai], [email]) VALUES (7, N'Phan Chí Toàn',N'Sài gòn Thành Phố HCM', N'0987624271', N'Toan@gmail.com')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (1, N'Lacoste', CAST(3200000 AS Decimal(18, 0)), N'Lacoste_1.jpg', N'Việt Nam', 1, 1)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (2, N'Lacoste', CAST(2500000 AS Decimal(18, 0)), N'Lacoste_2.jpg', N'Việt Nam', 2, 1)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (3, N'Lacoste', CAST(2500000 AS Decimal(18, 0)), N'Lacoste_3.jpg', N'Việt Nam', 3, 2)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (4, N'DAristino', CAST(2500000 AS Decimal(18, 0)), N'Aristino_1.jpg', N'Việt Nam', 5, 3)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (5, N'Biluxury', CAST(2500000 AS Decimal(18, 0)), N'Biluxury.jpg', N'Việt Nam', 1, 1)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (6, N'Canifa', CAST(2500000 AS Decimal(18, 0)), N'Canifa_1.jpg', N'Việt Nam', 1, 2)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (7, N'Canifa', CAST(2500000 AS Decimal(18, 0)), N'Canifa_2.jpg', N'Việt Nam', 3, 2)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (8, N'poloRalphLauren', CAST(2500000 AS Decimal(18, 0)), N'poloRalphLauren_1.jpg', N'Việt Nam', 2, 1)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (9, N'poloRalphLauren', CAST(2500000 AS Decimal(18, 0)), N'poloRalphLauren_2.jpg', N'Việt Nam', 2, 1)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (10, N'Lacoste', CAST(2500000 AS Decimal(18, 0)), N'ao_1.jpg', N'Việt Nam', 4, 2)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (12, N'Canifa', CAST(2500000 AS Decimal(18, 0)), N'ao_2.jpg', N'Việt Nam', 4, 2)
INSERT [dbo].[SanPham] ([ma], [ten], [giaban], [linkanh], [xuatxu], [madanhmuc], [mastyle]) VALUES (2012, N'Biluxury', CAST(2800000 AS Decimal(18, 0)), N'ao_3.jpg', N'Việt Nam', 3, 2)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
SET IDENTITY_INSERT [dbo].[Style] ON 

INSERT [dbo].[Style] ([ma], [ten]) VALUES (1, N'Áo Đi chơi')
INSERT [dbo].[Style] ([ma], [ten]) VALUES (2, N'Áo thường')
INSERT [dbo].[Style] ([ma], [ten]) VALUES (3, N'Áo ăn tiệc')
SET IDENTITY_INSERT [dbo].[Style] OFF
INSERT [dbo].[User] ([userName], [password]) VALUES (N'admin', N'admin')
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_GioHang] FOREIGN KEY([magiohang])
REFERENCES [dbo].[GioHang] ([ma])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_GioHang]
GO
ALTER TABLE [dbo].[ChiTietGioHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietGioHang_SanPham] FOREIGN KEY([magiay])
REFERENCES [dbo].[SanPham] ([ma])
GO
ALTER TABLE [dbo].[ChiTietGioHang] CHECK CONSTRAINT [FK_ChiTietGioHang_SanPham]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([makhachhang])
REFERENCES [dbo].[KhachHang] ([ma])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMuc] FOREIGN KEY([madanhmuc])
REFERENCES [dbo].[DanhMuc] ([ma])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMuc]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Style] FOREIGN KEY([mastyle])
REFERENCES [dbo].[Style] ([ma])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_Style]
GO
