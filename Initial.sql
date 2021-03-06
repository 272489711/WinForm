USE [master]
GO
/****** Object:  Database [Desay]    Script Date: 2016/7/2 14:26:06 ******/
CREATE DATABASE [Desay]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Desay', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Desay.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Desay_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Desay_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Desay] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Desay].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Desay] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Desay] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Desay] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Desay] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Desay] SET ARITHABORT OFF 
GO
ALTER DATABASE [Desay] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Desay] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Desay] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Desay] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Desay] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Desay] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Desay] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Desay] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Desay] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Desay] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Desay] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Desay] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Desay] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Desay] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Desay] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Desay] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Desay] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Desay] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Desay] SET  MULTI_USER 
GO
ALTER DATABASE [Desay] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Desay] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Desay] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Desay] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Desay] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Desay]
GO
/****** Object:  Table [dbo].[EV_MSTR Data]    Script Date: 2016/7/2 14:26:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EV_MSTR Data](
	[ev01] [int] NULL,
	[ev02] [varchar](2) NULL,
	[ev03] [varchar](20) NULL,
	[ev04] [varchar](20) NULL,
	[ev05] [varchar](40) NULL,
	[ev06] [varchar](20) NULL,
	[ev07] [varchar](10) NULL,
	[ev08] [varchar](10) NULL,
	[ev09] [varchar](2) NULL,
	[ev10] [varchar](20) NULL,
	[ev11] [varchar](60) NULL,
	[ev12] [varchar](60) NULL,
	[ev13] [decimal](18, 0) NULL,
	[ev14] [int] NULL,
	[ev15] [int] NULL,
	[ev16] [int] NULL,
	[ev17] [varchar](10) NULL,
	[ev18] [varchar](2) NULL,
	[ev19] [varchar](40) NULL,
	[ev20] [varchar](10) NULL,
	[ev21] [int] NULL,
	[ev22] [varchar](12) NULL,
	[ev23] [varchar](20) NULL,
	[ev24] [varchar](20) NULL,
	[ev25] [varchar](20) NULL,
	[ev26] [int] NULL,
	[ev27] [int] NULL,
	[ev28] [varchar](20) NULL,
	[ev29] [varchar](20) NULL,
	[ev30] [varchar](20) NULL,
	[ev31] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ME_MSTR Data]    Script Date: 2016/7/2 14:26:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ME_MSTR Data](
	[Me01] [int] NULL,
	[Me02] [varchar](2) NULL,
	[Me03] [varchar](20) NULL,
	[Me04] [bigint] NULL,
	[Me05] [varchar](60) NULL,
	[Me06] [decimal](18, 0) NULL,
	[Me07] [varchar](60) NULL,
	[Me08] [varchar](10) NULL,
	[Me09] [varchar](250) NULL,
	[Me10] [int] NULL,
	[Me11] [int] NULL,
	[Me12] [int] NULL,
	[Me13] [varchar](10) NULL,
	[Me14] [varchar](50) NULL,
	[Me15] [varchar](10) NULL,
	[Me16] [varchar](50) NULL,
	[Me17] [varchar](10) NULL,
	[Me18] [varchar](50) NULL,
	[Me19] [decimal](18, 0) NULL,
	[Me20] [decimal](18, 0) NULL,
	[Me21] [decimal](18, 0) NULL,
	[Me22] [varchar](50) NULL,
	[Me23] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertToEV]    Script Date: 2016/7/2 14:26:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[InsertToEV](@a1 int,@a2 varchar(2),@a3 varchar(20),@a4 varchar(50),@a5 varchar(50),@a6 varchar(50),@a7 varchar(50),@a8 varchar(50),@a9 varchar(50),@a10 varchar(50),@a11 varchar(50),@a12 varchar(50),@a13 decimal,@a14 int,@a15 int,@a16 int,@a17 varchar(50),@a18 varchar(50),@a19 varchar(50),@a20 varchar(50),@a21 int,@a22 varchar(50),@a23 varchar(50),@a24 varchar(50),@a25 varchar(50),@a26 int,@a27 int,@a28 varchar(50),@a29 varchar(50),@a30 varchar(50),@a31 varchar(50),@return int=0 output)

as
begin
set nocount on;
if((select count(*) from [EV_MSTR Data]
where ev01=@a1
and ev02=@a2
and ev03=@a3
and ev04=@a4
and ev05=@a5
and ev06=@a6
and ev07=@a7
and ev08=@a8
and ev09=@a9
and ev10=@a10
and ev11=@a11
and ev12=@a12
and ev13=@a13
and ev14=@a14
and ev15=@a15
and ev16=@a16
and ev17=@a17
and ev18=@a18
and ev19=@a19
and ev20=@a20
and ev21=@a21
and ev22=@a22
and ev23=@a23
and ev24=@a24
and ev25=@a25
and ev26=@a26
and ev27=@a27
and ev28=@a28
and ev29=@a29
and ev30=@a30
and ev31=@a31
)<=0)
begin
insert into [EV_MSTR Data] values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10,@a11,@a12,@a13,@a14,@a15,@a16,@a17,@a18,@a19,@a20,@a21,@a22,@a23,@a24,@a25,@a26,@a27,@a28,@a29,@a30,@a31)
end
set @return= @@rowcount
end
GO
/****** Object:  StoredProcedure [dbo].[InsertToME]    Script Date: 2016/7/2 14:26:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[InsertToME](@a1 int,@a2 varchar(2),@a3 varchar(20),@a4 bigint,@a5 varchar(50),@a6 decimal,@a7 varchar(50),@a8 varchar(50),@a9 varchar(250),@a10 int,@a11 int,@a12 int,@a13 varchar(50),@a14 varchar(50),@a15 varchar(50),@a16 varchar(50),@a17 varchar(50),@a18 varchar(50),@a19 decimal,@a20 decimal,@a21 decimal,@a22 varchar(50),@a23 varchar(50),@return int=0 output)

as
begin
set nocount on;
if((select count(*) from [ME_MSTR Data]
where Me01=@a1
and Me02=@a2
and Me03=@a3
and Me04=@a4
and Me05=@a5
and Me06=@a6
and Me07=@a7
and Me08=@a8
and Me09=@a9
and Me10=@a10
and Me11=@a11
and Me12=@a12
and Me13=@a13
and Me14=@a14
and Me15=@a15
and Me16=@a16
and Me17=@a17
and Me18=@a18
and Me19=@a19
and Me20=@a20
and Me21=@a21
and Me22=@a22
and Me23=@a23
)<=0)
begin
insert into [ME_MSTR Data] values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10,@a11,@a12,@a13,@a14,@a15,@a16,@a17,@a18,@a19,@a20,@a21,@a22,@a23)
end
set @return= @@rowcount
end
GO
USE [master]
GO
ALTER DATABASE [Desay] SET  READ_WRITE 
GO
