USE [master]
GO
/****** Object:  Database [AspNetIdentity]    Script Date: 3/27/2020 2:51:08 PM ******/
CREATE DATABASE [AspNetIdentity]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AspNetIdentity', FILENAME = N'C:\Users\c.wijesinghe\AspNetIdentity.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AspNetIdentity_log', FILENAME = N'C:\Users\c.wijesinghe\AspNetIdentity_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AspNetIdentity] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspNetIdentity].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspNetIdentity] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspNetIdentity] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspNetIdentity] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspNetIdentity] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspNetIdentity] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspNetIdentity] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AspNetIdentity] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspNetIdentity] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspNetIdentity] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspNetIdentity] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspNetIdentity] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspNetIdentity] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspNetIdentity] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspNetIdentity] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspNetIdentity] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AspNetIdentity] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspNetIdentity] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspNetIdentity] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspNetIdentity] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspNetIdentity] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspNetIdentity] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AspNetIdentity] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspNetIdentity] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspNetIdentity] SET  MULTI_USER 
GO
ALTER DATABASE [AspNetIdentity] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspNetIdentity] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspNetIdentity] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspNetIdentity] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AspNetIdentity] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AspNetIdentity] SET QUERY_STORE = OFF
GO
USE [AspNetIdentity]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [AspNetIdentity]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/27/2020 2:51:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20180109192453_CreateIdentitySchema', N'3.1.3')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (1, N'name', N'Alice Smith', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (2, N'given_name', N'Alice', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (3, N'family_name', N'Smith', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (4, N'email', N'AliceSmith@email.com', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (5, N'email_verified', N'true', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (6, N'website', N'http://alice.com', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (7, N'address', N'{ ''street_address'': ''One Hacker Way'', ''locality'': ''Heidelberg'', ''postal_code'': 69118, ''country'': ''Germany'' }', N'44A80F50-B15E-48D8-BDAA-B64A604F9144')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (8, N'address', N'{ ''street_address'': ''One Hacker Way'', ''locality'': ''Heidelberg'', ''postal_code'': 69118, ''country'': ''Germany'' }', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (9, N'website', N'http://bob.com', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (10, N'email_verified', N'true', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (11, N'email', N'BobSmith@email.com', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (12, N'family_name', N'Smith', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (13, N'given_name', N'Bob', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (14, N'name', N'Bob Smith', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
INSERT [dbo].[AspNetUserClaims] ([Id], [ClaimType], [ClaimValue], [UserId]) VALUES (15, N'location', N'somewhere', N'57473A46-3188-4191-9F02-ADEDA46BB37B')
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'44A80F50-B15E-48D8-BDAA-B64A604F9144', 0, N'1ffce16f-c366-49a0-8fca-1b679e6ef90f', NULL, 0, 1, NULL, NULL, N'ALICE', N'AQAAAAEAACcQAAAAEE6L/MonRufyyaEaR6i40SLdcIgNljWvaeZZERJFRzRMn3HhwZdOweZ+GZgFbddLjw==', NULL, 0, N'BNUFMSW2QVSLDD3MO3GGZOBJTKOETIHK', 0, N'alice')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'57473A46-3188-4191-9F02-ADEDA46BB37B', 0, N'93c9759c-c6fa-46a2-8611-ce8760115fd6', NULL, 0, 1, NULL, NULL, N'BOB', N'AQAAAAEAACcQAAAAEG3pQS5yJ6+Z9DeA4wIkL1t3BWmxBRCvgdq+PwcOuwmoqQ7HE8ctoRSV2NQ7nxOREA==', NULL, 0, N'JSJPDPSIHT6GI6XC7GYQIOJ4FFI5RNLC', 0, N'bob')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/27/2020 2:51:09 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [AspNetIdentity] SET  READ_WRITE 
GO
