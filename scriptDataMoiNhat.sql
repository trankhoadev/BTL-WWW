USE [master]
GO
/****** Object:  Database [web_nhac_cu]    Script Date: 5/12/2022 5:17:57 PM ******/
CREATE DATABASE [web_nhac_cu]
GO
USE [web_nhac_cu]
GO
/****** Object:  Table [dbo].[Chi_Tiet_Hoa_Don]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chi_Tiet_Hoa_Don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoa_don_id] [int] NOT NULL,
	[san_pham_id] [int] NOT NULL,
	[gia] [money] NOT NULL,
	[so_luong] [int] NOT NULL,
	[tong_tien] [money] NOT NULL,
 CONSTRAINT [PK_Oder_Details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danh_Gia]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danh_Gia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan_id] [int] NOT NULL,
	[san_pham_id] [int] NOT NULL,
	[binh_luan] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Phan_Hoi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Don_Vi_Van_Chuyen]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Don_Vi_Van_Chuyen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_don_vi] [nvarchar](500) NOT NULL,
	[gia] [money] NOT NULL,
 CONSTRAINT [PK_Don_Vi_Van_Chuyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hinh_Phu]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hinh_Phu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[san_pham_id] [int] NOT NULL,
	[hinh] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Hinh_Phu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa_Don]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa_Don](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tai_khoan_id] [int] NOT NULL,
	[ngay_dat] [datetime] NOT NULL,
	[ghi_chu] [nvarchar](max) NOT NULL,
	[don_vi_van_chuyen_id] [int] NOT NULL,
	[trang_thai] [nvarchar](200) NOT NULL,
	[tong_tien] [money] NOT NULL,
	[dia_chi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nha_San_Xuat]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nha_San_Xuat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](200) NOT NULL,
	[dia_chi] [nvarchar](max) NOT NULL,
	[email] [nvarchar](200) NOT NULL,
	[so_dien_thoai] [nvarchar](50) NOT NULL,
	[ngay_hop_tac] [date] NOT NULL,
 CONSTRAINT [PK_Nha_San_Xuat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[San_Pham]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[San_Pham](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](500) NOT NULL,
	[gia] [money] NOT NULL,
	[giam_gia] [money] NOT NULL,
	[hinh_chinh] [nvarchar](max) NOT NULL,
	[loai_id] [int] NOT NULL,
	[mo_ta] [nvarchar](max) NOT NULL,
	[nha_san_xuat_id] [int] NOT NULL,
	[ngay_tao] [datetime] NOT NULL,
	[ngay_sua] [datetime] NULL,
	[da_xoa] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tai_Khoan]    Script Date: 5/12/2022 5:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tai_Khoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten_tai_khoan] [varchar](200) NOT NULL,
	[mat_khau] [varchar](200) NOT NULL,
	[ngay_tao] [datetime] NOT NULL,
	[email] [nvarchar](200) NULL,
	[so_dien_thoai] [nvarchar](50) NULL,
	[ngay_sinh] [nvarchar](50) NULL,
	[gioi_tinh] [nvarchar](10) NULL,
	[da_xoa] [int] NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[ho_ten] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chi_Tiet_Hoa_Don] ON 

INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (3, 1, 1, 910000.0000, 10, 8918000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (5, 1, 2, 1200000.0000, 2, 2352000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (7, 2, 3, 1280000.0000, 5, 6272000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (8, 2, 4, 1700000.0000, 6, 9996000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (10, 3, 5, 3120000.0000, 1, 3058000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (11, 3, 5, 3120000.0000, 1, 3058000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (12, 4, 6, 13900000.0000, 2, 26410000.0000)
INSERT [dbo].[Chi_Tiet_Hoa_Don] ([id], [hoa_don_id], [san_pham_id], [gia], [so_luong], [tong_tien]) VALUES (13, 4, 7, 18490000.0000, 7, 113898000.0000)
SET IDENTITY_INSERT [dbo].[Chi_Tiet_Hoa_Don] OFF
GO
SET IDENTITY_INSERT [dbo].[Danh_Gia] ON 

INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (1, 4, 1, N'hay')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (2, 4, 2, N'dỡ')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (3, 5, 2, N'rất  hay')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (4, 5, 3, N'dỡ')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (9, 7, 3, N'tạm')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (10, 7, 1, N'ok')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (11, 7, 4, N'quá dỡ')
INSERT [dbo].[Danh_Gia] ([id], [tai_khoan_id], [san_pham_id], [binh_luan]) VALUES (12, 5, 6, N'quá hay')
SET IDENTITY_INSERT [dbo].[Danh_Gia] OFF
GO
SET IDENTITY_INSERT [dbo].[Don_Vi_Van_Chuyen] ON 

INSERT [dbo].[Don_Vi_Van_Chuyen] ([id], [ten_don_vi], [gia]) VALUES (2, N'ship nhanh', 20000.0000)
INSERT [dbo].[Don_Vi_Van_Chuyen] ([id], [ten_don_vi], [gia]) VALUES (3, N'shipper thường', 10000.0000)
INSERT [dbo].[Don_Vi_Van_Chuyen] ([id], [ten_don_vi], [gia]) VALUES (4, N'ship hỏa tốc', 50000.0000)
SET IDENTITY_INSERT [dbo].[Don_Vi_Van_Chuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Hinh_Phu] ON 

INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (1, 1, N'dan-acoustic-guitar-ga-10-el_3721.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (2, 1, N'dan-acoustic-guitar-ga-10-el_6665.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (3, 1, N'dan-acoustic-guitar-ga-10-el_7607.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (4, 1, N'dan-acoustic-guitar-ga-10-el_9050.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (5, 2, N'dan-guitar-classic-mini-dam2_2855.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (6, 2, N'dan-guitar-classic-mini-dam2_5426.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (7, 2, N'dan-guitar-classic-mini-dam2_6427.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (8, 2, N'dan-guitar-classic-mini-dam2_9440.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (9, 3, N'dan-guitar-classic-gc-14hl_2117.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (10, 3, N'dan-guitar-classic-gc-14hl_3275.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (11, 3, N'dan-guitar-classic-gc-14hl_5031.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (12, 3, N'dan-guitar-classic-gc-14hl_7288.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (13, 4, N'dan-classic-guitar-gc-18-hl_1904.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (14, 4, N'dan-classic-guitar-gc-18-hl_2693.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (15, 4, N'dan-classic-guitar-gc-18-hl_4852.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (16, 4, N'dan-classic-guitar-gc-18-hl_8365.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (17, 5, N'dan-guitar-acoustic-tanglewood-twcr-d-crossroads_1947.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (18, 5, N'dan-guitar-acoustic-tanglewood-twcr-d-crossroads_4488.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (19, 5, N'dan-guitar-acoustic-tanglewood-twcr-d-crossroads_5774.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (20, 5, N'dan-guitar-acoustic-tanglewood-twcr-d-crossroads_9003.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (21, 6, N'dan_piano_dien_roland_rp-30-2.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (22, 6, N'dan_piano_dien_roland_rp-30-3.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (23, 6, N'dan_piano_dien_roland_rp-30-4.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (24, 6, N'dan_piano_dien_roland_rp-30-6.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (25, 7, N'kich thuoc dan roland RP-102.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (26, 7, N'roland-rp102 ban phim.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (27, 7, N'roland-rp102 bo may dan.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (28, 7, N'roland-rp102.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (29, 8, N'ĐÀN PIANO YAMAHA YDP 164-R2.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (30, 8, N'ĐÀN PIANO YAMAHA YDP 164-R3.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (31, 8, N'ĐÀN PIANO YAMAHA YDP 164-T3 (1).jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (32, 8, N'ĐÀN PIANO YAMAHA YDP 164-T3.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (33, 9, N'dan-piano-dien-roland-hp-702_3257.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (34, 9, N'dan-piano-dien-roland-hp-702_3914.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (35, 9, N'dan-piano-dien-roland-hp-702_6299.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (36, 9, N'dan-piano-dien-roland-hp-702_7300.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (37, 10, N'dan-piano-yamaha-ju109pe_4186.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (38, 10, N'dan-piano-yamaha-ju109pe_7692.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (39, 11, N'dan-violin-kapok-mv-005-size-3-4_5115.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (40, 11, N'dan-violin-kapok-mv-005-size-3-4_8157.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (41, 11, N'dan-violin-kapok-mv-005-size-3-4_8628.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (42, 12, N'dan-violin-kapok-mv182-size-3-4_3218.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (43, 12, N'dan-violin-kapok-mv182-size-3-4_8704.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (44, 12, N'dan-violin-kapok-mv182-size-3-4_9989.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (45, 13, N'dan-violin-kapok-mv-005-size-4-4.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (46, 13, N'dan-violin-kapok-mv-005-size-4-4_6293.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (47, 13, N'dan-violin-kapok-mv-005-size-4-4_8913.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (48, 14, N'dan-violin-chinh-hang-yamaha-v7g.png	')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (49, 14, N'dan-violin-chinh-hang-yamaha-v7g_1165.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (50, 14, N'dan-violin-chinh-hang-yamaha-v7g_7663.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (51, 15, N'dan-violin-kapok-mv-005-size-1-2.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (52, 15, N'dan-violin-kapok-mv-005-size-1-2_1734.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (53, 15, N'dan-violin-kapok-mv-005-size-1-2_6057.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (54, 16, N'ken-saxophone-ky-thuat-so-yamaha-yds-150_1112.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (55, 16, N'ken-saxophone-ky-thuat-so-yamaha-yds-150_1780.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (56, 16, N'ken-saxophone-ky-thuat-so-yamaha-yds-150_7528.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (57, 16, N'ken-saxophone-ky-thuat-so-yamaha-yds-150_8219.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (58, 17, N'ken-harmonica-winner_3203.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (59, 17, N'ken-harmonica-winner_3833.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (60, 17, N'ken-harmonica-winner_4920.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (61, 17, N'ken-harmonica-winner_9338.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (62, 18, N'ken-harmonica-qimei-28-lo_3464.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (63, 18, N'ken-harmonica-qimei-28-lo_4840.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (64, 18, N'ken-harmonica-qimei-28-lo_7388.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (65, 18, N'ken-harmonica-qimei-28-lo_8816.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (66, 19, N'ken-pianica-melodion-yamaha-p-37e_4749.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (67, 19, N'ken-pianica-melodion-yamaha-p-37e_5721.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (68, 19, N'ken-pianica-melodion-yamaha-p-37e_6222.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (69, 19, N'ken-pianica-melodion-yamaha-p-37e_9705.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (70, 20, N'ken-melodion-suzuki-mx-37_1335.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (71, 20, N'ken-melodion-suzuki-mx-37_1903.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (72, 20, N'ken-melodion-suzuki-mx-37_3120.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (73, 20, N'ken-melodion-suzuki-mx-37_7144.jpgg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (74, 21, N'trong-cajon-nissi-cjpst-690_2917.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (75, 21, N'trong-cajon-nissi-cjpst-690_4045.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (76, 21, N'trong-cajon-nissi-cjpst-690_4516.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (77, 21, N'trong-cajon-nissi-cjpst-690_6931.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (78, 22, N'trong-cajon-kiera-hcn-01_2033.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (79, 22, N'trong-cajon-kiera-hcn-01_3318.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (80, 22, N'trong-cajon-kiera-hcn-01_7018.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (81, 22, N'trong-cajon-kiera-hcn-01_8775.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (82, 23, N'trong-cajon-nissi-cjsbs-x212_1277.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (83, 23, N'trong-cajon-nissi-cjsbs-x212_4536.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (84, 23, N'trong-cajon-nissi-cjsbs-x212_5791.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (85, 23, N'trong-cajon-nissi-cjsbs-x212_9992.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (86, 24, N'trong-jazz-yamaha-rdp2f5_3853.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (87, 24, N'trong-jazz-yamaha-rdp2f5_9623.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (88, 24, N'trong-jazz-yamaha-rdp2f5_9653 (1).jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (89, 24, N'trong-jazz-yamaha-rdp2f5_9653.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (90, 25, N'trong-cajon-nissi-travel-box_1218.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (91, 25, N'trong-cajon-nissi-travel-box_1346.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (92, 25, N'trong-cajon-nissi-travel-box_8274.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (93, 25, N'trong-cajon-nissi-travel-box_9844.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (94, 26, N'sao-tieu-recorder-yamaha-yrs-402b_1079.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (95, 26, N'sao-tieu-recorder-yamaha-yrs-402b_1598.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (96, 26, N'sao-tieu-recorder-yamaha-yrs-402b_3165.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (97, 26, N'sao-tieu-recorder-yamaha-yrs-402b_3748.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (98, 27, N'sao-tieu-yamaha-yra-27_2461.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (99, 27, N'sao-tieu-yamaha-yra-27_4290.jpg')
GO
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (100, 27, N'sao-tieu-yamaha-yra-27_5921.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (101, 27, N'sao-tieu-yamaha-yra-27_7918.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (102, 28, N'sao-tieu-yamaha-yrs-20_1710.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (103, 28, N'sao-tieu-yamaha-yrs-20_2927.jpg ')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (104, 28, N'sao-tieu-yamaha-yrs-20_6748.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (105, 28, N'sao-tieu-yamaha-yrs-20_7240.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (106, 29, N'recorder-yamaha-yrs24-3.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (107, 29, N'sao-tieu-yamaha-yrs24b_1774.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (108, 29, N'sao-tieu-yamaha-yrs24b_3902.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (109, 29, N'sao-tieu-yamaha-yrs24b_8907.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (110, 30, N'sao-tieu-yamaha-yrs24b_3418.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (111, 30, N'sao-tieu-yamaha-yrs24b_3902.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (112, 30, N'sao-tieu-yamaha-yrs24b_6280.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (113, 30, N'sao-tieu-yamaha-yrs24b_6572.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (114, 31, N'trong-nho-2_7343.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (115, 32, N'trong-luc-lac-260mm-tambourine_1147.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (116, 32, N'trong-luc-lac-260mm-tambourine_1286.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (117, 33, N'trong-luc-lac-tambourine-alice_3032.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (118, 33, N'trong-luc-lac-tambourine-alice_4132.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (119, 33, N'trong-luc-lac-tambourine-alice_6104.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (120, 33, N'trong-luc-lac-tambourine-alice_6448.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (121, 34, N'trong-luc-lac-dang-khuyet-tambourine_1392.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (122, 34, N'trong-luc-lac-dang-khuyet-tambourine_2472.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (123, 34, N'trong-luc-lac-dang-khuyet-tambourine_2826.jpg')
INSERT [dbo].[Hinh_Phu] ([id], [san_pham_id], [hinh]) VALUES (124, 34, N'trong-luc-lac-dang-khuyet-tambourine_7103.jpg')
SET IDENTITY_INSERT [dbo].[Hinh_Phu] OFF
GO
SET IDENTITY_INSERT [dbo].[Hoa_Don] ON 

INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (1, 4, CAST(N'2022-04-04T00:00:00.000' AS DateTime), N'Giao hàng nhanh', 2, N'Đang giao hàng', 11270000.0000, N'112/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (2, 4, CAST(N'2022-02-03T00:00:00.000' AS DateTime), N'Giao hàng thường', 3, N'Đã giao', 16268000.0000, N'110/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (3, 4, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'Giao hàng hỏa tốc', 4, N'Đang giao hàng', 6116000.0000, N'95/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (4, 5, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'Giao hàng', 2, N'Đang chờ xác nhận', 140308000.0000, N'93/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (5, 5, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'Giao hàng', 3, N'Đã giao', 500000.0000, N'91/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (6, 7, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'Giao hàng', 4, N'Đang giao hàng', 500000.0000, N'97/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (7, 11, CAST(N'2022-05-01T00:00:00.000' AS DateTime), N'Ghi chú', 2, N'Đang chờ xác nhận', 2500000.0000, N'83/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (8, 12, CAST(N'2022-01-23T00:00:00.000' AS DateTime), N'Nhanh', 3, N'Đã giao', 300000.0000, N'72/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
INSERT [dbo].[Hoa_Don] ([id], [tai_khoan_id], [ngay_dat], [ghi_chu], [don_vi_van_chuyen_id], [trang_thai], [tong_tien], [dia_chi]) VALUES (10, 13, CAST(N'2022-01-23T00:00:00.000' AS DateTime), N'Bình Thường', 4, N'Đã giao', 1000000.0000, N'85/5/Nguyễn Thái Sơn/Phuong3/GoVap/TPHCM')
SET IDENTITY_INSERT [dbo].[Hoa_Don] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([id], [ten]) VALUES (1, N'Đàn Guitar')
INSERT [dbo].[Loai] ([id], [ten]) VALUES (2, N'Đàn Piano')
INSERT [dbo].[Loai] ([id], [ten]) VALUES (3, N'Đàn Violin')
INSERT [dbo].[Loai] ([id], [ten]) VALUES (4, N'Kèn')
INSERT [dbo].[Loai] ([id], [ten]) VALUES (5, N'Trống')
INSERT [dbo].[Loai] ([id], [ten]) VALUES (6, N'Sáo')
INSERT [dbo].[Loai] ([id], [ten]) VALUES (7, N'Nhạc cụ dân tộc')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
SET IDENTITY_INSERT [dbo].[Nha_San_Xuat] ON 

INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (3, N'Roland', N'Việt Nam', N'roland@gmail.com', N'0123456789', CAST(N'2022-05-07' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (6, N'Casio', N'Hà Nội', N'casio@gmail.com', N'0123456789', CAST(N'2022-04-13' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (7, N'KaWai', N'Quảng Nam', N'kawai@gmail.com', N'0345678921', CAST(N'2021-03-21' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (8, N'D.A.S', N'Tây Ban Nha', N'das@gmail.com', N'0456723463', CAST(N'2021-06-12' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (9, N'Inter – M', N'Mĩ', N'interm@gmail.com', N'0712353415', CAST(N'2022-01-01' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (11, N'tphcm', N't@gmail.com', N'0382912912', N'teo', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (12, N'hanoi', N'th@gmail.com', N'03829231912', N'ti', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (13, N'vn', N'td@gmail.com', N'0382967912', N'tun', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (14, N'tphcm', N't@gmail.com', N'0382912912', N'teo', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (15, N'hanoi', N'th@gmail.com', N'03829231912', N'ti', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (16, N'vn', N'td@gmail.com', N'0382967912', N'tun', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (17, N'tphcm', N't@gmail.com', N'0382912912', N'teo', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (18, N'hanoi', N'th@gmail.com', N'03829231912', N'ti', CAST(N'2022-05-06' AS Date))
INSERT [dbo].[Nha_San_Xuat] ([id], [ten], [dia_chi], [email], [so_dien_thoai], [ngay_hop_tac]) VALUES (19, N'vn', N'td@gmail.com', N'0382967912', N'tun', CAST(N'2022-05-06' AS Date))
SET IDENTITY_INSERT [dbo].[Nha_San_Xuat] OFF
GO
SET IDENTITY_INSERT [dbo].[San_Pham] ON 

INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (1, N'ĐÀN ACOUSTIC GUITAR GA- 10 EL', 910000.0000, 2.0000, N'Guitar1.jpg', 1, N'Với mức giá rất dễ chịu, dễ chơi dễ bấm, nhiều lựa chọn về màu sắc - thiết kế... 
Guitar GA- 10 EL được rất nhiều sinh viên và người mới tập chơi Guitar lựa chọn. ', 3, CAST(N'2022-05-08T13:19:40.910' AS DateTime), CAST(N'2022-05-08T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (2, N'ĐÀN GUITAR CLASSIC MINI DAM 2', 1200000.0000, 2.0000, N'Guitar2.jpg', 1, N'Mức giá chỉ hơn 1 triệu và những gì mang lại từ cây đàn GUITAR CLASSIC MINI DAM 2 mang lại thật sự ngoài sức tưởng tượng', 3, CAST(N'2022-05-08T13:20:37.107' AS DateTime), CAST(N'2022-05-08T13:20:37.107' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (3, N'ĐÀN GUITAR CLASSIC GC-14HL', 1280000.0000, 2.0000, N'Guitar3.jpg', 1, N'Guitar Classic GC-14HL là một nhạc cụ có cấu trúc khá đơn giản nhưng lại mang đến một thế giới âm thanh và kỹ thuật phong phú hơn bất cứ loại nhạc cụ nào.
		 Có lẽ vì thế mà những màn độc tấu Guitar trên GC-HL14 thường mang đến cho người nghe sự cảm nhận rất khác biệt. ', 3, CAST(N'2022-05-08T13:21:05.913' AS DateTime), CAST(N'2022-05-08T13:21:05.913' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (4, N'ĐÀN CLASSIC GUITAR GC- 18 HL', 1700000.0000, 2.0000, N'Guitar4.jpg', 1, N'Guitar cổ điển hay còn gọi là Guitar Classic với model GC-18HL là một nhạc cụ thường được sử dụng trong âm nhạc cổ điển, nhạc không lời. 
Âm thanh của cây đàn này khá trầm ấm và êm ái. Đây cũng chính là một nét đặc trưng để phân biệt với đàn Guitar Acoustic.', 3, CAST(N'2022-05-08T13:22:14.237' AS DateTime), CAST(N'2022-05-08T13:22:14.237' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (5, N'ĐÀN GUITAR ACOUSTIC TANGLEWOOD TWCR D CROSSROADS', 3120000.0000, 4.0000, N'Guitar5.jpg', 1, N'Mặt trước, lưng, hông và cần đàn Guitar Acoustic Tanglewood TWCR D được làm từ chất liệu mahogany, đặc biệt gỗ làm mặt đàn được tuyển chọn vô cùng kỹ lưỡng và cẩn thận. 
		Mahogany là một loại gỗ bền với thời gian, không bị cong vênh hay nứt nẻ.', 3, CAST(N'2022-05-08T13:19:40.910' AS DateTime), CAST(N'2022-05-08T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (6, N'ĐÀN PIANO ĐIỆN ROLAND RP-30', 13900000.0000, 5.0000, N'piano1.jpg', 2, N'Thiết kế gọn nhẹ, phù hợp với chiều cao, độ tuổi các bé.
		Có chế độ tự học giúp các bé dễ dàng luyện tập tại nhà để nâng cao trình độ.
		Phím đàn nhẹ dễ sử dụng, phù hợp với cả các bé còn nhỏ tuổi.
		Tích hợp 15 tone nhạc tùy chỉnh phong phú.
		Sử dụng headphone cho phép luyện tập mọi lúc, mọi nơi', 6, CAST(N'2022-05-09T13:19:40.910' AS DateTime), CAST(N'2022-05-09T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (7, N'ĐÀN PIANO ROLAND RP-102', 18490000.0000, 12.0000, N'piano2.jpg', 2, N'Phím có độ nặng tương đương Piano cơ 
				128-note polyphony
				Hơn 200 bài hát được tích hợp
				Ba bàn đạp điều khiển
				Ambience (10 cấp độ), Brilliance (21 cấp độ)
				Khả năng kết nối Bluetooth hàng đầu
				Tích hợp 2 loa công suất (6W x 2)
				Giao diện đơn giản và dễ sử dụng', 6, CAST(N'2022-05-09T13:19:40.910' AS DateTime), CAST(N'2022-05-09T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (8, N'ĐÀN PIANO ĐIỆN YAMAHA YDP 164', 25990000.0000, 4.0000, N'piano3.jpg', 2, N'Phát một âm thanh hoặc lớp hai note với nhau
	Có sắc thái tinh tế với bộ điều khiển pedal nửa damper', 6, CAST(N'2022-05-09T13:19:40.910' AS DateTime), CAST(N'2022-05-09T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (9, N'ĐÀN PIANO ĐIỆN ROLAND HP-702', 35910000.0000, 10.0000, N'piano4.jpg', 2, N'Công nghệ âm thanh: PureAcoustic Piano Modelling technology
			PHA-4 Standard Keyboard: with Escapement and Ivory Feel (88 keys)
			Hiệu ứng âm thanh vòm 3D Ambience
			Pedal độ nhạy 2 cấp tương tự Piano cơ.
			Kết nối không dây sử dụng app ios và android
			Hệ thống Loa Acoustic Projection, với 6 loa độ phân giải cao', 6, CAST(N'2022-05-09T13:19:40.910' AS DateTime), CAST(N'2022-05-09T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (10, N'ĐÀN PIANO YAMAHA JU109PE', 68500000.0000, 10.0000, N'piano5.jpg', 2, N'Chất lượng âm thanh chuẩn Piano cơ
		Tối ưu hóa chi phí
		Kiểu dáng gọn nhẹ, phù hợp mọi không gian sử dụng (chung cư, studio, lớp nhạc,...)', 6, CAST(N'2022-05-09T13:19:40.910' AS DateTime), CAST(N'2022-05-09T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (11, N'ĐÀN VIOLIN KAPOK MV 005 SIZE 4/4', 2350000.0000, 2.0000, N'violin1.jpg', 3, N'Violin Kapok MV005 4/4 được làm từ những vật liệu cao cấp, thiết kế tỉ mỉ bởi những người thợ hàng đầu của thương hiệu Kapok,. 
		Với kiểu dáng đẹp, hài hòa, âm thanh chất lượng, Kapok MV005 4/4 hứa hẹn sẽ đáp ứng đầy đủ nhu cầu của người chơi.', 7, CAST(N'2022-05-10T13:19:40.910' AS DateTime), CAST(N'2022-05-10T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (12, N'ĐÀN VIOLIN KAPOK MV182 SIZE 3/4', 2180000.0000, 2.0000, N'violin2.jpg', 3, N'Chế tạo hoàn toàn từ gỗ cao cấp
		Âm thanh rất chân thực và sinh động, giàu cảm xúc
		Thiết kế đẹp mắt, kích thước nhỏ gọn', 7, CAST(N'2022-05-10T13:19:40.910' AS DateTime), CAST(N'2022-05-10T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (13, N'ĐÀN VIOLIN KAPOK MV 005 SIZE 4/4', 2350000.0000, 3.0000, N'violin3.jpg', 3, N'Thiết kế tỉ mỉ bởi những người thợ hàng đầu của Kapok
		Kiểu dáng nhỏ gọn, đẹp mắt, hài hòa, âm thanh chất lượng, 
		Chất liệu gỗ cao cấp, độ bền cao, chống mối mọt, nấm mốc
		Sử dụng trong nhiều thể loại nhạc khác nhau', 7, CAST(N'2022-05-10T13:19:40.910' AS DateTime), CAST(N'2022-05-10T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (14, N'ĐÀN VIOLIN CHÍNH HÃNG YAMAHA V7G', 4500000.0000, 3.0000, N'violin4.jpg', 3, N'Chất lượng xuất sắc cho nghệ sĩ trẻ
		V7G được bán như một nhạc cụ riêng biệt. Hiện có kích thước 4/4.
		Được làm thủ công bằng gỗ tự nhiên qua chọn lọc. V7G trở thành nhạc cụ lý tưởng cho người mới bắt đầu mong muốn một chiếc đàn violin chất lượng', 7, CAST(N'2022-05-10T13:19:40.910' AS DateTime), CAST(N'2022-05-10T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (15, N'ĐÀN VIOLIN KAPOK MV 005 SIZE 1/2', 2300000.0000, 2.0000, N'violin5.jpg', 3, N'Đàn Violin MV005 1/2 được thiết kế dành cho những người chơi thuận tay trái. 
		Cây đàn có chất lượng âm thanh tốt, nhiều tính năng linh hoạt, hứa hẹn đem đến cho người chơi những trải nghiệm tuyệt vời.', 7, CAST(N'2022-05-10T13:19:40.910' AS DateTime), CAST(N'2022-05-10T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (16, N'KÈN SAXOPHONE KỸ THUẬT SỐ YAMAHA YDS-150', 21080000.0000, 5.0000, N'Ken1.jpg', 4, N'Gói ghém chất lượng âm thanh phong phú bên trong một vẻ đẹp tinh tế, với YDS-150, bạn có thể điều chỉnh âm lượng nhỏ nhất theo ý muốn. 
		Bạn có thể tùy chỉnh âm lượng với 15 cấp độ, và thoải mái chơi mà không cần lo lắng về âm lượng—dù là ngày hay đêm. 
		Và chỉ cần cắm tai nghe nếu bạn muốn được yên tĩnh tuyệt đối để tập trung hoàn toàn vào màn biểu diễn.', 8, CAST(N'2022-05-05T13:19:40.910' AS DateTime), CAST(N'2022-05-05T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (17, N'KÈN HARMONICA SUZUKI WINNER 24', 180000.0000, 1.0000, N'Ken2.jpg', 4, N'Âm thanh tốt, sáng
		Giá thành dễ chịu 
		Thiết kế chắc chắn
		Plate đồng bạc chống chịu được oxi hoá, độ bền cao
		Model sử dụng rất phổ biến', 8, CAST(N'2022-05-05T13:19:40.910' AS DateTime), CAST(N'2022-05-05T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (18, N'KÈN HARMONICA QIMEI Q28', 250000.0000, 1.0000, N'Ken3.jpg', 4, N'Âm thanh tốt, sáng
		Giá thành dễ chịu 
		Thiết kế chắc chắn', 8, CAST(N'2022-05-05T13:19:40.910' AS DateTime), CAST(N'2022-05-05T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (19, N'KÈN PIANICA - MELODION YAMAHA P-37E', 5000000.0000, 3.0000, N'Ken4.jpg', 4, N'Đặc điểm nổi bật nhất của cây kèn Pianica P-37E là âm sắc của nó. 
		Hơi thổi của người chơi được chuyển đổi dễ dàng và hiệu quả thành âm thanh du dương, cân bằng tuyệt đẹp từ nốt thấp nhất đến nốt cao nhất', 8, CAST(N'2022-05-05T13:19:40.910' AS DateTime), CAST(N'2022-05-05T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (20, N'KÈN MELODION SUZUKI MX-37D', 800000.0000, 2.0000, N'Ken5.jpg', 4, N'Dễ chơi, dễ học, bắt tai, bắt mic
		Hình ảnh, video do ekip Tiến Đạt tự quay, tự chụp', 8, CAST(N'2022-05-05T13:19:40.910' AS DateTime), CAST(N'2022-05-05T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (21, N'TRỐNG CAJON NISSI CJPST - 690', 1150000.0000, 2.0000, N'cajon1.jpg', 5, N'Dễ chơi, dễ học, bắt tai, bắt mic
		Hình ảnh, video do ekip Tiến Đạt tự quay, tự chụp', 9, CAST(N'2022-05-04T13:19:40.910' AS DateTime), CAST(N'2022-05-04T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (22, N'TRỐNG CAJON KIERA HCN-01', 900000.0000, 1.0000, N'cajon2.jpg', 5, N'Nissi là hãng trống có xu hướng hiện đại & luôn có chất lượng tốt. 
		CaJon Kiera HCN-01 độ bền cao, dùng để biểu diễn độc tấu, đệm đàn ghita trong biểu diễn, quán cafe, buổi tiệc ngài trời, đường phố...', 9, CAST(N'2022-05-04T13:19:40.910' AS DateTime), CAST(N'2022-05-04T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (23, N'TRỐNG CAJON NISSI CJSBS-X212', 1950000.0000, 2.0000, N'cajon3.jpg', 5, N'Kiểu dáng: Mặt trước nghiêng, tạo tư thế chơi thoải mái hơn.
		Lỗ thoát âm phía trước, cho âm vang đi xa hơn.
		Kết cấu: các góc cạnh trong thùng, được tạo các mặt đẩy âm. Cho âm thanh thoát ra hết công suất, nên âm rất lực cho phiên bản này.', 9, CAST(N'2022-05-04T13:19:40.910' AS DateTime), CAST(N'2022-05-04T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (24, N'BỘ TRỐNG JAZZ YAMAHA RDP2F5', 9890000.0000, 5.0000, N'cajon4.jpg', 5, N'Âm thanh chuẩn: snare nhạy đanh, âm Bass trầm ấm và rất uy lực.', 9, CAST(N'2022-05-04T13:19:40.910' AS DateTime), CAST(N'2022-05-04T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (25, N'TRỐNG CAJON NISSI TRAVEL BOX', 510000.0000, 1.0000, N'cajon5.jpg', 5, N'Nissi Travel Cajon, dòng nhỏ gọn có thể bỏ balo túi xách.
		Đem đi du lịch, tiện và gọn.
		Âm vang lớn, sinh hoạt trong nhà, trên xe và ngoài trời đều tốt.
		Chất liệu gỗ Plywood tiêu chuẩn, chịu được nước.
		Gỗ xốp và vang.', 9, CAST(N'2022-05-04T13:19:40.910' AS DateTime), CAST(N'2022-05-04T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (26, N'SÁO TIÊU RECORDER YAMAHA YRS-402B', 680000.0000, 1.0000, N'sao1.jpg', 6, N'Sáo Recorder Yamaha YRS-402 thuộc dòng 400 của Yamaha sử dụng vật liệu cải tiến từ thực vật để tạo ra các nhạc cụ thân thiện với môi trường,
		âm sắc phong phú hơn, mang đến giai điệu êm dịu, âm thanh tự nhiên như sáo gỗ.', 6, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (27, N'SÁO TIÊU YAMAHA YRA-27', 430000.0000, 1.0000, N'sao2.jpg', 6, N'YRA-27 của Yamaha được thiết kế để đem đến một khởi đầu hoàn hảo cho việc giáo dục âm nhạc cho mọi lứa tuổi. 
		Các sản phẩm này có một sức cản không khí lý tưởng giúp điều khiển hơi thổi dễ dàng, 
		và có âm điệu chính xác mà bạn nghĩ chỉ có trên các mẫu sản phẩm cao cấp hơn.', 6, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (28, N'SÁO TIÊU RECORDER YAMAHA YRS-20', 210000.0000, 1.0000, N'sao3.jpg', 6, N'Recorder Yamaha YRS-20 là một loại sáo dọc, dễ chơi, ít tốn hơi hơn các loại sáo trúc, tiêu v..v.. 
		YRS-20 được đưa vào chương trình giáo dục âm nhạc ở trường tiểu học, trung học nước ngoài, điển hình là Nhật.', 6, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (29, N'SÁO TIÊU YAMAHA YRS - 24B', 150000.0000, 1.0000, N'sao4.jpg', 6, N'Thân sáo có thể tháo lắp dễ dàng vệ sinh
		Âm sắc hay và độc đáo, có thể chơi độc tấu hoặc hòa tấu
		Thiết kế đẹp, độ bền cao
		An toàn khi sử dụng cho trẻ nhỏ và người lớn', 6, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (30, N'SÁO TIÊU YAMAHA DÒNG ALTO YRA-28', 200000.0000, 2.0000, N'sao5.jpg', 6, N'Sáo nhựa Recorder có độ bền cao và dễ vệ sinh mà vẫn mang lại âm thanh tự nhiên như sáo gỗ. 
		Nhiều trường học trên khắp thế giới sử dụng sáo recorder Yamaha nhờ âm điệu chính xác, dễ chơi và âm thanh biểu cảm phong phú.', 6, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (31, N'TRỐNG NHỎ', 500000.0000, 2.0000, N'trong1.jpg', 7, N'Gồm trống và dùi gõ . Trống có: Đường kính 180mm, chiều cao 50mm.', 7, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (32, N'TRỐNG LỤC LẠC 260MM (TAMBOURINE )', 100000.0000, 1.0000, N'trong2.jpg', 7, N'Theo mẫu của nhạc cụ thông dụng. Đường kính 260mm', 7, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (33, N'TRỐNG LỤC LẠC TAMBOURINE ALICE', 320000.0000, 2.0000, N'trong3.jpg', 7, N'Phân loại: Tambourine Tròn
		Đường kính: 26cm
		Chất liệu: Nhựa xi inox cao cấp 
		Viền: Inox chống rỉ hoặc gỗ tự nhiên', 7, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
INSERT [dbo].[San_Pham] ([id], [ten], [gia], [giam_gia], [hinh_chinh], [loai_id], [mo_ta], [nha_san_xuat_id], [ngay_tao], [ngay_sua], [da_xoa]) VALUES (34, N'TRỐNG LỤC LẠC DÁNG KHUYẾT TAMBOURINE ALICE', 230000.0000, 1.0000, N'trong4.jpg', 7, N'Vành trống được làm từ chất liệu nhựa xi inox cao cấp; đem đến cho trống chất lượng âm thanh tuyệt vời nhất. 
		Sản phẩm được đựng trong hộp đựng chắc chắn; bảo vệ trống khỏi các va đập.', 7, CAST(N'2022-05-03T13:19:40.910' AS DateTime), CAST(N'2022-05-03T13:19:40.910' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[San_Pham] OFF
GO
SET IDENTITY_INSERT [dbo].[Tai_Khoan] ON 

INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (4, N'user1', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'user1@gmail.com', N'0123456789', N'2000-01-01', N'1', 1, N'USER', N'tun')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (5, N'user2', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'user2@gmail.com', N'0123456789', N'2000-01-01', N'1', 0, N'USER', N'Lucifer')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (7, N'user3', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'user3@gmail.com', N'0123456789', N'2000-01-01', N'0', 0, N'USER', N'yop')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (8, N'admin1', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'admin1@gmail.com', N'0123456789', N'2000-01-01', N'1', 0, N'ADMIN', N'yohan')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (9, N'admin2', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'admin2@gmail.com', N'0123456789', N'2000-01-01', N'0', 0, N'ADMIN', N'anna')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (10, N'admin3', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'admin3@gmail.com', N'0123456789', N'2000-01-01', N'0', 1, N'ADMIN', N'tom')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (11, N'user4', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2015-03-01T00:00:00.000' AS DateTime), N'user4@gmail.com', N'0123456789', N'1997-01-01', N'0', 0, N'USER', N'trang')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (12, N'user5', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2016-03-01T00:00:00.000' AS DateTime), N'user5@gmail.com', N'0123456789', N'2000-01-01', N'1', 0, N'USER', N'ti')
INSERT [dbo].[Tai_Khoan] ([id], [ten_tai_khoan], [mat_khau], [ngay_tao], [email], [so_dien_thoai], [ngay_sinh], [gioi_tinh], [da_xoa], [role], [ho_ten]) VALUES (13, N'user6', N'$2a$10$O94y1bD86g7tfxSpdlXQO.TuzhKMyEYhAtNqppOJgDhpzjmL74W6a', CAST(N'2017-03-01T00:00:00.000' AS DateTime), N'user6@gmail.com', N'0123456789', N'2000-01-01', N'1', 0, N'USER', N'teo')
SET IDENTITY_INSERT [dbo].[Tai_Khoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_ten_tai_khoan]    Script Date: 5/12/2022 5:17:57 PM ******/
ALTER TABLE [dbo].[Tai_Khoan] ADD  CONSTRAINT [unique_ten_tai_khoan] UNIQUE NONCLUSTERED 
(
	[ten_tai_khoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Chi_Tiet_Hoa_Don_Hoa_Don] FOREIGN KEY([hoa_don_id])
REFERENCES [dbo].[Hoa_Don] ([id])
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_Chi_Tiet_Hoa_Don_Hoa_Don]
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Chi_Tiet_Hoa_Don_San_Pham] FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[San_Pham] ([id])
GO
ALTER TABLE [dbo].[Chi_Tiet_Hoa_Don] CHECK CONSTRAINT [FK_Chi_Tiet_Hoa_Don_San_Pham]
GO
ALTER TABLE [dbo].[Danh_Gia]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Gia_San_Pham] FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[San_Pham] ([id])
GO
ALTER TABLE [dbo].[Danh_Gia] CHECK CONSTRAINT [FK_Danh_Gia_San_Pham]
GO
ALTER TABLE [dbo].[Danh_Gia]  WITH CHECK ADD  CONSTRAINT [FK_Danh_Gia_Tai_Khoan] FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[Tai_Khoan] ([id])
GO
ALTER TABLE [dbo].[Danh_Gia] CHECK CONSTRAINT [FK_Danh_Gia_Tai_Khoan]
GO
ALTER TABLE [dbo].[Hinh_Phu]  WITH CHECK ADD  CONSTRAINT [FK_Hinh_Phu_San_Pham] FOREIGN KEY([san_pham_id])
REFERENCES [dbo].[San_Pham] ([id])
GO
ALTER TABLE [dbo].[Hinh_Phu] CHECK CONSTRAINT [FK_Hinh_Phu_San_Pham]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_Don_Don_Vi_Van_Chuyen] FOREIGN KEY([don_vi_van_chuyen_id])
REFERENCES [dbo].[Don_Vi_Van_Chuyen] ([id])
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_Hoa_Don_Don_Vi_Van_Chuyen]
GO
ALTER TABLE [dbo].[Hoa_Don]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_Don_Tai_Khoan] FOREIGN KEY([tai_khoan_id])
REFERENCES [dbo].[Tai_Khoan] ([id])
GO
ALTER TABLE [dbo].[Hoa_Don] CHECK CONSTRAINT [FK_Hoa_Don_Tai_Khoan]
GO
ALTER TABLE [dbo].[San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_San_Pham_Loai] FOREIGN KEY([loai_id])
REFERENCES [dbo].[Loai] ([id])
GO
ALTER TABLE [dbo].[San_Pham] CHECK CONSTRAINT [FK_San_Pham_Loai]
GO
ALTER TABLE [dbo].[San_Pham]  WITH CHECK ADD  CONSTRAINT [FK_San_Pham_Nha_San_Xuat] FOREIGN KEY([nha_san_xuat_id])
REFERENCES [dbo].[Nha_San_Xuat] ([id])
GO
ALTER TABLE [dbo].[San_Pham] CHECK CONSTRAINT [FK_San_Pham_Nha_San_Xuat]
GO
USE [master]
GO
ALTER DATABASE [web_nhac_cu] SET  READ_WRITE 
GO
