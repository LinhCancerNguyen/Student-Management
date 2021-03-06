USE [master]
GO
/****** Object:  Database [StudentMN]    Script Date: 1/8/2019 3:05:35 AM ******/
CREATE DATABASE [StudentMN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentMN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\StudentMN.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'StudentMN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\StudentMN_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [StudentMN] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentMN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentMN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentMN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentMN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentMN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentMN] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentMN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentMN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentMN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentMN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentMN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentMN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentMN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentMN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentMN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentMN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentMN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentMN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentMN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentMN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentMN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentMN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentMN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentMN] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentMN] SET  MULTI_USER 
GO
ALTER DATABASE [StudentMN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentMN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentMN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentMN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [StudentMN] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentMN', N'ON'
GO
USE [StudentMN]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/8/2019 3:05:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/8/2019 3:05:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[dob] [datetime] NOT NULL,
	[address] [nvarchar](150) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[class] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [StudentMN] SET  READ_WRITE 
GO
