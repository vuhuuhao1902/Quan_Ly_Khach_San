USE [master]
GO
/****** Object:  Database [QuanLyKhachSan]    Script Date: 5/25/2024 6:01:20 PM ******/
CREATE DATABASE [QuanLyKhachSan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyKhachSan', FILENAME = N'D:\SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLKS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyKhachSan', FILENAME = N'D:\SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLKS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QuanLyKhachSan] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyKhachSan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyKhachSan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyKhachSan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyKhachSan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyKhachSan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyKhachSan] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyKhachSan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyKhachSan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyKhachSan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyKhachSan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyKhachSan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyKhachSan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLyKhachSan] SET QUERY_STORE = ON
GO
ALTER DATABASE [QuanLyKhachSan] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QuanLyKhachSan]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiemSachSe] [int] NULL,
	[DiemThoaiMai] [int] NULL,
	[DiemNhanVien] [int] NULL,
	[DiemCoSo] [int] NULL,
	[HoTen] [nvarchar](255) NULL,
	[Email] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[IdTaiKhoan] [int] NULL,
	[IdKhachSan] [int] NULL,
 CONSTRAINT [PK_DanhGia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPhong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPhong] [int] NULL,
	[IdTaiKhoan] [int] NULL,
	[BatDau] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[TongTien] [float] NULL,
	[ThanhToan] [nvarchar](100) NULL,
	[Status] [bit] NULL,
	[IdTrangThai] [int] NULL,
	[NgayDat] [datetime] NULL,
	[HoVaTen] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[TinhTrangKH] [nvarchar](255) NULL,
	[MaBuuDien] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_DatPhong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrlHinhAnh] [nvarchar](255) NULL,
	[IdPhong] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTinhThanh] [int] NULL,
	[TenKhachSan] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[GioiThieu] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[AnhDaiDien] [nvarchar](255) NULL,
	[IsDelete] [bit] NULL,
	[SoSao] [int] NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachSan_TienNghi]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan_TienNghi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdKhachSan] [int] NULL,
	[IdTienNghi] [int] NULL,
 CONSTRAINT [PK_KhachSan_TienNghi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdQuyen] [int] NULL,
	[IdTaiKhoan] [int] NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](255) NULL,
	[GiaPhong] [float] NULL,
	[IdKhachSan] [int] NULL,
	[AnhDaiDien] [nvarchar](255) NULL,
	[IsDelete] [bit] NULL,
	[MoTa] [nvarchar](max) NULL,
	[SoNguoi] [int] NULL,
	[KichThuocPhong] [float] NULL,
	[SoGiuong] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong_TienNghi]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong_TienNghi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPhong] [int] NULL,
	[IdTienNghi] [int] NULL,
 CONSTRAINT [PK_Phong_TienNghi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](100) NULL,
	[MatKhau] [varchar](255) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[TrangThai] [bit] NULL,
	[Anh] [nvarchar](255) NULL,
	[HoTen] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsDelete] [bit] NULL,
	[DiaChi] [varchar](255) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[Facebook] [nvarchar](255) NULL,
	[Twitter] [nvarchar](255) NULL,
	[Instagram] [nvarchar](255) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TienNghi]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TienNghi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTienNghi] [nvarchar](255) NULL,
	[IconTienNghi] [nvarchar](255) NULL,
 CONSTRAINT [PK_TienNghi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnhDaiDien] [nvarchar](255) NULL,
	[TenTinh] [nvarchar](255) NULL,
	[GhiChu] [nvarchar](255) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDon]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDon](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](255) NULL,
 CONSTRAINT [PK_TrangThaiDon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (1, 5, 1, 5, 3, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'hihiih', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (2, 4, 5, 3, 4, N'Khanhne', N'phuc@example.com', N'Đáng để trở lại !! ', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (3, 5, 5, 5, 5, N'Vũ Hào', N'acb@gmail.com', N'Tuyệt vời ông mặt trời !!!!', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (4, 5, 1, 5, 0, N'Khanhne', N'admin@gmail.com', N'Tệ', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (5, 4, 0, 0, 3, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'Quá chán', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (6, 3, 1, 5, 4, N'Khanhne', N'vukhanh928@gmail.com', N'Tạm', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (7, 5, 1, 5, 5, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'tốt', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (8, 5, 5, 5, 5, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'tốt', 1, 4)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (9, 5, 5, 5, 5, N'bí mật', N'admin@gmail.com', N'Tuyệt vời', 1, 13)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (10, 5, 3, 5, 5, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'Tốt', 12, 15)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (11, 5, 5, 5, 5, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'Tuyệt vời luôn', 12, 15)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (12, 5, 3, 5, 5, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'tốt', 16, 11)
INSERT [dbo].[DanhGia] ([Id], [DiemSachSe], [DiemThoaiMai], [DiemNhanVien], [DiemCoSo], [HoTen], [Email], [NoiDung], [IdTaiKhoan], [IdKhachSan]) VALUES (13, 0, 1, 1, 2, N'Vũ Duy Khánh', N'proghe712@gmail.com', N'tệ', 16, 11)
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[DatPhong] ON 

INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (1, 3, 1, CAST(N'2024-04-12T00:00:00.000' AS DateTime), CAST(N'2024-04-16T00:00:00.000' AS DateTime), 500000, N'Thanh toán VnPay', 0, 1, CAST(N'2023-01-12T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (2, 2, 1, CAST(N'2024-04-15T00:00:00.000' AS DateTime), CAST(N'2024-04-19T00:00:00.000' AS DateTime), 600000, N'Thanh toán VnPay', 0, 3, CAST(N'2024-04-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (3, 1, 1, CAST(N'2024-04-27T00:00:00.000' AS DateTime), CAST(N'2024-04-30T00:00:00.000' AS DateTime), 300000, N'Thanh toán VnPay', 0, 3, CAST(N'2024-04-27T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (4, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-03-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (5, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-02-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (6, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 2, CAST(N'2024-05-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (7, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-06-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (8, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-07-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (9, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-08-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (10, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-03T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-09-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (11, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-01T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-10-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (14, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-01T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 2, CAST(N'2024-11-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (15, 11, 4, CAST(N'2024-04-01T00:00:00.000' AS DateTime), CAST(N'2024-04-01T00:00:00.000' AS DateTime), 8834000, N'Thanh toán VnPay', 0, 2, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (16, 9, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), 43794000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (17, 9, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), 43794000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (18, 9, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), 43794000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (19, 9, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), 43794000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (20, 9, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), 43794000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-12-15T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (21, 15, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-03T00:00:00.000' AS DateTime), 3906000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-05-11T13:26:18.360' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (22, 16, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-02T00:00:00.000' AS DateTime), 2613000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-05-11T13:27:48.763' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (23, 17, 12, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-03T00:00:00.000' AS DateTime), 5438000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-05-11T13:30:19.207' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (24, 7, 16, CAST(N'2024-06-06T00:00:00.000' AS DateTime), CAST(N'2024-06-08T00:00:00.000' AS DateTime), 19578000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-05-12T08:53:40.200' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (25, 14, 20, CAST(N'2024-06-01T00:00:00.000' AS DateTime), CAST(N'2024-06-04T00:00:00.000' AS DateTime), 6630000, N'Thanh toán VnPay', 0, 2, CAST(N'2024-05-19T11:33:58.950' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (26, 14, 12, CAST(N'2024-05-23T00:00:00.000' AS DateTime), CAST(N'2024-05-25T00:00:00.000' AS DateTime), 4420000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-05-19T14:21:41.287' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (27, 11, 12, CAST(N'2024-05-24T00:00:00.000' AS DateTime), CAST(N'2024-05-25T00:00:00.000' AS DateTime), 4417000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-05-19T14:23:36.553' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (28, 10, 12, CAST(N'2024-05-29T00:00:00.000' AS DateTime), CAST(N'2024-05-30T00:00:00.000' AS DateTime), 3495000, N'Thanh toán VnPay', 0, 1, CAST(N'2024-05-19T14:33:03.433' AS DateTime), N'Nguyễn Quỳnh', N'proghe712@gmail.com', N'0379678451', N'Cầu Giấy Hà Nội', N'Độc Thân', N'100000', N'')
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (29, 7, 12, CAST(N'2024-06-12T00:00:00.000' AS DateTime), CAST(N'2024-06-15T00:00:00.000' AS DateTime), 29367000, N'Thanh toán VnPay', 0, 4, CAST(N'2024-05-22T22:01:28.697' AS DateTime), N'Nguyễn Quỳnh', N'proghe712@gmail.com', N'0379678451', N'Cầu Giấy Hà Nội', N'Độc Thân', N'100000', N'')
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (30, 8, 12, CAST(N'2024-06-11T00:00:00.000' AS DateTime), CAST(N'2024-06-14T00:00:00.000' AS DateTime), 44550000, N'Thanh toán VnPay', 0, 3, CAST(N'2024-05-23T21:57:16.910' AS DateTime), N'Vũ  Quỳnh', N'proghe712@gmail.com', N'0379678451', N'Cầu Giấy Hà Nội', N'Độc Thân', N'100000', N'')
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (31, 10, 12, CAST(N'2024-06-07T00:00:00.000' AS DateTime), CAST(N'2024-06-08T00:00:00.000' AS DateTime), 3844500, N'Thanh toán VnPay', 0, 1, CAST(N'2024-05-23T22:23:51.523' AS DateTime), N'Nguyễn Khánh', N'proghe712@gmail.com', N'0379678451', N'Cầu Giấy Hà Nội', N'Độc Thân', N'100000', N'')
INSERT [dbo].[DatPhong] ([Id], [IdPhong], [IdTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status], [IdTrangThai], [NgayDat], [HoVaTen], [Email], [SoDienThoai], [DiaChi], [TinhTrangKH], [MaBuuDien], [GhiChu]) VALUES (32, 7, 23, CAST(N'2024-05-26T00:00:00.000' AS DateTime), CAST(N'2024-05-28T00:00:00.000' AS DateTime), 21535800, N'Thanh toán VnPay', 0, 1, CAST(N'2024-05-24T21:42:39.500' AS DateTime), N'Vũ  Khánh', N'vukhanh928@gmail.com', N'0379678451', N'Cầu Giấy Hà Nội', N'Độc Thân', N'100000', N'')
SET IDENTITY_INSERT [dbo].[DatPhong] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (1, N'133560210275483331_bhotel2.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (2, N'133560210275492733_bhotel3.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (3, N'133581478724536992_laht2.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (4, N'133581478724541703_laht3.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (5, N'133581478724544794_laht4.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (6, N'133581478724551232_laht5.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (7, N'133581478724555109_laht6.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (8, N'133581478724560876_laht7.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (9, N'133581681516388083_laht11.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (10, N'133581681516396448_laht12.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (11, N'133581681516405005_laht13.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (12, N'133581681516410554_laht14.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (13, N'133581701203437189_smarana2.jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (14, N'133581701203441066_smarana3.jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (15, N'133581701203445164_smarana4.jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (16, N'133581701203451006_smarana5.jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (17, N'133581701765253562_smarana7.jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (18, N'133581701765266020_smarana8.jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (19, N'133581701765277545_smarana9.jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (20, N'133581701765286429_smarana10.jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (21, N'133581701765295127_smarana11.jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (22, N'133581702330147993_smarana13.jpg', 9, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (23, N'133581702330153799_smarana14.jpg', 9, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (24, N'133581702330159891_smarana15.jpg', 9, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (25, N'133581702330175607_smarana16.jpg', 9, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (26, N'133581704198035024_ja-cosmo2.jpg', 10, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (27, N'133581704198048181_ja-cosmo3.jpg', 10, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (28, N'133581704198054166_ja-cosmo6.jpg', 10, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (29, N'133581704831280483_ja-cosmo5.jpg', 11, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (30, N'133581704831290294_ja-cosmo7.jpg', 11, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (31, N'133581704831295429_ja-cosmo9.jpg', 11, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (32, N'133581789697078626_camellia2.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (33, N'133581789697085284_camellia3.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (34, N'133581789697092163_camellia4.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (35, N'133581789697097221_camellia5.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (36, N'133581789697102579_camellia6.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (37, N'133581789697107763_camellia7.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (38, N'133581789697112775_camellia8.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (39, N'133581789697117416_camellia9.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (40, N'133581789697121224_camellia10.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (41, N'133581789697124915_camellia11.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (42, N'133581789697128443_camellia12.jpg', 12, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (43, N'133581790918198724_hanoi-calista2.jpg', 13, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (44, N'133581790918204942_hanoi-calista3.jpg', 13, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (45, N'133581790918210996_hanoi-calista5.jpg', 13, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (46, N'133581790918216266_hanoi-calista6.jpg', 13, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (47, N'133581790918220671_hanoi-calista7.jpg', 13, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (48, N'133581791540334471_hanoi-calista8.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (49, N'133581791540347186_hanoi-calista9.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (50, N'133581791540353624_hanoi-calista10.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (51, N'133581791540362066_hanoi-calista11.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (52, N'133581791540367323_hanoi-calista12.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (53, N'133581791540372722_hanoi-calista13.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (54, N'133581791540379560_hanoi-calista14.jpg', 14, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (55, N'133581792718183496_hanoi-prime2.jpg', 15, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (56, N'133581792718195514_hanoi-prime3.jpg', 15, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (57, N'133581792718203035_hanoi-prime4.jpg', 15, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (58, N'133581792718209826_hanoi-prime5.jpg', 15, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (59, N'133581793208747633_hanoi-prime7.jpg', 16, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (60, N'133581793208752029_hanoi-prime8.jpg', 16, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (61, N'133581793208759470_hanoi-prime9.jpg', 16, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (62, N'133581793803957878_hanoi-prime5.jpg', 17, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (63, N'133581793803960499_hanoi-prime8.jpg', 17, 0)
INSERT [dbo].[HinhAnh] ([Id], [UrlHinhAnh], [IdPhong], [IsDelete]) VALUES (64, N'133581793803962699_hanoi-prime9.jpg', 17, 0)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (1, 30, N'St. Joseph''s Cathedra Homestay- Ngo HuyenMở trong cửa sổ mới
', N'Trần Thái Tông', NULL, NULL, NULL, N'josephhanoi.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (2, 30, N'Golden Sun Hotel Hà Nội', N'Trần Thái Tông', NULL, NULL, NULL, N'goldansunhanoi.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (3, 30, N'WestLake Emerald Suites', N'Trần Thái Tông', NULL, NULL, NULL, N'westlake.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (4, 30, N'Tuấn Minh Hotel Hà Nội', N'Hà Nội', NULL, NULL, NULL, N'tuanminhotel.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (5, 30, N'Stay 24h', N'Trần Thái Tông', N'', NULL, NULL, N'133557368241701159_stay24h.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (6, 42, N'Le House Đà Lạt', N'Đà Lạt', N'', NULL, NULL, N'133557392280844157_LeHouseDaLat.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (7, 42, N'Raon Đà Lạt', N'Đà Lạt City VN', N'', NULL, NULL, N'133557438890452162_raondalat.jpg', 0, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (8, 42, N'Apart Hotel Đà Lạt', N'Đà Lạt City VN', N'', NULL, NULL, N'133557441130286409_aparthotel.jpg', 0, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (9, 10, N'test2', N'Ha Noi', N'', NULL, NULL, N'133581791922429588_hanoi-prime-garden.jpg', 1, 1)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (10, 7, N'Lá Homestay', N'Nhà số 12, đường số 04, Khu đô thị Tây Sông Hậu, phường Bình Khánh, thành phố Long Xuyên, tỉnh An Giang', N'Lá Homestay có phục vụ bữa sáng thực đơn à la carte hoặc kiểu Á.

Chỗ nghỉ này có sân chơi trẻ em và BBQ, ngoài ra khách có thể leo núi và đi xe đạp gần đó.', NULL, NULL, N'133581476770783832_angiang1.jpg', 0, 2)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (11, 30, N'Smarana Hanoi Heritage - Hotel and Retreats', N'Phường Dịch Vọng Hầu, Quận Cầu Giấy Số 5, Ngõ 82/1 Dịch Vọng Hậu, Cau Giay, Hà Nội', N'Tất cả các căn tại khách sạn được trang bị điều hòa, khu vực ghế ngồi, TV màn hình phẳng có truyền hình vệ tinh, két an toàn, phòng tắm riêng, vòi sen, đồ vệ sinh cá nhân miễn phí và máy sấy tóc. Tất cả các phòng đều có máy pha cà phê, trong đó một số phòng có ban công và một số khác thì nhìn ra thành phố.', NULL, NULL, N'133581700143463863_smarana.jpg', 0, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (12, 30, N'Ja Cosmo Hotel and Spa', N'23 Phố Lò Sũ, Quận Hoàn Kiếm, Hà Nội', N'Ja Cosmo Hotel and Spa cung cấp chỗ nghỉ 4 sao với bể sục và sân hiên phơi nắng.

Các điểm tham quan nổi tiếng gần khách sạn bao gồm Ô Quan Chưởng, Nhà hát Lớn Hà Nội và Nhà thờ Thánh Joseph. Sân bay gần nhất là Sân bay Quốc tế Nội Bài, cách Ja Cosmo Hotel and Spa 24 km.', NULL, NULL, N'133581703000212732_ja-cosmo-hotel.jpg', 0, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (13, 30, N'Camellia Residence Hanoi', N'95 Phố Triệu Việt Vương, Quận Hai Bà Trưng, Hà Nội', N'Mỗi căn được thiết kế gồm bếp đầy đủ tiện nghi với bàn ăn, TV màn hình phẳng có truyền hình vệ tinh, cùng phòng tắm riêng có vòi sen, đồ vệ sinh cá nhân miễn phí và máy sấy tóc. Tủ lạnh, lò vi sóng và minibar, cũng như ấm đun nước đều được cung cấp.', NULL, NULL, N'133581789099233849_camellia-residence-hanoi.jpg', 0, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (14, 30, N'Hanoi Calista Hotel', N'161-163 Hang Bong, Hoan Kiem, Quận Hoàn Kiếm, Hà Nội', N'Tất cả các phòng tại khách sạn được trang bị điều hòa, khu vực ghế ngồi, TV màn hình phẳng có truyền hình vệ tinh, két an toàn, phòng tắm riêng, vòi xịt/chậu rửa vệ sinh, đồ vệ sinh cá nhân miễn phí và máy sấy tóc. Mỗi phòng đều được thiết kế có ấm đun nước, trong đó một số phòng có ban công và một số khác thì nhìn ra thành phố. Tại Hanoi Calista Hotel, các phòng đều đi kèm với ga trải giường và khăn tắm.', NULL, NULL, N'133581790185308726_hanoi-calista-hotel.jpg', 0, 4)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (15, 30, N'Hanoi Prime Garden Hotel & Spa', N'36 Ngõ Hàng Hương, Quận Hoàn Kiếm, Hà Nội', N'Tất cả các phòng được trang bị tủ lạnh, minibar, ấm đun nước, vòi sen, máy sấy tóc và bàn làm việc. Với phòng tắm riêng được trang bị vòi xịt/chậu rửa vệ sinh và đồ vệ sinh cá nhân miễn phí, phòng khách tại khách sạn có TV màn hình phẳng và điều hòa, trong đó một số phòng có sân hiên. Tại Hanoi Prime Garden Hotel & Spa, phòng nào cũng có ga trải giường và khăn tắm.', NULL, NULL, N'133581791922429588_hanoi-prime-garden.jpg', 0, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (16, 30, N'testthoinhe', N'test', N'abc', NULL, NULL, N'133581791922429588_hanoi-prime-garden.jpg', 1, 1)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (17, 17, N'testabc', N'Ha Noi', N'', NULL, NULL, N'133599530554688821_cccdms.jpg', 1, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (18, 18, N'test', N'Ha Noi', N'anbababba', NULL, NULL, N'133599530554688821_cccdms.jpg', 1, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (19, 17, N'test2', N'Ha Noi', N'abc', NULL, NULL, N'133599530554688821_cccdms.jpg', 1, 3)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (33, 7, N'test', N'Ha Noi', N'abc', NULL, NULL, N'133605671107116026_angiang3.jpg', 1, 5)
INSERT [dbo].[KhachSan] ([Id], [IdTinhThanh], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [AnhDaiDien], [IsDelete], [SoSao]) VALUES (34, 30, N'Chau Khuong Hotel', N'Số 110 Nguyễn Trãi', N'Nơi ở tuyệt vời cho chuyến nghỉ dưỡng dài ngày', NULL, NULL, N'133610366164700842_chaukhuong.jpg', 0, 3)
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachSan_TienNghi] ON 

INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (27, 16, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (28, 16, 2)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (29, 16, 3)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (30, 16, 4)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (31, 11, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (32, 11, 9)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (33, 11, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (34, 11, 11)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (35, 12, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (36, 12, 9)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (37, 12, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (38, 12, 11)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (39, 13, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (40, 13, 3)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (41, 13, 9)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (42, 13, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (43, 14, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (44, 14, 3)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (45, 14, 9)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (46, 14, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (47, 15, 3)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (48, 15, 9)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (49, 15, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (50, 15, 11)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (59, 10, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (60, 10, 9)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (61, 10, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (62, 10, 11)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (63, 17, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (64, 17, 2)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (65, 17, 7)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (66, 17, 8)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (67, 18, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (68, 18, 6)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (71, 19, 7)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (72, 33, 10)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (75, 34, 1)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (76, 34, 3)
INSERT [dbo].[KhachSan_TienNghi] ([Id], [IdKhachSan], [IdTienNghi]) VALUES (77, 34, 7)
SET IDENTITY_INSERT [dbo].[KhachSan_TienNghi] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (17, 1, 1)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (18, 2, 1)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (19, 3, 1)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (24, 5, 4)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (25, 5, 5)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (30, 5, 10)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (31, 5, 11)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (33, 4, 1)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (34, 5, 1)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (35, 2, 6)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (36, 5, 6)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (37, 3, 12)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (38, 5, 12)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (40, 1, 16)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (41, 2, 16)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (42, 5, 16)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (47, 5, 2)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (48, 5, 20)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (49, 5, 21)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (50, 5, 22)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (51, 5, 23)
INSERT [dbo].[PhanQuyen] ([Id], [IdQuyen], [IdTaiKhoan]) VALUES (52, 5, 24)
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (1, N'test1', 600000, 4, N'133560210275473366_bhotel1.jpg', 1, NULL, 2, NULL, NULL)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (2, N'test2222', 800000, 1, N'133564566864833170_lynamde2.jpg', 0, NULL, 2, NULL, NULL)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (3, N'test22', 690000, 1, N'133564566959240765_Eclipse-Legend-Hotel2.jpg', 1, NULL, 2, NULL, NULL)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (4, N'Phòng Deluxe', 552000, 10, N'133581478724528943_laht1.jpg', 0, N'1 giường đôi lớn', 2, 50, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (5, N'Phòng Deluxe giường đôi có ban công', 750000, 10, N'133581674941865578_laht8.jpg', 0, N'1 giường đôi cực lớn', 2, 55, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (6, N'Phòng 4 người có ban công', 931000, 10, N'133581681516376009_laht10.jpg', 0, N'2 giường đôi cực lớn', 4, 55, 2)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (7, N'Phòng Deluxe giường đôi có giường cỡ king', 9789000, 11, N'133581701203427968_smarana1.jpg', 0, N'1 giường đôi cực lớn', 2, 28, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (8, N'Phòng có giường cỡ king', 13500000, 11, N'133581701765241559_smarana6.jpg', 0, N'1 giường đôi cực lớn', 2, 33, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (9, N'Suite có giường cỡ king với ban công', 14598000, 11, N'133581702330141812_smarana12.jpg', 0, N'1 giường đôi cực lớn', 2, 42, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (10, N'Phòng Deluxe giường đôi nhìn ra thành phố', 3495000, 12, N'133581704198026532_ja-cosmo1.jpg', 0, N'1 giường đôi lớn', 2, 20, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (11, N'Suite Junior có ban công', 4417000, 12, N'133581704831270997_ja-cosmo4.jpg', 0, N'1 giường đôi cực lớn', 2, 35, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (12, N'Căn hộ 1 phòng ngủ', 3954000, 13, N'133581789697070149_camellia1.jpg', 0, N'1 giường đôi', 2, 44, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (13, N'Phòng primier giường đôi với ban công', 4617000, 14, N'133581790918186834_hanoi-calista1.jpg', 0, N'1 giường đôi lớn', 2, 22, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (14, N'phòng tiêu chuẩn giường đôi', 2210000, 14, N'133581791540328449_hanoi-calista4.jpg', 0, N'1 giường đôi lớn', 2, 20, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (15, N'Phòng Deluxe 2 Giường Đơn', 1953000, 15, N'133581792718177610_hanoi-prime1.jpg', 0, N'2 giường đơn', 2, 20, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (16, N'Suite Junior có ban công', 2613000, 15, N'133581793208743764_hanoi-prime6.jpg', 0, N'1 giường đôi cực lớn', 2, 25, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (17, N'Phòng 3 người', 2719000, 15, N'133581793803952836_hanoi-prime4.jpg', 0, N'1 giường đơn và 1 giường đôi cực lớn', 3, 25, 2)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (18, N'testthoine', 100000, 16, NULL, 1, N'2 giường đơn', 2, 1, 1)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (19, N'testabc1', 100000, 17, N'133599530839937337_MucTieuCanHoc.jpg', 1, N'1 giường đôi cực lớn', 2, 46, 2)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (20, N'test', 10000000, 1, NULL, 0, N'abccccc', 2, 4, 3)
INSERT [dbo].[Phong] ([Id], [TenPhong], [GiaPhong], [IdKhachSan], [AnhDaiDien], [IsDelete], [MoTa], [SoNguoi], [KichThuocPhong], [SoGiuong]) VALUES (21, N'test1138', 1138000, 1, N'133605671399031309_angiang4.jpg', 0, N'abc', 2, 3, 2)
SET IDENTITY_INSERT [dbo].[Phong] OFF
GO
SET IDENTITY_INSERT [dbo].[Phong_TienNghi] ON 

INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (1, 4, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (2, 4, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (3, 4, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (4, 4, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (7, 4, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (8, 4, 6)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (9, 4, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (10, 4, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (19, 5, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (20, 5, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (21, 5, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (22, 5, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (23, 5, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (24, 5, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (25, 5, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (26, 6, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (27, 6, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (28, 6, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (29, 6, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (30, 6, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (31, 6, 6)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (32, 6, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (33, 6, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (34, 7, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (35, 7, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (36, 7, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (37, 7, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (38, 7, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (39, 7, 6)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (40, 7, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (41, 7, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (42, 8, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (43, 8, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (44, 8, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (45, 8, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (46, 8, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (47, 8, 6)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (48, 8, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (49, 8, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (50, 9, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (51, 9, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (52, 9, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (53, 9, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (54, 9, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (55, 9, 6)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (56, 9, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (57, 9, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (65, 11, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (66, 11, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (67, 11, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (68, 11, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (69, 11, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (70, 12, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (71, 12, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (72, 12, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (73, 12, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (74, 13, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (75, 13, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (76, 13, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (77, 13, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (78, 13, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (79, 14, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (80, 14, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (81, 14, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (82, 14, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (83, 15, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (84, 15, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (85, 15, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (86, 15, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (87, 15, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (88, 16, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (89, 16, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (90, 16, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (91, 16, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (92, 16, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (93, 17, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (94, 17, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (95, 17, 4)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (96, 17, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (106, 18, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (107, 18, 2)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (108, 18, 11)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (109, 10, 1)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (110, 10, 3)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (111, 10, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (112, 10, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (113, 10, 10)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (114, 19, 5)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (115, 19, 7)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (116, 19, 8)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (117, 19, 9)
INSERT [dbo].[Phong_TienNghi] ([Id], [IdPhong], [IdTienNghi]) VALUES (118, 21, 7)
SET IDENTITY_INSERT [dbo].[Phong_TienNghi] OFF
GO
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([Id], [TenQuyen], [GhiChu]) VALUES (1, N'Quản lý khách hàng', NULL)
INSERT [dbo].[Quyen] ([Id], [TenQuyen], [GhiChu]) VALUES (2, N'Quản lý đơn đặt', NULL)
INSERT [dbo].[Quyen] ([Id], [TenQuyen], [GhiChu]) VALUES (3, N'Quản lý phòng', NULL)
INSERT [dbo].[Quyen] ([Id], [TenQuyen], [GhiChu]) VALUES (4, N'Quản lý khách sạn', NULL)
INSERT [dbo].[Quyen] ([Id], [TenQuyen], [GhiChu]) VALUES (5, N'Tài khoản thường', NULL)
SET IDENTITY_INSERT [dbo].[Quyen] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (1, N'admin', N'AIjdigVlSWbVeWAj01qNVnugaeF9tD/smeVYk4yOXZOW5ayRirx8+qCQ/DERYTXG1w==', N'0379678451', CAST(N'2002-09-17' AS Date), 1, N'avatar5.png', N'admin', N'admin@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (2, N'testne123', N'AL3vQZiyuNfKWKijQQV8XAPDj7rgv73tgUWFsO/HrJekaaAM9EmG/c1R0Pccn/it+w==', N'0379678451', CAST(N'2009-03-20' AS Date), 1, N'133554207884438642_beautiful-girl.jpg', N'tôi là test', N'test1@gmail.con', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (3, N'test193', N'AAk2qRK28lcWHsohQ39TDT9rs9L7YWIESE8+OplV5WDHZIiWrbzV2VwpUootK8QCEQ==', N'', NULL, 0, N'133554209428346718_beautiful-girl.jpg', N'tôi là test', N'tôi là test', 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (4, N'khanhne', N'ADNJ152KyFuUBZb5oKw/KQbdWddHNIY8ekKI3WAlx+Ion8R6jTEs/X8xsCRxiHu1jA==', N'0379678451', CAST(N'2002-09-17' AS Date), 0, N'avatar5.png', N'tôi là test', N'proghe712@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (5, N'khanhne1', N'ANLXDZRbizY3nt+aYU9dEotSWXXnDCjBY6iKUoTsdtcyMZDSxzuttw7ljyRqXfjf5Q==', NULL, NULL, 1, N'avatar5.png', N'tôi là test', N'tôi là test', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (6, N'khanhne2', N'ALMaV5dZSgjYLkd7SM1rOqrz0yQ0v4NBYkpeF/d8D54kAaUEFhsbR3HIn+pD39CkRQ==', NULL, NULL, 1, N'avatar5.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (10, N'khanhne3', N'AB34RToXi78e/tLMsnLFtCHXVQFqjinxgEgHhuucacc38JtERZM50V6bInEhwPo7Rw==', NULL, NULL, 1, N'avatar5.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (11, N'khanhne4', N'ALU/R7jTPBvFyoDldE9fV3V1NLzsNY/AU1eJB3gpRDr3lPhU6O2w14JayUEsgjhFWQ==', NULL, NULL, 1, N'avatar5.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (12, N'khanhne5', N'ADdCwuuzk9fhoyBC01eZMreVapNIutfGGGCaN6/L8XPM12sCh+rIZqoyc9EFz+qEVA==', N'0123456789', CAST(N'2002-09-17' AS Date), 1, N'133590520076470420_beautiful-girl.jpg', N'Vũ Duy Khánh', N'vukhanh928@gmail.com', 0, N'', N'', N'', N'', N'')
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (16, N'khanhne6', N'ALLwQ1P5l0y5afirDu/l/XYvyjjr2kPSxm202LvTAUPj7HpmYxJWESeruSv0I+a8sg==', N'0123456789', CAST(N'2002-09-17' AS Date), 1, N'avatar5.png', N'Vũ Duy Khánh', N'proghe712@gmail.com', 0, N'', N'', N'', N'', N'')
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (20, N'khanhne7', N'AEdCIkpci6v39R3zuZqD2JtcJmpE1sHyE48TvCxDJ2pcj1I+CN49YgBGU4MKBBT+GA==', N'0379678451', CAST(N'1111-11-11' AS Date), 1, NULL, N'Vũ Duy Khánh', N'vukhanh928@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (21, N'test1', N'AB1cC8sD11WQwqlCSG+nmIy+wtrCUVWC3PyxcHBvlHZ4+HmSOEF2yXpC4nsrGJ5q1A==', N'0379678451', CAST(N'2002-09-17' AS Date), 1, NULL, N'Vũ Duy Khánh', N'vukhanh928@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (22, N'khanhne8', N'AH4ZlkVjtDVBh0PZDx8zLVNHw2cV+V1zCPcKLqjrkHMd1iTNSe80MTMSmhRxwi9g1w==', NULL, NULL, 1, N'avatar5.png', N'Vũ Quỳnh', N'vukhanh9280@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (23, N'vukhanh928', N'ABbmRuXBl0ILBYBqSmxckyfTaFzlBF4Tne7JPSMBjBIOuq6VG48QVCPWN9g2hhilEA==', NULL, NULL, 1, N'avatar5.png', N'Vũ Duy Khánh', N'vukhanh928@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TaiKhoan] ([Id], [TenDangNhap], [MatKhau], [SoDienThoai], [NgaySinh], [TrangThai], [Anh], [HoTen], [Email], [IsDelete], [DiaChi], [GhiChu], [Facebook], [Twitter], [Instagram]) VALUES (24, N'ngquynh179', N'AJmUm3HWf6aUr79ofil6gSqaMtJMOmQ2oY6XDi25UOw7mkJuCZTrwVdaYXSFwe26aw==', N'0336688799', CAST(N'2002-09-17' AS Date), 1, N'133610375432124212_anhdaidien.jpg', N'Nguyễn Thuý Quỳnh', N'ngquynh179@gmail.com', 0, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[TienNghi] ON 

INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (1, N'Miễn phí wifi', N'fal fa-wifi')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (2, N'Quầy bar nhỏ', N'fas fa-glass-martini-alt')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (3, N'Máy điều hòa', N'fal fa-snowflake')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (4, N'Tivi', N'fal fa-tv')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (5, N'Bữa sáng', N'fal fa-concierge-bell')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (6, N'Thân thiện với thú cưng', N'fal fa-paw')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (7, N'Phòng tắm riêng', N'fal fa-bath')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (8, N'Nhìn ra thành phố', N'fal fa-hotel')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (9, N'Bãi đỗ xe', N'fal fa-parking')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (10, N'Phòng không hút thuốc', N'fal fa-smoking-ban')
INSERT [dbo].[TienNghi] ([Id], [TenTienNghi], [IconTienNghi]) VALUES (11, N'Nhà hàng', N'fal fa-utensils')
SET IDENTITY_INSERT [dbo].[TienNghi] OFF
GO
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (7, N'an-giang.jpg', N'An Giang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (8, N'ba-ria-vung-tau.jpg', N'Bà Rịa-Vũng Tàu', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (9, N'bac-giang.jpg', N'Bắc Giang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (10, N'bac-kan.jpg', N'Bắc Kạn', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (11, N'bac-lieu.jpg', N'Bạc Liêu', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (12, N'bac-ninh.jpg', N'Bắc Ninh', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (13, N'ben-tre.jpg', N'Bến Tre', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (14, N'binh-dinh.jpg', N'Bình Định', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (15, N'binh-duong.jpg', N'Bình Dương', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (16, N'binh-phuoc.jpg', N'Bình Phước', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (17, N'binh-thuan.jpg', N'Bình Thuận', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (18, N'ca-mau.jpg', N'Cà Mau', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (19, N'can-tho.jpg', N'Cần Thơ', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (20, N'cao-bang.jpg', N'Cao Bằng', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (21, N'danang.jpg', N'Đà Nẵng', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (22, N'dak-lak.jpg', N'Đắk Lắk', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (23, N'dak-nong.jpg', N'Đắk Nông', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (24, N'dien-bien.jpg', N'Điện Biên', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (25, N'dong-nai.jpg', N'Đồng Nai', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (26, N'dong-thap.jpg', N'Đồng Tháp', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (27, N'gia-lai.jpg', N'Gia Lai', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (28, N'ha-giang.jpg', N'Hà Giang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (29, N'ha-nam.jpg', N'Hà Nam', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (30, N'hanoi.jpg', N'Hà Nội', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (31, N'ha-tinh.jpg', N'Hà Tĩnh', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (32, N'hai-duong.jpg', N'Hải Dương', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (33, N'hai-phong.jpg', N'Hải Phòng', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (34, N'hau-giang.jpg', N'Hậu Giang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (35, N'hcm.jpg', N'TP. Hồ Chí Minh', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (36, N'hoa-binh.jpg', N'Hòa Bình', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (37, N'hung-yen.jpg', N'Hưng Yên', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (38, N'khanh-hoa.jpg', N'Khánh Hòa', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (39, N'kien-giang.jpg', N'Kiên Giang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (40, N'kon-tum.jpg', N'Kon Tum', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (41, N'lai-chau.jpg', N'Lai Châu', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (42, N'lam-dong.jpg', N'Lâm Đồng', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (43, N'lang-son.jpg', N'Lạng Sơn', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (44, N'lao-cai.jpg', N'Lào Cai', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (45, N'long-an.jpg', N'Long An', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (46, N'nam-dinh.jpg', N'Nam Định', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (47, N'nghe-an.jpg', N'Nghệ An', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (48, N'ninhbinh.jpg', N'Ninh Bình', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (49, N'ninh-thuan.jpg', N'Ninh Thuận', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (50, N'phu-tho.jpg', N'Phú Thọ', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (51, N'phu-yen', N'Phú Yên', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (52, N'quang-binh.jpg', N'Quảng Bình', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (53, N'quang-nam.jpg', N'Quảng Nam', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (54, N'quang-ngai.jpg', N'Quảng Ngãi

', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (55, N'quang-ninh.jpg', N'Quảng Ninh

', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (56, N'quang-tri.jpg', N'Quảng Trị', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (57, N'soc-trang.jpg', N'Sóc Trăng', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (58, N'son-la.jpg', N'Sơn La', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (59, N'tay-ninh.jpg', N'Tây Ninh', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (60, N'thai-binh.jpg', N'Thái Bình', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (61, N'thai-nguyen.jpg', N'Thái Nguyên', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (62, N'thanh-hoa.jpg', N'Thanh Hóa', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (63, N'thua-thien-hue.jpg', N'Thừa Thiên - Huế', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (64, N'tien-giang.jpg', N'Tiền Giang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (65, N'tra-vinh.jpg', N'Trà Vinh', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (66, N'tuyen-quang.jpg', N'Tuyên Quang', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (67, N'vinh-long.jpg', N'Vĩnh Long', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (68, N'vinh-phuc.jpg', N'Vĩnh Phúc', NULL, 0)
INSERT [dbo].[TinhThanh] ([Id], [AnhDaiDien], [TenTinh], [GhiChu], [IsDelete]) VALUES (69, N'yen-bai.jpg', N'Yên Bái', NULL, 0)
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThaiDon] ON 

INSERT [dbo].[TrangThaiDon] ([Id], [TenTrangThai]) VALUES (1, N'Chưa xác nhận')
INSERT [dbo].[TrangThaiDon] ([Id], [TenTrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TrangThaiDon] ([Id], [TenTrangThai]) VALUES (3, N'Hoàn tất')
INSERT [dbo].[TrangThaiDon] ([Id], [TenTrangThai]) VALUES (4, N'Huỷ bỏ')
SET IDENTITY_INSERT [dbo].[TrangThaiDon] OFF
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD  CONSTRAINT [FK_DanhGia_TaiKhoan] FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[DanhGia] CHECK CONSTRAINT [FK_DanhGia_TaiKhoan]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_Phong]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_TaiKhoan] FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_TaiKhoan]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_TrangThaiDon] FOREIGN KEY([IdTrangThai])
REFERENCES [dbo].[TrangThaiDon] ([Id])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_TrangThaiDon]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_Phong]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_TinhThanh] FOREIGN KEY([IdTinhThanh])
REFERENCES [dbo].[TinhThanh] ([Id])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_TinhThanh]
GO
ALTER TABLE [dbo].[KhachSan_TienNghi]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_TienNghi_KhachSan] FOREIGN KEY([IdKhachSan])
REFERENCES [dbo].[KhachSan] ([Id])
GO
ALTER TABLE [dbo].[KhachSan_TienNghi] CHECK CONSTRAINT [FK_KhachSan_TienNghi_KhachSan]
GO
ALTER TABLE [dbo].[KhachSan_TienNghi]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_TienNghi_TienNghi] FOREIGN KEY([IdTienNghi])
REFERENCES [dbo].[TienNghi] ([Id])
GO
ALTER TABLE [dbo].[KhachSan_TienNghi] CHECK CONSTRAINT [FK_KhachSan_TienNghi_TienNghi]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_Quyen] FOREIGN KEY([IdQuyen])
REFERENCES [dbo].[Quyen] ([Id])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_Quyen]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_TaiKhoan] FOREIGN KEY([IdTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([Id])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_TaiKhoan]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhachSan] FOREIGN KEY([IdKhachSan])
REFERENCES [dbo].[KhachSan] ([Id])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhachSan]
GO
ALTER TABLE [dbo].[Phong_TienNghi]  WITH CHECK ADD  CONSTRAINT [FK_Phong_TienNghi_Phong] FOREIGN KEY([IdPhong])
REFERENCES [dbo].[Phong] ([Id])
GO
ALTER TABLE [dbo].[Phong_TienNghi] CHECK CONSTRAINT [FK_Phong_TienNghi_Phong]
GO
ALTER TABLE [dbo].[Phong_TienNghi]  WITH CHECK ADD  CONSTRAINT [FK_Phong_TienNghi_TienNghi] FOREIGN KEY([IdTienNghi])
REFERENCES [dbo].[TienNghi] ([Id])
GO
ALTER TABLE [dbo].[Phong_TienNghi] CHECK CONSTRAINT [FK_Phong_TienNghi_TienNghi]
GO
/****** Object:  StoredProcedure [dbo].[sp_LayDanhSachPhongTrong]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayDanhSachPhongTrong]
    @IdKhachSan INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT
        p.Id,
        p.TenPhong,
        p.GiaPhong,
        p.IdKhachSan,
        p.AnhDaiDien,
        p.IsDelete,
		p.MoTa,
		p.SoNguoi,
		p.KichThuocPhong,
		p.SoGiuong
    FROM Phong p
    WHERE
    p.IdKhachSan = @IdKhachSan
    AND p.Id NOT IN (
        SELECT dp.IdPhong
        FROM DatPhong dp
        WHERE (
            (@StartDate BETWEEN dp.BatDau AND dp.KetThuc)
            OR (@EndDate BETWEEN dp.BatDau AND dp.KetThuc)
            OR (dp.BatDau BETWEEN @StartDate AND @EndDate)
            OR (dp.KetThuc BETWEEN @StartDate AND @EndDate)
        ) AND dp.IdTrangThai IN (1,2,3)
    )
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_LayKhachSanCoPhongTrong]    Script Date: 5/25/2024 6:01:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_LayKhachSanCoPhongTrong]
    @IdTinhThanh INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT  ks.Id,
        ks.IdTinhThanh,
        ks.TenKhachSan,
        ks.DiaChi,
        ks.GioiThieu,
        ks.TieuDe,
        ks.GhiChu,
        ks.AnhDaiDien,
        ks.IsDelete,
		ks.SoSao,
        AVG(p.GiaPhong) AS GiaTrungBinh
FROM KhachSan ks
 JOIN Phong p on ks.Id = p.IdKhachSan
    WHERE ks.IdTinhThanh = @IdTinhThanh
    AND p.Id NOT IN (
        SELECT dp.IdPhong
        FROM DatPhong dp
        WHERE (
            (@StartDate BETWEEN dp.BatDau AND dp.KetThuc)
            OR (@EndDate BETWEEN dp.BatDau AND dp.KetThuc)
            OR (dp.BatDau BETWEEN @StartDate AND @EndDate)
            OR (dp.KetThuc BETWEEN @StartDate AND @EndDate)
        ) AND dp.IdTrangThai IN (1,2,3)
    )
    GROUP BY
        ks.Id,
        ks.IdTinhThanh,
        ks.TenKhachSan,
        ks.DiaChi,
        ks.GioiThieu,
        ks.TieuDe,
        ks.GhiChu,
        ks.AnhDaiDien,
        ks.IsDelete,
		ks.SoSao
END;
GO
USE [master]
GO
ALTER DATABASE [QuanLyKhachSan] SET  READ_WRITE 
GO
