USE [master]
GO
/****** Object:  Database [GBFShoe]    Script Date: 7/20/2023 7:07:23 PM ******/
CREATE DATABASE [GBFShoe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CozaStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CozaStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CozaStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\CozaStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GBFShoe] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GBFShoe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GBFShoe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GBFShoe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GBFShoe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GBFShoe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GBFShoe] SET ARITHABORT OFF 
GO
ALTER DATABASE [GBFShoe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GBFShoe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GBFShoe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GBFShoe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GBFShoe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GBFShoe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GBFShoe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GBFShoe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GBFShoe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GBFShoe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GBFShoe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GBFShoe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GBFShoe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GBFShoe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GBFShoe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GBFShoe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GBFShoe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GBFShoe] SET RECOVERY FULL 
GO
ALTER DATABASE [GBFShoe] SET  MULTI_USER 
GO
ALTER DATABASE [GBFShoe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GBFShoe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GBFShoe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GBFShoe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GBFShoe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GBFShoe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'GBFShoe', N'ON'
GO
ALTER DATABASE [GBFShoe] SET QUERY_STORE = ON
GO
ALTER DATABASE [GBFShoe] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GBFShoe]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Adminid] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[BirthDay] [datetime] NULL,
	[Gmail] [varchar](150) NULL,
	[Password] [varchar](32) NULL,
	[Phone] [varchar](13) NULL,
	[Address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Adminid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[Bannerid] [int] IDENTITY(1,1) NOT NULL,
	[Productid] [int] NULL,
	[ContentHigh] [nvarchar](150) NULL,
	[Contentlow] [nvarchar](150) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[Bannerid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Categoryid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Style] [varchar](150) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Categoryid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Colorid] [int] IDENTITY(1,1) NOT NULL,
	[ColorName] [nvarchar](30) NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[Colorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Commentid] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [int] NULL,
	[Productid] [int] NULL,
	[Message] [text] NULL,
	[Time] [date] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailsOrder]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailsOrder](
	[Productid] [int] NOT NULL,
	[Orderid] [int] NOT NULL,
	[Sizeid] [int] NULL,
	[Colorid] [int] NULL,
	[Amount] [int] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_DetailsOrder] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC,
	[Orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Orderid] [int] IDENTITY(1,1) NOT NULL,
	[Ordercode] [varchar](20) NULL,
	[Userid] [int] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
	[Statuspay] [int] NULL,
	[Status] [int] NULL,
	[OrderDay] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Productid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Describe] [ntext] NULL,
	[Illsutration] [nvarchar](150) NULL,
	[Price] [decimal](18, 0) NULL,
	[Amount] [int] NULL,
	[Categoryid] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Sizeid] [int] IDENTITY(1,1) NOT NULL,
	[NameSize] [varchar](30) NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[Sizeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/20/2023 7:07:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Userid] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[BirthDay] [datetime] NULL,
	[Gmail] [varchar](150) NULL,
	[Password] [varchar](32) NULL,
	[Phone] [varchar](13) NULL,
	[Address] [nvarchar](255) NULL,
	[image] [varchar](150) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Adminid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address]) VALUES (1, N'Trung Quan', 1, CAST(N'2002-07-28T00:00:00.000' AS DateTime), N'admin@gmail.com', N'12345', N'0888864707', N'Binh Duong')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([Bannerid], [Productid], [ContentHigh], [Contentlow]) VALUES (3, 2, N'Converse', N'Chuck 70s High')
INSERT [dbo].[Banner] ([Bannerid], [Productid], [ContentHigh], [Contentlow]) VALUES (8, 31, N'SUEDE SEASON', N'Chuck Taylor All Star Earthy Suede High Top')
INSERT [dbo].[Banner] ([Bannerid], [Productid], [ContentHigh], [Contentlow]) VALUES (9, 12, N'Converse', N'Chuck Taylor All Star')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Categoryid], [Name], [Style]) VALUES (2, N'Adidas', N'label-info')
INSERT [dbo].[Category] ([Categoryid], [Name], [Style]) VALUES (4, N'Converse', N'label-primary')
INSERT [dbo].[Category] ([Categoryid], [Name], [Style]) VALUES (5, N'Vans', N'label-warning')
INSERT [dbo].[Category] ([Categoryid], [Name], [Style]) VALUES (8, N'Nike', N'lable-primary')
INSERT [dbo].[Category] ([Categoryid], [Name], [Style]) VALUES (9, N'ThuongDinh', N'lable-danger')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 

INSERT [dbo].[Color] ([Colorid], [ColorName]) VALUES (1, N'Red')
INSERT [dbo].[Color] ([Colorid], [ColorName]) VALUES (2, N'Blue')
INSERT [dbo].[Color] ([Colorid], [ColorName]) VALUES (3, N'White')
INSERT [dbo].[Color] ([Colorid], [ColorName]) VALUES (4, N'Grey')
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([Commentid], [Userid], [Productid], [Message], [Time]) VALUES (0, 1, 4, N'sap sap', CAST(N'2022-11-19' AS Date))
INSERT [dbo].[Comment] ([Commentid], [Userid], [Productid], [Message], [Time]) VALUES (1, 2, 2, N'get shoes', CAST(N'2022-11-20' AS Date))
INSERT [dbo].[Comment] ([Commentid], [Userid], [Productid], [Message], [Time]) VALUES (2, 1, 2, N'i like it!!!', CAST(N'2022-11-20' AS Date))
INSERT [dbo].[Comment] ([Commentid], [Userid], [Productid], [Message], [Time]) VALUES (3, 11, 34, N'?ng H? Công Đ?ng LGBT', CAST(N'2023-07-20' AS Date))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
INSERT [dbo].[DetailsOrder] ([Productid], [Orderid], [Sizeid], [Colorid], [Amount], [TotalPrice]) VALUES (2, 28, 1, 1, 1, CAST(450000 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrder] ([Productid], [Orderid], [Sizeid], [Colorid], [Amount], [TotalPrice]) VALUES (4, 26, 1, 1, 1, CAST(3000000 AS Decimal(18, 0)))
INSERT [dbo].[DetailsOrder] ([Productid], [Orderid], [Sizeid], [Colorid], [Amount], [TotalPrice]) VALUES (30, 27, 1, 1, 1, CAST(1400000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Orderid], [Ordercode], [Userid], [TotalPrice], [Statuspay], [Status], [OrderDay]) VALUES (26, N'2023719193759202319', 11, CAST(3000000 AS Decimal(18, 0)), 0, 1, CAST(N'2023-07-19T19:37:59.887' AS DateTime))
INSERT [dbo].[Order] ([Orderid], [Ordercode], [Userid], [TotalPrice], [Statuspay], [Status], [OrderDay]) VALUES (27, N'2023719194047202319', 12, CAST(1400000 AS Decimal(18, 0)), 0, 0, CAST(N'2023-07-19T19:40:47.937' AS DateTime))
INSERT [dbo].[Order] ([Orderid], [Ordercode], [Userid], [TotalPrice], [Statuspay], [Status], [OrderDay]) VALUES (28, N'2023720134428202320', 11, CAST(450000 AS Decimal(18, 0)), 0, 1, CAST(N'2023-07-20T13:44:28.120' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (1, N' Run Star Hike Platform Laser Camo', N'<h2>UNDER THE RADAR.</h2>

<p>Designed for a vintage, well-worn look straight out of the box, we&#39;ve updated the coveted Run Star Hike platform with archival camo prints and distressed details. A solid tongue pops against wavy camo, while an exaggerated, jagged outsole ups the attitude.</p>

<p>PRODUCT DETAILS</p>

<ul>
	<li>High top canvas platform sneaker.</li>
	<li>OrthoLite cushioning for all-day comfort.</li>
	<li>All-over camo prints express your style.</li>
	<li>Exaggerated, jagged outsole.</li>
	<li>A distressed treatment gives a vintage vibe, straight out of the box.</li>
</ul>

<p>&nbsp;</p>
', N'1130_170913c_a_107x1.jpg', CAST(900000 AS Decimal(18, 0)), 21, 4)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (2, N'Chuck 70s High AllWhite', N'<p>Converse 1970s l&agrave; 1 trong những d&ograve;ng sản phẩm b&aacute;n chạy nhất của Converse.Phần đế m&agrave;u trắng ng&agrave; vintage được phủ 1 lớp b&oacute;ng b&ecirc;n ngoài là đi&ecirc;̉m nh&acirc;́n ri&ecirc;ng cho dòng 1970s, dễ vệ sinh hơn.</p>
', N'Chuck_70s.jpg', CAST(450000 AS Decimal(18, 0)), 20, 4)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (4, N'Nike Pegasus 40 By You Custom Men''s Road Running Shoes', N'<p>A springy ride for every run, the Peg&#39;s familiar, just-for-you feel returns to help you accomplish your goals. This milestone version has the same responsiveness you love, but with better comfort in those sensitive areas of your foot, like the arch and toes. Customise these Pegs by painting them in any way you prefer, choosing from a wheel of cheerful, sunshiny colours and an infinite cache of distinctive summer-themed design options that&#39;ll distinguish you on the road.</p>

<ul>
	<li>Colour Shown: Multi-Colour/Multi-Colour/Multi-Colour</li>
	<li>Style: FB2382-900</li>
</ul>
', N'8a14cccf-bd91-4d17-9733-411fb43c9f55.jpg', CAST(3000000 AS Decimal(18, 0)), 20, 8)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (11, N'Converse Chuck Taylor All Star 70 Plus', N'<p>Inspired by the Chuck 70s series, the Chuck 70s Plus is a &quot;out-of-phase&quot; design with a combination of 12oz and 16oz recycled fabrics. patch - an impressive reproduction that breaks all the rules yet retains the classic character of this classic shoe.</p>
', N'converse-taylor.jpg', CAST(400000 AS Decimal(18, 0)), 20, 4)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (12, N'Chuck Taylor All Star', N'<pre>
Inspired by the Chuck 70s series, the Chuck 70s Plus is a &quot;out-of-phase&quot; design with a combination of 12oz and 16oz recycled fabrics. patch - an impressive reproduction that breaks all the rules yet retains the classic character of this classic shoe.</pre>
', N'A00915C_P1-650x650.jpg', CAST(699000 AS Decimal(18, 0)), 54, 2)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (13, N'Vans MN Skate Old Skool ', N'<p>The classic Old Skool model returns in the Vans Skate Old Skool release with a series of groundbreaking innovations for the skate line. Reborn with a new name, the shoe not only impresses with the smallest details changed, but also makes a stir in the skaters village with its cutting-edge technology integrated in Duracap insoles, PopCush midsoles or high glue. su SickStick, providing maximum comfort and convenience for skate-players.</p>
', N'VN0A5FCBY28-650x650.jpg', CAST(799000 AS Decimal(18, 0)), 43, 5)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (14, N'Vans UA Authentic 44 DX Our Legends', N'<p>Vans x Our Legends (Mongoose) is built on the silhouette of the Authentic 44 DX series that promises to explode the BMX and Skate enthusiasts community. With the main material is 100% Textile combined with modern OrthoLite cushioning will bring the best moments of experience. Especially with the vibrant color schemes representing each historical milestone of Mongoose, shown in this collection will make the wearer more excited.</p>
', N'VN0A4BVYRDB_1-1-650x650.jpg', CAST(850000 AS Decimal(18, 0)), 43, 5)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (27, N'Nike Air Force 1 ''07', N'<p>The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: &#39;80s-inspired construction, bold details and nothin&#39;-but-net style.</p>

<ul>
	<li>Colour Shown: Black/Black/White</li>
	<li>Style: DV0788-001</li>
</ul>
', N'949c7efc-23fc-4093-846f-9493de3f0291.jpg', CAST(2599000 AS Decimal(18, 0)), 51, 8)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (28, N'Nike Air Force 1 Shadow', N'<p>Make every step unique. These kicks put a playful twist on a hoops icon by doubling up on everything you love about the AF-1. Layered materials like linen-evoking textiles and synthetic leather pair with an exaggerated midsole and a pop of pastels to bring you double the style.</p>

<ul>
	<li>Colour Shown: Sail/Sea Coral/Indigo Haze/Coral Chalk</li>
	<li>Style: DV7449-101</li>
</ul>
', N'18ff4891-e8f1-4977-8a18-64314c8329d5.jpg', CAST(1299000 AS Decimal(18, 0)), 12, 8)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (29, N'Nike Air Force 1 ''07 Next Nature', N'<p>The radiance lives on in the Nike Air Force 1 &#39;07 Next Nature. Made from durable synthetic leather, this b-ball icon features the same legendary comfort and clean finishes of the original. Subtle pops of colour add the perfect amount of flash to help you shine. And of course, you still get Nike Air cushioning and the pivot-circle outsole that helped make the original famous.</p>

<ul>
	<li>Colour Shown: White/Pale Vanilla/Volt/Light Smoke Grey</li>
	<li>Style: FJ4825-100</li>
</ul>
', N'9326fab9-3f9b-487c-bc44-df6d19e308c8.jpg', CAST(3999000 AS Decimal(18, 0)), 55, 8)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (30, N'Chuck 70 Embroidery High Top', N'<p>WILD WEST The already premium Chuck 70 gets an elevated update with a chambray upper, adorned with colourful embroidery. Paired with matte rubber for a low-key vintage look, they&#39;re a Wild West take on your favourite sneakers.</p>

<p>WHY YOU SHOULD BE DOWN</p>

<ul>
	<li>High-top shoe with chambray upper</li>
	<li>OrthoLite cushioning for all-day comfort</li>
	<li>Western-inspired embroidery dresses up your sneakers</li>
	<li>Unvarnished foxing for a matte finish</li>
	<li>Iconic Chuck Taylor ankle patch</li>
</ul>
', N'a03664c_a_107x1.jpg', CAST(1400000 AS Decimal(18, 0)), 61, 4)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (31, N'Chuck Taylor All Star Earthy Suede High Top', N'<p>SUEDE SEASON. Subtle tonal shifts in new, nature-fueled colours take your favourite Chucks to a whole new level. Made with a breathable, mesh-lined suede upper, the colour-blocked design keeps the look clean and classic from every angle. Complete with classic and tonal laces, all that&#39;s missing is your unique styling.</p>

<p>WHY YOU SHOULD BE DOWN</p>

<ul>
	<li>High-top sneaker with suede upper</li>
	<li>OrthoLite cushioning for all-day comfort</li>
	<li>A mesh lining keeps it breathable</li>
	<li>A colour-blocked design in earthy colors expresses your style</li>
	<li>Iconic Chuck Taylor ankle patch</li>
</ul>
', N'a01461c_a_107x1.jpg', CAST(1200000 AS Decimal(18, 0)), 11, 4)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (33, N'HOOPS 3.0 LOW CLASSIC VINTAGE SHOES', N'<h3>LOW-CUT BASKETBALL-INSPIRED SHOES FOR ALL YOUR EVERYDAY DEEDS.</h3>

<p>Clean, fresh, understated style that takes your breath away. That&#39;s what you&#39;ll see when you pull these adidas kicks out of their box. Tonal 3-Stripes on the uncluttered synthetic leather upper rock a heritage vibe. A cushiony midsole adds soft support over the retro rubber outsole.</p>

<p>&nbsp;</p>
', N'Screenshot 2023-07-19 192709.png', CAST(2860000 AS Decimal(18, 0)), 15, 2)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (34, N'HOOPS 3.0 MID CLASSIC VINTAGE SHOES', N'<h3>VERSATILE MID-CUT BASKETBALL-INSPIRED SHOES.</h3>

<p>Pick up your dry cleaning or chill in the park with your pals. Dress in track pants or chinos. Wear whatever you want as you do all of your everyday deeds in style and comfort in these adidas shoes. The iconic 3-Stripes on the synthetic leather upper, plus a rubber cupsole underneath, create a heritage vibe.</p>
', N'Screenshot 2023-07-19 192943.png', CAST(3999000 AS Decimal(18, 0)), 12, 2)
INSERT [dbo].[Product] ([Productid], [Name], [Describe], [Illsutration], [Price], [Amount], [Categoryid]) VALUES (35, N'RACER TR23 SHOES', N'<h3>COMFORTABLE SHOES MADE IN PART WITH RECYCLED MATERIALS.</h3>

<p>Take the look of a classic shoe and refresh it with modern streetwear vibes, and you get these adidas shoes that will take you through the day in supreme comfort. The Cloudfoam midsole is to thank for that, offering soft cushioning for an ultra-smooth step from your heel all the way to your toe. A flexible textile upper lets your feet breathe, and a sleek rubber outsole gives every step a solid grip. Made with a series of recycled materials, this upper features at least 50% recycled content. This product represents just one of our solutions to help end plastic waste.</p>
', N'Screenshot 2023-07-19 193112.png', CAST(2199000 AS Decimal(18, 0)), 16, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Sizeid], [NameSize]) VALUES (1, N'Size 39')
INSERT [dbo].[Size] ([Sizeid], [NameSize]) VALUES (2, N'Size 40')
INSERT [dbo].[Size] ([Sizeid], [NameSize]) VALUES (3, N'Size 41')
INSERT [dbo].[Size] ([Sizeid], [NameSize]) VALUES (4, N'Size 42')
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Userid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address], [image]) VALUES (1, N'Vuong Vo Trung Quan', 1, CAST(N'2002-07-19T00:00:00.000' AS DateTime), N'user@gmail.com', N'123123', N'012354851', N'Binh Duong', N' a.jpg')
INSERT [dbo].[User] ([Userid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address], [image]) VALUES (2, N'Vo Trung Quan', 1, CAST(N'2022-11-15T00:00:00.000' AS DateTime), N'user1@gmail.com', N'123123', N'12312312', N'Binh Duong', N'a2967932bb4da521763cb8d982103f96.jpg')
INSERT [dbo].[User] ([Userid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address], [image]) VALUES (10, N'Phan Thanh Vy', 0, CAST(N'2002-10-31T00:00:00.000' AS DateTime), N'vythanh@gmail.com', N'12345', N'0946569945', N'Bình Dương', N'Báo adorable.jpg')
INSERT [dbo].[User] ([Userid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address], [image]) VALUES (11, N'Nguyễn Hoàng Trọng Phúc', 1, CAST(N'2002-12-06T00:00:00.000' AS DateTime), N'phucnguyen@gmail.com', N'12345', N'0946569123', N'Bình Dương', N'banner-02.jpg')
INSERT [dbo].[User] ([Userid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address], [image]) VALUES (12, N'Nguyễn Đức Trung', 1, CAST(N'2002-08-11T00:00:00.000' AS DateTime), N'trungnguyen@gmail.com', N'12345', N'0946569123', N'Bình Dương', N'product-min-03.jpg')
INSERT [dbo].[User] ([Userid], [FullName], [Gender], [BirthDay], [Gmail], [Password], [Phone], [Address], [image]) VALUES (13, N'Nguyễn Thị Huệ', 0, CAST(N'2002-01-02T00:00:00.000' AS DateTime), N'huenguyen@gmail.com', N'12345', N'0946584515', N'Thanh Hóa', N'banner-01.jpg')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Banner]  WITH CHECK ADD  CONSTRAINT [FK_Banner_Product] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[Banner] CHECK CONSTRAINT [FK_Banner_Product]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Product] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Product]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([Userid])
REFERENCES [dbo].[User] ([Userid])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[DetailsOrder]  WITH CHECK ADD  CONSTRAINT [FK_DetailsOrder_Color] FOREIGN KEY([Colorid])
REFERENCES [dbo].[Color] ([Colorid])
GO
ALTER TABLE [dbo].[DetailsOrder] CHECK CONSTRAINT [FK_DetailsOrder_Color]
GO
ALTER TABLE [dbo].[DetailsOrder]  WITH CHECK ADD  CONSTRAINT [FK_DetailsOrder_Order] FOREIGN KEY([Orderid])
REFERENCES [dbo].[Order] ([Orderid])
GO
ALTER TABLE [dbo].[DetailsOrder] CHECK CONSTRAINT [FK_DetailsOrder_Order]
GO
ALTER TABLE [dbo].[DetailsOrder]  WITH CHECK ADD  CONSTRAINT [FK_DetailsOrder_Product] FOREIGN KEY([Productid])
REFERENCES [dbo].[Product] ([Productid])
GO
ALTER TABLE [dbo].[DetailsOrder] CHECK CONSTRAINT [FK_DetailsOrder_Product]
GO
ALTER TABLE [dbo].[DetailsOrder]  WITH CHECK ADD  CONSTRAINT [FK_DetailsOrder_Size] FOREIGN KEY([Sizeid])
REFERENCES [dbo].[Size] ([Sizeid])
GO
ALTER TABLE [dbo].[DetailsOrder] CHECK CONSTRAINT [FK_DetailsOrder_Size]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([Userid])
REFERENCES [dbo].[User] ([Userid])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[Category] ([Categoryid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [GBFShoe] SET  READ_WRITE 
GO
