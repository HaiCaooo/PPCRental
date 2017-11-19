
--Create database

USE [master]
GO
IF NOT EXISTS (SELECT [name] FROM sys.databases WHERE name = N'FashionWebsite')
BEGIN
CREATE DATABASE [FashionWebsite] COLLATE SQL_Latin1_General_CP1_CI_AS
END
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'FashionWebsite', @new_cmptlevel=110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
BEGIN
	EXEC [FashionWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
END
GO
ALTER DATABASE [FashionWebsite] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [FashionWebsite] SET ANSI_NULLS OFF
GO
ALTER DATABASE [FashionWebsite] SET ANSI_PADDING OFF
GO
ALTER DATABASE [FashionWebsite] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [FashionWebsite] SET ARITHABORT OFF
GO
ALTER DATABASE [FashionWebsite] SET AUTO_CLOSE ON
GO
ALTER DATABASE [FashionWebsite] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [FashionWebsite] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [FashionWebsite] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [FashionWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [FashionWebsite] SET CURSOR_DEFAULT GLOBAL
GO
ALTER DATABASE [FashionWebsite] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [FashionWebsite] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [FashionWebsite] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [FashionWebsite] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [FashionWebsite] SET ENABLE_BROKER
GO
ALTER DATABASE [FashionWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [FashionWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [FashionWebsite] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FashionWebsite] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [FashionWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [FashionWebsite] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [FashionWebsite] SET READ_WRITE
GO
ALTER DATABASE [FashionWebsite] SET RECOVERY SIMPLE
GO
ALTER DATABASE [FashionWebsite] SET MULTI_USER
GO
ALTER DATABASE [FashionWebsite] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [FashionWebsite] SET DB_CHAINING OFF
GO

USE [FashionWebsite]
GO

--Database Schemas

USE [FashionWebsite]
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'dbo')
EXEC sys.sp_executesql N'CREATE SCHEMA [dbo] AUTHORIZATION [dbo]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'guest')
EXEC sys.sp_executesql N'CREATE SCHEMA [guest] AUTHORIZATION [guest]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'INFORMATION_SCHEMA')
EXEC sys.sp_executesql N'CREATE SCHEMA [INFORMATION_SCHEMA] AUTHORIZATION [INFORMATION_SCHEMA]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'sys')
EXEC sys.sp_executesql N'CREATE SCHEMA [sys] AUTHORIZATION [sys]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_owner')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_owner] AUTHORIZATION [db_owner]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_accessadmin')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_accessadmin] AUTHORIZATION [db_accessadmin]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_securityadmin')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_securityadmin] AUTHORIZATION [db_securityadmin]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_ddladmin')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_ddladmin] AUTHORIZATION [db_ddladmin]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_backupoperator')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_backupoperator] AUTHORIZATION [db_backupoperator]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_datareader')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_datareader] AUTHORIZATION [db_datareader]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_datawriter')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_datawriter] AUTHORIZATION [db_datawriter]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_denydatareader')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_denydatareader] AUTHORIZATION [db_denydatareader]'
GO
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'db_denydatawriter')
EXEC sys.sp_executesql N'CREATE SCHEMA [db_denydatawriter] AUTHORIZATION [db_denydatawriter]'
GO

--Table dbo.Banner

USE [FashionWebsite]
GO

--Create table and its columns
CREATE TABLE [dbo].[Banner] (
	[ID] [int] NOT NULL IDENTITY (1, 1),
	[Link] [nvarchar](MAX) NULL);
GO

SET IDENTITY_INSERT [dbo].[Banner] ON
GO
INSERT INTO [dbo].[Banner] ([ID], [Link])
	VALUES (1, N'banner-fashion21.jpg')

GO
INSERT INTO [dbo].[Banner] ([ID], [Link])
	VALUES (2, N'banner-fashion22.png')

GO
INSERT INTO [dbo].[Banner] ([ID], [Link])
	VALUES (3, N'banner-fashion23.jpg')

GO
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO

--Table dbo.Product

USE [FashionWebsite]
GO

--Create table and its columns
CREATE TABLE [dbo].[Product] (
	[ID] [int] NOT NULL IDENTITY (1, 1),
	[Name] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Image] [nvarchar](500) NULL,
	[Des] [nvarchar](MAX) NULL,
	[ProductType_ID] [int] NULL);
GO

SET IDENTITY_INSERT [dbo].[Product] ON
GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (1, N'Quần Jean Nam', CAST ('100000' AS float), N'p2.jpg', N'Chất liệu jean', 2)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (2, N'Váy nữ', CAST ('200000' AS float), N'p5.jpg', N'Váy mùa hè', 1)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (3, N'Quần Jean Nam', CAST ('200000' AS float), N'p1.jpg', N'Chất kiệu kaki', 2)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (4, N'Quần Jean Nam', CAST ('3000000' AS float), N'p2.jpg', N'Chất liệu kaki', 2)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (5, N' Áo khoác nữ', CAST ('400000' AS float), N'p4.jpg', N'Áo khoác công sở', 3)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (6, N'Váy nữ', CAST ('600000' AS float), N'p6.jpg', N'Váy dạ hội', 1)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (7, N'Áo khoác nam', CAST ('600000' AS float), N'p3.jpg', N'Áo mùa hè', 3)

GO
INSERT INTO [dbo].[Product] ([ID], [Name], [Price], [Image], [Des], [ProductType_ID])
	VALUES (8, N'Áo khoác nam', CAST ('1000000' AS float), N'p1.jpg', N'Áo khoác nam', 3)

GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO

--Table dbo.ProductType

USE [FashionWebsite]
GO

--Create table and its columns
CREATE TABLE [dbo].[ProductType] (
	[ID] [int] NOT NULL IDENTITY (1, 1),
	[Name] [nvarchar](50) NULL);
GO

SET IDENTITY_INSERT [dbo].[ProductType] ON
GO
INSERT INTO [dbo].[ProductType] ([ID], [Name])
	VALUES (1, N'Váy')

GO
INSERT INTO [dbo].[ProductType] ([ID], [Name])
	VALUES (2, N'Quần')

GO
INSERT INTO [dbo].[ProductType] ([ID], [Name])
	VALUES (3, N'Áo khoác')

GO
INSERT INTO [dbo].[ProductType] ([ID], [Name])
	VALUES (4, N'Áo sơ mi')

GO
INSERT INTO [dbo].[ProductType] ([ID], [Name])
	VALUES (5, N'Giày')

GO
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO

--Indexes of table dbo.Banner
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Banner] ADD CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED ([ID]) 
GO

--Indexes of table dbo.Product
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ID]) 
GO

--Indexes of table dbo.ProductType
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TABLE [dbo].[ProductType] ADD CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED ([ID]) 
GO

--Foreign Keys

USE [FashionWebsite]
GO
ALTER TABLE [dbo].[Product] WITH CHECK ADD CONSTRAINT [FK_Product_ProductType] 
	FOREIGN KEY ([ProductType_ID]) REFERENCES [dbo].[ProductType] ([ID])
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
