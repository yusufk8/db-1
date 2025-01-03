USE [master]
GO
/****** Object:  Database [Grafik]    Script Date: 3.01.2025 13:10:43 ******/
CREATE DATABASE [Grafik]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Grafik', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Grafik.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Grafik_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Grafik_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Grafik] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Grafik].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Grafik] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Grafik] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Grafik] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Grafik] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Grafik] SET ARITHABORT OFF 
GO
ALTER DATABASE [Grafik] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Grafik] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Grafik] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Grafik] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Grafik] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Grafik] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Grafik] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Grafik] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Grafik] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Grafik] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Grafik] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Grafik] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Grafik] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Grafik] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Grafik] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Grafik] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Grafik] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Grafik] SET RECOVERY FULL 
GO
ALTER DATABASE [Grafik] SET  MULTI_USER 
GO
ALTER DATABASE [Grafik] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Grafik] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Grafik] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Grafik] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Grafik] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Grafik] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Grafik', N'ON'
GO
ALTER DATABASE [Grafik] SET QUERY_STORE = ON
GO
ALTER DATABASE [Grafik] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Grafik]
GO
/****** Object:  Table [dbo].[afis_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[afis_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[size_options] [nvarchar](50) NULL,
	[print_quality] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cache]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cache](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[expiration] [int] NOT NULL,
 CONSTRAINT [cache_key_primary] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cache_locks]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cache_locks](
	[key] [nvarchar](255) NOT NULL,
	[owner] [nvarchar](255) NOT NULL,
	[expiration] [int] NOT NULL,
 CONSTRAINT [cache_locks_key_primary] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NOT NULL,
	[subject] [nvarchar](255) NOT NULL,
	[message] [nvarchar](255) NOT NULL,
	[updated_at] [datetime] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[designer_service]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[designer_service](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[designer_id] [bigint] NOT NULL,
	[service_id] [bigint] NOT NULL,
 CONSTRAINT [designer_service_designer_id_service_id_primary] PRIMARY KEY CLUSTERED 
(
	[designer_id] ASC,
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[designers]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[designers](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](255) NOT NULL,
	[İletisim] [nvarchar](255) NOT NULL,
	[Deneyim] [nvarchar](255) NOT NULL,
	[Alan_id] [int] NOT NULL,
	[imgurl] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[designers_backup]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[designers_backup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](50) NULL,
	[İletisim] [nvarchar](50) NULL,
	[Deneyim] [nvarchar](50) NULL,
	[Alan_id] [int] NULL,
	[imgurl] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[designers_backup2]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[designers_backup2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](50) NULL,
	[İletisim] [nvarchar](50) NULL,
	[Deneyim] [nvarchar](50) NULL,
	[Alan_id] [int] NULL,
	[imgurl] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[designers_backup3]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[designers_backup3](
	[id] [bigint] NULL,
	[İsim] [nvarchar](50) NULL,
	[İletisim] [nvarchar](50) NULL,
	[Deneyim] [nvarchar](50) NULL,
	[Alan_id] [int] NULL,
	[imgurl] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[designers_backup4]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[designers_backup4](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[İsim] [nvarchar](255) NOT NULL,
	[İletisim] [nvarchar](255) NOT NULL,
	[Deneyim] [nvarchar](255) NOT NULL,
	[Alan_id] [int] NOT NULL,
	[imgurl] [nvarchar](255) NULL,
 CONSTRAINT [PK_designers_backup4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dukkan_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dukkan_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[store_type] [nvarchar](50) NULL,
	[3D_rendering] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dukkan_tasarımcılar2]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dukkan_tasarımcılar2](
	[id] [int] NULL,
	[designer_id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[store_type] [nvarchar](50) NULL,
	[3D_rendering] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[etiket_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[etiket_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[material_support] [nvarchar](50) NULL,
	[print_quality] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[failed_jobs]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[failed_jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[uuid] [nvarchar](255) NOT NULL,
	[connection] [nvarchar](max) NOT NULL,
	[queue] [nvarchar](max) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[exception] [nvarchar](max) NOT NULL,
	[failed_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_batches]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_batches](
	[id] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[total_jobs] [int] NOT NULL,
	[pending_jobs] [int] NOT NULL,
	[failed_jobs] [int] NOT NULL,
	[failed_job_ids] [nvarchar](max) NOT NULL,
	[options] [nvarchar](max) NULL,
	[cancelled_at] [int] NULL,
	[created_at] [int] NOT NULL,
	[finished_at] [int] NULL,
 CONSTRAINT [job_batches_id_primary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[queue] [nvarchar](255) NOT NULL,
	[payload] [nvarchar](max) NOT NULL,
	[attempts] [tinyint] NOT NULL,
	[reserved_at] [int] NULL,
	[available_at] [int] NOT NULL,
	[created_at] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kartvizit_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kartvizit_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[paper_quality] [nvarchar](50) NULL,
	[print_quality] [nvarchar](50) NULL,
	[qr_code_support] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[katalog_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[katalog_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[page_count_options] [nvarchar](50) NULL,
	[binding_types] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logo_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logo_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[specialization] [nvarchar](50) NULL,
	[vector_formats] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[sender_id] [bigint] NOT NULL,
	[receiver_id] [bigint] NOT NULL,
	[content] [nvarchar](max) NOT NULL,
	[is_read] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[migrations]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[project_title] [nvarchar](255) NOT NULL,
	[project_description] [nvarchar](max) NOT NULL,
	[deadline] [date] NOT NULL,
	[budget] [decimal](10, 2) NOT NULL,
	[special_requirements] [nvarchar](max) NULL,
	[status] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_reset_tokens]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_reset_tokens](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [password_reset_tokens_email_primary] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[service] [nvarchar](255) NOT NULL,
	[explanation] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[id] [nvarchar](255) NOT NULL,
	[user_id] [bigint] NULL,
	[ip_address] [nvarchar](45) NULL,
	[user_agent] [nvarchar](max) NULL,
	[payload] [nvarchar](max) NOT NULL,
	[last_activity] [int] NOT NULL,
 CONSTRAINT [sessions_id_primary] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urun_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urun_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[product_category] [nvarchar](50) NULL,
	[3D_modeling] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_status]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_status](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[birthdate] [date] NULL,
	[gender] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[is_active] [bit] NOT NULL,
	[last_activity] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[web_tasarımcılar]    Script Date: 3.01.2025 13:10:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_tasarımcılar](
	[id] [int] NULL,
	[price_range] [nvarchar](50) NULL,
	[specialization] [nvarchar](50) NULL,
	[technologies_used] [nvarchar](50) NULL,
	[site_maintenance] [nvarchar](50) NULL,
	[designer_id] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [failed_jobs_uuid_unique]    Script Date: 3.01.2025 13:10:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [failed_jobs_uuid_unique] ON [dbo].[failed_jobs]
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [jobs_queue_index]    Script Date: 3.01.2025 13:10:43 ******/
CREATE NONCLUSTERED INDEX [jobs_queue_index] ON [dbo].[jobs]
(
	[queue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sessions_last_activity_index]    Script Date: 3.01.2025 13:10:43 ******/
CREATE NONCLUSTERED INDEX [sessions_last_activity_index] ON [dbo].[sessions]
(
	[last_activity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [sessions_user_id_index]    Script Date: 3.01.2025 13:10:43 ******/
CREATE NONCLUSTERED INDEX [sessions_user_id_index] ON [dbo].[sessions]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [users_email_unique]    Script Date: 3.01.2025 13:10:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [users_email_unique] ON [dbo].[users]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[failed_jobs] ADD  DEFAULT (getdate()) FOR [failed_at]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ('0') FOR [is_read]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('pending') FOR [status]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('0') FOR [is_active]
GO
ALTER TABLE [dbo].[designer_service]  WITH CHECK ADD  CONSTRAINT [designer_service_designer_id_foreign] FOREIGN KEY([designer_id])
REFERENCES [dbo].[designers] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[designer_service] CHECK CONSTRAINT [designer_service_designer_id_foreign]
GO
ALTER TABLE [dbo].[designer_service]  WITH CHECK ADD  CONSTRAINT [designer_service_service_id_foreign] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[designer_service] CHECK CONSTRAINT [designer_service_service_id_foreign]
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD  CONSTRAINT [messages_receiver_id_foreign] FOREIGN KEY([receiver_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages_receiver_id_foreign]
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD  CONSTRAINT [messages_sender_id_foreign] FOREIGN KEY([sender_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages_sender_id_foreign]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [orders_user_id_foreign] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [orders_user_id_foreign]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([status]=N'completed' OR [status]=N'rejected' OR [status]=N'accepted' OR [status]=N'pending'))
GO
USE [master]
GO
ALTER DATABASE [Grafik] SET  READ_WRITE 
GO
