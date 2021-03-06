USE [master]
GO
/****** Object:  Database [QuanLyKhoHang]    Script Date: 5/6/2020 4:16:07 PM ******/
CREATE DATABASE [QuanLyKhoHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyKhoHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyKhoHang.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyKhoHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyKhoHang_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyKhoHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKhoHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKhoHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyKhoHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKhoHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyKhoHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyKhoHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyKhoHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyKhoHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyKhoHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyKhoHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyKhoHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyKhoHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyKhoHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyKhoHang]
GO
/****** Object:  Table [dbo].[account]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[account](
	[username] [char](15) NOT NULL,
	[password] [char](15) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[chi_tiet_phieu_nhap]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_nhap](
	[phieu_nhap_id] [int] NULL,
	[mat_hang_id] [int] NULL,
	[so_luong] [int] NULL,
	[don_gia] [int] NULL,
	[don_vi] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chi_tiet_phieu_xuat]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chi_tiet_phieu_xuat](
	[phieu_xuat_id] [int] NULL,
	[mat_hang_id] [int] NULL,
	[so_luong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[loai_hang]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loai_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mat_hang]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mat_hang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[loai_hang_id] [int] NULL,
	[remain] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nha_cung_cap]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nha_cung_cap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[sdt] [varchar](50) NULL,
	[phuong] [nvarchar](50) NULL,
	[quan] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nhan_vien]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nhan_vien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](100) NULL,
	[tuoi] [int] NULL,
	[sex] [bit] NULL,
	[dia_chi] [nvarchar](50) NULL,
	[luong] [int] NULL,
	[sdt] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[phieu_nhap]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_nhap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ncc_id] [int] NULL,
	[ngay_nhap] [date] NULL,
	[nhan_vien_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phieu_xuat]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieu_xuat](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quay_id] [int] NULL,
	[ngay_xuat] [date] NULL,
	[nhan_vien_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[quay]    Script Date: 5/6/2020 4:16:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quay](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](50) NULL,
	[nhan_vien_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 7, 20, 100, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 12, 35, 230, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 8, 30, 270, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 3, 10, 380, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 10, 18, 390, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 1, 15, 870, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 6, 26, 350, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 5, 21, 120, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 15, 25, 420, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 16, 25, 130, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 17, 20, 220, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 4, 12, 3000, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 9, 15, 100, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 11, 18, 2000, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 2, 25, 50, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 13, 24, 600, NULL)
INSERT [dbo].[chi_tiet_phieu_nhap] ([phieu_nhap_id], [mat_hang_id], [so_luong], [don_gia], [don_vi]) VALUES (NULL, 14, 30, 1000, NULL)
INSERT [dbo].[chi_tiet_phieu_xuat] ([phieu_xuat_id], [mat_hang_id], [so_luong]) VALUES (1, 2, 13)
INSERT [dbo].[chi_tiet_phieu_xuat] ([phieu_xuat_id], [mat_hang_id], [so_luong]) VALUES (3, 3, 25)
INSERT [dbo].[chi_tiet_phieu_xuat] ([phieu_xuat_id], [mat_hang_id], [so_luong]) VALUES (5, 4, 3)
INSERT [dbo].[chi_tiet_phieu_xuat] ([phieu_xuat_id], [mat_hang_id], [so_luong]) VALUES (2, 5, 32)
INSERT [dbo].[chi_tiet_phieu_xuat] ([phieu_xuat_id], [mat_hang_id], [so_luong]) VALUES (4, 1, 18)
SET IDENTITY_INSERT [dbo].[loai_hang] ON 

INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (1, N'Đồ Công nghệ')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (2, N'Thực Phẩm')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (3, N'Sách')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (4, N'Đồ chơi')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (5, N'Quần Áo')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (6, N'Đồ Công nghệ')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (7, N'Thực Phẩm')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (8, N'Sách')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (9, N'Đồ chơi')
INSERT [dbo].[loai_hang] ([id], [ten]) VALUES (10, N'Quần Áo')
SET IDENTITY_INSERT [dbo].[loai_hang] OFF
SET IDENTITY_INSERT [dbo].[mat_hang] ON 

INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (1, N'Sữa Chua', 2, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (2, N'Cam', 2, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (3, N'Laptop Asus', 1, 20)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (4, N'Sách Vật Lý', 4, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (5, N'Sách God Father', 4, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (6, N'Sách dạy nấu ăn', 3, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (7, N'Bánh mì kinh đô', 2, 45)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (8, N'Điện thoại bàn', 1, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (9, N'Tivi A14', 1, 25)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (10, N'LapTop Dell', 1, 120)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (11, N'SamSung Galaxy S7', 1, 50)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (12, N'bánh chocopie', 2, 80)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (13, N'cơm đóng hộp', 2, 75)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (14, N'trà gói', 2, 100)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (15, N'Sách luật im lặng', 3, 120)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (16, N'Sách Hóa Học', 3, 90)
INSERT [dbo].[mat_hang] ([id], [ten], [loai_hang_id], [remain]) VALUES (17, N'Sách Tiếng Anh', 3, 75)
SET IDENTITY_INSERT [dbo].[mat_hang] OFF
SET IDENTITY_INSERT [dbo].[nha_cung_cap] ON 

INSERT [dbo].[nha_cung_cap] ([id], [ten], [sdt], [phuong], [quan], [city]) VALUES (1, N'Clean Food', N'0293213213', N'Quang Lý', N'Lê Minh', N'Hồ Chí Minh')
INSERT [dbo].[nha_cung_cap] ([id], [ten], [sdt], [phuong], [quan], [city]) VALUES (2, N'Microsoftial', N'02394711834', N'Thiên Đại', N'Quang Thắng', N'Vũng Tàu')
INSERT [dbo].[nha_cung_cap] ([id], [ten], [sdt], [phuong], [quan], [city]) VALUES (3, N'BookStore Y&G', N'0394829134', N'Hoa Đà', N'Linh Đồng', N'Cần Thơ')
INSERT [dbo].[nha_cung_cap] ([id], [ten], [sdt], [phuong], [quan], [city]) VALUES (4, N'Clean Food', N'0293213213', N'Quang Lý', N'Lê Minh', N'Hồ Chí Minh')
INSERT [dbo].[nha_cung_cap] ([id], [ten], [sdt], [phuong], [quan], [city]) VALUES (5, N'Microsoftial', N'02394711834', N'Thiên Đại', N'Quang Thắng', N'Vũng Tàu')
INSERT [dbo].[nha_cung_cap] ([id], [ten], [sdt], [phuong], [quan], [city]) VALUES (6, N'BookStore Y&G', N'0394829134', N'Hoa Đà', N'Linh Đồng', N'Cần Thơ')
SET IDENTITY_INSERT [dbo].[nha_cung_cap] OFF
SET IDENTITY_INSERT [dbo].[nhan_vien] ON 

INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (1, N'Lê Minh Quang', 20, 1, N'Thanh Hóa', 2300, N'0532908161')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (2, N'Nguyễn Vinh Anh', 21, 1, N'Vũng Tàu', 4000, N'032765354')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (3, N'Nguyễn Văn Linh', 19, 1, N'Hà Nội', 1000, N'0653908162')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (4, N'Trần Hoàng Giang', 19, 1, N'Ninh Bình', 1000, N'0543908163')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (5, N'Tào Đức Việt', 23, 1, N'Vinh', 5000, N'0123908164')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (6, N'Lê Minh Quang', 20, 1, N'Thanh Hóa', 2300, N'0532908161')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (7, N'Nguyễn Vinh Anh', 21, 1, N'Vũng Tàu', 4000, N'032765354')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (8, N'Nguyễn Văn Linh', 19, 1, N'Hà Nội', 1000, N'0653908162')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (9, N'Trần Hoàng Giang', 19, 1, N'Ninh Bình', 1000, N'0543908163')
INSERT [dbo].[nhan_vien] ([id], [ten], [tuoi], [sex], [dia_chi], [luong], [sdt]) VALUES (10, N'Tào Đức Việt', 23, 1, N'Vinh', 5000, N'0123908164')
SET IDENTITY_INSERT [dbo].[nhan_vien] OFF
SET IDENTITY_INSERT [dbo].[phieu_nhap] ON 

INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (1, 1, CAST(N'2019-01-10' AS Date), 1)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (2, 2, CAST(N'2019-05-13' AS Date), 2)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (3, 2, CAST(N'2019-05-25' AS Date), 2)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (4, 1, CAST(N'2019-06-02' AS Date), 1)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (5, 3, CAST(N'2019-06-03' AS Date), 5)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (6, 3, CAST(N'2019-08-01' AS Date), 4)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (7, 3, CAST(N'2019-08-09' AS Date), 4)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (8, 2, CAST(N'2019-08-10' AS Date), 3)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (9, 1, CAST(N'2019-12-07' AS Date), 1)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (10, 1, CAST(N'2019-01-10' AS Date), 1)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (11, 2, CAST(N'2019-05-13' AS Date), 2)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (12, 2, CAST(N'2019-05-25' AS Date), 2)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (13, 1, CAST(N'2019-06-02' AS Date), 1)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (14, 3, CAST(N'2019-06-03' AS Date), 5)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (15, 3, CAST(N'2019-08-01' AS Date), 4)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (16, 3, CAST(N'2019-08-09' AS Date), 4)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (17, 2, CAST(N'2019-08-10' AS Date), 3)
INSERT [dbo].[phieu_nhap] ([id], [ncc_id], [ngay_nhap], [nhan_vien_id]) VALUES (18, 1, CAST(N'2019-12-07' AS Date), 1)
SET IDENTITY_INSERT [dbo].[phieu_nhap] OFF
SET IDENTITY_INSERT [dbo].[phieu_xuat] ON 

INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (1, 2, CAST(N'2016-11-10' AS Date), 2)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (2, 3, CAST(N'2016-11-11' AS Date), 3)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (3, 4, CAST(N'2016-11-12' AS Date), 1)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (4, 5, CAST(N'2016-11-13' AS Date), 5)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (5, 1, CAST(N'2016-11-14' AS Date), 4)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (6, 2, CAST(N'2016-11-10' AS Date), 2)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (7, 3, CAST(N'2016-11-11' AS Date), 3)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (8, 4, CAST(N'2016-11-12' AS Date), 1)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (9, 5, CAST(N'2016-11-13' AS Date), 5)
INSERT [dbo].[phieu_xuat] ([id], [quay_id], [ngay_xuat], [nhan_vien_id]) VALUES (10, 1, CAST(N'2016-11-14' AS Date), 4)
SET IDENTITY_INSERT [dbo].[phieu_xuat] OFF
SET IDENTITY_INSERT [dbo].[quay] ON 

INSERT [dbo].[quay] ([id], [ten], [nhan_vien_id]) VALUES (1, N'Quầy 103', 1)
INSERT [dbo].[quay] ([id], [ten], [nhan_vien_id]) VALUES (2, N'Quầy 104', 2)
INSERT [dbo].[quay] ([id], [ten], [nhan_vien_id]) VALUES (3, N'Quầy 105', 3)
INSERT [dbo].[quay] ([id], [ten], [nhan_vien_id]) VALUES (4, N'Quầy 106', 4)
INSERT [dbo].[quay] ([id], [ten], [nhan_vien_id]) VALUES (5, N'Quầy 107', 5)
SET IDENTITY_INSERT [dbo].[quay] OFF
ALTER TABLE [dbo].[chi_tiet_phieu_nhap]  WITH CHECK ADD FOREIGN KEY([mat_hang_id])
REFERENCES [dbo].[mat_hang] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_nhap]  WITH CHECK ADD FOREIGN KEY([phieu_nhap_id])
REFERENCES [dbo].[phieu_nhap] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_xuat]  WITH CHECK ADD FOREIGN KEY([mat_hang_id])
REFERENCES [dbo].[mat_hang] ([id])
GO
ALTER TABLE [dbo].[chi_tiet_phieu_xuat]  WITH CHECK ADD FOREIGN KEY([phieu_xuat_id])
REFERENCES [dbo].[phieu_xuat] ([id])
GO
ALTER TABLE [dbo].[mat_hang]  WITH CHECK ADD FOREIGN KEY([loai_hang_id])
REFERENCES [dbo].[loai_hang] ([id])
GO
ALTER TABLE [dbo].[phieu_nhap]  WITH CHECK ADD FOREIGN KEY([ncc_id])
REFERENCES [dbo].[nha_cung_cap] ([id])
GO
ALTER TABLE [dbo].[phieu_nhap]  WITH CHECK ADD FOREIGN KEY([nhan_vien_id])
REFERENCES [dbo].[nhan_vien] ([id])
GO
ALTER TABLE [dbo].[phieu_xuat]  WITH CHECK ADD FOREIGN KEY([nhan_vien_id])
REFERENCES [dbo].[nhan_vien] ([id])
GO
ALTER TABLE [dbo].[phieu_xuat]  WITH CHECK ADD FOREIGN KEY([quay_id])
REFERENCES [dbo].[quay] ([id])
GO
ALTER TABLE [dbo].[quay]  WITH CHECK ADD FOREIGN KEY([nhan_vien_id])
REFERENCES [dbo].[nhan_vien] ([id])
GO
USE [master]
GO
ALTER DATABASE [QuanLyKhoHang] SET  READ_WRITE 
GO
