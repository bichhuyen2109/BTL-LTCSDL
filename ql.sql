USE [master]
GO
/****** Object:  Database [qlsv1]    Script Date: 4/18/2023 12:22:09 AM ******/
CREATE DATABASE [qlsv1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlsv1', FILENAME = N'D:\LTCSDL\QLSV\qlsv1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlsv1_log', FILENAME = N'D:\LTCSDL\QLSV\qlsv1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlsv1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlsv1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlsv1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlsv1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlsv1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlsv1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlsv1] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlsv1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlsv1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlsv1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlsv1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlsv1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlsv1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlsv1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlsv1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlsv1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlsv1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlsv1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlsv1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlsv1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlsv1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlsv1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlsv1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlsv1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlsv1] SET RECOVERY FULL 
GO
ALTER DATABASE [qlsv1] SET  MULTI_USER 
GO
ALTER DATABASE [qlsv1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlsv1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlsv1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlsv1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlsv1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlsv1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlsv1', N'ON'
GO
ALTER DATABASE [qlsv1] SET QUERY_STORE = OFF
GO
USE [qlsv1]
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 4/18/2023 12:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diem](
	[id] [int] NOT NULL,
	[MSSV] [nchar](10) NOT NULL,
	[id_MH] [nchar](8) NOT NULL,
	[GK_Diem] [float] NOT NULL,
	[CK_Diem] [float] NOT NULL,
	[DiemHe_10] [float] NOT NULL,
	[DiemHe_4] [float] NOT NULL,
	[Loai] [nchar](2) NOT NULL,
 CONSTRAINT [PK_Diem] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GV]    Script Date: 4/18/2023 12:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GV](
	[id] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [nchar](10) NOT NULL,
	[CCCD] [nchar](12) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[HocVi] [nvarchar](30) NOT NULL,
	[ChucVu] [nvarchar](30) NOT NULL,
	[Que] [nvarchar](50) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[SDT] [nchar](10) NOT NULL,
 CONSTRAINT [PK_GV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 4/18/2023 12:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[id] [nchar](4) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[SDT] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 4/18/2023 12:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[id] [int] NOT NULL,
	[Ten] [nchar](8) NOT NULL,
	[KhoaHoc] [nchar](9) NOT NULL,
	[id_Khoa] [nchar](4) NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 4/18/2023 12:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[id] [nchar](8) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[SoTinChi] [float] NOT NULL,
	[NgayBatDau] [nchar](10) NOT NULL,
	[NgayKetThuc] [nchar](10) NOT NULL,
	[Buoi] [nvarchar](20) NOT NULL,
	[DiaDiem] [nvarchar](50) NOT NULL,
	[Phong] [nchar](3) NOT NULL,
	[id_GV] [nchar](10) NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SV]    Script Date: 4/18/2023 12:22:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SV](
	[MSSV] [nchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[CCCD] [nchar](12) NOT NULL,
	[NgaySinh] [nchar](10) NOT NULL,
	[GioiTinh] [nvarchar](3) NOT NULL,
	[Que] [nvarchar](50) NOT NULL,
	[SDT] [nchar](10) NOT NULL,
	[Email] [nchar](50) NOT NULL,
	[TrangThai] [nvarchar](30) NOT NULL,
	[id_Lop] [int] NOT NULL,
 CONSTRAINT [PK_SV1] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GV] ([id], [HoTen], [NgaySinh], [CCCD], [GioiTinh], [HocVi], [ChucVu], [Que], [Email], [SDT]) VALUES (N'1985352246', N'Nguyễn Phương Ly', N'20/06/1985', N'048185345665', N'Nữ', N'Tiến Sĩ', N'Lãnh Đạo Khoa', N'Đồng Nai', N'npl2246@ou.edu.vn                                 ', N'0795864974')
INSERT [dbo].[GV] ([id], [HoTen], [NgaySinh], [CCCD], [GioiTinh], [HocVi], [ChucVu], [Que], [Email], [SDT]) VALUES (N'1989646410', N'Nguyễn Tuấn Đạt', N'15/02/1989', N'049189325678', N'Nam', N'Tiến Sĩ', N'Giảng Viên Thỉnh Giảng', N'Bà Rịa - Vũng Tàu', N'ntd6410@ou.edu.vn                                 ', N'0987467186')
INSERT [dbo].[GV] ([id], [HoTen], [NgaySinh], [CCCD], [GioiTinh], [HocVi], [ChucVu], [Que], [Email], [SDT]) VALUES (N'1990352201', N'Nguyễn Thị Kiều Oanh ', N'01/09/1990', N'047190123456', N'Nữ', N'Thạc Sĩ', N'Giảng Viên Cơ Hữu', N'Bình Dương', N'ntko2201@ou.edu.vn                                ', N'0352294170')
INSERT [dbo].[GV] ([id], [HoTen], [NgaySinh], [CCCD], [GioiTinh], [HocVi], [ChucVu], [Que], [Email], [SDT]) VALUES (N'1990550023', N'Nguyễn Anh Tuấn', N'30/03/1990', N'037190154797', N'Nam', N'Thạc Sĩ', N'Giảng Viên Cơ Hữu', N'Khánh Hòa', N'nat0023@ou.edu.vn                                 ', N'0398745867')
INSERT [dbo].[GV] ([id], [HoTen], [NgaySinh], [CCCD], [GioiTinh], [HocVi], [ChucVu], [Que], [Email], [SDT]) VALUES (N'1991685403', N'Trần Tuấn Đạt', N'11/11/1991', N'001191034569', N'Nam', N'Thạc Sĩ ', N'Chuyên Viên', N'Hà Nội', N'ttd5403@ou.edu.vn                                 ', N'0977856487')
INSERT [dbo].[GV] ([id], [HoTen], [NgaySinh], [CCCD], [GioiTinh], [HocVi], [ChucVu], [Que], [Email], [SDT]) VALUES (N'1993351849', N'Trần Đăng Khoa', N'01/01/1993', N'042193985645', N'Nam', N'Thạc Sĩ', N'Chuyên Viên', N'Đắk Lắk', N'tdk1849@ou.edu.vn                                 ', N'0359814789')
GO
INSERT [dbo].[Khoa] ([id], [Ten], [Email], [SDT]) VALUES (N'3518', N'Công Nghệ Sinh Học', N'cnsh3518@ou.edu.vn                                ', N'0231469978')
INSERT [dbo].[Khoa] ([id], [Ten], [Email], [SDT]) VALUES (N'3522', N'Công Nghệ Thông Tin', N'cntt3522@ou.edu.vn                                ', N'0325698789')
INSERT [dbo].[Khoa] ([id], [Ten], [Email], [SDT]) VALUES (N'5500', N'Ngôn Ngữ', N'nn3500@ou.edu.vn                                  ', N'0985471673')
INSERT [dbo].[Khoa] ([id], [Ten], [Email], [SDT]) VALUES (N'6464', N'Xây Dựng', N'xd6464@ou.edu.vn                                  ', N'0365414791')
INSERT [dbo].[Khoa] ([id], [Ten], [Email], [SDT]) VALUES (N'6854', N'Xã Hội Nhân Văn', N'xhnv6854@ou.edu.vn                                ', N'0321565977')
GO
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (1, N'DH18IT01', N'2018-2019', N'3522')
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (2, N'DH20IT01', N'2020-2021', N'3522')
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (3, N'DH23IT01', N'2023-2024', N'3522')
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (4, N'DH23SH01', N'2023-2024', N'3518')
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (5, N'DH23XD01', N'2023-2024', N'6464')
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (6, N'DH23NN01', N'2023-2024', N'5500')
INSERT [dbo].[Lop] ([id], [Ten], [KhoaHoc], [id_Khoa]) VALUES (7, N'DH23XH01', N'2023-2024', N'6854')
GO
INSERT [dbo].[MonHoc] ([id], [Ten], [SoTinChi], [NgayBatDau], [NgayKetThuc], [Buoi], [DiaDiem], [Phong], [id_GV]) VALUES (N'GENGI339', N'Tiếng Anh Nâng Cao', 2, N'08/06/2023', N'06/07/2023', N'Sáng', N'175 Nguyễn Kiệm', N'207', N'1990550023')
INSERT [dbo].[MonHoc] ([id], [Ten], [SoTinChi], [NgayBatDau], [NgayKetThuc], [Buoi], [DiaDiem], [Phong], [id_GV]) VALUES (N'ITEC4402', N'Quản Trị Hệ Cơ Sở Dữ Liệu ', 3, N'07/06/2023', N'16/08/2023', N'Ngày', N'175 Nguyễn Kiệm', N'311', N'1985352246')
INSERT [dbo].[MonHoc] ([id], [Ten], [SoTinChi], [NgayBatDau], [NgayKetThuc], [Buoi], [DiaDiem], [Phong], [id_GV]) VALUES (N'ITEC4409', N'Công Nghệ Phần Mềm', 3, N'05/06/2023', N'14/08/2023', N'Ngày', N'175 Nguyễn Kiệm', N'311', N'1990352201')
GO
INSERT [dbo].[SV] ([MSSV], [HoTen], [CCCD], [NgaySinh], [GioiTinh], [Que], [SDT], [Email], [TrangThai], [id_Lop]) VALUES (N'1835221235', N'Đào Nguyên Bảo', N'048200345665', N'01/01/2000', N'Nam', N'Đồng Nai', N'0915478954', N'1835221235bao@ou.edu.vn                           ', N'Tốp Nghiệp', 1)
INSERT [dbo].[SV] ([MSSV], [HoTen], [CCCD], [NgaySinh], [GioiTinh], [Que], [SDT], [Email], [TrangThai], [id_Lop]) VALUES (N'2335181356', N'Trần Thị Thúy', N'063305096890', N'27/05/2005', N'Nữ', N'Cà Mau', N'0976584791', N'2335181356thuy@ou.edu.vn                          ', N'Đang Học', 4)
INSERT [dbo].[SV] ([MSSV], [HoTen], [CCCD], [NgaySinh], [GioiTinh], [Que], [SDT], [Email], [TrangThai], [id_Lop]) VALUES (N'2335221234', N'Nguyễn Văn An', N'062205096859', N'25/03/2005', N'Nam', N'Kon Tum', N'0367894102', N'2335221234an@ou.edu.vn                            ', N'Đang Học', 3)
INSERT [dbo].[SV] ([MSSV], [HoTen], [CCCD], [NgaySinh], [GioiTinh], [Que], [SDT], [Email], [TrangThai], [id_Lop]) VALUES (N'2335221239', N'Hà Thúy Anh', N'037305154797', N'10/10/2005', N'Nữ', N'Khánh Hòa  ', N'0347895142', N'2335221239anh@ou.edu.vn                           ', N'Đang Học', 3)
INSERT [dbo].[SV] ([MSSV], [HoTen], [CCCD], [NgaySinh], [GioiTinh], [Que], [SDT], [Email], [TrangThai], [id_Lop]) VALUES (N'2335221357', N'Nguy?n Th? Nhu Hu?', N'032564684988', N'23/10/2005', N'N?', N'Ð?ng Nai', N'0326659889', N'2335221357ntnh@ou.edu.vn                          ', N'Ðang H?c', 3)
INSERT [dbo].[SV] ([MSSV], [HoTen], [CCCD], [NgaySinh], [GioiTinh], [Que], [SDT], [Email], [TrangThai], [id_Lop]) VALUES (N'2364641456', N'Hà Bảo Lộc', N'061205096901', N'30/10/2005', N'Nam', N'Sóc Trăng', N'0345987461', N'2364641456loc@ou.edu.vn                           ', N'Đang Học', 5)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GV]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [IX_GV] UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GV_1]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [IX_GV_1] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_GV_2]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[GV] ADD  CONSTRAINT [IX_GV_2] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Khoa]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[Khoa] ADD  CONSTRAINT [IX_Khoa] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Khoa_1]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[Khoa] ADD  CONSTRAINT [IX_Khoa_1] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SV1]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[SV] ADD  CONSTRAINT [IX_SV1] UNIQUE NONCLUSTERED 
(
	[CCCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SV1_1]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[SV] ADD  CONSTRAINT [IX_SV1_1] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SV1_2]    Script Date: 4/18/2023 12:22:09 AM ******/
ALTER TABLE [dbo].[SV] ADD  CONSTRAINT [IX_SV1_2] UNIQUE NONCLUSTERED 
(
	[SDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_MonHoc] FOREIGN KEY([id_MH])
REFERENCES [dbo].[MonHoc] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_MonHoc]
GO
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD  CONSTRAINT [FK_Diem_SV] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SV] ([MSSV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Diem] CHECK CONSTRAINT [FK_Diem_SV]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_Khoa] FOREIGN KEY([id_Khoa])
REFERENCES [dbo].[Khoa] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_Khoa]
GO
ALTER TABLE [dbo].[MonHoc]  WITH CHECK ADD  CONSTRAINT [FK_MonHoc_GV] FOREIGN KEY([id_GV])
REFERENCES [dbo].[GV] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MonHoc] CHECK CONSTRAINT [FK_MonHoc_GV]
GO
ALTER TABLE [dbo].[SV]  WITH CHECK ADD  CONSTRAINT [FK_SV_Lop] FOREIGN KEY([id_Lop])
REFERENCES [dbo].[Lop] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SV] CHECK CONSTRAINT [FK_SV_Lop]
GO
USE [master]
GO
ALTER DATABASE [qlsv1] SET  READ_WRITE 
GO
