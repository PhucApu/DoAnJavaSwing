USE [master]
GO
/****** Object:  Database [FOOD_STORE]    Script Date: 4/18/2023 1:25:03 PM ******/
CREATE DATABASE [FOOD_STORE]
GO
ALTER DATABASE [FOOD_STORE] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [FOOD_STORE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FOOD_STORE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FOOD_STORE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FOOD_STORE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FOOD_STORE] SET ARITHABORT OFF 
GO
ALTER DATABASE [FOOD_STORE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FOOD_STORE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FOOD_STORE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FOOD_STORE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FOOD_STORE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FOOD_STORE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FOOD_STORE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FOOD_STORE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FOOD_STORE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FOOD_STORE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FOOD_STORE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FOOD_STORE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FOOD_STORE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FOOD_STORE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FOOD_STORE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FOOD_STORE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FOOD_STORE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FOOD_STORE] SET RECOVERY FULL 
GO
ALTER DATABASE [FOOD_STORE] SET  MULTI_USER 
GO
ALTER DATABASE [FOOD_STORE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FOOD_STORE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FOOD_STORE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FOOD_STORE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FOOD_STORE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FOOD_STORE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'FOOD_STORE', N'ON'
GO
ALTER DATABASE [FOOD_STORE] SET QUERY_STORE = OFF
GO
USE [FOOD_STORE]
GO
/****** Object:  Table [dbo].[tblAddressStaff]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddressStaff](
	[ID_NV] [nvarchar](50) NOT NULL,
	[SoNha] [nvarchar](50) NOT NULL,
	[Quan] [nvarchar](50) NOT NULL,
	[ThanhPho] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAddressSupplier]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddressSupplier](
	[MaNCC] [nvarchar](50) NOT NULL,
	[SoNha] [nvarchar](50) NOT NULL,
	[Quan] [nvarchar](50) NOT NULL,
	[ThanhPho] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblAddressSupplier] PRIMARY KEY CLUSTERED 
(
	[SoNha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuNhap]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuNhap](
	[ID_CTPhieuNhap] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChiTietPhieuXuat]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChiTietPhieuXuat](
	[ID_CTPhieuXuat] [nvarchar](50) NULL,
	[TenSP] [nvarchar](50) NULL,
	[MaSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCTHoaDon]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCTHoaDon](
	[MaHD] [nvarchar](50) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDrink]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDrink](
	[Ma_Drink] [nvarchar](50) NOT NULL,
	[Alcoholic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblDrink] PRIMARY KEY CLUSTERED 
(
	[Ma_Drink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFood]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFood](
	[Ma_Food] [nvarchar](50) NOT NULL,
	[Vegetarian] [nvarchar](50) NOT NULL,
	[Frozenfood] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblFood] PRIMARY KEY CLUSTERED 
(
	[Ma_Food] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFullTimeStaff]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFullTimeStaff](
	[ID_FullTimeStaff] [nvarchar](50) NOT NULL,
	[BaseSalary] [int] NOT NULL,
	[BonusRate] [float] NOT NULL,
	[WorkDay] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblFullTimeStaff] PRIMARY KEY CLUSTERED 
(
	[ID_FullTimeStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[Ma] [nvarchar](50) NOT NULL,
	[MaNV] [nvarchar](50) NOT NULL,
	[ThoiGianXuat] [nvarchar](50) NOT NULL,
	[TongTien] [int] NOT NULL,
	[TinhTrang] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblHoaDon] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblManager]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblManager](
	[ID_Manager] [nvarchar](50) NOT NULL,
	[Allowance] [int] NOT NULL,
 CONSTRAINT [PK_tblManager] PRIMARY KEY CLUSTERED 
(
	[ID_Manager] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieu]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieu](
	[ID] [nvarchar](50) NOT NULL,
	[Ngay] [nvarchar](50) NULL,
	[ID_NV] [nvarchar](50) NULL,
	[Tongtien] [int] NULL,
 CONSTRAINT [PK_tblPhieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuNhap]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuNhap](
	[ID_PhieuNhap] [nvarchar](50) NOT NULL,
	[MaNSX] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[ID_PhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhieuXuat]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuXuat](
	[ID_PhieuXuat] [nvarchar](50) NOT NULL,
	[ID_HoaDon] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[ID_PhieuXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProducts]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProducts](
	[Ma_Product] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
	[Taxes] [float] NOT NULL,
	[ExpiryDate] [nvarchar](50) NOT NULL,
	[Ma_Supplier] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_tblProducts] PRIMARY KEY CLUSTERED 
(
	[Ma_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSeasonalStaff]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSeasonalStaff](
	[ID_Seasonal] [nvarchar](50) NOT NULL,
	[HourlyWage] [int] NOT NULL,
	[WorkHours] [int] NOT NULL,
 CONSTRAINT [PK_tblSeasonalStaff] PRIMARY KEY CLUSTERED 
(
	[ID_Seasonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStaff]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStaff](
	[ID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Date_in] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[CMND] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Salary] [float] NOT NULL,
 CONSTRAINT [PK_tblStaff] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSupplier]    Script Date: 4/18/2023 1:25:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSupplier](
	[Ma] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[SoDT] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAddressStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblAddressStaff_tblStaff] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[tblStaff] ([ID])
GO
ALTER TABLE [dbo].[tblAddressStaff] CHECK CONSTRAINT [FK_tblAddressStaff_tblStaff]
GO
ALTER TABLE [dbo].[tblAddressSupplier]  WITH CHECK ADD  CONSTRAINT [FK_tblAddressSupplier_tblAddressSupplier] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblSupplier] ([Ma])
GO
ALTER TABLE [dbo].[tblAddressSupplier] CHECK CONSTRAINT [FK_tblAddressSupplier_tblAddressSupplier]
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuNhap_tblChiTietPhieuNhap] FOREIGN KEY([ID_CTPhieuNhap])
REFERENCES [dbo].[tblPhieuNhap] ([ID_PhieuNhap])
GO
ALTER TABLE [dbo].[tblChiTietPhieuNhap] CHECK CONSTRAINT [FK_tblChiTietPhieuNhap_tblChiTietPhieuNhap]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuXuat_tblPhieuXuat] FOREIGN KEY([ID_CTPhieuXuat])
REFERENCES [dbo].[tblPhieuXuat] ([ID_PhieuXuat])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [FK_tblChiTietPhieuXuat_tblPhieuXuat]
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblChiTietPhieuXuat_tblProducts] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tblProducts] ([Ma_Product])
GO
ALTER TABLE [dbo].[tblChiTietPhieuXuat] CHECK CONSTRAINT [FK_tblChiTietPhieuXuat_tblProducts]
GO
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblCTHoaDon_tblHoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblHoaDon] ([Ma])
GO
ALTER TABLE [dbo].[tblCTHoaDon] CHECK CONSTRAINT [FK_tblCTHoaDon_tblHoaDon]
GO
ALTER TABLE [dbo].[tblCTHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblCTHoaDon_tblProducts] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tblProducts] ([Ma_Product])
GO
ALTER TABLE [dbo].[tblCTHoaDon] CHECK CONSTRAINT [FK_tblCTHoaDon_tblProducts]
GO
ALTER TABLE [dbo].[tblDrink]  WITH CHECK ADD  CONSTRAINT [FK_tblDrink_tblProducts] FOREIGN KEY([Ma_Drink])
REFERENCES [dbo].[tblProducts] ([Ma_Product])
GO
ALTER TABLE [dbo].[tblDrink] CHECK CONSTRAINT [FK_tblDrink_tblProducts]
GO
ALTER TABLE [dbo].[tblFood]  WITH CHECK ADD  CONSTRAINT [FK_tblFood_tblProducts] FOREIGN KEY([Ma_Food])
REFERENCES [dbo].[tblProducts] ([Ma_Product])
GO
ALTER TABLE [dbo].[tblFood] CHECK CONSTRAINT [FK_tblFood_tblProducts]
GO
ALTER TABLE [dbo].[tblFullTimeStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblFullTimeStaff_tblStaff] FOREIGN KEY([ID_FullTimeStaff])
REFERENCES [dbo].[tblStaff] ([ID])
GO
ALTER TABLE [dbo].[tblFullTimeStaff] CHECK CONSTRAINT [FK_tblFullTimeStaff_tblStaff]
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tblHoaDon_tblStaff] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblStaff] ([ID])
GO
ALTER TABLE [dbo].[tblHoaDon] CHECK CONSTRAINT [FK_tblHoaDon_tblStaff]
GO
ALTER TABLE [dbo].[tblManager]  WITH CHECK ADD  CONSTRAINT [FK_tblManager_tblFullTimeStaff] FOREIGN KEY([ID_Manager])
REFERENCES [dbo].[tblFullTimeStaff] ([ID_FullTimeStaff])
GO
ALTER TABLE [dbo].[tblManager] CHECK CONSTRAINT [FK_tblManager_tblFullTimeStaff]
GO
ALTER TABLE [dbo].[tblPhieu]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieu_tblStaff] FOREIGN KEY([ID_NV])
REFERENCES [dbo].[tblStaff] ([ID])
GO
ALTER TABLE [dbo].[tblPhieu] CHECK CONSTRAINT [FK_tblPhieu_tblStaff]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhap_tblPhieu] FOREIGN KEY([ID_PhieuNhap])
REFERENCES [dbo].[tblPhieu] ([ID])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [FK_tblPhieuNhap_tblPhieu]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhap_tblSupplier] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[tblSupplier] ([Ma])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [FK_tblPhieuNhap_tblSupplier]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuat_tblHoaDon] FOREIGN KEY([ID_HoaDon])
REFERENCES [dbo].[tblHoaDon] ([Ma])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [FK_tblPhieuXuat_tblHoaDon]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuat_tblPhieu] FOREIGN KEY([ID_PhieuXuat])
REFERENCES [dbo].[tblPhieu] ([ID])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [FK_tblPhieuXuat_tblPhieu]
GO
ALTER TABLE [dbo].[tblProducts]  WITH CHECK ADD  CONSTRAINT [FK_tblProducts_tblSupplier] FOREIGN KEY([Ma_Supplier])
REFERENCES [dbo].[tblSupplier] ([Ma])
GO
ALTER TABLE [dbo].[tblProducts] CHECK CONSTRAINT [FK_tblProducts_tblSupplier]
GO
ALTER TABLE [dbo].[tblSeasonalStaff]  WITH CHECK ADD  CONSTRAINT [FK_tblSeasonalStaff_tblStaff] FOREIGN KEY([ID_Seasonal])
REFERENCES [dbo].[tblStaff] ([ID])
GO
ALTER TABLE [dbo].[tblSeasonalStaff] CHECK CONSTRAINT [FK_tblSeasonalStaff_tblStaff]
GO
USE [master]
GO
ALTER DATABASE [FOOD_STORE] SET  READ_WRITE 
GO
