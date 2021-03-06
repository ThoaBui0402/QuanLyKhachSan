create database quanlykhachsan
GO
USE [quanlykhachsan]
GO
/****** Object:  Table [dbo].[dichvu]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dichvu](
	[maDichVu] [int] IDENTITY(1,1) NOT NULL,
	[tenDichVu] [nvarchar](50) NULL,
	[donGia] [float] NULL,
 CONSTRAINT [PK_dichvu] PRIMARY KEY CLUSTERED 
(
	[maDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[maKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[tenKhachHang] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [bit] NULL,
	[chungMinhNhanDan] [nvarchar](25) NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](25) NULL,
	[quocTich] [nvarchar](50) NULL,
 CONSTRAINT [PK_khachhang_1] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiphong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiphong](
	[loaiPhong] [nvarchar](10) NOT NULL,
	[donGia] [float] NULL,
 CONSTRAINT [PK_loaiphong] PRIMARY KEY CLUSTERED 
(
	[loaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung](
	[taiKhoan] [nvarchar](30) NOT NULL,
	[matKhau] [nvarchar](30) NULL,
	[phanQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_nguoidung] PRIMARY KEY CLUSTERED 
(
	[taiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[maNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[soChungMinh] [nvarchar](25) NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [nvarchar](25) NULL,
	[ngayVaoLam] [date] NULL,
 CONSTRAINT [PK_nhanvien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phong](
	[maPhong] [int] NOT NULL,
	[tinhTrang] [bit] NULL,
	[loaiPhong] [nvarchar](10) NULL,
 CONSTRAINT [PK_phong] PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[thuephong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[thuephong](
	[maThuePhong] [int] IDENTITY(1,1) NOT NULL,
	[maKhachHang] [int] NULL,
	[ngayDen] [date] NULL,
	[ngayDi] [date] NULL,
	[maDichVu] [int] NULL,
	[maPhong] [int] NULL,
	[thanhTien] [float] NULL,
 CONSTRAINT [PK_thuephong] PRIMARY KEY CLUSTERED 
(
	[maThuePhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dichvu] ON 

INSERT [dbo].[dichvu] ([maDichVu], [tenDichVu], [donGia]) VALUES (1, N'Giặt', 50000)
INSERT [dbo].[dichvu] ([maDichVu], [tenDichVu], [donGia]) VALUES (2, N'Thuê xe', 150000)
INSERT [dbo].[dichvu] ([maDichVu], [tenDichVu], [donGia]) VALUES (3, N'Ăn sáng', 100000)
SET IDENTITY_INSERT [dbo].[dichvu] OFF
GO
SET IDENTITY_INSERT [dbo].[khachhang] ON 

INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (1, N'Nguyễn Văn Hải', CAST(N'1993-06-02' AS Date), 1, N'097424154', N'Hà Tĩnh', N'0937183481', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (2, N'Lê Công Huynh', CAST(N'1996-09-15' AS Date), 1, N'028924554', N'Nghệ An', N'03627482949', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (3, N'Nguyễn Thị Thanh Thuỳ', CAST(N'1996-12-20' AS Date), 0, N'839531546', N'BR-VT', N'0428478924', N'Nhật Bản')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (4, N'Nguyễn Thị Kim Khánh', CAST(N'2006-11-24' AS Date), 0, N'028497494', N'Ninh Thuận', N'0193564646', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (5, N'Nguyễn Anh Dũng', CAST(N'2006-11-08' AS Date), 1, N'242497494', N'Thái Nguyên', N'0924564646', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (6, N'Trần Lượng', CAST(N'1995-06-25' AS Date), 1, N'154653454', N'Hà Nội', N'0920111111', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (7, N'Vũ Thị Kim Như', CAST(N'1999-06-27' AS Date), 0, N'023478344', N'Ninh Bình', N'0234824285', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (8, N'Trần Quỳnh Nga', CAST(N'1999-08-26' AS Date), 0, N'268742445', N'Hà Tĩnh', N'0124824785', N'VIỆT NAM')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (9, N'Nguyễn Văn Thắng', CAST(N'1993-06-02' AS Date), 1, N'097424146', N'Hà Tĩnh', N'0937183481', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (10, N'Lê Công Hoàng Anh', CAST(N'1996-09-15' AS Date), 1, N'0289357354', N'Nghệ An', N'03628395249', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (11, N'Nguyễn Thị Thảo', CAST(N'1996-12-20' AS Date), 0, N'830248246', N'BR-VT', N'0495835924', N'Nhật Bản')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (12, N'Lê Thị Giang', CAST(N'2006-11-24' AS Date), 0, N'942847494', N'Ninh Thuận', N'0729424646', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (13, N'Nguyễn Anh Tuấn Kiệt', CAST(N'2006-11-08' AS Date), 1, N'783557494', N'Thái Nguyên', N'0918364646', N'Việt Nam')
INSERT [dbo].[khachhang] ([maKhachHang], [tenKhachHang], [ngaySinh], [gioiTinh], [chungMinhNhanDan], [diaChi], [soDienThoai], [quocTich]) VALUES (14, N'Trần Gia Bảo', CAST(N'1995-06-25' AS Date), 1, N'183050454', N'Hà Nội', N'0358359211', N'Việt Nam')
SET IDENTITY_INSERT [dbo].[khachhang] OFF
GO
INSERT [dbo].[loaiphong] ([loaiPhong], [donGia]) VALUES (N'Thường', 300000)
INSERT [dbo].[loaiphong] ([loaiPhong], [donGia]) VALUES (N'Trung', 350000)
INSERT [dbo].[loaiphong] ([loaiPhong], [donGia]) VALUES (N'Vip', 400000)
GO
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'1', N'1', N'user')
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'admin', N'admin', N'admin')
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'anhthang', N'1', N'admin')
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'kimkhanh', N'12345', N'user')
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'thuydung61', N'13021996', N'user')
INSERT [dbo].[nguoidung] ([taiKhoan], [matKhau], [phanQuyen]) VALUES (N'thuyduong2012', N'12345', N'admin')
GO
SET IDENTITY_INSERT [dbo].[nhanvien] ON 

INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (1, N'Nguyễn Bá Phong', 1, CAST(N'1997-02-01' AS Date), N'546546464', N'Thái Bình', N'0156546464', CAST(N'2018-06-04' AS Date))
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (2, N'Phan Thuỳ Trang', 0, CAST(N'1999-06-01' AS Date), N'028691654', N'Hải Phòng', N'0541545444', CAST(N'2016-05-09' AS Date))
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (3, N'Lê Giang Nam', 1, CAST(N'1996-09-15' AS Date), N'145457621', N'Thái Thụy - Thái Bình ', N'01639525638', CAST(N'2019-08-31' AS Date))
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (4, N'Phạm Thị Thùy Dương', 0, CAST(N'1996-01-20' AS Date), N'154464664', N'Kinh Môn-Hải Phòng', N'01652568617', CAST(N'2017-10-09' AS Date))
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (5, N'Phạm Thắng', 1, CAST(N'1999-11-23' AS Date), N'164646476', N'Thái Nguyên', N'0212651614', CAST(N'2018-11-23' AS Date))
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (6, N'Triệu Mỹ Linh', 0, CAST(N'1999-11-24' AS Date), N'453345255', N'Hưng Yên', N'0345283478', CAST(N'2018-01-24' AS Date))
INSERT [dbo].[nhanvien] ([maNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soChungMinh], [diaChi], [soDienThoai], [ngayVaoLam]) VALUES (7, N'Hoa Phạm', 0, CAST(N'1998-11-24' AS Date), N'572987499', N'Định Hoá', N'09242484242', CAST(N'2016-11-24' AS Date))
SET IDENTITY_INSERT [dbo].[nhanvien] OFF
GO
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (101, 1, N'Thường')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (102, 0, N'Thường')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (103, 0, N'Thường')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (201, 1, N'Trung')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (202, 1, N'Trung')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (203, 1, N'Trung')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (204, 1, N'Trung')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (301, 0, N'Vip')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (302, 0, N'Vip')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (303, 0, N'Vip')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (304, 0, N'Thường')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (305, 0, N'Thường')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (306, 0, N'Thường')
INSERT [dbo].[phong] ([maPhong], [tinhTrang], [loaiPhong]) VALUES (307, 0, N'Thường')
GO
SET IDENTITY_INSERT [dbo].[thuephong] ON 

INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (1, 1, CAST(N'2020-01-17' AS Date), CAST(N'2020-01-18' AS Date), NULL, 201, 200000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (2, 2, CAST(N'2020-08-20' AS Date), CAST(N'2020-08-21' AS Date), 1, 303, 200000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (3, 5, CAST(N'2020-08-24' AS Date), CAST(N'2020-08-27' AS Date), NULL, 201, 1000000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (4, 4, CAST(N'2020-08-24' AS Date), CAST(N'2020-08-24' AS Date), 3, 102, 200000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (5, 2, CAST(N'2020-08-24' AS Date), CAST(N'2020-08-26' AS Date), NULL, 301, 500000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (6, 2, CAST(N'2020-09-24' AS Date), NULL, NULL, 304, NULL)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (7, 4, CAST(N'2020-10-15' AS Date), CAST(N'2020-10-17' AS Date), NULL, 101, 670000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (8, 2, CAST(N'2020-11-24' AS Date), CAST(N'2020-11-26' AS Date), 2, 101, 300000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (9, 2, CAST(N'2020-11-24' AS Date), CAST(N'2020-11-24' AS Date), NULL, 201, 150000)
INSERT [dbo].[thuephong] ([maThuePhong], [maKhachHang], [ngayDen], [ngayDi], [maDichVu], [maPhong], [thanhTien]) VALUES (10, 1, CAST(N'2020-09-29' AS Date), NULL, NULL, 201, NULL)
SET IDENTITY_INSERT [dbo].[thuephong] OFF
GO
ALTER TABLE [dbo].[phong]  WITH CHECK ADD  CONSTRAINT [FK_phong_loaiphong] FOREIGN KEY([loaiPhong])
REFERENCES [dbo].[loaiphong] ([loaiPhong])
GO
ALTER TABLE [dbo].[phong] CHECK CONSTRAINT [FK_phong_loaiphong]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_dichvu] FOREIGN KEY([maDichVu])
REFERENCES [dbo].[dichvu] ([maDichVu])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_dichvu]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_khachhang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[khachhang] ([maKhachHang])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_khachhang]
GO
ALTER TABLE [dbo].[thuephong]  WITH CHECK ADD  CONSTRAINT [FK_thuephong_phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[phong] ([maPhong])
GO
ALTER TABLE [dbo].[thuephong] CHECK CONSTRAINT [FK_thuephong_phong]
GO
/****** Object:  StoredProcedure [dbo].[dangnhap]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dangnhap] 
	@acc nvarchar(30) ,
	@pass nvarchar(30)
AS
BEGIN
	SELECT count(*) 
	FROM [quanlykhachsan].[dbo].[nguoidung]
	 where taiKhoan=@acc and matKhau=@pass
END

GO
/****** Object:  StoredProcedure [dbo].[hienthi_thuetheophong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[hienthi_thuetheophong]
AS
BEGIN
	
	select maThuePhong,a.maPhong,tenKhachHang,ngaySinh,chungMinhNhanDan,diaChi,soDienThoai,ngayDen,donGia
from thuephong a,khachhang b,phong c,loaiphong d
where a.maKhachHang=b.maKhachHang and a.maPhong=c.maPhong and c.loaiPhong=d.loaiPhong and thanhTien is NULL
END


GO
/****** Object:  StoredProcedure [dbo].[hienthikhachhang]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthikhachhang]

AS
BEGIN
	
	SELECT maKhachHang,tenKhachHang,ngaySinh,gioiTinh= 
	case when gioiTinh = 'True' then N'Nam' else N'Nữ' end,chungMinhNhanDan,diaChi,soDienThoai,quocTich
	FROM khachhang
END
GO
/****** Object:  StoredProcedure [dbo].[hienthiphong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthiphong] 
AS
BEGIN
select maPhong,a.loaiPhong,tinhTrang= case when tinhTrang='True' then N'Bận' else N'Rỗi' end,donGia
from phong a,loaiphong b
where a.loaiPhong=b.loaiPhong
END
GO
/****** Object:  StoredProcedure [dbo].[hienthitatcanhanvien]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[hienthitatcanhanvien]
AS
BEGIN

	SELECT maNhanVien,hoTen,gioiTinh= case when gioiTinh = 'true'  then N'Nam' else N'Nữ' end ,ngaySinh,soChungMinh,diaChi,soDienThoai,ngayVaoLam
	from [dbo].[nhanvien]
END

GO
/****** Object:  StoredProcedure [dbo].[sua_khachhang]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sua_khachhang]
(
	@makhachhang int,
	@tenKhachHang nvarchar(50),
	@ngaySinh date,
	@gioiTinh bit,
	@chungMinhNhanDan nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@quocTich nvarchar(50)
	)
AS
BEGIN
update [dbo].[khachhang]
set 
tenKhachHang=@tenKhachHang,
gioiTinh=@gioiTinh,
ngaySinh=@ngaySinh,
chungMinhNhanDan=@chungMinhNhanDan,
diaChi=@diaChi,
soDienThoai=@soDienThoai,
quocTich=@quocTich
where maKhachHang=@makhachhang
END


GO
/****** Object:  StoredProcedure [dbo].[sua_nhanvien]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sua_nhanvien]
	(
	@maNhanVien int,
	@hoTen nvarchar(50),
	@gioiTinh bit,
	@ngaySinh date,
	@soChungMinh nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@ngayVaoLam date
	)
AS
BEGIN
update [dbo].[nhanvien]
set 
hoTen=@hoTen,
gioiTinh=@gioiTinh,
ngaySinh=@ngaySinh,
soChungMinh=@soChungMinh,
diaChi=@diaChi,
soDienThoai=@soDienThoai,
ngayVaoLam=@ngayVaoLam
where maNhanVien=@maNhanVien
END


GO
/****** Object:  StoredProcedure [dbo].[them_khachhang]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[them_khachhang]
	(
	@tenKhachHang nvarchar(50),
	@ngaySinh date,
	@gioiTinh bit,
	@chungMinhNhanDan nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@quocTich nvarchar(50)
	)
AS
BEGIN
	
	insert into khachhang(tenKhachHang,ngaySinh,gioiTinh,chungMinhNhanDan,diaChi,soDienThoai,quocTich) 
	values (@tenKhachHang,@ngaySinh,@gioiTinh,@chungMinhNhanDan,@diaChi,@soDienThoai,@quocTich)
	return
END
GO
/****** Object:  StoredProcedure [dbo].[them_nhanvien]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[them_nhanvien] 
	(
	@hoTen nvarchar(50),
	@gioiTinh bit,
	@ngaySinh date,
	@soChungMinh nvarchar(25),
	@diaChi nvarchar(50),
	@soDienThoai nvarchar(25),
	@ngayVaoLam date
	)
AS
BEGIN
	
	insert into nhanvien(hoTen,gioiTinh,ngaySinh,soChungMinh,diaChi,soDienThoai,ngayVaoLam) 
	values (@hoTen,@gioiTinh,@ngaySinh,@soChungMinh,@diaChi,@soDienThoai,@ngayVaoLam)
	return
END

GO
/****** Object:  StoredProcedure [dbo].[them_thuephong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[them_thuephong]
(
@maKhachHang int,
@ngayDen date,
@maPhong int
)
AS
BEGIN
	BEGIN
	insert into thuephong(maKhachHang,ngayDen,maPhong)
	values(@maKhachHang,@ngayDen,@maPhong)
	END
	BEGIN
	update [dbo].[phong]
	set tinhTrang='True'
	where maPhong =@maPhong
	END
END

GO
/****** Object:  StoredProcedure [dbo].[timkiem_thuephong]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[timkiem_thuephong]
@maPhong int
AS
BEGIN
	
	select tenKhachHang,ngaySinh,chungMinhNhanDan,diaChi,soDienThoai,ngayDen
from thuephong a,khachhang b
where a.maKhachHang=b.maKhachHang and maPhong =@maPhong
END

GO
/****** Object:  StoredProcedure [dbo].[tinhtien]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tinhtien]
(
@ngayDi date,
@thanhTien float,
@maThuePhong int,
@maPhong int
)
AS
BEGIN
BEGIN
	update [dbo].[thuephong]
set ngayDi=@ngayDi,
thanhTien=@thanhTien
where maThuePhong=@maThuePhong
END
BEGIN
	update [dbo].[phong]
set tinhTrang = 'False'
where maPhong=@maPhong
END
END
GO
/****** Object:  StoredProcedure [dbo].[xoa_khachhang]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[xoa_phong]
@maPhong int
AS
begin
	delete
	from phong
	where maPhong=@maPhong
	end
CREATE PROCEDURE [dbo].[xoa_khachhang]
@maKhachHang int
AS
BEGIN
	DELETE 
	FROM khachhang
	 WHERE maKhachHang= @maKhachHang
END

GO
/****** Object:  StoredProcedure [dbo].[xoa_nhanvien]    Script Date: 30/09/2020 15:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[xoa_nhanvien]
@maNhanVien int
AS
BEGIN
	DELETE FROM nhanvien WHERE maNhanVien=@maNhanVien
END

GO
