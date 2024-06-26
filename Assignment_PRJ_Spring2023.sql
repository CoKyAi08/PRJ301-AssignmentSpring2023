USE [master]
GO
/****** Object:  Database [Assignment_PRJ_Spring2023]    Script Date: 3/20/2023 8:40:53 PM ******/
CREATE DATABASE [Assignment_PRJ_Spring2023]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment_PRJ_Spring203', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assignment_PRJ_Spring203.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_PRJ_Spring203_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assignment_PRJ_Spring203_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment_PRJ_Spring2023].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET RECOVERY FULL 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assignment_PRJ_Spring2023', N'ON'
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET QUERY_STORE = OFF
GO
USE [Assignment_PRJ_Spring2023]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
	[displayname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[sesid] [int] NOT NULL,
	[stdid] [int] NOT NULL,
	[present] [bit] NOT NULL,
	[description] [varchar](150) NOT NULL,
	[record_time] [datetime] NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC,
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[fid] [int] NOT NULL,
	[fname] [varchar](150) NOT NULL,
	[url] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[gid] [int] NOT NULL,
	[gname] [varchar](150) NOT NULL,
	[subid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[sem] [varchar](150) NOT NULL,
	[year] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[lid] [int] NOT NULL,
	[lname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer_Account]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer_Account](
	[username] [varchar](150) NOT NULL,
	[lid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleid] [int] NOT NULL,
	[rolename] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Account]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Account](
	[roleid] [int] NOT NULL,
	[username] [varchar](150) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Feature]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Feature](
	[roleid] [int] NOT NULL,
	[fid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[rname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sesid] [int] NOT NULL,
	[gid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[tid] [int] NOT NULL,
	[index] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[attended] [bit] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sesid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[stdid] [int] NOT NULL,
	[stdname] [varchar](150) NOT NULL,
	[gender] [bit] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[stdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[stdid] [int] NOT NULL,
	[gid] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subid] [int] NOT NULL,
	[subname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 3/20/2023 8:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[tid] [int] NOT NULL,
	[description] [varchar](150) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'sonnt', N'mrson', N'Mr mao tun')
INSERT [dbo].[Account] ([username], [password], [displayname]) VALUES (N'tuanvm', N'mrtuan', N'Mr may ao')
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 1, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 2, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 3, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 4, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 5, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 6, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 7, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 8, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 9, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 10, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 11, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (1, 12, 1, N'good', CAST(N'2023-01-03T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 1, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 2, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 3, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 4, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 5, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 6, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 7, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 8, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 9, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 10, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 11, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (2, 12, 1, N'good', CAST(N'2023-01-05T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 1, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 2, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 3, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 4, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 5, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 6, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 7, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 8, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 9, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 10, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 11, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (3, 12, 1, N'good', CAST(N'2023-01-10T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 1, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 2, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 3, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 4, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 5, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 6, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 7, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 8, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 9, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 10, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 11, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (4, 12, 1, N'good', CAST(N'2023-01-12T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 1, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 2, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 3, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 4, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 5, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 6, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 7, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 8, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 9, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 10, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 11, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (5, 12, 1, N'good', CAST(N'2023-01-31T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 1, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 2, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 3, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 4, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 5, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 6, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 7, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 8, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 9, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 10, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 11, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (6, 12, 1, N'good', CAST(N'2023-02-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 1, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 2, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 3, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 4, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 5, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 6, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 7, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 8, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 9, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 10, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 11, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (7, 12, 1, N'good', CAST(N'2023-02-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 1, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 2, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 3, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 4, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 5, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 6, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 7, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 8, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 9, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 10, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 11, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (8, 12, 1, N'good', CAST(N'2023-02-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 1, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 2, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 3, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 4, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 5, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 6, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 7, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 8, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 9, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 10, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 11, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (9, 12, 1, N'good', CAST(N'2023-02-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 1, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 2, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 3, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 4, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 5, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 6, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 7, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 8, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 9, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 10, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 11, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (10, 12, 1, N'good', CAST(N'2023-02-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 1, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 2, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 3, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 4, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 5, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 6, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 7, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 8, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 9, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 10, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 11, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (11, 12, 0, N'not yet', CAST(N'2023-02-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 1, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 2, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 3, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 4, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 5, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 6, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 7, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 8, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 9, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 10, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 11, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (12, 12, 0, N'not yet', CAST(N'2023-02-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 1, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 2, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 3, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 4, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 5, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 6, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 7, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 8, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 9, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 10, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 11, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (13, 12, 0, N'not yet', CAST(N'2023-02-28T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 1, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 2, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 3, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 4, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 5, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 6, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 7, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 8, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 9, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 10, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 11, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (14, 12, 0, N'not yet', CAST(N'2023-03-02T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 1, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 2, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 3, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 4, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 5, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 6, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 7, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 8, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 9, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 10, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 11, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (15, 12, 0, N'not yet', CAST(N'2023-03-07T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 1, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 2, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 3, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 4, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 5, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 6, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 7, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 8, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 9, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 10, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 11, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (16, 12, 0, N'not yet', CAST(N'2023-03-09T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 1, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 2, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 3, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 4, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 5, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 6, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 7, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 8, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 9, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 10, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 11, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (17, 12, 0, N'not yet', CAST(N'2023-03-14T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 1, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 2, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 3, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 4, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 5, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 6, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 7, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 8, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 9, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 10, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 11, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (18, 12, 0, N'not yet', CAST(N'2023-03-16T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 1, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 2, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 3, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 4, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 5, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 6, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 7, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 8, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 9, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 10, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 11, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (19, 12, 0, N'not yet', CAST(N'2023-03-21T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 1, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 2, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 3, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 4, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 5, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 6, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 7, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 8, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 9, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 10, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 11, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (20, 12, 0, N'not yet', CAST(N'2023-03-23T09:30:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 1, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 2, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 3, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 4, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 5, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 6, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 7, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 8, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 9, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 10, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 11, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (21, 12, 1, N'good', CAST(N'2023-01-03T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 1, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 2, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 3, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 4, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 5, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 6, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 7, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 8, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 9, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 10, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 11, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (22, 12, 1, N'good', CAST(N'2023-01-05T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 1, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 2, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 3, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 4, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 5, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 6, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 7, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 8, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 9, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 10, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 11, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (23, 12, 1, N'good', CAST(N'2023-01-10T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 1, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 2, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 3, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 4, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 5, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 6, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 7, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 8, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 9, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 10, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 11, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (24, 12, 1, N'good', CAST(N'2023-01-12T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 1, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 2, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 3, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 4, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 5, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 6, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 7, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 8, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 9, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 10, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 11, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (25, 12, 1, N'good', CAST(N'2023-01-31T15:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 1, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 2, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 3, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 4, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 5, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 6, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 7, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 8, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 9, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 10, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 11, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (26, 12, 1, N'good', CAST(N'2023-02-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 1, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 2, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 3, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 4, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 5, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 6, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 7, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 8, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 9, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 10, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 11, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (27, 12, 1, N'good', CAST(N'2023-02-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 1, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 2, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 3, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 4, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 5, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 6, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 7, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 8, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 9, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 10, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 11, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (28, 12, 1, N'good', CAST(N'2023-02-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 1, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 2, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 3, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 4, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 5, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 6, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 7, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 8, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 9, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 10, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 11, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (29, 12, 1, N'good', CAST(N'2023-02-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 1, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 2, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 3, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 4, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 5, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 6, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 7, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 8, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 9, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 10, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 11, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (30, 12, 1, N'good', CAST(N'2023-02-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 1, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 2, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 3, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 4, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 5, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 6, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 7, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 8, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 9, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 10, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 11, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (31, 12, 0, N'not yet', CAST(N'2023-02-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 1, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 2, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 3, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 4, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 5, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 6, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 7, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 8, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 9, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 10, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 11, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (32, 12, 0, N'not yet', CAST(N'2023-02-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 1, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 2, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 3, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 4, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 5, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 6, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 7, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 8, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 9, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 10, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 11, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (33, 12, 0, N'not yet', CAST(N'2023-02-28T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 1, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 2, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 3, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 4, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 5, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 6, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 7, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 8, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 9, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 10, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 11, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (34, 12, 0, N'not yet', CAST(N'2023-03-02T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 1, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 2, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 3, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 4, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 5, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 6, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 7, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 8, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 9, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 10, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 11, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (35, 12, 0, N'not yet', CAST(N'2023-03-07T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 1, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 2, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 3, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 4, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 5, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 6, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 7, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 8, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 9, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 10, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 11, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (36, 12, 0, N'not yet', CAST(N'2023-03-09T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 1, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 2, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 3, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 4, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 5, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 6, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 7, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 8, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 9, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 10, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 11, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (37, 12, 0, N'not yet', CAST(N'2023-03-14T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 1, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 2, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 3, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 4, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 5, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 6, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 7, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 8, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 9, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 10, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 11, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (38, 12, 0, N'not yet', CAST(N'2023-03-16T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 1, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 2, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 3, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 4, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 5, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 6, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 7, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 8, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 9, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 10, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 11, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (39, 12, 0, N'not yet', CAST(N'2023-03-21T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 1, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 2, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 3, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 4, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 5, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 6, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 7, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 8, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 9, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 10, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 11, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (40, 12, 0, N'not yet', CAST(N'2023-03-23T15:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 1, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 2, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 3, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 4, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 5, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 6, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 7, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 8, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 9, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 10, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 11, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (41, 12, 1, N'good', CAST(N'2023-01-04T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 1, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 2, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 3, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 4, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 5, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 6, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 7, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 8, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 9, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 10, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 11, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (42, 12, 1, N'good', CAST(N'2023-01-06T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 1, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 2, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 3, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 4, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 5, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 6, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 7, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 8, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 9, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 10, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 11, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (43, 12, 1, N'good', CAST(N'2023-01-11T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 1, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 2, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 3, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 4, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 5, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 6, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 7, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 8, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 9, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 10, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 11, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (44, 12, 1, N'good', CAST(N'2023-01-13T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 1, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 2, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 3, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 4, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 5, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 6, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 7, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 8, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 9, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 10, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 11, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (45, 12, 1, N'good', CAST(N'2023-02-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 1, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 2, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 3, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 4, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 5, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 6, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 7, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 8, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 9, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 10, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 11, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (46, 12, 1, N'good', CAST(N'2023-02-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 1, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 2, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 3, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 4, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 5, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 6, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 7, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 8, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 9, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 10, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 11, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (47, 12, 1, N'good', CAST(N'2023-02-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 1, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 2, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 3, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 4, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 5, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 6, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 7, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 8, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 9, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 10, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 11, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (48, 12, 1, N'good', CAST(N'2023-02-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 1, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 2, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 3, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 4, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 5, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 6, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 7, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 8, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 9, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 10, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 11, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (49, 12, 1, N'good', CAST(N'2023-02-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 1, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 2, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 3, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 4, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 5, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 6, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 7, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 8, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 9, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 10, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 11, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (50, 12, 1, N'good', CAST(N'2023-02-17T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 1, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 2, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 3, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 4, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 5, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 6, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 7, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 8, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 9, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 10, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 11, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (51, 12, 0, N'not yet', CAST(N'2023-02-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 1, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 2, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 3, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 4, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 5, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 6, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 7, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 8, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 9, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 10, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 11, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (52, 12, 0, N'not yet', CAST(N'2023-02-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 1, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 2, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 3, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 4, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 5, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 6, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 7, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 8, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 9, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 10, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 11, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (53, 12, 0, N'not yet', CAST(N'2023-03-01T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 1, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 2, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 3, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 4, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 5, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 6, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 7, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 8, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 9, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 10, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 11, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (54, 12, 0, N'not yet', CAST(N'2023-03-03T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 1, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 2, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 3, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 4, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 5, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 6, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 7, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 8, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 9, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 10, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 11, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (55, 12, 0, N'not yet', CAST(N'2023-03-08T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 1, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 2, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 3, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 4, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 5, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 6, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 7, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 8, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 9, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 10, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 11, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (56, 12, 0, N'not yet', CAST(N'2023-03-10T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 1, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 2, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 3, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 4, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 5, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 6, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 7, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 8, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 9, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 10, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 11, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (57, 12, 0, N'not yet', CAST(N'2023-03-15T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 1, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 2, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 3, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 4, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 5, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 6, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 7, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 8, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 9, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 10, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 11, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (58, 12, 0, N'not yet', CAST(N'2023-03-17T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 1, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 2, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 3, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 4, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 5, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 6, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 7, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 8, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 9, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 10, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 11, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (59, 12, 0, N'not yet', CAST(N'2023-03-22T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 1, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 2, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 3, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 4, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 5, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 6, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 7, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 8, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 9, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 10, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 11, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (60, 12, 0, N'not yet', CAST(N'2023-03-24T12:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 1, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 2, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 3, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 4, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 5, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 6, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 7, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 8, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 9, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 10, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 11, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (61, 12, 1, N'good', CAST(N'2023-01-04T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 1, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 2, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 3, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 4, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 5, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 6, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 7, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 8, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 9, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 10, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 11, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (62, 12, 1, N'good', CAST(N'2023-01-06T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 1, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 2, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 3, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 4, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 5, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 6, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 7, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 8, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 9, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 10, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 11, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (63, 12, 1, N'good', CAST(N'2023-01-11T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 1, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 2, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 3, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 4, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 5, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 6, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 7, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 8, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 9, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 10, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 11, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (64, 12, 1, N'good', CAST(N'2023-01-13T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 1, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 2, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 3, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 4, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 5, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 6, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 7, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 8, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 9, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 10, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 11, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (65, 12, 1, N'good', CAST(N'2023-02-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 1, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 2, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 3, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 4, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 5, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 6, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 7, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 8, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 9, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 10, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 11, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (66, 12, 1, N'good', CAST(N'2023-02-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 1, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 2, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 3, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 4, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 5, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 6, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 7, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 8, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 9, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 10, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 11, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (67, 12, 1, N'good', CAST(N'2023-02-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 1, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 2, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 3, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 4, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 5, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 6, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 7, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 8, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 9, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 10, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 11, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (68, 12, 1, N'good', CAST(N'2023-02-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 1, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 2, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 3, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 4, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 5, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 6, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 7, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 8, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 9, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 10, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 11, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (69, 12, 1, N'good', CAST(N'2023-02-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 1, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 2, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 3, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 4, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 5, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 6, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 7, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 8, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 9, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 10, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 11, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (70, 12, 1, N'good', CAST(N'2023-02-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 1, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 2, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 3, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 4, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 5, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 6, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 7, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 8, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 9, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 10, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 11, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (71, 12, 0, N'not yet', CAST(N'2023-02-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 1, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 2, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 3, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 4, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 5, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 6, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 7, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 8, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 9, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 10, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 11, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (72, 12, 0, N'not yet', CAST(N'2023-02-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 1, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 2, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 3, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 4, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 5, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 6, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 7, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 8, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 9, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 10, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 11, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (73, 12, 0, N'not yet', CAST(N'2023-03-01T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 1, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 2, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 3, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 4, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 5, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 6, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 7, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 8, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 9, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 10, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 11, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (74, 12, 0, N'not yet', CAST(N'2023-03-03T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 1, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 2, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 3, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 4, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 5, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 6, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 7, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 8, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 9, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 10, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 11, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (75, 12, 0, N'not yet', CAST(N'2023-03-08T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 1, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 2, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 3, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 4, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 5, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 6, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 7, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 8, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 9, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 10, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 11, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (76, 12, 0, N'not yet', CAST(N'2023-03-10T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 1, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 2, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 3, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 4, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 5, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 6, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 7, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 8, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 9, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 10, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 11, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (77, 12, 0, N'not yet', CAST(N'2023-03-15T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 1, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 2, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 3, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 4, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 5, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 6, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 7, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 8, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 9, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 10, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 11, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (78, 12, 0, N'not yet', CAST(N'2023-03-17T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 1, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 2, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 3, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 4, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 5, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 6, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 7, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 8, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 9, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 10, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 11, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (79, 12, 0, N'not yet', CAST(N'2023-03-22T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 1, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 2, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 3, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 4, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 5, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 6, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 7, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 8, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 9, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 10, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 11, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
INSERT [dbo].[Attendance] ([sesid], [stdid], [present], [description], [record_time]) VALUES (80, 12, 0, N'not yet', CAST(N'2023-03-24T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (1, N'TimeTable', N'/lecturer/timetable')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (2, N'Take Attendance', N'/lecturer/takeattendance')
INSERT [dbo].[Feature] ([fid], [fname], [url]) VALUES (3, N'Attendance Report', N'/lecturer/attendancereport')
GO
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (1, N'ISE1723', 1, 1, N'Spring', 2023)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (2, N'ISE1723', 2, 1, N'Spring ', 2023)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (3, N'ISE1723', 3, 2, N'Spring', 2023)
INSERT [dbo].[Group] ([gid], [gname], [subid], [lid], [sem], [year]) VALUES (4, N'ISE1723', 4, 2, N'Spring', 2023)
GO
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (1, N'sonnt')
INSERT [dbo].[Lecturer] ([lid], [lname]) VALUES (2, N'tuanvm')
GO
INSERT [dbo].[Lecturer_Account] ([username], [lid]) VALUES (N'sonnt', 1)
INSERT [dbo].[Lecturer_Account] ([username], [lid]) VALUES (N'tuanvm', 2)
GO
INSERT [dbo].[Role] ([roleid], [rolename]) VALUES (1, N'lecturer')
GO
INSERT [dbo].[Role_Account] ([roleid], [username]) VALUES (1, N'sonnt')
INSERT [dbo].[Role_Account] ([roleid], [username]) VALUES (1, N'tuanvm')
GO
INSERT [dbo].[Role_Feature] ([roleid], [fid]) VALUES (1, 1)
INSERT [dbo].[Role_Feature] ([roleid], [fid]) VALUES (1, 2)
INSERT [dbo].[Role_Feature] ([roleid], [fid]) VALUES (1, 3)
GO
INSERT [dbo].[Room] ([rid], [rname]) VALUES (1, N'DE-205')
INSERT [dbo].[Room] ([rid], [rname]) VALUES (2, N'BE-303')
GO
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (1, 1, 1, CAST(N'2023-01-03' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (2, 1, 1, CAST(N'2023-01-05' AS Date), 1, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (3, 1, 1, CAST(N'2023-01-10' AS Date), 1, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (4, 1, 1, CAST(N'2023-01-12' AS Date), 1, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (5, 1, 1, CAST(N'2023-01-31' AS Date), 1, 5, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (6, 1, 1, CAST(N'2023-02-02' AS Date), 1, 6, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (7, 1, 1, CAST(N'2023-02-07' AS Date), 1, 7, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (8, 1, 1, CAST(N'2023-02-09' AS Date), 1, 8, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (9, 1, 1, CAST(N'2023-02-14' AS Date), 1, 9, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (10, 1, 1, CAST(N'2023-02-16' AS Date), 1, 10, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (11, 1, 1, CAST(N'2023-02-21' AS Date), 1, 11, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (12, 1, 1, CAST(N'2023-02-23' AS Date), 1, 12, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (13, 1, 1, CAST(N'2023-02-28' AS Date), 1, 13, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (14, 1, 1, CAST(N'2023-03-02' AS Date), 1, 14, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (15, 1, 1, CAST(N'2023-03-07' AS Date), 1, 15, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (16, 1, 1, CAST(N'2023-03-09' AS Date), 1, 16, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (17, 1, 1, CAST(N'2023-03-14' AS Date), 1, 17, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (18, 1, 1, CAST(N'2023-03-16' AS Date), 1, 18, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (19, 1, 1, CAST(N'2023-03-21' AS Date), 1, 19, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (20, 1, 1, CAST(N'2023-03-23' AS Date), 1, 20, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (21, 2, 1, CAST(N'2023-01-03' AS Date), 3, 1, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (22, 2, 1, CAST(N'2023-01-05' AS Date), 3, 2, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (23, 2, 1, CAST(N'2023-01-10' AS Date), 3, 3, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (24, 2, 1, CAST(N'2023-01-12' AS Date), 3, 4, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (25, 2, 1, CAST(N'2023-01-31' AS Date), 3, 5, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (26, 2, 1, CAST(N'2023-02-02' AS Date), 3, 6, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (27, 2, 1, CAST(N'2023-02-07' AS Date), 3, 7, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (28, 2, 1, CAST(N'2023-02-09' AS Date), 3, 8, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (29, 2, 1, CAST(N'2023-02-14' AS Date), 3, 9, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (30, 2, 1, CAST(N'2023-02-16' AS Date), 3, 10, 1, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (31, 2, 1, CAST(N'2023-02-21' AS Date), 3, 11, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (32, 2, 1, CAST(N'2023-02-23' AS Date), 3, 12, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (33, 2, 1, CAST(N'2023-02-28' AS Date), 3, 13, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (34, 2, 1, CAST(N'2023-03-02' AS Date), 3, 14, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (35, 2, 1, CAST(N'2023-03-07' AS Date), 3, 15, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (36, 2, 1, CAST(N'2023-03-09' AS Date), 3, 16, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (37, 2, 1, CAST(N'2023-03-14' AS Date), 3, 17, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (38, 2, 1, CAST(N'2023-03-16' AS Date), 3, 18, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (39, 2, 1, CAST(N'2023-03-21' AS Date), 3, 19, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (40, 2, 1, CAST(N'2023-03-23' AS Date), 3, 20, 1, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (41, 3, 2, CAST(N'2023-01-04' AS Date), 2, 1, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (42, 3, 2, CAST(N'2023-01-06' AS Date), 2, 2, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (43, 3, 2, CAST(N'2023-01-11' AS Date), 2, 3, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (44, 3, 2, CAST(N'2023-01-13' AS Date), 2, 4, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (45, 3, 2, CAST(N'2023-02-01' AS Date), 2, 5, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (46, 3, 2, CAST(N'2023-02-03' AS Date), 2, 6, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (47, 3, 2, CAST(N'2023-02-08' AS Date), 2, 7, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (48, 3, 2, CAST(N'2023-02-10' AS Date), 2, 8, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (49, 3, 2, CAST(N'2023-02-15' AS Date), 2, 9, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (50, 3, 2, CAST(N'2023-02-17' AS Date), 2, 10, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (51, 3, 2, CAST(N'2023-02-22' AS Date), 2, 11, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (52, 3, 2, CAST(N'2023-02-24' AS Date), 2, 12, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (53, 3, 2, CAST(N'2023-03-01' AS Date), 2, 13, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (54, 3, 2, CAST(N'2023-03-03' AS Date), 2, 14, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (55, 3, 2, CAST(N'2023-03-08' AS Date), 2, 15, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (56, 3, 2, CAST(N'2023-03-10' AS Date), 2, 16, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (57, 3, 2, CAST(N'2023-03-15' AS Date), 2, 17, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (58, 3, 2, CAST(N'2023-03-17' AS Date), 2, 18, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (59, 3, 2, CAST(N'2023-03-22' AS Date), 2, 19, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (60, 3, 2, CAST(N'2023-03-24' AS Date), 2, 20, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (61, 4, 2, CAST(N'2023-01-04' AS Date), 4, 1, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (62, 4, 2, CAST(N'2023-01-06' AS Date), 4, 2, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (63, 4, 2, CAST(N'2023-01-11' AS Date), 4, 3, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (64, 4, 2, CAST(N'2023-01-13' AS Date), 4, 4, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (65, 4, 2, CAST(N'2023-02-01' AS Date), 4, 5, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (66, 4, 2, CAST(N'2023-02-03' AS Date), 4, 6, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (67, 4, 2, CAST(N'2023-02-08' AS Date), 4, 7, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (68, 4, 2, CAST(N'2023-02-10' AS Date), 4, 8, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (69, 4, 2, CAST(N'2023-02-15' AS Date), 4, 9, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (70, 4, 2, CAST(N'2023-02-17' AS Date), 4, 10, 2, 1)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (71, 4, 2, CAST(N'2023-02-22' AS Date), 4, 11, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (72, 4, 2, CAST(N'2023-02-24' AS Date), 4, 12, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (73, 4, 2, CAST(N'2023-03-01' AS Date), 4, 13, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (74, 4, 2, CAST(N'2023-03-03' AS Date), 4, 14, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (75, 4, 2, CAST(N'2023-03-08' AS Date), 4, 15, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (76, 4, 2, CAST(N'2023-03-10' AS Date), 4, 16, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (77, 4, 2, CAST(N'2023-03-15' AS Date), 4, 17, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (78, 4, 2, CAST(N'2023-03-17' AS Date), 4, 18, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (79, 4, 2, CAST(N'2023-03-22' AS Date), 4, 19, 2, 0)
INSERT [dbo].[Session] ([sesid], [gid], [rid], [date], [tid], [index], [lid], [attended]) VALUES (80, 4, 2, CAST(N'2023-03-24' AS Date), 4, 20, 2, 0)
GO
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (1, N'Ta Chi Dao', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (2, N'Hua Hong Dau', 0)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (3, N'Han Thuong Ngon', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (4, N'Dong Nien', 0)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (5, N'Tieu Nai', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (6, N'Boi Vy Vy', 0)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (7, N'Van Ba', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (8, N'Van', 1)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (9, N'Rose', 0)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (10, N'Lisa', 0)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (11, N'Jennie', 0)
INSERT [dbo].[Student] ([stdid], [stdname], [gender]) VALUES (12, N'Jisoo', 0)
GO
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (1, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (2, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (3, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (4, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (5, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (6, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (7, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (8, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (9, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (9, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (9, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (9, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (10, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (10, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (10, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (10, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (11, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (11, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (11, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (11, 4)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (12, 1)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (12, 2)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (12, 3)
INSERT [dbo].[Student_Group] ([stdid], [gid]) VALUES (12, 4)
GO
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (1, N'PRJ301')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (2, N'PRU211')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (3, N'LAB211')
INSERT [dbo].[Subject] ([subid], [subname]) VALUES (4, N'SWP391')
GO
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (1, N'Slot 1 (7h30-9h50)')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (2, N'Slot 2 (10h-12h20)')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (3, N'Slot 3 (12h50-13h10)')
INSERT [dbo].[TimeSlot] ([tid], [description]) VALUES (4, N'Slot 4 (13h20-17h40)')
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Session] FOREIGN KEY([sesid])
REFERENCES [dbo].[Session] ([sesid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Session]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Group] FOREIGN KEY([lid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Group]
GO
ALTER TABLE [dbo].[Lecturer_Account]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Lecturer_Account] CHECK CONSTRAINT [FK_Lecturer_Account_Account]
GO
ALTER TABLE [dbo].[Lecturer_Account]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Account_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Lecturer_Account] CHECK CONSTRAINT [FK_Lecturer_Account_Lecturer]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Account] FOREIGN KEY([username])
REFERENCES [dbo].[Account] ([username])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Account]
GO
ALTER TABLE [dbo].[Role_Account]  WITH CHECK ADD  CONSTRAINT [FK_Role_Account_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([roleid])
GO
ALTER TABLE [dbo].[Role_Account] CHECK CONSTRAINT [FK_Role_Account_Role]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Feature] FOREIGN KEY([fid])
REFERENCES [dbo].[Feature] ([fid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Feature]
GO
ALTER TABLE [dbo].[Role_Feature]  WITH CHECK ADD  CONSTRAINT [FK_Role_Feature_Role] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([roleid])
GO
ALTER TABLE [dbo].[Role_Feature] CHECK CONSTRAINT [FK_Role_Feature_Role]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Group]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Lecturer] FOREIGN KEY([lid])
REFERENCES [dbo].[Lecturer] ([lid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Lecturer]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([rid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([tid])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([stdid])
REFERENCES [dbo].[Student] ([stdid])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Group] FOREIGN KEY([subid])
REFERENCES [dbo].[Group] ([gid])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Group]
GO
USE [master]
GO
ALTER DATABASE [Assignment_PRJ_Spring2023] SET  READ_WRITE 
GO
