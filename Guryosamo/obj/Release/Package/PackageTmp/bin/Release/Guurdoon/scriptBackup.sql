USE [master]
GO
/****** Object:  Database [Guryosamo]    Script Date: 5/30/2022 3:16:24 PM ******/
CREATE DATABASE [Guryosamo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Guryosamo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Guryosamo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Guryosamo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Guryosamo_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Guryosamo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Guryosamo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Guryosamo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Guryosamo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Guryosamo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Guryosamo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Guryosamo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Guryosamo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Guryosamo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Guryosamo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Guryosamo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Guryosamo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Guryosamo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Guryosamo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Guryosamo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Guryosamo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Guryosamo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Guryosamo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Guryosamo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Guryosamo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Guryosamo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Guryosamo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Guryosamo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Guryosamo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Guryosamo] SET RECOVERY FULL 
GO
ALTER DATABASE [Guryosamo] SET  MULTI_USER 
GO
ALTER DATABASE [Guryosamo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Guryosamo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Guryosamo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Guryosamo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Guryosamo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Guryosamo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Guryosamo', N'ON'
GO
ALTER DATABASE [Guryosamo] SET QUERY_STORE = OFF
GO
USE [Guryosamo]
GO
/****** Object:  Table [dbo].[Addmin]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addmin](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[email_address] [nvarchar](255) NOT NULL,
	[password] [binary](64) NOT NULL,
	[salt] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_ADDMIN] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blockstatus]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blockstatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[isblocked] [varchar](50) NULL,
 CONSTRAINT [PK_blockstatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emailcon]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailcon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[startdate] [datetime] NOT NULL,
	[expridtime] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FemaleChoice]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FemaleChoice](
	[user_id] [int] NOT NULL,
	[age_range] [varchar](255) NOT NULL,
	[height] [varchar](255) NOT NULL,
	[weight] [varchar](255) NOT NULL,
	[skin_color] [varchar](255) NOT NULL,
	[mariage_status] [varchar](255) NOT NULL,
	[education_level] [varchar](255) NOT NULL,
	[homework_help] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FemaleInformation]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FemaleInformation](
	[user_id] [int] NOT NULL,
	[age_range] [varchar](255) NOT NULL,
	[height] [varchar](255) NOT NULL,
	[weight] [varchar](255) NOT NULL,
	[skin_color] [varchar](255) NOT NULL,
	[mariage_status] [varchar](255) NOT NULL,
	[adress_town] [varchar](255) NOT NULL,
	[education_level] [varchar](255) NOT NULL,
	[do_you_work] [varchar](255) NOT NULL,
	[work_place] [varchar](255) NOT NULL,
	[job_title] [varchar](255) NOT NULL,
	[cooking] [varchar](255) NOT NULL,
	[diseases] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FreeDruration]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FreeDruration](
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[rank] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[imagename] [nvarchar](255) NULL,
	[imagepath] [nvarchar](255) NULL,
	[useremail] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaleChoice]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaleChoice](
	[user_id] [int] NOT NULL,
	[age_range] [varchar](255) NOT NULL,
	[height] [varchar](255) NOT NULL,
	[weight] [varchar](255) NOT NULL,
	[skin_color] [varchar](255) NOT NULL,
	[mariage_status] [varchar](255) NOT NULL,
	[education_level] [varchar](255) NOT NULL,
	[does_she_work] [varchar](255) NOT NULL,
	[cooking] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaleInformation]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaleInformation](
	[user_id] [int] NOT NULL,
	[age_range] [varchar](255) NOT NULL,
	[height] [varchar](255) NOT NULL,
	[weight] [varchar](255) NOT NULL,
	[skin_color] [varchar](255) NOT NULL,
	[mariage_status] [varchar](255) NOT NULL,
	[adress_town] [varchar](255) NOT NULL,
	[education_level] [varchar](255) NOT NULL,
	[work_place] [varchar](255) NOT NULL,
	[job_title] [varchar](255) NOT NULL,
	[homework_help] [varchar](255) NOT NULL,
	[diseases] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchingFemale]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchingFemale](
	[female_id] [int] NOT NULL,
	[male_id] [int] NOT NULL,
	[male_status] [varchar](10) NOT NULL,
	[female_staus] [varchar](10) NOT NULL,
	[result] [varchar](10) NOT NULL,
	[age_range] [int] NOT NULL,
	[mariage_status] [int] NOT NULL,
	[education_level] [int] NOT NULL,
	[height] [int] NOT NULL,
	[weight] [int] NOT NULL,
	[skin_color] [int] NOT NULL,
	[homework_help] [int] NOT NULL,
	[total] [int] NOT NULL,
	[average] [int] NOT NULL,
	[rank] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatchingMale]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchingMale](
	[male_id] [int] NOT NULL,
	[female_id] [int] NOT NULL,
	[male_status] [varchar](10) NOT NULL,
	[female_staus] [varchar](10) NOT NULL,
	[result] [varchar](10) NOT NULL,
	[age_range] [int] NOT NULL,
	[mariage_status] [int] NOT NULL,
	[education_level] [int] NOT NULL,
	[height] [int] NOT NULL,
	[weight] [int] NOT NULL,
	[skin_color] [int] NOT NULL,
	[does_she_work] [int] NOT NULL,
	[cooking] [int] NOT NULL,
	[total] [int] NOT NULL,
	[average] [int] NOT NULL,
	[rank] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[method] [varchar](50) NULL,
	[service] [varchar](50) NULL,
	[pay_no] [varchar](50) NULL,
	[pay_date] [date] NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[user_id] [int] NOT NULL,
	[registred] [varchar](255) NOT NULL,
	[registred_date] [date] NOT NULL,
	[paid] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployees]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [nvarchar](20) NULL,
	[JobTitle] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/30/2022 3:16:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[midlle_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[gender] [varchar](255) NOT NULL,
	[phone] [varchar](255) NOT NULL,
	[email_address] [varchar](255) NOT NULL,
	[password] [binary](64) NULL,
	[salt] [uniqueidentifier] NULL,
	[verified] [varchar](255) NOT NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Addmin] ON 

INSERT [dbo].[Addmin] ([_id], [username], [email_address], [password], [salt]) VALUES (1, N'admin', N'addmin@gmail.com', 0xB0BF2A01CB6698CEA676A800ACB1606B544C3BFD5805D86990DDB998A72B76618C3E536BC529E4A28AD6A957A5C344FA231DB7E923271DA93FDB99FA4D99C0FF, N'1f68348e-ab0c-46df-89b3-a2b2860253bb')
INSERT [dbo].[Addmin] ([_id], [username], [email_address], [password], [salt]) VALUES (3, N'addmin2', N'addmin2@gmail.com', 0x7E9EDCC53E91DCD085D948C408A83CC8448EBDD05355059FFB6CC74C036FCF129B11E54282A0ED59784FC7BF41B4DD94B86E8477D3BC6C66FB1569C8B34CF45E, N'e5766268-b582-46e8-9a7d-047452ebdf53')
SET IDENTITY_INSERT [dbo].[Addmin] OFF
GO
INSERT [dbo].[FemaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [do_you_work], [work_place], [job_title], [cooking], [diseases]) VALUES (2046, N'17-20', N'1.80', N'71-75', N'Maarriin', N'Carmal (Garoob) ', N'Mogadishu', N'School', N'Maya', N'Maya', N'Maya', N' 100%', N'Maya')
INSERT [dbo].[FemaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [do_you_work], [work_place], [job_title], [cooking], [diseases]) VALUES (2052, N'26-30', N'1.60', N'71-75', N'Madow', N'Gashaanti (gabar) ', N'ceelasha', N'Bachelor', N'Haa', N'School', N'Macalin', N' 100%', N'Maya')
INSERT [dbo].[FemaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [do_you_work], [work_place], [job_title], [cooking], [diseases]) VALUES (2054, N'21-25', N'1.60', N'76-80', N'Maarriin', N'Gashaanti (gabar) ', N'Weydow', N'Xirfadle', N'Haa', N'Bakaaro', N'Ganacsade', N' 100%', N'Maya')
GO
SET IDENTITY_INSERT [dbo].[FreeDruration] ON 

INSERT [dbo].[FreeDruration] ([start_date], [end_date], [rank]) VALUES (CAST(N'2022-01-30T11:17:00.000' AS DateTime), CAST(N'2022-01-30T11:40:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[FreeDruration] OFF
GO
INSERT [dbo].[MaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [work_place], [job_title], [homework_help], [diseases]) VALUES (2057, N'17-20', N'1.65', N'86-90', N'Maarriin', N'Doob', N'Mogadishu', N'Diini', N'Bakaaro', N'Ganacsade', N'50%', N'Maya')
INSERT [dbo].[MaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [work_place], [job_title], [homework_help], [diseases]) VALUES (2056, N'41-45', N'1.55', N'71-75', N'Maarriin', N'Xaasle', N'Bakaaro', N'Diini', N'Bakaaro', N'Ganansade', N'100%', N'Maya')
INSERT [dbo].[MaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [work_place], [job_title], [homework_help], [diseases]) VALUES (2058, N'26-30', N'1.80', N'71-75', N'Maarriin', N'Doob', N'Bakaaro', N'Xirfadle', N'Bakaaro', N'Ganansade', N'100%', N'Haa')
INSERT [dbo].[MaleInformation] ([user_id], [age_range], [height], [weight], [skin_color], [mariage_status], [adress_town], [education_level], [work_place], [job_title], [homework_help], [diseases]) VALUES (2045, N'17-20', N'1.85', N'71-75', N'Maarriin', N'Doob', N'Bakaaro', N'Xirfadle', N'Bakaaro', N'Ganansade', N'100%', N'Maya')
GO
SET IDENTITY_INSERT [dbo].[MatchingMale] ON 

INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2056, 2046, N'accept', N'accept', N'success', 100, 100, 0, 0, 0, 0, 100, 0, 300, 37, 2015)
INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2057, 2046, N'accept', N'rejected', N'failed', 100, 100, 100, 100, 100, 100, 100, 0, 700, 87, 2016)
INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2056, 2052, N'accept', N'rejected', N'failed', 100, 100, 100, 100, 100, 0, 100, 0, 600, 75, 2017)
INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2056, 2046, N'accept', N'accept', N'success', 0, 100, 0, 0, 0, 100, 100, 0, 300, 37, 2019)
INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2058, 2052, N'accept', N'accept', N'success', 100, 0, 100, 0, 0, 100, 0, 0, 300, 37, 2020)
INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2045, 2052, N'accept', N'accept', N'success', 0, 0, 0, 0, 100, 100, 100, 0, 300, 37, 2021)
INSERT [dbo].[MatchingMale] ([male_id], [female_id], [male_status], [female_staus], [result], [age_range], [mariage_status], [education_level], [height], [weight], [skin_color], [does_she_work], [cooking], [total], [average], [rank]) VALUES (2057, 2054, N'accept', N'accept', N'success', 100, 100, 100, 100, 100, 100, 0, 0, 600, 75, 2018)
SET IDENTITY_INSERT [dbo].[MatchingMale] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1002, 2057, N'Taleefonka', N'E-Dahab', N'989898', CAST(N'2022-05-25' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1003, 2046, N'Taleefonka', N'Zaad', N'4435354', CAST(N'2022-05-25' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1004, 2056, N'Bankiga', N'Dahabshiil Bank', N'8989898989', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1005, 2056, N'Taleefonka', N'EvcPlus', N'343553', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1006, 2057, N'Bankiga', N'Amal Bank', N'76767', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1007, 2054, N'Taleefonka', N'EvcPlus', N'76768789787', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1008, 2046, N'Bankiga', N'Premier Bank', N'5478789', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1009, 2052, N'Taleefonka', N'EvcPlus', N'615535508', CAST(N'2022-05-26' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1010, 2058, N'Taleefonka', N'E-Dahab', N'8989898', CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Payments] ([payment_id], [user_id], [method], [service], [pay_no], [pay_date]) VALUES (1011, 2045, N'Taleefonka', N'EvcPlus', N'7776766', CAST(N'2022-05-30' AS Date))
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2057, N'true', CAST(N'2022-05-18' AS Date), N'true')
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2056, N'true', CAST(N'2022-05-19' AS Date), N's_request')
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2054, N'true', CAST(N'2022-05-26' AS Date), N'true')
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2058, N'true', CAST(N'2022-05-30' AS Date), N's_request')
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2045, N'true', CAST(N'2022-05-30' AS Date), N's_request')
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2046, N'true', CAST(N'2022-05-19' AS Date), N's_request')
INSERT [dbo].[Status] ([user_id], [registred], [registred_date], [paid]) VALUES (2052, N'true', CAST(N'2022-05-19' AS Date), N's_request')
GO
SET IDENTITY_INSERT [dbo].[tblEmployees] ON 

INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (1, N'Mark', N'Hastings', N'Male', N'Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (2, N'Maria', N'Nicholas', N'Female', N'Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (3, N'Robert', N'Stephenson', N'Male', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (4, N'Mary', N'Quant', N'Female', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (5, N'John', N'Stenson', N'Male', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (6, N'Gilbert', N'Sullivan', N'Male', N'Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (7, N'Rob', N'Gerald', N'Male', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (8, N'Ron', N'Simpson', N'Male', N'Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (9, N'Sara', N'Solomon', N'Female', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (10, N'Rad', N'Wicht', N'Male', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (11, N'Julian', N'John', N'Male', N'Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (12, N'James', N'Bynes', N'Male', N'Sr. Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (13, N'Mary', N'Ward', N'Female', N'Developer')
INSERT [dbo].[tblEmployees] ([ID], [FirstName], [LastName], [Gender], [JobTitle]) VALUES (14, N'Michael', N'Niron', N'Male', N'Sr. Developer')
SET IDENTITY_INSERT [dbo].[tblEmployees] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2045, N'Ahmed', N'Farah', N'Geedi', N'Lab', N'+252615000000', N'notleo53@gmail.com', 0x44970D02203B63A5831064C9C4BE4BB2C61F60551D3D1DFF357D471643E2A2FBCB5997E3FDA0E18A4D26F0F37FAEDCB1B191BF19FE11710183708A1230CAEEAD, N'5ba7f74d-0c35-4331-8604-f0a2afd7429b', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2046, N'Farhiya', N'Mohamed', N'Osman', N'Dheddig', N'+252611111111', N'id802218@gmail.com', 0x601F2108B44EE904D9D078B3244EA71075BAB69D0CD7ECC6AB94BD02FBD2ACE0A6D34D1D7FFB3CA33D47C8322B65B5B44CE6B4FFC6AD2CD27D8D1FA299FC35C3, N'8ef34f17-a1f7-4b1d-9f11-44acc784cd4b', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2047, N'Ali', N'Abas', N'Abdiaziz', N'Lab', N'+252121212', N'ahmedabdirahman1122@gmail.com', 0x8C4F89C693CBF3058DC70C1FF41CDAF5C03B94E7AD67AAEF10C04E96E07DC6FA71B80A98BAAC6F3B3C345756E1F4588928D06011AFA56062B7AC39B07370D7B5, N'c5cee4d1-021c-49c6-8abd-749164100aed', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2052, N'Asma', N'Nor', N'Geedi', N'Dheddig', N'+252615000000', N'mavrick02k@gmail.com', 0xE2F90667092C3E90FC13BB0A0C4B869FD5BFD4B430CFC2B47A30E0D3C804EAA5EF7BFA8F91AD68EE037B7B61E90A760E894A07DEAC9952FE5C9E38A1E190A5AA, N'fa8a9d30-ed08-4559-9b34-f0312ae24d4c', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2053, N'Jimcaale', N'Ali', N'Farah', N'Lab', N'+252611111111', N'frasmu2022@gmail.com', 0x05DA321365C648591A44B74B99DED0A4E56C5898FC19D2764B892A914056A7FC737E1D782E7A1859276A95A8B1FB373DDB8CC447AF1EC09AFE04F357BD573C1B, N'ca642d74-d91b-4eb2-858f-9e8b6492b94a', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2054, N'Halimo', N'Jamac', N'Kheyre', N'Dheddig', N'+252611111111', N'mu5facosit@gmail.com', 0x0327B1E2E82896FE88963B0FF17834AAED0A24221071ED261A6730C8376A6E13CAD2945BE39A17094A0241EF93BE53A3AD2FDC2E2BCEA991D6DAEB78916434F8, N'aed607a5-733e-4d0d-8bbb-f90aa8cf8f83', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2055, N'Abdullahi', N'Ali', N'Kheyre', N'Lab', N'+252611111111', N'mu3facosit@gmail.com', 0x57E98EBC382BCAE308033DA3D050E940E2E0FBE2B9E1B3CE6776D34D552EDBA42E9F2583EF4D8E5300AAA047AB983F629DBF6567D197D20206F8A3FF0C40DAD1, N'860c6ad3-03ba-464b-b578-22bea4304c17', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2056, N'Farhan', N'Nor', N'Abdulle', N'Lab', N'+252615000000', N'mu2facosit@gmail.com', 0xAAEB407BA516944E605FD7B5015482DCB95675B18AD370ECC4889EAB081FD111BCE59DB8763E495C9C0B780AA3069AC3D65AAC9FC3ED8A8B2D695B66197A7891, N'8c6c7e56-8bb0-4918-80e8-dc692c970b19', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2057, N'Hirsi', N'Ali', N'Geedi', N'Lab', N'+252615000000', N'mu1facosit@gmail.com', 0x977AE6731F707959F9AE309D3B7D99D5C0207AEAE63FD76E1A1E1156A91724772E58AD606388129DCC1C03E315F3A2A0B063C0A4986B32C4CF6814F02968C5F4, N'29184fa3-4aed-4bab-bd47-247ed324f8fe', N'true')
INSERT [dbo].[Users] ([_id], [first_name], [midlle_name], [last_name], [gender], [phone], [email_address], [password], [salt], [verified]) VALUES (2058, N'Bashiir', N'Ali', N'Jeyte', N'Lab', N'+252611111111', N'mu4facosit@gmail.com', 0x543E6D434CE1783A9E313BC5FED5BF4F7A3739438E65AA2AA61B6D6CF20F31BAA3D8795FFAB7807248C43D8C566A9F20B313BB0558B4F8FC128CCF61F14FA492, N'8dec1617-526a-444d-a820-9e4cef024002', N'true')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__20C6DFF502B01AEA]    Script Date: 5/30/2022 3:16:25 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UQ__Users__20C6DFF502B01AEA] UNIQUE NONCLUSTERED 
(
	[email_address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FemaleChoice]  WITH CHECK ADD  CONSTRAINT [FemaleChoice_fk0] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[FemaleChoice] CHECK CONSTRAINT [FemaleChoice_fk0]
GO
ALTER TABLE [dbo].[FemaleInformation]  WITH CHECK ADD  CONSTRAINT [FemaleInformation_fk0] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[FemaleInformation] CHECK CONSTRAINT [FemaleInformation_fk0]
GO
ALTER TABLE [dbo].[MaleChoice]  WITH CHECK ADD  CONSTRAINT [MaleChoice_fk0] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MaleChoice] CHECK CONSTRAINT [MaleChoice_fk0]
GO
ALTER TABLE [dbo].[MaleInformation]  WITH CHECK ADD  CONSTRAINT [MaleInformation_fk0] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[MaleInformation] CHECK CONSTRAINT [MaleInformation_fk0]
GO
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [Status_fk0] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [Status_fk0]
GO
/****** Object:  StoredProcedure [dbo].[AllUsers]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 Create proc [dbo].[AllUsers]

as

    Select u._id, (u.first_name +' '+ u.midlle_name+' '+ u.last_name) as full_nmae, u.gender, u.email_address, u.phone
    from Users u INNER JOIN Status s on u._id = s.user_id 
	WHERE s.registred = 'true'
    
GO
/****** Object:  StoredProcedure [dbo].[SearchFemale]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchFemale] (
	@age_range varchar(50),
	@mariage_status varchar(50),
	@education_level varchar(50),
	@height varchar(50),
	@weight varchar(50),
	@skin_color varchar(50),
	@cooking varchar(50),
	@does_she_work varchar(50),
	@user_male_id varchar(50)
)
AS 
	BEGIN
		SELECT TOP 1 male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		cunto_karinta,does_she_work, MAX(TOTAL)TOTAL , CONVERT(varchar(10),SUM(TOTAL/8)) Average FROM (

		SELECT  male_user_id,female_user_id,SUM(age_range)age_range,SUM(Mariage_status)Mariage_status,
		SUM(education_level)education_level,SUM(height)height,SUM(weight) weight,SUM(skin_color)skin_color,
		SUM(cunto_karinta)cunto_karinta,SUM(does_she_work)does_she_work,

		SUM(age_range)+SUM(Mariage_status)+
		SUM(education_level)+SUM(height)+SUM(weight) +SUM(skin_color)+
		SUM(cunto_karinta)+SUM(does_she_work)TOTAL
		FROM (
		Select 
		case when @user_male_id != B.user_id then  @user_male_id  else 'N/A' end as male_user_id, 
		case when @user_male_id != B.user_id then B.user_id else 'N/A' end as female_user_id, 
		case when @age_range = B.age_range then 100 else 0 end as age_range, 
		case when @mariage_status = B.Mariage_status then 100 else 0 end as Mariage_status,
		case when @education_level = B.education_level then 100 else 0 end as education_level,
		case when @height = B.height then 100 else 0 end as height,
		case when @weight = B.weight then 100 else 0 end as weight,
		case when @skin_color = B.skin_color then 100 else 0 end as skin_color,
		case when @cooking = B.cooking then 100 else 0 end as cunto_karinta,
		case when @does_she_work = b.do_you_work  then 100 else 0 end as does_she_work
		from  FemaleInformation B
		join users u 
		on (u._id =  @user_male_id) 
		where u._id = @user_male_id AND(
		(B.user_id  NOT IN (SELECT female_id FROM MatchingMale) OR B.user_id  NOT IN (SELECT female_id FROM MatchingFemale)) AND 
		((@user_male_id  NOT IN (SELECT female_id FROM MatchingFemale) OR @user_male_id  NOT IN (SELECT female_id FROM MatchingMale))
		
		OR  (B.user_id  NOT IN (SELECT female_id FROM MatchingFemale) AND  (@user_male_id   IN (SELECT male_id FROM MatchingFemale  WHERE result ='success' OR result= 'failed') OR @user_male_id   IN (SELECT male_id FROM MatchingMale  WHERE result ='success' OR result= 'failed')))))
		) AS LL

		
		GROUP BY  male_user_id,female_user_id

		) AS HH
		GROUP BY male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		cunto_karinta,does_she_work
		ORDER BY TOTAL DESC ,  female_user_id ASC
	

	END
GO
/****** Object:  StoredProcedure [dbo].[SearchMale]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchMale] (
	@age_range varchar(50),
	@mariage_status varchar(50),
	@education_level varchar(50),
	@height varchar(50),
	@weight varchar(50),
	@skin_color varchar(50),
	@homework_help varchar(50),
	@user_female_id varchar(50)
)
AS 
	BEGIN
		SELECT TOP 1 female_user_id, male_user_id ,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		homework_help, MAX(TOTAL)TOTAL , CONVERT(varchar(10),SUM(TOTAL/7)) Average FROM (

		SELECT female_user_id, male_user_id,SUM(age_range)age_range,SUM(Mariage_status)Mariage_status,
		SUM(education_level)education_level,SUM(height)height,SUM(weight) weight,SUM(skin_color)skin_color,
		SUM(homework_help)homework_help,
		SUM(age_range)+SUM(Mariage_status)+
		SUM(education_level)+SUM(height)+SUM(weight) +SUM(skin_color)+
		SUM(homework_help)TOTAL
		FROM (
		Select 
		case when @user_female_id != B.user_id then  @user_female_id  else 'N/A' end as  female_user_id, 
		case when @user_female_id != B.user_id then B.user_id else 'N/A' end as male_user_id, 
		case when @age_range = B.age_range then 100 else 0 end as age_range, 
		case when @mariage_status = B.Mariage_status then 100 else 0 end as Mariage_status,
		case when @education_level = B.education_level then 100 else 0 end as education_level,
		case when @height = B.height then 100 else 0 end as height,
		case when @weight = B.weight then 100 else 0 end as weight,
		case when @skin_color = B.skin_color then 100 else 0 end as skin_color,
		case when @homework_help = B.homework_help then 100 else 0 end as homework_help
		from  MaleInformation B
		join users u 
		on (u._id =  @user_female_id) 
		where u._id = @user_female_id AND (
		(B.user_id  NOT IN (SELECT male_id FROM MatchingMale) OR B.user_id  NOT IN (SELECT male_id FROM MatchingFemale)) AND 
		((@user_female_id  NOT IN (SELECT female_id FROM MatchingFemale) OR @user_female_id  NOT IN (SELECT female_id FROM MatchingMale))
		
		OR  (B.user_id  NOT IN (SELECT male_id FROM MatchingFemale) AND  (@user_female_id   IN (SELECT female_id FROM MatchingFemale  WHERE result ='success' OR result= 'failed') OR @user_female_id   IN (SELECT female_id FROM MatchingMale  WHERE result ='success' OR result= 'failed')))))
		) AS LL
		GROUP BY  male_user_id,female_user_id

		) AS HH
		GROUP BY male_user_id,female_user_id,age_range,Mariage_status,
		education_level,height,weight,skin_color,
		homework_help
		ORDER BY TOTAL DESC ,  female_user_id ASC
	

	END
GO
/****** Object:  StoredProcedure [dbo].[spGetEUsers]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[spGetEUsers]
@DisplayLength int,
@DisplayStart int,
@SortCol int,
@SortDir nvarchar(10),
@Search nvarchar(255) = NULL
as
begin
    Declare @FirstRec int, @LastRec int
    Set @FirstRec = @DisplayStart;
    Set @LastRec = @DisplayStart + @DisplayLength;
   
    With CTE_Users as
    (
         Select ROW_NUMBER() over (order by
        
         case when (@SortCol = 0 and @SortDir='asc')
             then _id
         end asc,
         case when (@SortCol = 0 and @SortDir='desc')
             then _id
         end desc,
        
        case when (@SortCol = 1 and @SortDir='asc')
             then first_name
        end asc,
        case when (@SortCol = 1 and @SortDir='desc')
            then first_name
        end desc,
		 case when (@SortCol = 2 and @SortDir='asc')
            then midlle_name
        end asc,
        case when (@SortCol = 2 and @SortDir='desc')
            then midlle_name
        end desc,

        case when (@SortCol = 3 and @SortDir='asc')
            then last_name
        end asc,
        case when (@SortCol = 3 and @SortDir='desc')
            then last_name
        end desc,

        case when (@SortCol = 4 and @SortDir='asc')
            then gender
        end asc,
        case when (@SortCol = 4 and @SortDir='desc')
            then gender
        end desc,

        case when (@SortCol = 5 and @SortDir='asc')
            then phone
        end asc,
        case when (@SortCol = 5 and @SortDir='desc')
            then phone
        end desc,

		   case when (@SortCol = 6 and @SortDir='asc')
            then email_address
        end asc,
        case when (@SortCol = 6 and @SortDir='desc')
            then email_address
        end desc

		)
         as RowNum,
         COUNT(*) over() as TotalCount,
        _id,
		first_name,
		midlle_name,
		last_name,
		gender,
		phone,
		email_address
         from Users
         where (@Search IS NULL
                 Or _id like '%' + @Search + '%'
                 Or first_name like '%' + @Search + '%'
                 Or last_name like '%' + @Search + '%'
                 Or gender like '%' + @Search + '%'
				  Or phone like '%' + @Search + '%'
                 Or email_address like '%' + @Search + '%'
				 AND verified = 'true')
    )
    Select *
    from CTE_Users
    where RowNum > @FirstRec and RowNum <= @LastRec
end
GO
/****** Object:  StoredProcedure [dbo].[spGetPendingUsers]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[spGetPendingUsers]

as
 SELECT  ( u.first_name+ ' '+ u.midlle_name+ ' '+u.last_name) as full_name, email_address, phone,p.service,p.pay_no as Sender_Detail FROM  Users u INNER JOIN Status s ON u._id = s.user_id INNER JOIN Payments p ON p.user_id = u._id where s.paid = 'false' OR s.paid= 'wait' OR s.paid= 'wait'
GO
/****** Object:  StoredProcedure [dbo].[usp_Addmin]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Addmin] (
	 @username varchar(255)= NULL ,
	 @email_address varchar(255) = NULL,
	 @password varchar(255) = NULL,
	 @StatementType nvarchar(20) = '')
AS 
BEGIN 	IF @StatementType = 'Insert'		BEGIN			declare @salt  uniqueidentifier  = newid()			INSERT INTO Addmin VALUES(			@username			,@email_address			,hashbytes('sha2_512', @password+cast(@salt as nvarchar(36))),			@salt)		END	IF @StatementType = 'Update'		BEGIN		declare @salt1  uniqueidentifier  = newid()		UPDATE Addmin SET password = hashbytes('sha2_512', @password+cast(@salt1 as nvarchar(36))), salt = @salt1 WHERE email_address = @email_address		END	IF @StatementType = 'Auth'		BEGIN		SELECT username, email_address    from  Addmin WHERE email_address = @email_address AND password = hashbytes('sha2_512', @password+cast(salt as nvarchar(36)))		ENDEND



GO
/****** Object:  StoredProcedure [dbo].[usp_Users]    Script Date: 5/30/2022 3:16:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Users] (
	 @first_name varchar(255)= NULL ,
	 @midlle_name varchar(255)= NULL,
	 @last_name varchar(255) =NULL,
	 @gender varchar(255) =NULL,
	 @phone varchar(255)  =NULL,
	 @email_address varchar(255) = NULL,
	 @password varchar(255) = NULL,
	 @StatementType nvarchar(20) = '')
AS 
BEGIN 
	IF @StatementType = 'Insert'
		BEGIN
			
			INSERT INTO Users VALUES(
			@first_name
			,@midlle_name
			,@last_name
			,@gender
			,@phone
			,@email_address
			,NULL
			,NULL
			,'false')
		END
	IF @StatementType = 'Update'
		BEGIN
		declare @salt  uniqueidentifier  = newid()
		UPDATE Users SET password = hashbytes('sha2_512', @password+cast(@salt as nvarchar(36))), salt = @salt , verified = 'true' WHERE email_address = @email_address
		END
	IF @StatementType = 'Auth'
		BEGIN
		SELECT gender, email_address , verified   from Users WHERE email_address = @email_address AND password = hashbytes('sha2_512', @password+cast(salt as nvarchar(36)))
		END
END





GO
USE [master]
GO
ALTER DATABASE [Guryosamo] SET  READ_WRITE 
GO
