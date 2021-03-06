/****** Object:  Database [LearningUmbraco8]    Script Date: 1/11/2020 6:15:51 PM ******/
CREATE DATABASE [LearningUmbraco8]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LearningUmbraco8', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LearningUmbraco8.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LearningUmbraco8_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LearningUmbraco8_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LearningUmbraco8] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LearningUmbraco8].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LearningUmbraco8] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET ARITHABORT OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LearningUmbraco8] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LearningUmbraco8] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LearningUmbraco8] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LearningUmbraco8] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LearningUmbraco8] SET  MULTI_USER 
GO
ALTER DATABASE [LearningUmbraco8] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LearningUmbraco8] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LearningUmbraco8] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LearningUmbraco8] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LearningUmbraco8] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LearningUmbraco8] SET QUERY_STORE = OFF
GO
USE [LearningUmbraco8]
GO
/****** Object:  Table [dbo].[cmsContentNu]    Script Date: 1/11/2020 6:15:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentNu](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[data] [ntext] NOT NULL,
	[rv] [bigint] NOT NULL,
 CONSTRAINT [PK_cmsContentNu] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
	[thumbnail] [nvarchar](255) NOT NULL,
	[description] [nvarchar](1500) NULL,
	[isContainer] [bit] NOT NULL,
	[isElement] [bit] NOT NULL,
	[allowAtRoot] [bit] NOT NULL,
	[variations] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentType2ContentType](
	[parentContentTypeId] [int] NOT NULL,
	[childContentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentType2ContentType] PRIMARY KEY CLUSTERED 
(
	[parentContentTypeId] ASC,
	[childContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsContentTypeAllowedContentType](
	[Id] [int] NOT NULL,
	[AllowedId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_cmsContentTypeAllowedContentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[AllowedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDictionary](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[id] [uniqueidentifier] NOT NULL,
	[parent] [uniqueidentifier] NULL,
	[key] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsDocumentType](
	[contentTypeNodeId] [int] NOT NULL,
	[templateNodeId] [int] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_cmsDocumentType] PRIMARY KEY CLUSTERED 
(
	[contentTypeNodeId] ASC,
	[templateNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsLanguageText](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[languageId] [int] NOT NULL,
	[UniqueId] [uniqueidentifier] NOT NULL,
	[value] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsLanguageText] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[macroUseInEditor] [bit] NOT NULL,
	[macroRefreshRate] [int] NOT NULL,
	[macroAlias] [nvarchar](255) NOT NULL,
	[macroName] [nvarchar](255) NULL,
	[macroCacheByPage] [bit] NOT NULL,
	[macroCachePersonalized] [bit] NOT NULL,
	[macroDontRender] [bit] NOT NULL,
	[macroSource] [nvarchar](255) NOT NULL,
	[macroType] [int] NOT NULL,
 CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMacroProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniquePropertyId] [uniqueidentifier] NOT NULL,
	[editorAlias] [nvarchar](255) NOT NULL,
	[macro] [int] NOT NULL,
	[macroPropertySortOrder] [int] NOT NULL,
	[macroPropertyAlias] [nvarchar](50) NOT NULL,
	[macroPropertyName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_cmsMacroProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember](
	[nodeId] [int] NOT NULL,
	[Email] [nvarchar](1000) NOT NULL,
	[LoginName] [nvarchar](1000) NOT NULL,
	[Password] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMember2MemberGroup](
	[Member] [int] NOT NULL,
	[MemberGroup] [int] NOT NULL,
 CONSTRAINT [PK_cmsMember2MemberGroup] PRIMARY KEY CLUSTERED 
(
	[Member] ASC,
	[MemberGroup] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsMemberType](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[propertytypeId] [int] NOT NULL,
	[memberCanEdit] [bit] NOT NULL,
	[viewOnProfile] [bit] NOT NULL,
	[isSensitive] [bit] NOT NULL,
 CONSTRAINT [PK_cmsMemberType] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[dataTypeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
	[propertyTypeGroupId] [int] NULL,
	[Alias] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[sortOrder] [int] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[validationRegExp] [nvarchar](255) NULL,
	[Description] [nvarchar](2000) NULL,
	[variations] [int] NOT NULL,
	[UniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsPropertyTypeGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[contenttypeNodeId] [int] NOT NULL,
	[text] [nvarchar](255) NOT NULL,
	[sortorder] [int] NOT NULL,
	[uniqueID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTagRelationship](
	[nodeId] [int] NOT NULL,
	[tagId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_cmsTagRelationship] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC,
	[propertyTypeId] ASC,
	[tagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTags]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTags](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group] [nvarchar](100) NOT NULL,
	[languageId] [int] NULL,
	[tag] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cmsTemplate](
	[pk] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED 
(
	[pk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccess](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[loginNodeId] [int] NOT NULL,
	[noAccessNodeId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccess] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAccessRule](
	[id] [uniqueidentifier] NOT NULL,
	[accessId] [uniqueidentifier] NOT NULL,
	[ruleValue] [nvarchar](255) NOT NULL,
	[ruleType] [nvarchar](255) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoAudit]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoAudit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[performingUserId] [int] NOT NULL,
	[performingDetails] [nvarchar](1024) NULL,
	[performingIp] [nvarchar](64) NULL,
	[eventDateUtc] [datetime] NOT NULL,
	[affectedUserId] [int] NOT NULL,
	[affectedDetails] [nvarchar](1024) NULL,
	[eventType] [nvarchar](256) NOT NULL,
	[eventDetails] [nvarchar](1024) NULL,
 CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoCacheInstruction](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[utcStamp] [datetime] NOT NULL,
	[jsonInstruction] [ntext] NOT NULL,
	[originated] [nvarchar](500) NOT NULL,
	[instructionCount] [int] NOT NULL,
 CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoConsent]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoConsent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[current] [bit] NOT NULL,
	[source] [nvarchar](512) NOT NULL,
	[context] [nvarchar](128) NOT NULL,
	[action] [nvarchar](512) NOT NULL,
	[createDate] [datetime] NOT NULL,
	[state] [int] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContent]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContent](
	[nodeId] [int] NOT NULL,
	[contentTypeId] [int] NOT NULL,
 CONSTRAINT [PK_umbracoContent] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentSchedule]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentSchedule](
	[id] [uniqueidentifier] NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[date] [datetime] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoContentSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersion]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[versionDate] [datetime] NOT NULL,
	[userId] [int] NULL,
	[current] [bit] NOT NULL,
	[text] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoContentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoContentVersionCultureVariation]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoContentVersionCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[date] [datetime] NOT NULL,
	[availableUserId] [int] NULL,
 CONSTRAINT [PK_umbracoContentVersionCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDataType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDataType](
	[nodeId] [int] NOT NULL,
	[propertyEditorAlias] [nvarchar](255) NOT NULL,
	[dbType] [nvarchar](50) NOT NULL,
	[config] [ntext] NULL,
 CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocument]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocument](
	[nodeId] [int] NOT NULL,
	[published] [bit] NOT NULL,
	[edited] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocument] PRIMARY KEY CLUSTERED 
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentCultureVariation]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentCultureVariation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nodeId] [int] NOT NULL,
	[languageId] [int] NOT NULL,
	[edited] [bit] NOT NULL,
	[available] [bit] NOT NULL,
	[published] [bit] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoDocumentCultureVariation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDocumentVersion]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDocumentVersion](
	[id] [int] NOT NULL,
	[templateId] [int] NULL,
	[published] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoDocumentVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoDomain]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoDomain](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domainDefaultLanguage] [int] NULL,
	[domainRootStructureID] [int] NULL,
	[domainName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoDomain] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoExternalLogin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[loginProvider] [nvarchar](4000) NOT NULL,
	[providerKey] [nvarchar](4000) NOT NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoKeyValue]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoKeyValue](
	[key] [nvarchar](256) NOT NULL,
	[value] [nvarchar](255) NULL,
	[updated] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoKeyValue] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLanguage](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[languageISOCode] [nvarchar](14) NULL,
	[languageCultureName] [nvarchar](100) NULL,
	[isDefaultVariantLang] [bit] NOT NULL,
	[mandatory] [bit] NOT NULL,
	[fallbackLanguageId] [int] NULL,
 CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLock]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLock](
	[id] [int] NOT NULL,
	[value] [int] NOT NULL,
	[name] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NULL,
	[NodeId] [int] NOT NULL,
	[entityType] [nvarchar](50) NULL,
	[Datestamp] [datetime] NOT NULL,
	[logHeader] [nvarchar](50) NOT NULL,
	[logComment] [nvarchar](4000) NULL,
	[parameters] [nvarchar](500) NULL,
 CONSTRAINT [PK_umbracoLog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoMediaVersion]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoMediaVersion](
	[id] [int] NOT NULL,
	[path] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoMediaVersion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uniqueId] [uniqueidentifier] NOT NULL,
	[parentId] [int] NOT NULL,
	[level] [int] NOT NULL,
	[path] [nvarchar](150) NOT NULL,
	[sortOrder] [int] NOT NULL,
	[trashed] [bit] NOT NULL,
	[nodeUser] [int] NULL,
	[text] [nvarchar](255) NULL,
	[nodeObjectType] [uniqueidentifier] NULL,
	[createDate] [datetime] NOT NULL,
 CONSTRAINT [PK_umbracoNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoPropertyData]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoPropertyData](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[versionId] [int] NOT NULL,
	[propertyTypeId] [int] NOT NULL,
	[languageId] [int] NULL,
	[segment] [nvarchar](256) NULL,
	[intValue] [int] NULL,
	[decimalValue] [decimal](38, 6) NULL,
	[dateValue] [datetime] NULL,
	[varcharValue] [nvarchar](512) NULL,
	[textValue] [ntext] NULL,
 CONSTRAINT [PK_umbracoPropertyData] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRedirectUrl](
	[id] [uniqueidentifier] NOT NULL,
	[contentKey] [uniqueidentifier] NOT NULL,
	[createDateUtc] [datetime] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[culture] [nvarchar](255) NULL,
	[urlHash] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[childId] [int] NOT NULL,
	[relType] [int] NOT NULL,
	[datetime] [datetime] NOT NULL,
	[comment] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_umbracoRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typeUniqueId] [uniqueidentifier] NOT NULL,
	[dual] [bit] NOT NULL,
	[parentObjectType] [uniqueidentifier] NOT NULL,
	[childObjectType] [uniqueidentifier] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoServer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](500) NOT NULL,
	[computerName] [nvarchar](255) NOT NULL,
	[registeredDate] [datetime] NOT NULL,
	[lastNotifiedDate] [datetime] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isMaster] [bit] NOT NULL,
 CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userDisabled] [bit] NOT NULL,
	[userNoConsole] [bit] NOT NULL,
	[userName] [nvarchar](255) NOT NULL,
	[userLogin] [nvarchar](125) NOT NULL,
	[userPassword] [nvarchar](500) NOT NULL,
	[passwordConfig] [nvarchar](500) NULL,
	[userEmail] [nvarchar](255) NOT NULL,
	[userLanguage] [nvarchar](10) NULL,
	[securityStampToken] [nvarchar](255) NULL,
	[failedLoginAttempts] [int] NULL,
	[lastLockoutDate] [datetime] NULL,
	[lastPasswordChangeDate] [datetime] NULL,
	[lastLoginDate] [datetime] NULL,
	[emailConfirmedDate] [datetime] NULL,
	[invitedDate] [datetime] NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[avatar] [nvarchar](500) NULL,
	[tourData] [ntext] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2NodeNotify](
	[userId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[action] [nchar](1) NOT NULL,
 CONSTRAINT [PK_umbracoUser2NodeNotify] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[nodeId] ASC,
	[action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUser2UserGroup]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUser2UserGroup](
	[userId] [int] NOT NULL,
	[userGroupId] [int] NOT NULL,
 CONSTRAINT [PK_user2userGroup] PRIMARY KEY CLUSTERED 
(
	[userId] ASC,
	[userGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userGroupAlias] [nvarchar](200) NOT NULL,
	[userGroupName] [nvarchar](200) NOT NULL,
	[userGroupDefaultPermissions] [nvarchar](50) NULL,
	[createDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[icon] [nvarchar](255) NULL,
	[startContentId] [int] NULL,
	[startMediaId] [int] NULL,
 CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2App]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2App](
	[userGroupId] [int] NOT NULL,
	[app] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_userGroup2App] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[app] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserGroup2NodePermission]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserGroup2NodePermission](
	[userGroupId] [int] NOT NULL,
	[nodeId] [int] NOT NULL,
	[permission] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_umbracoUserGroup2NodePermission] PRIMARY KEY CLUSTERED 
(
	[userGroupId] ASC,
	[nodeId] ASC,
	[permission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserLogin]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserLogin](
	[sessionId] [uniqueidentifier] NOT NULL,
	[userId] [int] NOT NULL,
	[loggedInUtc] [datetime] NOT NULL,
	[lastValidatedUtc] [datetime] NOT NULL,
	[loggedOutUtc] [datetime] NULL,
	[ipAddress] [nvarchar](255) NULL,
 CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[umbracoUserStartNode]    Script Date: 1/11/2020 6:15:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[umbracoUserStartNode](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [int] NOT NULL,
	[startNode] [int] NOT NULL,
	[startNodeType] [int] NOT NULL,
 CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1053, 0, N'{"properties":{"metaTags":[],"bodyText":[{"culture":"","seg":"","val":"Umniah Website from Umbraco8"}],"rTEBodyText":[{"culture":"","seg":"","val":"<p>this is a <strong>body</strong> text from rte</p>"}],"bodyTextColor":[{"culture":"","seg":"","val":"{\r\n  \"value\": \"df2513\",\r\n  \"label\": \"df2513\",\r\n  \"sortOrder\": 2,\r\n  \"id\": \"3\"\r\n}"}],"testingProp":[{"culture":"en-us","seg":"","val":"English"},{"culture":"ar","seg":"","val":"عربي"}],"imagesrc":[],"mainImageCropper":[],"sliderLanding":[{"culture":"","seg":"","val":"[{\"key\":\"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/b24fcbeba75d4952bbbc93348cf9b197\",\"desc\":\"image one \"},{\"key\":\"fa66879f-622c-4250-85cc-1953852d1811\",\"name\":\"Item 2\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/66dc4efb8c4b45b687abe04076e1f0e1\",\"desc\":\"image 2 \"}]"}],"cssClasses":[{"culture":"","seg":"","val":"[\"pTagWithPadding\"]"}],"multiCssClasses":[{"culture":"","seg":"","val":"[\"bluePTag\"]"}],"footerUrls":[{"culture":"","seg":"","val":"[{\"name\":\"FaQs\",\"target\":\"_blank\",\"udi\":\"umb://document/98ef8208e80449c383270df3c947ab05\"},{\"name\":\"Umbraco\",\"target\":\"\",\"url\":\"Https://www.Google.com\",\"queryString\":\"?q=umbraco\"}]"}]},"cultureData":{"en-us":{"name":"Umniah","urlSegment":"umniah","date":"2020-01-11T17:15:12.2764672+03:00","isDraft":false},"ar":{"name":"Main","urlSegment":"main","date":"2020-01-11T16:46:44.477Z","isDraft":false}},"urlSegment":"umniah"}', 6)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1053, 1, N'{"properties":{"metaTags":[],"bodyText":[{"culture":"","seg":"","val":"Umniah Website from Umbraco8"}],"rTEBodyText":[{"culture":"","seg":"","val":"<p>this is a <strong>body</strong> text from rte</p>"}],"bodyTextColor":[{"culture":"","seg":"","val":"{\r\n  \"value\": \"df2513\",\r\n  \"label\": \"df2513\",\r\n  \"sortOrder\": 2,\r\n  \"id\": \"3\"\r\n}"}],"testingProp":[{"culture":"en-us","seg":"","val":"English"},{"culture":"ar","seg":"","val":"عربي"}],"imagesrc":[],"mainImageCropper":[],"sliderLanding":[{"culture":"","seg":"","val":"[{\"key\":\"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/b24fcbeba75d4952bbbc93348cf9b197\",\"desc\":\"image one \"},{\"key\":\"fa66879f-622c-4250-85cc-1953852d1811\",\"name\":\"Item 2\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/66dc4efb8c4b45b687abe04076e1f0e1\",\"desc\":\"image 2 \"}]"}],"cssClasses":[{"culture":"","seg":"","val":"[\"pTagWithPadding\"]"}],"multiCssClasses":[{"culture":"","seg":"","val":"[\"bluePTag\"]"}],"footerUrls":[{"culture":"","seg":"","val":"[{\"name\":\"FaQs\",\"target\":\"_blank\",\"udi\":\"umb://document/98ef8208e80449c383270df3c947ab05\"},{\"name\":\"Umbraco\",\"target\":\"\",\"url\":\"Https://www.Google.com\",\"queryString\":\"?q=umbraco\"}]"}]},"cultureData":{"en-us":{"name":"Umniah","urlSegment":"umniah","date":"2020-01-11T17:15:12.2764672+03:00","isDraft":false},"ar":{"name":"Main","urlSegment":"main","date":"2020-01-11T16:46:44.477Z","isDraft":false}},"urlSegment":"umniah"}', 6)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1056, 0, N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/1mmou4he/maxresdefault.jpg\",\"crops\":null}"}],"umbracoWidth":[{"culture":"","seg":"","val":1280}],"umbracoHeight":[{"culture":"","seg":"","val":720}],"umbracoBytes":[{"culture":"","seg":"","val":"47263"}],"umbracoExtension":[{"culture":"","seg":"","val":"jpg"}]},"cultureData":{},"urlSegment":"maxresdefault"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1065, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}]},"cultureData":{},"urlSegment":"personal"}', 2)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1066, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}]},"cultureData":{},"urlSegment":"home"}', 4)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1066, 1, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}]},"cultureData":{},"urlSegment":"home"}', 4)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1067, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}],"metaTags":[]},"cultureData":{},"urlSegment":"business"}', 1)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1067, 1, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}],"metaTags":[]},"cultureData":{},"urlSegment":"business"}', 1)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1076, 0, N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/3xff5ms3/crash_test_dummy.png\",\"crops\":[{\"alias\":\"200X200\",\"width\":200,\"height\":200}]}"}],"umbracoWidth":[{"culture":"","seg":"","val":512}],"umbracoHeight":[{"culture":"","seg":"","val":512}],"umbracoBytes":[{"culture":"","seg":"","val":"17515"}],"umbracoExtension":[{"culture":"","seg":"","val":"png"}]},"cultureData":{},"urlSegment":"crash-test-dummy"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1077, 0, N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/5vhnyzsl/dummy_nipple-512.png\",\"crops\":[{\"alias\":\"200X200\",\"width\":200,\"height\":200}]}"}],"umbracoWidth":[{"culture":"","seg":"","val":512}],"umbracoHeight":[{"culture":"","seg":"","val":512}],"umbracoBytes":[{"culture":"","seg":"","val":"15939"}],"umbracoExtension":[{"culture":"","seg":"","val":"png"}]},"cultureData":{},"urlSegment":"dummy-nipple-512"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1080, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":0}]},"cultureData":{},"urlSegment":"faqs"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1080, 1, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":0}]},"cultureData":{},"urlSegment":"faqs"}', 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (535, 1052, N'landingPage', N'icon-home color-indigo', N'folder.png', NULL, 0, 0, 1, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (536, 1060, N'personal', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (537, 1062, N'home', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (538, 1064, N'business', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (539, 1068, N'webPageBase', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (540, 1070, N'landingPageV2', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (541, 1073, N'sliderItems', N'icon-document', N'folder.png', NULL, 0, 1, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (542, 1079, N'fAQs', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (543, 1081, N'mainConfig', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] OFF
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1068, 1052)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1068, 1064)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1068, 1070)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1081, 1060)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1081, 1062)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1081, 1064)
INSERT [dbo].[cmsContentType2ContentType] ([parentContentTypeId], [childContentTypeId]) VALUES (1081, 1079)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1031, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1032, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1031, 1033, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1052, 1060, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1052, 1062, 1)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1052, 1064, 2)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1052, 1079, 3)
SET IDENTITY_INSERT [dbo].[cmsDictionary] ON 

INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (1, N'9ebcfb76-1819-4334-b8bd-f25cabe27919', NULL, N'NextBtn')
INSERT [dbo].[cmsDictionary] ([pk], [id], [parent], [key]) VALUES (2, N'd763a7a0-60c7-4807-8f1e-a9fb7119e2d3', NULL, N'lang')
SET IDENTITY_INSERT [dbo].[cmsDictionary] OFF
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1052, 1051, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1060, 1059, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1062, 1061, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1064, 1063, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1070, 1069, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1079, 1078, 1)
SET IDENTITY_INSERT [dbo].[cmsLanguageText] ON 

INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1, 1, N'9ebcfb76-1819-4334-b8bd-f25cabe27919', N'Next')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2, 2, N'9ebcfb76-1819-4334-b8bd-f25cabe27919', N'التالي')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (3, 1, N'd763a7a0-60c7-4807-8f1e-a9fb7119e2d3', N'en')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (4, 2, N'd763a7a0-60c7-4807-8f1e-a9fb7119e2d3', N'ar')
SET IDENTITY_INSERT [dbo].[cmsLanguageText] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyType] ON 

INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (6, 1043, 1032, 3, N'umbracoFile', N'Upload image', 0, 1, NULL, NULL, 0, N'00000006-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (7, -91, 1032, 3, N'umbracoWidth', N'Width', 0, 0, NULL, N'in pixels', 0, N'00000007-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (8, -91, 1032, 3, N'umbracoHeight', N'Height', 0, 0, NULL, N'in pixels', 0, N'00000008-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (9, -93, 1032, 3, N'umbracoBytes', N'Size', 0, 0, NULL, N'in bytes', 0, N'00000009-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (10, -92, 1032, 3, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, 0, N'0000000a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (24, -90, 1033, 4, N'umbracoFile', N'Upload file', 0, 1, NULL, NULL, 0, N'00000018-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (25, -92, 1033, 4, N'umbracoExtension', N'Type', 0, 0, NULL, NULL, 0, N'00000019-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (26, -93, 1033, 4, N'umbracoBytes', N'Size', 0, 0, NULL, N'in bytes', 0, N'0000001a-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (28, -89, 1044, 11, N'umbracoMemberComments', N'Comments', 0, 0, NULL, NULL, 0, N'0000001c-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (29, -91, 1044, 11, N'umbracoMemberFailedPasswordAttempts', N'Failed Password Attempts', 1, 0, NULL, NULL, 0, N'0000001d-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (30, -49, 1044, 11, N'umbracoMemberApproved', N'Is Approved', 2, 0, NULL, NULL, 0, N'0000001e-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (31, -49, 1044, 11, N'umbracoMemberLockedOut', N'Is Locked Out', 3, 0, NULL, NULL, 0, N'0000001f-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (32, -94, 1044, 11, N'umbracoMemberLastLockoutDate', N'Last Lockout Date', 4, 0, NULL, NULL, 0, N'00000020-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (33, -94, 1044, 11, N'umbracoMemberLastLogin', N'Last Login Date', 5, 0, NULL, NULL, 0, N'00000021-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (34, -94, 1044, 11, N'umbracoMemberLastPasswordChangeDate', N'Last Password Change Date', 6, 0, NULL, NULL, 0, N'00000022-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (35, -94, 1044, 11, N'umbracoMemberPasswordRetrievalQuestion', N'Password Question', 7, 0, NULL, NULL, 0, N'00000023-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (36, -94, 1044, 11, N'umbracoMemberPasswordRetrievalAnswer', N'Password Answer', 8, 0, NULL, NULL, 0, N'00000024-0000-0000-0000-000000000000')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (37, -88, 1052, 12, N'bodyText', N'BodyText', 0, 0, NULL, NULL, 0, N'5f13cdad-7343-467a-b434-d01bdcecd0a7')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (38, 1054, 1052, 12, N'rTEBodyText', N'RTEBodyText', 1, 0, NULL, NULL, 0, N'ad2c38a6-ed07-46ad-887a-a72b1d64e99c')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (39, 1055, 1052, 13, N'imagesrc', N'Imagesrc', 0, 0, NULL, NULL, 0, N'dfa2c34f-91d2-4839-93be-6259aab2924e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (40, 1043, 1052, 13, N'mainImageCropper', N'MainImageCropper', 1, 0, NULL, NULL, 0, N'6ce4211e-c020-42bf-9273-44ccad18cd29')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (41, 1058, 1052, 12, N'bodyTextColor', N'BodyTextColor', 2, 0, NULL, NULL, 0, N'a2f72524-5898-4f40-9e8b-3cfe89333294')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (42, -39, 1052, 14, N'cssClasses', N'CssClasses', 0, 0, NULL, NULL, 0, N'd40e212a-37b9-49d6-bef2-49465b6d76b7')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (43, -42, 1052, 14, N'multiCssClasses', N'Multi Css Classes', 1, 0, NULL, NULL, 0, N'da1e555f-8839-4abe-8b5b-a788fc64398e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1043, -88, 1068, 1013, N'metaTags', N'Meta Tags', 0, 0, NULL, NULL, 0, N'cd142c73-2d00-426d-b384-bf2991fd3f7f')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1044, 1072, 1073, 1014, N'backGroundImage', N'BackGroundImage', 0, 0, NULL, NULL, 0, N'5d387df3-4246-462d-aa04-9a646487c4af')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1045, -88, 1073, 1014, N'desc', N'desc', 1, 0, NULL, NULL, 0, N'8d415c15-7f42-4ce1-9b75-bb15df24afc0')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1046, 1075, 1052, 13, N'sliderLanding', N'SliderLanding', 2, 0, NULL, NULL, 0, N'6f26089e-6186-498d-bf4e-c6f5c360afba')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1047, 1082, 1081, 1015, N'showInMainMenu', N'Show in main Menu', 0, 0, NULL, N'Check when you want to show this item at the main menu', 0, N'53f6a9c4-1f23-4205-8696-b95b68149648')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1048, 1050, 1052, 1016, N'footerUrls', N'FooterUrls', 0, 0, NULL, NULL, 0, N'569e6f75-2235-43a1-9ed1-f859babbc91a')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1049, -88, 1052, 12, N'testingProp', N'testing prop', 3, 0, NULL, NULL, 1, N'99527087-63f2-4105-8317-244764dca7ab')
SET IDENTITY_INSERT [dbo].[cmsPropertyType] OFF
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] ON 

INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (3, 1032, N'Image', 1, N'79ed4d07-254a-42cf-8fa9-ebe1c116a596')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (4, 1033, N'File', 1, N'50899f9c-023a-4466-b623-aba9049885fe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (11, 1044, N'Membership', 1, N'0756729d-d665-46e3-b84a-37aceaa614f8')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (12, 1052, N'SiteBasicinfo', 0, N'4f0a9736-39df-4c19-95ad-b06318f1fd01')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (13, 1052, N'Graphs', 1, N'3043c60c-2faa-418d-812e-f724cfb451f3')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (14, 1052, N'CssConfig', 2, N'fbf2cd45-1d18-4dd2-9cc0-90cf67632697')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1013, 1068, N'Seo', 0, N'b7efbbff-93a7-42dc-a70b-afab54ae745c')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1014, 1073, N'info', 0, N'c7a5bd1e-8ae7-4339-b6d0-2f2bd1a2b84c')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1015, 1081, N'config', 0, N'0736d5a9-e9a9-47fb-8d5e-bb5a4e3312e2')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1016, 1052, N'Navigation', 3, N'4a0e4390-c584-4663-8401-1c844f55bc78')
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (1, 1051, N'LandingPage')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (2, 1057, N'masterPage')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (3, 1059, N'Personal')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (4, 1061, N'Home')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (5, 1063, N'Business')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (6, 1069, N'LandingPageV2')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (7, 1078, N'FAQs')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
SET IDENTITY_INSERT [dbo].[umbracoAudit] ON 

INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (1, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T11:26:13.557' AS DateTime), -1, N'User "Administrator" ', N'umbraco/user/save', N'updating RawPasswordValue, LastPasswordChangeDate, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (2, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T11:26:13.730' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating Email, Name, Username, UpdateDate, SecurityStamp')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (3, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T11:26:13.833' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (4, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T11:28:23.450' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (5, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T11:28:23.490' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (6, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-11T11:28:26.140' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating TourData, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (7, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T14:12:46.617' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (8, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T14:12:46.660' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (9, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T15:07:28.397' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (10, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T15:07:28.420' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
SET IDENTITY_INSERT [dbo].[umbracoAudit] OFF
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] ON 

INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1, CAST(N'2020-01-11T11:28:23.503' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (2, CAST(N'2020-01-11T11:28:26.143' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (3, CAST(N'2020-01-11T11:31:29.647' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (4, CAST(N'2020-01-11T11:31:31.777' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (5, CAST(N'2020-01-11T11:31:57.837' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (6, CAST(N'2020-01-11T11:33:26.383' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (7, CAST(N'2020-01-11T11:34:14.867' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (8, CAST(N'2020-01-11T11:34:20.840' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (9, CAST(N'2020-01-11T11:34:46.287' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (10, CAST(N'2020-01-11T11:34:50.570' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (11, CAST(N'2020-01-11T11:38:15.917' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (12, CAST(N'2020-01-11T11:38:40.827' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (13, CAST(N'2020-01-11T11:38:46.120' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (14, CAST(N'2020-01-11T11:40:02.463' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (15, CAST(N'2020-01-11T11:40:13.177' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (16, CAST(N'2020-01-11T11:40:36.350' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (17, CAST(N'2020-01-11T11:40:48.210' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (18, CAST(N'2020-01-11T11:40:58.353' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (19, CAST(N'2020-01-11T11:41:12.043' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (20, CAST(N'2020-01-11T11:43:10.140' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1054,\"Key\":\"e44f1324-8b54-4ade-87fb-3657595691cb\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (21, CAST(N'2020-01-11T11:43:12.823' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (22, CAST(N'2020-01-11T11:43:53.860' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (23, CAST(N'2020-01-11T11:44:26.567' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (24, CAST(N'2020-01-11T11:44:41.537' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (25, CAST(N'2020-01-11T11:44:48.137' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (26, CAST(N'2020-01-11T11:45:16.407' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (27, CAST(N'2020-01-11T11:45:17.307' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (28, CAST(N'2020-01-11T11:45:59.697' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (29, CAST(N'2020-01-11T11:46:02.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (30, CAST(N'2020-01-11T11:47:48.383' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1055,\"Key\":\"c751826b-adce-45f3-8373-57db88fee61a\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (31, CAST(N'2020-01-11T11:47:53.117' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (32, CAST(N'2020-01-11T11:48:28.277' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1056,\"Key\":\"78ea18dd-bae4-45df-b571-e42b5200dc45\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (33, CAST(N'2020-01-11T11:48:35.780' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (34, CAST(N'2020-01-11T11:48:39.320' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (35, CAST(N'2020-01-11T11:52:37.093' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (36, CAST(N'2020-01-11T11:52:51.470' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (37, CAST(N'2020-01-11T11:54:01.137' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1043,\"Key\":\"1df9f033-e6d4-451f-b8d2-e0cbc50a836f\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (38, CAST(N'2020-01-11T11:54:03.017' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (39, CAST(N'2020-01-11T11:54:04.107' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (40, CAST(N'2020-01-11T11:55:02.810' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (41, CAST(N'2020-01-11T11:56:35.593' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (42, CAST(N'2020-01-11T11:56:38.903' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (43, CAST(N'2020-01-11T11:57:02.177' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (44, CAST(N'2020-01-11T11:57:02.923' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (45, CAST(N'2020-01-11T12:00:25.680' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1058,\"Key\":\"2008a46b-912f-4b73-a2cc-650827261b97\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (46, CAST(N'2020-01-11T12:00:45.523' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1058,\"Key\":\"2008a46b-912f-4b73-a2cc-650827261b97\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (47, CAST(N'2020-01-11T12:00:48.523' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (48, CAST(N'2020-01-11T12:00:55.490' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (49, CAST(N'2020-01-11T12:01:08.237' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (50, CAST(N'2020-01-11T12:02:11.760' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (51, CAST(N'2020-01-11T12:02:12.613' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (52, CAST(N'2020-01-11T12:02:19.737' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (53, CAST(N'2020-01-11T12:05:44.297' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":-39,\"Key\":\"0b6a45e7-44ba-430d-9da5-4e46060b9e03\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (54, CAST(N'2020-01-11T12:05:50.733' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (55, CAST(N'2020-01-11T12:06:01.453' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (56, CAST(N'2020-01-11T12:06:57.477' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (57, CAST(N'2020-01-11T12:06:58.350' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (58, CAST(N'2020-01-11T12:07:03.487' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (59, CAST(N'2020-01-11T12:07:07.237' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (60, CAST(N'2020-01-11T12:08:02.110' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":-39,\"Key\":\"0b6a45e7-44ba-430d-9da5-4e46060b9e03\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (61, CAST(N'2020-01-11T12:08:11.507' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (62, CAST(N'2020-01-11T12:08:12.433' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (63, CAST(N'2020-01-11T12:08:18.297' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (64, CAST(N'2020-01-11T12:08:22.900' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (65, CAST(N'2020-01-11T12:09:41.213' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (66, CAST(N'2020-01-11T12:09:42.283' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (67, CAST(N'2020-01-11T12:10:10.420' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (68, CAST(N'2020-01-11T12:10:23.080' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (69, CAST(N'2020-01-11T12:10:23.950' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (70, CAST(N'2020-01-11T12:11:17.630' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":-42,\"Key\":\"f38f0ac7-1d27-439c-9f3f-089cd8825a53\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (71, CAST(N'2020-01-11T12:11:19.603' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (72, CAST(N'2020-01-11T12:11:28.603' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (73, CAST(N'2020-01-11T12:16:29.917' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (74, CAST(N'2020-01-11T12:16:30.797' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (75, CAST(N'2020-01-11T12:16:35.407' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D5] 3FF26CB0B6E44C2F936E1F7AEE3F1762', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (76, CAST(N'2020-01-11T12:17:09.903' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D6] AA13D5017D4446FAAC0BF18E2624315D', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (77, CAST(N'2020-01-11T12:17:24.157' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P1528/D6] AA13D5017D4446FAAC0BF18E2624315D', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1065, CAST(N'2020-01-11T12:25:15.853' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1059]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1060,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1066, CAST(N'2020-01-11T12:25:22.853' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1061]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1067, CAST(N'2020-01-11T12:25:35.893' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1064,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1068, CAST(N'2020-01-11T12:25:37.123' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1064,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1069, CAST(N'2020-01-11T12:26:43.327' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1070, CAST(N'2020-01-11T12:26:49.317' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1071, CAST(N'2020-01-11T12:27:12.227' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1072, CAST(N'2020-01-11T12:27:29.910' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"efb908a5-56f5-4039-818a-1e7ad0d99f92\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1073, CAST(N'2020-01-11T12:27:35.293' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1074, CAST(N'2020-01-11T12:27:51.087' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1075, CAST(N'2020-01-11T12:28:04.513' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1076, CAST(N'2020-01-11T12:34:47.027' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1068,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1077, CAST(N'2020-01-11T12:35:07.007' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1068,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1078, CAST(N'2020-01-11T12:35:10.447' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1068,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1079, CAST(N'2020-01-11T12:35:33.483' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1080, CAST(N'2020-01-11T12:36:36.400' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1069]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1070,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1081, CAST(N'2020-01-11T12:36:55.053' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1064,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1082, CAST(N'2020-01-11T12:38:10.300' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1083, CAST(N'2020-01-11T12:38:16.153' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1084, CAST(N'2020-01-11T12:41:56.550' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1071,\"Key\":\"d5e1d917-ca7c-4fa4-b706-6e9debcba515\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1085, CAST(N'2020-01-11T12:42:19.543' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1072,\"Key\":\"b2042a14-fa53-4aaa-ac3f-312f33e81315\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1086, CAST(N'2020-01-11T12:42:22.327' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
GO
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1087, CAST(N'2020-01-11T12:42:35.087' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1088, CAST(N'2020-01-11T12:42:37.823' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1089, CAST(N'2020-01-11T12:43:17.343' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1090, CAST(N'2020-01-11T12:46:11.623' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1091, CAST(N'2020-01-11T12:46:13.943' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1092, CAST(N'2020-01-11T12:47:03.263' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1075,\"Key\":\"9ef8f87c-e031-48ec-bd86-e9ccd93b1efa\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1093, CAST(N'2020-01-11T12:47:08.850' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1075,\"Key\":\"9ef8f87c-e031-48ec-bd86-e9ccd93b1efa\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1094, CAST(N'2020-01-11T12:47:17.647' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1095, CAST(N'2020-01-11T12:48:25.107' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1076,\"Key\":\"b24fcbeb-a75d-4952-bbbc-93348cf9b197\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1096, CAST(N'2020-01-11T12:48:36.123' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1097, CAST(N'2020-01-11T12:48:51.727' AS DateTime), N'[{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1077,\"Key\":\"66dc4efb-8c4b-45b6-87ab-e04076e1f0e1\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1098, CAST(N'2020-01-11T12:49:01.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1099, CAST(N'2020-01-11T12:49:12.933' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1100, CAST(N'2020-01-11T12:52:13.357' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1101, CAST(N'2020-01-11T12:52:57.227' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1102, CAST(N'2020-01-11T12:53:28.750' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1103, CAST(N'2020-01-11T12:56:34.333' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1104, CAST(N'2020-01-11T13:00:23.730' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1073,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1105, CAST(N'2020-01-11T13:00:57.050' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1078]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1079,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1106, CAST(N'2020-01-11T13:01:03.727' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1107, CAST(N'2020-01-11T13:01:16.480' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"98ef8208-e804-49c3-8327-0df3c947ab05\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1108, CAST(N'2020-01-11T13:02:17.323' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1081,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1109, CAST(N'2020-01-11T13:03:06.693' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1082,\"Key\":\"b5aec3e8-8765-43aa-8ef9-b512b3fd5a33\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1110, CAST(N'2020-01-11T13:03:08.700' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1081,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1111, CAST(N'2020-01-11T13:03:15.213' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1081,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1112, CAST(N'2020-01-11T13:03:27.807' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1064,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1113, CAST(N'2020-01-11T13:03:34.597' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1064,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1114, CAST(N'2020-01-11T13:03:40.080' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1079,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1115, CAST(N'2020-01-11T13:03:47.963' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1116, CAST(N'2020-01-11T13:03:56.690' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1060,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1117, CAST(N'2020-01-11T13:04:05.620' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"efb908a5-56f5-4039-818a-1e7ad0d99f92\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1118, CAST(N'2020-01-11T13:04:08.440' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1119, CAST(N'2020-01-11T13:04:11.660' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1120, CAST(N'2020-01-11T13:08:48.820' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"98ef8208-e804-49c3-8327-0df3c947ab05\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1121, CAST(N'2020-01-11T13:08:54.033' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"98ef8208-e804-49c3-8327-0df3c947ab05\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10212/D2] C79BA97FBB65417FAE9C691F3F602836', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1122, CAST(N'2020-01-11T13:14:50.667' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1123, CAST(N'2020-01-11T13:16:11.017' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1124, CAST(N'2020-01-11T13:16:20.427' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1125, CAST(N'2020-01-11T13:16:26.047' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1126, CAST(N'2020-01-11T13:16:50.423' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1079,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1127, CAST(N'2020-01-11T13:29:12.293' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1065,\"Key\":\"efb908a5-56f5-4039-818a-1e7ad0d99f92\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1128, CAST(N'2020-01-11T13:31:03.207' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1129, CAST(N'2020-01-11T13:35:22.413' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1130, CAST(N'2020-01-11T13:36:09.760' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1131, CAST(N'2020-01-11T13:38:54.483' AS DateTime), N'[{"RefreshType":4,"RefresherId":"3e0f95d8-0be5-44b8-8394-2b8750b62654","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2,\"IsoCode\":\"ar\",\"ChangeType\":3}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1132, CAST(N'2020-01-11T13:39:33.230' AS DateTime), N'[{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"ChangeType\":2}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2,\"ChangeType\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1133, CAST(N'2020-01-11T13:39:43.063' AS DateTime), N'[{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"ChangeType\":2}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":2,\"ChangeType\":2}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":3,\"ChangeType\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1134, CAST(N'2020-01-11T13:39:44.397' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1135, CAST(N'2020-01-11T13:41:31.500' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1136, CAST(N'2020-01-11T13:42:07.487' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1137, CAST(N'2020-01-11T13:42:17.320' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1138, CAST(N'2020-01-11T13:44:56.777' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1139, CAST(N'2020-01-11T13:45:09.237' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1140, CAST(N'2020-01-11T13:45:34.390' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1141, CAST(N'2020-01-11T13:45:50.143' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1142, CAST(N'2020-01-11T13:46:33.930' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1143, CAST(N'2020-01-11T13:46:41.973' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1144, CAST(N'2020-01-11T13:46:44.527' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1145, CAST(N'2020-01-11T13:47:33.720' AS DateTime), N'[{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1146, CAST(N'2020-01-11T13:47:40.730' AS DateTime), N'[{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1147, CAST(N'2020-01-11T13:48:51.597' AS DateTime), N'[{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1148, CAST(N'2020-01-11T13:50:14.853' AS DateTime), N'[{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1149, CAST(N'2020-01-11T13:50:18.970' AS DateTime), N'[{"RefreshType":3,"RefresherId":"d1d7e227-f817-4816-bfe9-6c39b6152884","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1150, CAST(N'2020-01-11T14:12:46.663' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1151, CAST(N'2020-01-11T14:13:45.960' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1152, CAST(N'2020-01-11T14:13:51.320' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1153, CAST(N'2020-01-11T14:14:03.757' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1154, CAST(N'2020-01-11T14:15:12.390' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1155, CAST(N'2020-01-11T14:15:16.027' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D2] DB80B7C74CE64851B255609A363AFC7C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1156, CAST(N'2020-01-11T14:20:46.617' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D4] 717B37F2F94A4CE4820DC8E8D6D9460C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1157, CAST(N'2020-01-11T15:07:28.423' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P9244/D4] 717B37F2F94A4CE4820DC8E8D6D9460C', 1)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1053, 1052)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1056, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1065, 1060)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1066, 1062)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1067, 1064)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1076, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1077, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1080, 1079)
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] ON 

INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1, 1053, CAST(N'2020-01-11T14:34:45.143' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (2, 1053, CAST(N'2020-01-11T14:34:50.527' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (3, 1053, CAST(N'2020-01-11T14:38:40.757' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (4, 1053, CAST(N'2020-01-11T14:38:46.090' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (5, 1053, CAST(N'2020-01-11T14:40:13.130' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (6, 1053, CAST(N'2020-01-11T14:40:36.287' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (7, 1053, CAST(N'2020-01-11T14:41:12.013' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (8, 1053, CAST(N'2020-01-11T14:43:53.797' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (9, 1053, CAST(N'2020-01-11T14:44:26.533' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (10, 1053, CAST(N'2020-01-11T14:44:41.507' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (11, 1053, CAST(N'2020-01-11T14:44:48.077' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (12, 1053, CAST(N'2020-01-11T14:45:17.253' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (13, 1053, CAST(N'2020-01-11T14:45:59.627' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (14, 1053, CAST(N'2020-01-11T14:46:02.157' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (15, 1053, CAST(N'2020-01-11T14:48:35.720' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (16, 1056, CAST(N'2020-01-11T14:48:28.213' AS DateTime), NULL, 1, N'Maxresdefault')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (17, 1053, CAST(N'2020-01-11T14:48:39.290' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (18, 1053, CAST(N'2020-01-11T14:52:51.410' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (19, 1053, CAST(N'2020-01-11T14:54:04.060' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (20, 1053, CAST(N'2020-01-11T14:55:02.733' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (21, 1053, CAST(N'2020-01-11T15:00:55.430' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (22, 1053, CAST(N'2020-01-11T15:01:08.207' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (23, 1053, CAST(N'2020-01-11T15:02:12.553' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (24, 1053, CAST(N'2020-01-11T15:02:19.697' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (25, 1053, CAST(N'2020-01-11T15:06:01.397' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (26, 1053, CAST(N'2020-01-11T15:06:58.297' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (27, 1053, CAST(N'2020-01-11T15:07:03.453' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (28, 1053, CAST(N'2020-01-11T15:07:07.203' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (29, 1053, CAST(N'2020-01-11T15:08:12.380' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (30, 1053, CAST(N'2020-01-11T15:08:18.263' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (31, 1053, CAST(N'2020-01-11T15:08:22.863' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (32, 1053, CAST(N'2020-01-11T15:09:42.230' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (33, 1053, CAST(N'2020-01-11T15:10:23.897' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (34, 1053, CAST(N'2020-01-11T15:11:28.547' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (35, 1053, CAST(N'2020-01-11T15:16:30.747' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (36, 1053, CAST(N'2020-01-11T15:16:35.367' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (37, 1053, CAST(N'2020-01-11T15:17:09.107' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (38, 1053, CAST(N'2020-01-11T15:17:24.120' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (39, 1053, CAST(N'2020-01-11T15:28:04.467' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1033, 1065, CAST(N'2020-01-11T15:27:29.653' AS DateTime), -1, 0, N'Personal')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1034, 1065, CAST(N'2020-01-11T16:04:05.590' AS DateTime), -1, 0, N'Personal')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1035, 1066, CAST(N'2020-01-11T15:27:35.267' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1036, 1066, CAST(N'2020-01-11T16:04:08.407' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1037, 1067, CAST(N'2020-01-11T15:27:51.057' AS DateTime), -1, 0, N'Business')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1038, 1067, CAST(N'2020-01-11T16:04:11.627' AS DateTime), -1, 0, N'Business')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1039, 1053, CAST(N'2020-01-11T15:48:36.080' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1040, 1076, CAST(N'2020-01-11T15:48:25.060' AS DateTime), NULL, 1, N'Crash Test Dummy')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1041, 1053, CAST(N'2020-01-11T15:49:01.160' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1042, 1077, CAST(N'2020-01-11T15:48:51.703' AS DateTime), NULL, 1, N'Dummy Nipple 512')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1043, 1053, CAST(N'2020-01-11T15:49:12.897' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1044, 1053, CAST(N'2020-01-11T15:52:57.187' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1045, 1053, CAST(N'2020-01-11T15:53:28.717' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1046, 1053, CAST(N'2020-01-11T16:16:10.757' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1047, 1080, CAST(N'2020-01-11T16:01:16.447' AS DateTime), -1, 0, N'FaQs')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1048, 1080, CAST(N'2020-01-11T16:08:48.790' AS DateTime), -1, 0, N'FaQs')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1049, 1065, CAST(N'2020-01-11T16:29:12.163' AS DateTime), -1, 1, N'Personal')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1050, 1066, CAST(N'2020-01-11T17:14:03.680' AS DateTime), -1, 0, N'Home12112')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1051, 1067, CAST(N'2020-01-11T16:04:11.627' AS DateTime), -1, 1, N'Business')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1052, 1080, CAST(N'2020-01-11T16:08:54.003' AS DateTime), -1, 0, N'FaQs')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1053, 1080, CAST(N'2020-01-11T16:08:54.003' AS DateTime), -1, 1, N'FaQs')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1054, 1053, CAST(N'2020-01-11T16:16:20.387' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1055, 1053, CAST(N'2020-01-11T16:31:03.140' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1056, 1053, CAST(N'2020-01-11T16:39:44.333' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1057, 1053, CAST(N'2020-01-11T16:42:07.337' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1058, 1053, CAST(N'2020-01-11T16:42:17.217' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1059, 1053, CAST(N'2020-01-11T16:45:09.167' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1060, 1053, CAST(N'2020-01-11T16:45:34.277' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1061, 1053, CAST(N'2020-01-11T16:46:33.650' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1062, 1053, CAST(N'2020-01-11T16:46:41.920' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1063, 1053, CAST(N'2020-01-11T16:46:44.477' AS DateTime), -1, 0, N'LandingPage')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1064, 1053, CAST(N'2020-01-11T17:13:45.860' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1065, 1053, CAST(N'2020-01-11T17:13:51.267' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1066, 1053, CAST(N'2020-01-11T17:15:12.277' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1067, 1066, CAST(N'2020-01-11T17:15:15.990' AS DateTime), -1, 0, N'Home12112')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1068, 1053, CAST(N'2020-01-11T17:15:12.277' AS DateTime), -1, 1, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1069, 1066, CAST(N'2020-01-11T17:20:45.903' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1070, 1066, CAST(N'2020-01-11T17:20:45.903' AS DateTime), -1, 1, N'Home')
SET IDENTITY_INSERT [dbo].[umbracoContentVersion] OFF
SET IDENTITY_INSERT [dbo].[umbracoContentVersionCultureVariation] ON 

INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (1, 1, 1, N'LandingPage', CAST(N'2020-01-11T14:34:45.143' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (2, 2, 1, N'LandingPage', CAST(N'2020-01-11T14:34:50.527' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (3, 3, 1, N'LandingPage', CAST(N'2020-01-11T14:38:40.757' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (4, 4, 1, N'LandingPage', CAST(N'2020-01-11T14:38:46.090' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (5, 5, 1, N'LandingPage', CAST(N'2020-01-11T14:40:13.130' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (6, 6, 1, N'LandingPage', CAST(N'2020-01-11T14:40:36.287' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (7, 7, 1, N'LandingPage', CAST(N'2020-01-11T14:41:12.013' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (8, 8, 1, N'LandingPage', CAST(N'2020-01-11T14:43:53.797' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (9, 9, 1, N'LandingPage', CAST(N'2020-01-11T14:44:26.533' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (10, 10, 1, N'LandingPage', CAST(N'2020-01-11T14:44:41.507' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (11, 11, 1, N'LandingPage', CAST(N'2020-01-11T14:44:48.077' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (12, 12, 1, N'LandingPage', CAST(N'2020-01-11T14:45:17.253' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (13, 13, 1, N'LandingPage', CAST(N'2020-01-11T14:45:59.627' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (14, 14, 1, N'LandingPage', CAST(N'2020-01-11T14:46:02.157' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (15, 15, 1, N'LandingPage', CAST(N'2020-01-11T14:48:35.720' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (16, 17, 1, N'LandingPage', CAST(N'2020-01-11T14:48:39.290' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (17, 18, 1, N'LandingPage', CAST(N'2020-01-11T14:52:51.410' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (18, 19, 1, N'LandingPage', CAST(N'2020-01-11T14:54:04.060' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (19, 20, 1, N'LandingPage', CAST(N'2020-01-11T14:55:02.733' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (20, 21, 1, N'LandingPage', CAST(N'2020-01-11T15:00:55.430' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (21, 22, 1, N'LandingPage', CAST(N'2020-01-11T15:01:08.207' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (22, 23, 1, N'LandingPage', CAST(N'2020-01-11T15:02:12.553' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (23, 24, 1, N'LandingPage', CAST(N'2020-01-11T15:02:19.697' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (24, 25, 1, N'LandingPage', CAST(N'2020-01-11T15:06:01.397' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (25, 26, 1, N'LandingPage', CAST(N'2020-01-11T15:06:58.297' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (26, 27, 1, N'LandingPage', CAST(N'2020-01-11T15:07:03.453' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (27, 28, 1, N'LandingPage', CAST(N'2020-01-11T15:07:07.203' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (28, 29, 1, N'LandingPage', CAST(N'2020-01-11T15:08:12.380' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (29, 30, 1, N'LandingPage', CAST(N'2020-01-11T15:08:18.263' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (30, 31, 1, N'LandingPage', CAST(N'2020-01-11T15:08:22.863' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (31, 32, 1, N'LandingPage', CAST(N'2020-01-11T15:09:42.230' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (32, 33, 1, N'LandingPage', CAST(N'2020-01-11T15:10:23.897' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (33, 34, 1, N'LandingPage', CAST(N'2020-01-11T15:11:28.547' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (34, 35, 1, N'LandingPage', CAST(N'2020-01-11T15:16:30.747' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (35, 36, 1, N'LandingPage', CAST(N'2020-01-11T15:16:35.367' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (36, 37, 1, N'LandingPage', CAST(N'2020-01-11T15:17:09.107' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (37, 38, 1, N'LandingPage', CAST(N'2020-01-11T15:17:24.120' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (38, 39, 1, N'LandingPage', CAST(N'2020-01-11T15:28:04.467' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (39, 1039, 1, N'LandingPage', CAST(N'2020-01-11T15:48:36.080' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (40, 1041, 1, N'LandingPage', CAST(N'2020-01-11T15:49:01.160' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (41, 1043, 1, N'LandingPage', CAST(N'2020-01-11T15:49:12.897' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (42, 1044, 1, N'LandingPage', CAST(N'2020-01-11T15:52:57.187' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (43, 1045, 1, N'LandingPage', CAST(N'2020-01-11T15:53:28.717' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (44, 1046, 1, N'LandingPage', CAST(N'2020-01-11T16:16:10.757' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (45, 1054, 1, N'LandingPage', CAST(N'2020-01-11T16:16:20.387' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (46, 1055, 1, N'LandingPage', CAST(N'2020-01-11T16:31:03.140' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (47, 1056, 1, N'LandingPage', CAST(N'2020-01-11T16:39:44.333' AS DateTime), -1)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (51, 1057, 1, N'LandingPage', CAST(N'2020-01-11T16:39:44.333' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (52, 1057, 2, N'Main', CAST(N'2020-01-11T16:42:07.337' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (55, 1058, 1, N'LandingPage', CAST(N'2020-01-11T16:39:44.333' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (56, 1058, 2, N'Main', CAST(N'2020-01-11T16:42:17.217' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (59, 1059, 1, N'LandingPage', CAST(N'2020-01-11T16:39:44.333' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (60, 1059, 2, N'Main', CAST(N'2020-01-11T16:45:09.167' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (63, 1060, 1, N'LandingPage', CAST(N'2020-01-11T16:39:44.333' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (64, 1060, 2, N'Main', CAST(N'2020-01-11T16:45:34.277' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (67, 1061, 1, N'LandingPage', CAST(N'2020-01-11T16:46:33.650' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (68, 1061, 2, N'Main', CAST(N'2020-01-11T16:45:34.277' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (71, 1062, 1, N'LandingPage', CAST(N'2020-01-11T16:46:33.650' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (72, 1062, 2, N'Main', CAST(N'2020-01-11T16:46:41.920' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (75, 1063, 1, N'LandingPage', CAST(N'2020-01-11T16:46:33.650' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (76, 1063, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (79, 1064, 1, N'Umniah', CAST(N'2020-01-11T17:13:45.860' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (80, 1064, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (83, 1065, 1, N'Umniah', CAST(N'2020-01-11T17:13:51.267' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (84, 1065, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (85, 1068, 1, N'Umniah', CAST(N'2020-01-11T17:15:12.277' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (86, 1068, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (87, 1066, 1, N'Umniah', CAST(N'2020-01-11T17:15:12.277' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (88, 1066, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[umbracoContentVersionCultureVariation] OFF
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-99, N'Umbraco.Label', N'Decimal', N'{"umbracoDataValueType":"DECIMAL"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-98, N'Umbraco.Label', N'Date', N'{"umbracoDataValueType":"TIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-97, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":10, "orderBy":"username", "orderDirection":"asc", "includeProperties":[{"alias":"username","isSystem":1},{"alias":"email","isSystem":1},{"alias":"updateDate","header":"Last edited","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-96, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-95, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":100, "orderBy":"updateDate", "orderDirection":"desc", "layouts":[{"name": "Grid","path": "views/propertyeditors/listview/layouts/grid/grid.html", "icon": "icon-thumbnails-small", "isSystem": 1, "selected": true},{"name": "List","path": "views/propertyeditors/listview/layouts/list/list.html","icon": "icon-list", "isSystem": 1,"selected": true}], "includeProperties":[{"alias":"updateDate","header":"Last edited","isSystem":1},{"alias":"owner","header":"Updated by","isSystem":1}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-94, N'Umbraco.Label', N'Date', N'{"umbracoDataValueType":"DATETIME"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-93, N'Umbraco.Label', N'Nvarchar', N'{"umbracoDataValueType":"BIGINT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-92, N'Umbraco.Label', N'Nvarchar', N'{"umbracoDataValueType":"STRING"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-91, N'Umbraco.Label', N'Integer', N'{"umbracoDataValueType":"INT"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-90, N'Umbraco.UploadField', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-89, N'Umbraco.TextArea', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-88, N'Umbraco.TextBox', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-87, N'Umbraco.TinyMCE', N'Ntext', N'{"value":",code,undo,redo,cut,copy,mcepasteword,stylepicker,bold,italic,bullist,numlist,outdent,indent,mcelink,unlink,mceinsertanchor,mceimage,umbracomacro,mceinserttable,umbracoembed,mcecharmap,|1|1,2,3,|0|500,400|1049,|true|"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-51, N'Umbraco.Integer', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-49, N'Umbraco.TrueFalse', N'Integer', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-43, N'Umbraco.CheckBoxList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-42, N'Umbraco.DropDown.Flexible', N'Nvarchar', N'{"multiple":true,"items":[{"id":1,"value":"bluePTag"},{"id":2,"value":"pTagWithPadding"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-41, N'Umbraco.DateTime', N'Date', N'{"format":"YYYY-MM-DD"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-40, N'Umbraco.RadioButtonList', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-39, N'Umbraco.DropDown.Flexible', N'Nvarchar', N'{"multiple":false,"items":[{"id":1,"value":"bluePTag"},{"id":2,"value":"pTagWithPadding"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-37, N'Umbraco.ColorPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (-36, N'Umbraco.DateTime', N'Date', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1041, N'Umbraco.Tags', N'Ntext', N'{"group":"default", "storageType":"Json"}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1043, N'Umbraco.ImageCropper', N'Ntext', N'{"crops":[{"alias":"200X200","width":200,"height":200}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1046, N'Umbraco.ContentPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1047, N'Umbraco.MemberPicker', N'Nvarchar', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1048, N'Umbraco.MediaPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1049, N'Umbraco.MediaPicker', N'Ntext', N'{"multiPicker":1}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1050, N'Umbraco.MultiUrlPicker', N'Ntext', NULL)
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1054, N'Umbraco.TinyMCE', N'Ntext', N'{"editor":{"toolbar":["ace","styleselect","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmediapicker","umbmacro","umbembeddialog"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"hideLabel":false,"ignoreUserStartNodes":false,"mediaParentId":null}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1055, N'Umbraco.MediaPicker', N'Ntext', N'{"multiPicker":false,"onlyImages":true,"disableFolderSelect":false,"startNodeId":null,"ignoreUserStartNodes":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1058, N'Umbraco.ColorPicker', N'Nvarchar', N'{"useLabel":false,"items":[{"id":1,"value":"{\"value\":\"000000\",\"label\":\"000000\"}"},{"id":2,"value":"{\"value\":\"2858bb\",\"label\":\"2858bb\"}"},{"id":3,"value":"{\"value\":\"df2513\",\"label\":\"df2513\"}"}]}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1071, N'Umbraco.MediaPicker', N'Ntext', N'{"multiPicker":false,"onlyImages":false,"disableFolderSelect":false,"startNodeId":null,"ignoreUserStartNodes":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1072, N'Umbraco.MediaPicker', N'Ntext', N'{"multiPicker":false,"onlyImages":false,"disableFolderSelect":false,"startNodeId":null,"ignoreUserStartNodes":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1075, N'Umbraco.NestedContent', N'Ntext', N'{"contentTypes":[{"ncAlias":"sliderItems","ncTabAlias":"info","nameTemplate":""}],"confirmDeletes":true,"showIcons":true,"hideLabel":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1082, N'Umbraco.TrueFalse', N'Integer', N'{"default":"0","labelOn":null}')
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1053, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1065, 0, 1)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1066, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1067, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1080, 1, 0)
SET IDENTITY_INSERT [dbo].[umbracoDocumentCultureVariation] ON 

INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (20, 1053, 1, 0, 1, 1, N'Umniah')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (21, 1053, 2, 0, 1, 1, N'Main')
SET IDENTITY_INSERT [dbo].[umbracoDocumentCultureVariation] OFF
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (2, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (3, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (4, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (5, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (6, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (7, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (8, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (9, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (10, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (11, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (12, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (13, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (14, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (15, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (17, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (18, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (19, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (20, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (21, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (22, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (23, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (24, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (25, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (26, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (27, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (28, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (29, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (30, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (31, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (32, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (33, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (34, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (35, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (36, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (37, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (38, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (39, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1033, 1059, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1034, 1059, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1035, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1036, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1037, 1063, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1038, 1063, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1039, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1041, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1043, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1044, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1045, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1046, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1047, 1078, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1048, 1078, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1049, 1059, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1050, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1051, 1063, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1052, 1078, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1053, 1078, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1054, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1055, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1056, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1057, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1058, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1059, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1060, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1061, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1062, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1063, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1064, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1065, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1066, 1051, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1067, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1068, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1069, 1061, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1070, 1061, 0)
SET IDENTITY_INSERT [dbo].[umbracoDomain] ON 

INSERT [dbo].[umbracoDomain] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (1, 1, 1053, N'*1053')
INSERT [dbo].[umbracoDomain] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (2, 1, 1053, N'http://localhost:61231/en')
INSERT [dbo].[umbracoDomain] ([id], [domainDefaultLanguage], [domainRootStructureID], [domainName]) VALUES (3, 2, 1053, N'http://localhost:61231/ar')
SET IDENTITY_INSERT [dbo].[umbracoDomain] OFF
INSERT [dbo].[umbracoKeyValue] ([key], [value], [updated]) VALUES (N'Umbraco.Core.Upgrader.State+Umbraco.Core', N'{5B1E0D93-F5A3-449B-84BA-65366B84E2D4}', CAST(N'2020-01-11T14:26:13.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoLanguage] ON 

INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName], [isDefaultVariantLang], [mandatory], [fallbackLanguageId]) VALUES (1, N'en-US', N'English (United States)', 1, 0, NULL)
INSERT [dbo].[umbracoLanguage] ([id], [languageISOCode], [languageCultureName], [isDefaultVariantLang], [mandatory], [fallbackLanguageId]) VALUES (2, N'ar', N'Arabic', 0, 0, 1)
SET IDENTITY_INSERT [dbo].[umbracoLanguage] OFF
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-340, -1, N'Languages')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-339, 1, N'KeyValues')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-338, 1, N'Domains')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-337, 1, N'MemberTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-336, 1, N'MediaTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-335, 1, N'MemberTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-334, -1, N'MediaTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-333, 1, N'ContentTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-332, 1, N'ContentTypes')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-331, -1, N'Servers')
SET IDENTITY_INSERT [dbo].[umbracoLog] ON 

INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1, -1, 1051, N'Template', CAST(N'2020-01-11T14:31:29.493' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (2, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:31:29.550' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (3, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:31:31.707' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (4, -1, 1051, N'Template', CAST(N'2020-01-11T14:31:57.833' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (5, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:33:26.310' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (6, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:34:14.780' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (7, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:34:20.783' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (8, -1, 1053, N'Document', CAST(N'2020-01-11T14:34:45.193' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (9, -1, 1053, N'Document', CAST(N'2020-01-11T14:34:50.543' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (10, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:38:15.800' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (11, -1, 1053, N'Document', CAST(N'2020-01-11T14:38:40.780' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (12, -1, 1053, N'Document', CAST(N'2020-01-11T14:38:46.093' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (13, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:40:02.380' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (14, -1, 1053, N'Document', CAST(N'2020-01-11T14:40:13.143' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (15, -1, 1053, N'Document', CAST(N'2020-01-11T14:40:36.307' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (16, -1, 1053, N'Document', CAST(N'2020-01-11T14:40:48.190' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (17, -1, 1053, N'Document', CAST(N'2020-01-11T14:40:58.327' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (18, -1, 1053, N'Document', CAST(N'2020-01-11T14:41:12.017' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (19, -1, 1054, N'DataType', CAST(N'2020-01-11T14:43:10.123' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (20, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:43:12.737' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (21, -1, 1053, N'Document', CAST(N'2020-01-11T14:43:53.813' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (22, -1, 1053, N'Document', CAST(N'2020-01-11T14:44:26.537' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (23, -1, 1053, N'Document', CAST(N'2020-01-11T14:44:41.510' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (24, -1, 1053, N'Document', CAST(N'2020-01-11T14:44:48.093' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (25, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:45:16.320' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (26, -1, 1053, N'Document', CAST(N'2020-01-11T14:45:17.270' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (27, -1, 1053, N'Document', CAST(N'2020-01-11T14:45:59.647' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (28, -1, 1053, N'Document', CAST(N'2020-01-11T14:46:02.163' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (29, -1, 1055, N'DataType', CAST(N'2020-01-11T14:47:48.377' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (30, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:47:53.030' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (31, -1, 1056, N'Media', CAST(N'2020-01-11T14:48:28.237' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (32, -1, 1053, N'Document', CAST(N'2020-01-11T14:48:35.733' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (33, -1, 1053, N'Document', CAST(N'2020-01-11T14:48:39.293' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (34, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:52:37.003' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (35, -1, 1053, N'Document', CAST(N'2020-01-11T14:52:51.423' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (36, -1, 1043, N'DataType', CAST(N'2020-01-11T14:54:01.113' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (37, -1, 1052, N'DocumentType', CAST(N'2020-01-11T14:54:02.920' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (38, -1, 1053, N'Document', CAST(N'2020-01-11T14:54:04.073' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (39, -1, 1053, N'Document', CAST(N'2020-01-11T14:55:02.757' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (40, -1, 1057, N'Template', CAST(N'2020-01-11T14:56:35.590' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (41, -1, 1057, N'Template', CAST(N'2020-01-11T14:56:38.900' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (42, -1, 1057, N'Template', CAST(N'2020-01-11T14:57:02.170' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (43, -1, 1057, N'Template', CAST(N'2020-01-11T14:57:02.920' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (44, -1, 1058, N'DataType', CAST(N'2020-01-11T15:00:22.577' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (45, -1, 1058, N'DataType', CAST(N'2020-01-11T15:00:45.513' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (46, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:00:48.423' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (47, -1, 1053, N'Document', CAST(N'2020-01-11T15:00:55.447' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (48, -1, 1053, N'Document', CAST(N'2020-01-11T15:01:08.210' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (49, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:02:11.663' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (50, -1, 1053, N'Document', CAST(N'2020-01-11T15:02:12.570' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (51, -1, 1053, N'Document', CAST(N'2020-01-11T15:02:19.703' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (52, -1, -1, N'Stylesheet', CAST(N'2020-01-11T15:02:57.497' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (53, -1, -1, N'Stylesheet', CAST(N'2020-01-11T15:03:16.627' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (54, -1, -1, N'Stylesheet', CAST(N'2020-01-11T15:03:16.890' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (55, -1, -1, N'Stylesheet', CAST(N'2020-01-11T15:04:28.253' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (56, -1, -1, N'Stylesheet', CAST(N'2020-01-11T15:04:31.373' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (57, -1, -39, N'DataType', CAST(N'2020-01-11T15:05:44.287' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (58, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:05:50.633' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (59, -1, 1053, N'Document', CAST(N'2020-01-11T15:06:01.413' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (60, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:06:57.380' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (61, -1, 1053, N'Document', CAST(N'2020-01-11T15:06:58.317' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (62, -1, 1053, N'Document', CAST(N'2020-01-11T15:07:03.457' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (63, -1, 1053, N'Document', CAST(N'2020-01-11T15:07:07.210' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (64, -1, -39, N'DataType', CAST(N'2020-01-11T15:08:02.087' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (65, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:08:11.413' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (66, -1, 1053, N'Document', CAST(N'2020-01-11T15:08:12.397' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (67, -1, 1053, N'Document', CAST(N'2020-01-11T15:08:18.270' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (68, -1, 1053, N'Document', CAST(N'2020-01-11T15:08:22.873' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (69, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:09:41.117' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (70, -1, 1053, N'Document', CAST(N'2020-01-11T15:09:42.247' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (71, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:10:10.323' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (72, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:10:23.000' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (73, -1, 1053, N'Document', CAST(N'2020-01-11T15:10:23.917' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (74, -1, -42, N'DataType', CAST(N'2020-01-11T15:11:17.620' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (75, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:11:19.510' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (76, -1, 1053, N'Document', CAST(N'2020-01-11T15:11:28.563' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (77, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:16:29.817' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (78, -1, 1053, N'Document', CAST(N'2020-01-11T15:16:30.763' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (79, -1, 1053, N'Document', CAST(N'2020-01-11T15:16:35.377' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (80, -1, 1053, N'Document', CAST(N'2020-01-11T15:17:09.160' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (81, -1, 1053, N'Document', CAST(N'2020-01-11T15:17:24.127' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1069, -1, 1059, N'Template', CAST(N'2020-01-11T15:25:15.543' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1070, -1, 1060, N'DocumentType', CAST(N'2020-01-11T15:25:15.613' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1071, -1, 1061, N'Template', CAST(N'2020-01-11T15:25:22.777' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1072, -1, 1062, N'DocumentType', CAST(N'2020-01-11T15:25:22.783' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1073, -1, 1063, N'Template', CAST(N'2020-01-11T15:25:35.820' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1074, -1, 1064, N'DocumentType', CAST(N'2020-01-11T15:25:35.827' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1075, -1, 1064, N'DocumentType', CAST(N'2020-01-11T15:25:37.050' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1076, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:26:43.213' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1077, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:26:49.243' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1078, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:27:12.147' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1079, -1, 1065, N'Document', CAST(N'2020-01-11T15:27:29.690' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1080, -1, 1066, N'Document', CAST(N'2020-01-11T15:27:35.270' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1081, -1, 1067, N'Document', CAST(N'2020-01-11T15:27:51.060' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1082, -1, 1053, N'Document', CAST(N'2020-01-11T15:28:04.483' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1083, -1, 1068, N'DocumentType', CAST(N'2020-01-11T15:34:46.953' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1084, -1, 1068, N'DocumentType', CAST(N'2020-01-11T15:35:06.913' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1085, -1, 1068, N'DocumentType', CAST(N'2020-01-11T15:35:10.370' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1086, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:35:33.407' AS DateTime), N'Save', NULL, NULL)
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1087, -1, 1069, N'Template', CAST(N'2020-01-11T15:36:36.323' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1088, -1, 1070, N'DocumentType', CAST(N'2020-01-11T15:36:36.333' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1089, -1, 1064, N'DocumentType', CAST(N'2020-01-11T15:36:54.980' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1090, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:38:10.220' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1091, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:38:16.073' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1092, -1, 1071, N'DataType', CAST(N'2020-01-11T15:41:56.533' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1093, -1, 1072, N'DataType', CAST(N'2020-01-11T15:42:19.537' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1094, -1, 1073, N'DocumentType', CAST(N'2020-01-11T15:42:22.253' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1095, -1, 1073, N'DocumentType', CAST(N'2020-01-11T15:42:35.013' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1096, -1, 1073, N'DocumentType', CAST(N'2020-01-11T15:42:37.750' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1097, -1, 1073, N'DocumentType', CAST(N'2020-01-11T15:43:17.267' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1098, -1, 1073, N'DocumentType', CAST(N'2020-01-11T15:46:11.550' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1099, -1, 1073, N'DocumentType', CAST(N'2020-01-11T15:46:13.870' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1100, -1, 1075, N'DataType', CAST(N'2020-01-11T15:47:03.257' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1101, -1, 1075, N'DataType', CAST(N'2020-01-11T15:47:08.847' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1102, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:47:17.570' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1103, -1, 1076, N'Media', CAST(N'2020-01-11T15:48:25.070' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1104, -1, 1053, N'Document', CAST(N'2020-01-11T15:48:36.087' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1105, -1, 1077, N'Media', CAST(N'2020-01-11T15:48:51.710' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1106, -1, 1053, N'Document', CAST(N'2020-01-11T15:49:01.167' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1107, -1, 1053, N'Document', CAST(N'2020-01-11T15:49:12.907' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1108, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:52:13.277' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1109, -1, 1053, N'Document', CAST(N'2020-01-11T15:52:57.193' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1110, -1, 1053, N'Document', CAST(N'2020-01-11T15:53:28.723' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1111, -1, 1052, N'DocumentType', CAST(N'2020-01-11T15:56:34.253' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1112, -1, 1073, N'DocumentType', CAST(N'2020-01-11T16:00:23.650' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1113, -1, 1078, N'Template', CAST(N'2020-01-11T16:00:56.977' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1114, -1, 1079, N'DocumentType', CAST(N'2020-01-11T16:00:56.983' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1115, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:01:03.653' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1116, -1, 1080, N'Document', CAST(N'2020-01-11T16:01:16.450' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1117, -1, 1081, N'DocumentType', CAST(N'2020-01-11T16:02:17.250' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1118, -1, 1082, N'DataType', CAST(N'2020-01-11T16:03:06.687' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1119, -1, 1081, N'DocumentType', CAST(N'2020-01-11T16:03:08.627' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1120, -1, 1081, N'DocumentType', CAST(N'2020-01-11T16:03:15.140' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1121, -1, 1064, N'DocumentType', CAST(N'2020-01-11T16:03:27.730' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1122, -1, 1064, N'DocumentType', CAST(N'2020-01-11T16:03:34.520' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1123, -1, 1079, N'DocumentType', CAST(N'2020-01-11T16:03:40.003' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1124, -1, 1062, N'DocumentType', CAST(N'2020-01-11T16:03:47.883' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1125, -1, 1060, N'DocumentType', CAST(N'2020-01-11T16:03:56.613' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1126, -1, 1065, N'Document', CAST(N'2020-01-11T16:04:05.593' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1127, -1, 1066, N'Document', CAST(N'2020-01-11T16:04:08.410' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1128, -1, 1067, N'Document', CAST(N'2020-01-11T16:04:11.633' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1129, -1, 1080, N'Document', CAST(N'2020-01-11T16:08:48.790' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1130, -1, 1080, N'Document', CAST(N'2020-01-11T16:08:54.007' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1131, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:14:50.460' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1132, -1, 1053, N'Document', CAST(N'2020-01-11T16:16:10.787' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1133, -1, 1053, N'Document', CAST(N'2020-01-11T16:16:20.393' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1134, -1, 1053, N'Document', CAST(N'2020-01-11T16:16:26.010' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1135, -1, 1079, N'DocumentType', CAST(N'2020-01-11T16:16:50.343' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1136, -1, 1065, N'Document', CAST(N'2020-01-11T16:29:12.180' AS DateTime), N'Unpublish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1137, -1, 1053, N'Document', CAST(N'2020-01-11T16:31:03.163' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1138, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:35:22.320' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1139, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:36:09.670' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1140, -1, 2, N'Language', CAST(N'2020-01-11T16:38:54.430' AS DateTime), N'Save', N'Save Language', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1141, -1, 1053, N'Document', CAST(N'2020-01-11T16:39:44.353' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1142, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:41:31.380' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1143, -1, 1053, N'Document', CAST(N'2020-01-11T16:42:07.427' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1144, -1, 1053, N'Document', CAST(N'2020-01-11T16:42:17.270' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1145, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:44:56.663' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1146, -1, 1053, N'Document', CAST(N'2020-01-11T16:45:09.190' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1147, -1, 1053, N'Document', CAST(N'2020-01-11T16:45:34.327' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1148, -1, 1052, N'DocumentType', CAST(N'2020-01-11T16:45:50.033' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1149, -1, 1053, N'Document', CAST(N'2020-01-11T16:46:33.867' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1150, -1, 1053, N'Document', CAST(N'2020-01-11T16:46:41.937' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1151, -1, 1053, N'Document', CAST(N'2020-01-11T16:46:44.490' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1152, -1, 1, N'DictionaryItem', CAST(N'2020-01-11T16:47:40.727' AS DateTime), N'Save', N'Save DictionaryItem', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1153, -1, 1, N'DictionaryItem', CAST(N'2020-01-11T16:48:51.593' AS DateTime), N'Save', N'Save DictionaryItem', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1154, -1, 2, N'DictionaryItem', CAST(N'2020-01-11T16:50:18.967' AS DateTime), N'Save', N'Save DictionaryItem', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1155, -1, 1053, N'Document', CAST(N'2020-01-11T17:13:45.910' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1156, -1, 1053, N'Document', CAST(N'2020-01-11T17:13:51.280' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1157, -1, 1066, N'Document', CAST(N'2020-01-11T17:14:03.697' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1158, -1, 1053, N'Document', CAST(N'2020-01-11T17:15:12.327' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1159, -1, 1066, N'Document', CAST(N'2020-01-11T17:15:15.997' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1160, -1, 1066, N'Document', CAST(N'2020-01-11T17:20:45.957' AS DateTime), N'Publish', NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoLog] OFF
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (16, N'/media/1mmou4he/maxresdefault.jpg')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (1040, N'/media/3xff5ms3/crash_test_dummy.png')
INSERT [dbo].[umbracoMediaVersion] ([id], [path]) VALUES (1042, N'/media/5vhnyzsl/dummy_nipple-512.png')
SET IDENTITY_INSERT [dbo].[umbracoNode] ON 

INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-99, N'8f1ef1e1-9de4-40d3-a072-6673f631ca64', -1, 1, N'-1,-99', 39, 0, -1, N'Label (decimal)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-98, N'a97cec69-9b71-4c30-8b12-ec398860d7e8', -1, 1, N'-1,-98', 38, 0, -1, N'Label (time)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-97, N'aa2c52a0-ce87-4e65-a47c-7df09358585d', -1, 1, N'-1,-97', 2, 0, -1, N'List View - Members', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-96, N'3a0156c4-3b8c-4803-bdc1-6871faa83fff', -1, 1, N'-1,-96', 2, 0, -1, N'List View - Media', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-95, N'c0808dd3-8133-4e4b-8ce8-e2bea84a96a4', -1, 1, N'-1,-95', 2, 0, -1, N'List View - Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-94, N'0e9794eb-f9b5-4f20-a788-93acd233a7e4', -1, 1, N'-1,-94', 37, 0, -1, N'Label (datetime)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-93, N'930861bf-e262-4ead-a704-f99453565708', -1, 1, N'-1,-93', 36, 0, -1, N'Label (bigint)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-92, N'f0bc4bfb-b499-40d6-ba86-058885a5178c', -1, 1, N'-1,-92', 35, 0, -1, N'Label (string)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-91, N'8e7f995c-bd81-4627-9932-c40e568ec788', -1, 1, N'-1,-91', 36, 0, -1, N'Label (integer)', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-90, N'84c6b441-31df-4ffe-b67e-67d5bc3ae65a', -1, 1, N'-1,-90', 34, 0, -1, N'Upload', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-89, N'c6bac0dd-4ab9-45b1-8e30-e4b619ee5da3', -1, 1, N'-1,-89', 33, 0, -1, N'Textarea', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-88, N'0cc0eba1-9960-42c9-bf9b-60e150b429ae', -1, 1, N'-1,-88', 32, 0, -1, N'Textstring', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-87, N'ca90c950-0aff-4e72-b976-a30b1ac57dad', -1, 1, N'-1,-87', 4, 0, -1, N'Richtext editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-51, N'2e6d3631-066e-44b8-aec4-96f09099b2b5', -1, 1, N'-1,-51', 2, 0, -1, N'Numeric', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-49, N'92897bc6-a5f3-4ffe-ae27-f2e7e33dda49', -1, 1, N'-1,-49', 2, 0, -1, N'True/false', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-43, N'fbaf13a8-4036-41f2-93a3-974f678c312a', -1, 1, N'-1,-43', 2, 0, -1, N'Checkbox list', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-42, N'f38f0ac7-1d27-439c-9f3f-089cd8825a53', -1, 1, N'-1,-42', 2, 0, -1, N'Dropdown multiple', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-41, N'5046194e-4237-453c-a547-15db3a07c4e1', -1, 1, N'-1,-41', 2, 0, -1, N'Date Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-40, N'bb5f57c9-ce2b-4bb9-b697-4caca783a805', -1, 1, N'-1,-40', 2, 0, -1, N'Radiobox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-39, N'0b6a45e7-44ba-430d-9da5-4e46060b9e03', -1, 1, N'-1,-39', 2, 0, -1, N'Dropdown', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.683' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-37, N'0225af17-b302-49cb-9176-b9f35cab9c17', -1, 1, N'-1,-37', 2, 0, -1, N'Approved Color', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-36, N'e4d66c0f-b935-4200-81f0-025f7256b89a', -1, 1, N'-1,-36', 2, 0, -1, N'Date Picker with time', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-21, N'bf7c7cbc-952f-4518-97a2-69e9c7b33842', -1, 0, N'-1,-21', 0, 0, -1, N'Recycle Bin', N'cf3d8e34-1c1c-41e9-ae56-878b57b32113', CAST(N'2020-01-11T14:26:12.680' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-20, N'0f582a79-1e41-4cf0-bfa0-76340651891a', -1, 0, N'-1,-20', 0, 0, -1, N'Recycle Bin', N'01bb7ff2-24dc-4c0c-95a2-c24ef72bbac8', CAST(N'2020-01-11T14:26:12.680' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (-1, N'916724a5-173d-4619-b97e-b9de133dd6f5', -1, 0, N'-1', 0, 0, -1, N'SYSTEM DATA: umbraco master root', N'ea7d8624-4cfe-4578-a871-24aa946bf34d', CAST(N'2020-01-11T14:26:12.680' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1031, N'f38bd2d7-65d0-48e6-95dc-87ce06ec2d3d', -1, 1, N'-1,1031', 2, 0, -1, N'Folder', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1032, N'cc07b313-0843-4aa8-bbda-871c8da728c8', -1, 1, N'-1,1032', 2, 0, -1, N'Image', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1033, N'4c52d8ab-54e6-40cd-999c-7a5f24903e4d', -1, 1, N'-1,1033', 2, 0, -1, N'File', N'4ea4382b-2f5a-4c2b-9587-ae9b3cf3602e', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1041, N'b6b73142-b9c1-4bf8-a16d-e1c23320b549', -1, 1, N'-1,1041', 2, 0, -1, N'Tags', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1043, N'1df9f033-e6d4-451f-b8d2-e0cbc50a836f', -1, 1, N'-1,1043', 2, 0, -1, N'Image Cropper', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1044, N'd59be02f-1df9-4228-aa1e-01917d806cda', -1, 1, N'-1,1044', 0, 0, -1, N'Member', N'9b5416fb-e72f-45a9-a07b-5a9a2709ce43', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1046, N'fd1e0da5-5606-4862-b679-5d0cf3a52a59', -1, 1, N'-1,1046', 2, 0, -1, N'Content Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1047, N'1ea2e01f-ebd8-4ce1-8d71-6b1149e63548', -1, 1, N'-1,1047', 2, 0, -1, N'Member Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1048, N'135d60e0-64d9-49ed-ab08-893c9ba44ae5', -1, 1, N'-1,1048', 2, 0, -1, N'Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1049, N'9dbbcbbb-2327-434a-b355-af1b84e5010a', -1, 1, N'-1,1049', 2, 0, -1, N'Multiple Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1050, N'b4e3535a-1753-47e2-8568-602cf8cfee6f', -1, 1, N'-1,1050', 2, 0, -1, N'Multi URL Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:26:12.687' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1051, N'1934df9d-8059-41f6-8727-ad26c9c0030a', -1, 1, N'-1,1051', 0, 0, NULL, N'LandingPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T14:31:29.473' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1052, N'04a8c6f0-fc8d-4583-988c-166a5f926122', -1, 1, N'-1,1052', 0, 0, -1, N'LandingPage', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T14:31:29.523' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1053, N'a51dec6a-eb3e-48e2-95eb-e546f6a7d79f', -1, 1, N'-1,1053', 0, 0, -1, N'Umniah', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-11T14:34:45.143' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1054, N'e44f1324-8b54-4ade-87fb-3657595691cb', -1, 1, N'-1,1054', 29, 0, -1, N'LandingPage - RTEBodyText - Rich Text Editor', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:43:10.093' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1055, N'c751826b-adce-45f3-8373-57db88fee61a', -1, 1, N'-1,1055', 30, 0, -1, N'LandingPage - Imagesrc - Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T14:47:48.357' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1056, N'78ea18dd-bae4-45df-b571-e42b5200dc45', -1, 1, N'-1,1056', 1, 0, -1, N'Maxresdefault', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2020-01-11T14:48:28.213' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1057, N'28fd0993-7942-4cec-be16-0fbff78422b6', -1, 1, N'-1,1057', 0, 0, NULL, N'MasterPage', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T14:56:35.573' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1058, N'2008a46b-912f-4b73-a2cc-650827261b97', -1, 1, N'-1,1058', 31, 0, -1, N'LandingPage - BodyTextColor - Color Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T15:00:22.560' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1059, N'fea256b8-e5c6-4277-96fa-ba1fe166b5c1', -1, 1, N'-1,1059', 0, 0, NULL, N'Personal', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T15:25:15.510' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1060, N'96054afe-6c9e-4fdd-9805-943ad1ed2c05', -1, 1, N'-1,1060', 1, 0, -1, N'Personal', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T15:25:15.587' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1061, N'b9ff05bc-c732-415c-a1e5-e00b429530d8', -1, 1, N'-1,1061', 0, 0, NULL, N'Home', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T15:25:22.770' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1062, N'ccffd2b7-d5d1-4f1b-82ab-24aaa0f2b32e', -1, 1, N'-1,1062', 2, 0, -1, N'Home', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T15:25:22.780' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1063, N'b6b05e63-a56f-423b-9e01-3ac4193719c3', -1, 1, N'-1,1063', 0, 0, NULL, N'Business', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T15:25:35.817' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1064, N'0ade2e78-89ab-47f8-b73f-49155804e814', -1, 1, N'-1,1064', 3, 0, -1, N'Business', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T15:25:35.823' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1065, N'efb908a5-56f5-4039-818a-1e7ad0d99f92', 1053, 2, N'-1,1053,1065', 0, 0, -1, N'Personal', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-11T15:27:29.653' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1066, N'650f7d5c-1240-4b5d-aa40-87d23c649242', 1053, 2, N'-1,1053,1066', 1, 0, -1, N'Home', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-11T15:27:35.267' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1067, N'45c93ac5-6cd7-4264-b790-2e74025914e8', 1053, 2, N'-1,1053,1067', 2, 0, -1, N'Business', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-11T15:27:51.057' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1068, N'1f98800c-99a2-494e-af3a-b4e05187dfce', -1, 1, N'-1,1068', 4, 0, -1, N'WebPageBase', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T15:34:46.943' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1069, N'7c397661-d23d-4eca-a3fc-151c902193c0', -1, 1, N'-1,1069', 0, 0, NULL, N'LandingPageV2', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T15:36:36.313' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1070, N'eff36472-dfd1-4585-bb15-c3e63a50ec2d', 1068, 2, N'-1,1068,1070', 0, 0, -1, N'LandingPageV2', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T15:36:36.330' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1071, N'd5e1d917-ca7c-4fa4-b706-6e9debcba515', -1, 1, N'-1,1071', 32, 0, -1, N'Slider Items - Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T15:41:56.517' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1072, N'b2042a14-fa53-4aaa-ac3f-312f33e81315', -1, 1, N'-1,1072', 33, 0, -1, N'Slider Items - BackGroundImage - Media Picker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T15:42:19.533' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1073, N'5b2d3f5c-5106-4653-bf23-9309425f48b3', 1074, 2, N'-1,1074,1073', 1, 0, -1, N'Slider Items', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T15:42:22.250' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1074, N'6c46a3ed-8ff5-40eb-833f-4566e2cd75a0', -1, 1, N'-1,1074', 0, 0, -1, N'docTyps without Templates', N'2f7a2769-6b0b-4468-90dd-af42d64f7f16', CAST(N'2020-01-11T15:42:59.237' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1075, N'9ef8f87c-e031-48ec-bd86-e9ccd93b1efa', -1, 1, N'-1,1075', 34, 0, -1, N'LandingPage - SliderLanding - Nested Content', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T15:47:03.250' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1076, N'b24fcbeb-a75d-4952-bbbc-93348cf9b197', -1, 1, N'-1,1076', 1, 0, -1, N'Crash Test Dummy', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2020-01-11T15:48:25.060' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1077, N'66dc4efb-8c4b-45b6-87ab-e04076e1f0e1', -1, 1, N'-1,1077', 1, 0, -1, N'Dummy Nipple 512', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', CAST(N'2020-01-11T15:48:51.703' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1078, N'9244c55b-312f-4043-9af6-117784da609d', -1, 1, N'-1,1078', 0, 0, NULL, N'FAQs', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-11T16:00:56.970' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1079, N'ba2539af-ca54-41a4-ba83-3289fccb6daa', -1, 1, N'-1,1079', 5, 0, -1, N'FAQs', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T16:00:56.980' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1080, N'98ef8208-e804-49c3-8327-0df3c947ab05', 1053, 2, N'-1,1053,1080', 3, 0, -1, N'FaQs', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-11T16:01:16.447' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1081, N'44b980ae-49ae-4573-b52f-39b106d932b1', 1074, 2, N'-1,1074,1081', 1, 0, -1, N'MainConfig', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-11T16:02:17.247' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1082, N'b5aec3e8-8765-43aa-8ef9-b512b3fd5a33', -1, 1, N'-1,1082', 35, 0, -1, N'MainConfig - Show in main Menu - Checkbox', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-11T16:03:06.680' AS DateTime))
SET IDENTITY_INSERT [dbo].[umbracoNode] OFF
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] ON 

INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1, 3, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (3, 4, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (5, 5, 37, NULL, NULL, NULL, NULL, NULL, N'1111111111111111', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (7, 6, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (10, 7, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (12, 8, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (14, 9, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (16, 10, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (18, 11, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (20, 12, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (22, 12, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (24, 13, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (26, 13, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (28, 14, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (30, 14, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (32, 16, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/1mmou4he/maxresdefault.jpg","crops":null}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (33, 16, 7, NULL, NULL, 1280, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (34, 16, 8, NULL, NULL, 720, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (35, 16, 9, NULL, NULL, NULL, NULL, NULL, N'47263', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (36, 16, 10, NULL, NULL, NULL, NULL, NULL, N'jpg', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (37, 15, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (39, 15, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (41, 15, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (43, 17, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (45, 17, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (47, 17, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (49, 18, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (51, 18, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (53, 18, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (55, 18, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "crops": null,
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "src": "/media/otgptsi4/maxresdefault.jpg"
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (57, 19, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (59, 19, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (61, 19, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (63, 19, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": null
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (65, 20, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (67, 20, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (69, 20, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (71, 20, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": null
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (73, 21, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (75, 21, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (77, 21, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (79, 21, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": null
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (81, 22, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (83, 22, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (85, 22, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (87, 22, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": null
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (89, 23, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (91, 23, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (93, 23, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (95, 23, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (97, 24, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (99, 24, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (101, 24, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (103, 24, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (105, 24, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (107, 25, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (109, 25, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (111, 25, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (113, 25, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (115, 25, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (117, 25, 42, NULL, NULL, NULL, NULL, NULL, N'[]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (119, 26, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (121, 26, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (123, 26, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (125, 26, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (127, 26, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (129, 26, 42, NULL, NULL, NULL, NULL, NULL, N'[]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (131, 27, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (133, 27, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (135, 27, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (137, 27, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (139, 27, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (141, 27, 42, NULL, NULL, NULL, NULL, NULL, N'[]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (143, 28, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (145, 28, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (147, 28, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (149, 28, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (151, 28, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (153, 28, 42, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (155, 29, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (157, 29, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (159, 29, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (161, 29, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (163, 29, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (165, 29, 42, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (167, 30, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (169, 30, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (171, 30, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (173, 30, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (175, 30, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (177, 30, 42, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (179, 31, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (181, 31, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (183, 31, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (185, 31, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (187, 31, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (189, 31, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (191, 32, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (193, 32, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (195, 32, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (197, 32, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (199, 32, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (201, 32, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (203, 33, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (205, 33, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (207, 33, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (209, 33, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (211, 33, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (213, 33, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (215, 34, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (217, 34, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (219, 34, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (221, 34, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (223, 34, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (225, 34, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (227, 34, 43, NULL, NULL, NULL, NULL, NULL, N'[]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (229, 35, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (231, 35, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (233, 35, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (235, 35, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (237, 35, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (239, 35, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (241, 35, 43, NULL, NULL, NULL, NULL, NULL, N'[]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (243, 36, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (245, 36, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (247, 36, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (249, 36, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (251, 36, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (253, 36, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (255, 36, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag","pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (257, 37, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (259, 37, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (261, 37, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (263, 37, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (265, 37, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (267, 37, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (269, 37, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag","pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (271, 38, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (273, 38, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (275, 38, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (277, 38, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/78ea18ddbae445dfb571e42b5200dc45')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (279, 38, 40, NULL, NULL, NULL, NULL, NULL, NULL, N'{
  "src": "/media/otgptsi4/maxresdefault.jpg",
  "focalPoint": {
    "left": 0.39666666666666667,
    "top": 0.37925925925925924
  },
  "crops": [
    {
      "alias": "200X200",
      "width": 200,
      "height": 200,
      "coordinates": null
    }
  ]
}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (281, 38, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (283, 38, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1191, 39, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1193, 39, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1195, 39, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1197, 39, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1199, 39, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1201, 1040, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/3xff5ms3/crash_test_dummy.png","crops":[{"alias":"200X200","width":200,"height":200}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1202, 1040, 7, NULL, NULL, 512, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1203, 1040, 8, NULL, NULL, 512, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1204, 1040, 9, NULL, NULL, NULL, NULL, NULL, N'17515', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1205, 1040, 10, NULL, NULL, NULL, NULL, NULL, N'png', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1206, 1039, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1208, 1039, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1210, 1039, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1212, 1039, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1214, 1039, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1216, 1039, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1218, 1042, 6, NULL, NULL, NULL, NULL, NULL, NULL, N'{"src":"/media/5vhnyzsl/dummy_nipple-512.png","crops":[{"alias":"200X200","width":200,"height":200}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1219, 1042, 7, NULL, NULL, 512, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1220, 1042, 8, NULL, NULL, 512, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1221, 1042, 9, NULL, NULL, NULL, NULL, NULL, N'15939', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1222, 1042, 10, NULL, NULL, NULL, NULL, NULL, N'png', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1223, 1041, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1225, 1041, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1227, 1041, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1229, 1041, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1231, 1041, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1233, 1041, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1235, 1043, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1237, 1043, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1239, 1043, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1241, 1043, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1243, 1043, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1245, 1043, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1247, 1044, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1249, 1044, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1251, 1044, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1253, 1044, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1255, 1044, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1257, 1044, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1259, 1045, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1261, 1045, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1263, 1045, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1265, 1045, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1267, 1045, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1269, 1045, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1271, 1034, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1273, 1036, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1275, 1038, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1276, 1051, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1277, 1048, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1279, 1052, 1047, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1280, 1053, 1047, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1281, 1046, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1283, 1046, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1285, 1046, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1287, 1046, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1289, 1046, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1291, 1046, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1293, 1046, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1295, 1054, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1297, 1054, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1299, 1054, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1301, 1054, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1303, 1054, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1305, 1054, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1307, 1054, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1316, 1049, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1317, 1055, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1319, 1055, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1321, 1055, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1323, 1055, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1325, 1055, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1327, 1055, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1329, 1055, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1331, 1056, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1333, 1056, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1335, 1056, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1337, 1056, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1339, 1056, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1341, 1056, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1343, 1056, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1345, 1057, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1347, 1057, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1349, 1057, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1351, 1057, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1353, 1057, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1355, 1057, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1357, 1057, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1359, 1058, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1361, 1058, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1363, 1058, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1365, 1058, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1367, 1058, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1369, 1058, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1371, 1058, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1373, 1059, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1375, 1059, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1377, 1059, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1379, 1059, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1381, 1059, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1383, 1059, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1385, 1059, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1387, 1060, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1389, 1060, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1391, 1060, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1393, 1060, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1395, 1060, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1397, 1060, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1399, 1060, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1401, 1061, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1403, 1061, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1405, 1061, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1407, 1061, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1409, 1061, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1411, 1061, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1413, 1061, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1415, 1061, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1417, 1062, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1419, 1062, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1421, 1062, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1423, 1062, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1425, 1062, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1427, 1062, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1429, 1062, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1431, 1062, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1433, 1062, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1435, 1063, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1437, 1063, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1439, 1063, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1441, 1063, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1443, 1063, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1445, 1063, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1447, 1063, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1449, 1063, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1451, 1063, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1453, 1064, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1455, 1064, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1457, 1064, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1459, 1064, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1461, 1064, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1463, 1064, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1465, 1064, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1467, 1064, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1469, 1064, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1471, 1065, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1473, 1065, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1475, 1065, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1477, 1065, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1479, 1065, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1481, 1065, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1483, 1065, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1485, 1065, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1487, 1065, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1489, 1050, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1491, 1066, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1492, 1068, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1493, 1066, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1494, 1068, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1495, 1066, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1496, 1068, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1497, 1066, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1498, 1068, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1499, 1066, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1500, 1068, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1501, 1066, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1502, 1068, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1503, 1066, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1504, 1068, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1505, 1066, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1506, 1068, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1507, 1066, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1508, 1068, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1509, 1067, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1511, 1069, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1512, 1070, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] OFF
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (3, N'8307994f-faf2-3844-bab9-72d34514edf2', 0, N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'Relate Parent Media Folder On Delete', N'relateParentMediaFolderOnDelete')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isMaster]) VALUES (1, N'http://localhost:61231/umbraco', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT', CAST(N'2020-01-11T14:26:47.480' AS DateTime), CAST(N'2020-01-11T18:15:38.133' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (-1, 0, 0, N'Echo', N'ibrrahim.nada@gmail.com', N'27Hztl0bfpyN1RnS+9JkUA==Kr10gf+6pka3hY+7pEACaxu37dkpUeksTgXlU1FdFp0=', N'{"hashAlgorithm":"HMACSHA256"}', N'ibrrahim.nada@gmail.com', N'en-US', N'850c4e25-65b9-46de-bd63-329e306a2084', NULL, NULL, CAST(N'2020-01-11T14:26:13.533' AS DateTime), CAST(N'2020-01-11T18:07:28.377' AS DateTime), NULL, NULL, CAST(N'2020-01-11T14:26:12.627' AS DateTime), CAST(N'2020-01-11T18:07:28.387' AS DateTime), NULL, N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true}]')
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 5)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] ON 

INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (1, N'admin', N'Administrators', N'CADMOSKTPIURZ:5F7ï', CAST(N'2020-01-11T14:26:13.150' AS DateTime), CAST(N'2020-01-11T14:26:13.150' AS DateTime), N'icon-medal', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (2, N'writer', N'Writers', N'CAH:F', CAST(N'2020-01-11T14:26:13.153' AS DateTime), CAST(N'2020-01-11T14:26:13.153' AS DateTime), N'icon-edit', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (3, N'editor', N'Editors', N'CADMOSKTPUZ:5Fï', CAST(N'2020-01-11T14:26:13.153' AS DateTime), CAST(N'2020-01-11T14:26:13.153' AS DateTime), N'icon-tools', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (4, N'translator', N'Translators', N'AF', CAST(N'2020-01-11T14:26:13.153' AS DateTime), CAST(N'2020-01-11T14:26:13.153' AS DateTime), N'icon-globe', -1, -1)
INSERT [dbo].[umbracoUserGroup] ([id], [userGroupAlias], [userGroupName], [userGroupDefaultPermissions], [createDate], [updateDate], [icon], [startContentId], [startMediaId]) VALUES (5, N'sensitiveData', N'Sensitive data', N'', CAST(N'2020-01-11T14:26:13.153' AS DateTime), CAST(N'2020-01-11T14:26:13.153' AS DateTime), N'icon-lock', -1, -1)
SET IDENTITY_INSERT [dbo].[umbracoUserGroup] OFF
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'member')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'packages')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'settings')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'translation')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (1, N'users')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (2, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'content')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'forms')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (3, N'media')
INSERT [dbo].[umbracoUserGroup2App] ([userGroupId], [app]) VALUES (4, N'translation')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'e04a509f-de88-40e4-8b19-4ae218b3ad52', -1, CAST(N'2020-01-11T15:07:28.430' AS DateTime), CAST(N'2020-01-11T15:07:28.440' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4a006dbc-22b7-4220-9561-8a3223536cfc', -1, CAST(N'2020-01-11T14:12:46.667' AS DateTime), CAST(N'2020-01-11T14:29:40.170' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'10ac786b-3492-4117-a572-e54d9f8ab7d2', -1, CAST(N'2020-01-11T11:28:23.510' AS DateTime), CAST(N'2020-01-11T13:52:09.170' AS DateTime), NULL, N'::1')
/****** Object:  Index [IX_cmsContentType]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsContentType_icon]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType]
(
	[icon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsDictionary_id]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsDictionary_key]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_cmsDictionary_key] ON [dbo].[cmsDictionary]
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsMacro_UniqueId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacro_UniqueId] ON [dbo].[cmsMacro]
(
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMacroPropertyAlias]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroPropertyAlias] ON [dbo].[cmsMacro]
(
	[macroAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMacroProperty_Alias]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroProperty_Alias] ON [dbo].[cmsMacroProperty]
(
	[macro] ASC,
	[macroPropertyAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsMacroProperty_UniquePropertyId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroProperty_UniquePropertyId] ON [dbo].[cmsMacroProperty]
(
	[uniquePropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsMember_LoginName]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_cmsMember_LoginName] ON [dbo].[cmsMember]
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsPropertyTypeAlias]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_cmsPropertyTypeAlias] ON [dbo].[cmsPropertyType]
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeUniqueID]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeUniqueID] ON [dbo].[cmsPropertyType]
(
	[UniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsPropertyTypeGroupUniqueID]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeGroupUniqueID] ON [dbo].[cmsPropertyTypeGroup]
(
	[uniqueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_cmsTags]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTags] ON [dbo].[cmsTags]
(
	[group] ASC,
	[tag] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTags_LanguageId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_cmsTags_LanguageId] ON [dbo].[cmsTags]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cmsTemplate_nodeId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoAccess_nodeId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccess_nodeId] ON [dbo].[umbracoAccess]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoAccessRule]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccessRule] ON [dbo].[umbracoAccessRule]
(
	[ruleValue] ASC,
	[ruleType] ASC,
	[accessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersionCultureVariation_LanguageId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoContentVersionCultureVariation_LanguageId] ON [dbo].[umbracoContentVersionCultureVariation]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoContentVersionCultureVariation_VersionId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoContentVersionCultureVariation_VersionId] ON [dbo].[umbracoContentVersionCultureVariation]
(
	[versionId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocument_Published]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocument_Published] ON [dbo].[umbracoDocument]
(
	[published] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentCultureVariation_LanguageId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoDocumentCultureVariation_LanguageId] ON [dbo].[umbracoDocumentCultureVariation]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoDocumentCultureVariation_NodeId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoDocumentCultureVariation_NodeId] ON [dbo].[umbracoDocumentCultureVariation]
(
	[nodeId] ASC,
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLanguage_fallbackLanguageId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLanguage_fallbackLanguageId] ON [dbo].[umbracoLanguage]
(
	[fallbackLanguageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoLanguage_languageISOCode]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage]
(
	[languageISOCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoLog]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoLog] ON [dbo].[umbracoLog]
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoMediaVersion]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoMediaVersion] ON [dbo].[umbracoMediaVersion]
(
	[id] ASC,
	[path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_ObjectType]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_ObjectType] ON [dbo].[umbracoNode]
(
	[nodeObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_ParentId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_ParentId] ON [dbo].[umbracoNode]
(
	[parentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoNode_Path]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Path] ON [dbo].[umbracoNode]
(
	[path] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_Trashed]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoNode_Trashed] ON [dbo].[umbracoNode]
(
	[trashed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoNode_UniqueId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoNode_UniqueId] ON [dbo].[umbracoNode]
(
	[uniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoPropertyData_LanguageId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_LanguageId] ON [dbo].[umbracoPropertyData]
(
	[languageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoPropertyData_PropertyTypeId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_PropertyTypeId] ON [dbo].[umbracoPropertyData]
(
	[propertyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoPropertyData_Segment]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoPropertyData_Segment] ON [dbo].[umbracoPropertyData]
(
	[segment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoPropertyData_VersionId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoPropertyData_VersionId] ON [dbo].[umbracoPropertyData]
(
	[versionId] ASC,
	[propertyTypeId] ASC,
	[languageId] ASC,
	[segment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRedirectUrl]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRedirectUrl] ON [dbo].[umbracoRedirectUrl]
(
	[urlHash] ASC,
	[contentKey] ASC,
	[culture] ASC,
	[createDateUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRelation_parentChildType]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelation_parentChildType] ON [dbo].[umbracoRelation]
(
	[parentId] ASC,
	[childId] ASC,
	[relType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRelationType_alias]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_alias] ON [dbo].[umbracoRelationType]
(
	[alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoRelationType_name]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_name] ON [dbo].[umbracoRelationType]
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoRelationType_UniqueId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_UniqueId] ON [dbo].[umbracoRelationType]
(
	[typeUniqueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_computerName]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer]
(
	[computerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoServer_isActive]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer]
(
	[isActive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUser_userLogin]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser]
(
	[userLogin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupAlias]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupAlias] ON [dbo].[umbracoUserGroup]
(
	[userGroupAlias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_umbracoUserGroup_userGroupName]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupName] ON [dbo].[umbracoUserGroup]
(
	[userGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUser2NodePermission_nodeId]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUser2NodePermission_nodeId] ON [dbo].[umbracoUserGroup2NodePermission]
(
	[nodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserLogin_lastValidatedUtc]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE NONCLUSTERED INDEX [IX_umbracoUserLogin_lastValidatedUtc] ON [dbo].[umbracoUserLogin]
(
	[lastValidatedUtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_umbracoUserStartNode_startNodeType]    Script Date: 1/11/2020 6:15:52 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserStartNode_startNodeType] ON [dbo].[umbracoUserStartNode]
(
	[startNodeType] ASC,
	[startNode] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_thumbnail]  DEFAULT ('folder.png') FOR [thumbnail]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isContainer]  DEFAULT ('0') FOR [isContainer]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_isElement]  DEFAULT ('0') FOR [isElement]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_allowAtRoot]  DEFAULT ('0') FOR [allowAtRoot]
GO
ALTER TABLE [dbo].[cmsContentType] ADD  CONSTRAINT [DF_cmsContentType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] ADD  CONSTRAINT [df_cmsContentTypeAllowedContentType_sortOrder]  DEFAULT ('0') FOR [SortOrder]
GO
ALTER TABLE [dbo].[cmsDocumentType] ADD  CONSTRAINT [DF_cmsDocumentType_IsDefault]  DEFAULT ('0') FOR [IsDefault]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroUseInEditor]  DEFAULT ('0') FOR [macroUseInEditor]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroRefreshRate]  DEFAULT ('0') FOR [macroRefreshRate]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCacheByPage]  DEFAULT ('1') FOR [macroCacheByPage]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroCachePersonalized]  DEFAULT ('0') FOR [macroCachePersonalized]
GO
ALTER TABLE [dbo].[cmsMacro] ADD  CONSTRAINT [DF_cmsMacro_macroDontRender]  DEFAULT ('0') FOR [macroDontRender]
GO
ALTER TABLE [dbo].[cmsMacroProperty] ADD  CONSTRAINT [DF_cmsMacroProperty_macroPropertySortOrder]  DEFAULT ('0') FOR [macroPropertySortOrder]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Email]  DEFAULT ('''') FOR [Email]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_LoginName]  DEFAULT ('''') FOR [LoginName]
GO
ALTER TABLE [dbo].[cmsMember] ADD  CONSTRAINT [DF_cmsMember_Password]  DEFAULT ('''') FOR [Password]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_memberCanEdit]  DEFAULT ('0') FOR [memberCanEdit]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_viewOnProfile]  DEFAULT ('0') FOR [viewOnProfile]
GO
ALTER TABLE [dbo].[cmsMemberType] ADD  CONSTRAINT [DF_cmsMemberType_isSensitive]  DEFAULT ('0') FOR [isSensitive]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_sortOrder]  DEFAULT ('0') FOR [sortOrder]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_variations]  DEFAULT ('1') FOR [variations]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD  CONSTRAINT [DF_cmsPropertyType_UniqueID]  DEFAULT (newid()) FOR [UniqueID]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD  CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID]  DEFAULT (newid()) FOR [uniqueID]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccess] ADD  CONSTRAINT [DF_umbracoAccess_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD  CONSTRAINT [DF_umbracoAccessRule_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoAudit] ADD  CONSTRAINT [DF_umbracoAudit_eventDateUtc]  DEFAULT (getdate()) FOR [eventDateUtc]
GO
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD  CONSTRAINT [DF_umbracoCacheInstruction_instructionCount]  DEFAULT ('1') FOR [instructionCount]
GO
ALTER TABLE [dbo].[umbracoConsent] ADD  CONSTRAINT [DF_umbracoConsent_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoContentVersion] ADD  CONSTRAINT [DF_umbracoContentVersion_versionDate]  DEFAULT (getdate()) FOR [versionDate]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD  CONSTRAINT [DF_umbracoExternalLogin_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoKeyValue] ADD  CONSTRAINT [DF_umbracoKeyValue_updated]  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_isDefaultVariantLang]  DEFAULT ('0') FOR [isDefaultVariantLang]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD  CONSTRAINT [DF_umbracoLanguage_mandatory]  DEFAULT ('0') FOR [mandatory]
GO
ALTER TABLE [dbo].[umbracoLog] ADD  CONSTRAINT [DF_umbracoLog_Datestamp]  DEFAULT (getdate()) FOR [Datestamp]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_uniqueId]  DEFAULT (newid()) FOR [uniqueId]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_trashed]  DEFAULT ('0') FOR [trashed]
GO
ALTER TABLE [dbo].[umbracoNode] ADD  CONSTRAINT [DF_umbracoNode_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoRelation] ADD  CONSTRAINT [DF_umbracoRelation_datetime]  DEFAULT (getdate()) FOR [datetime]
GO
ALTER TABLE [dbo].[umbracoServer] ADD  CONSTRAINT [DF_umbracoServer_registeredDate]  DEFAULT (getdate()) FOR [registeredDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userDisabled]  DEFAULT ('0') FOR [userDisabled]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_userNoConsole]  DEFAULT ('0') FOR [userNoConsole]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUser] ADD  CONSTRAINT [DF_umbracoUser_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_createDate]  DEFAULT (getdate()) FOR [createDate]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD  CONSTRAINT [DF_umbracoUserGroup_updateDate]  DEFAULT (getdate()) FOR [updateDate]
GO
ALTER TABLE [dbo].[cmsContentNu]  WITH NOCHECK ADD  CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cmsContentNu] CHECK CONSTRAINT [FK_cmsContentNu_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType] CHECK CONSTRAINT [FK_cmsContentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child] FOREIGN KEY([childContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_child]
GO
ALTER TABLE [dbo].[cmsContentType2ContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent] FOREIGN KEY([parentContentTypeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsContentType2ContentType] CHECK CONSTRAINT [FK_cmsContentType2ContentType_umbracoNode_parent]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType] FOREIGN KEY([Id])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType]
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1] FOREIGN KEY([AllowedId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContentTypeAllowedContentType] CHECK CONSTRAINT [FK_cmsContentTypeAllowedContentType_cmsContentType1]
GO
ALTER TABLE [dbo].[cmsDictionary]  WITH CHECK ADD  CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY([parent])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsDictionary] CHECK CONSTRAINT [FK_cmsDictionary_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId] FOREIGN KEY([templateNodeId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[cmsDocumentType]  WITH CHECK ADD  CONSTRAINT [FK_cmsDocumentType_umbracoNode_id] FOREIGN KEY([contentTypeNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsDocumentType] CHECK CONSTRAINT [FK_cmsDocumentType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id] FOREIGN KEY([UniqueId])
REFERENCES [dbo].[cmsDictionary] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_cmsDictionary_id]
GO
ALTER TABLE [dbo].[cmsLanguageText]  WITH CHECK ADD  CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsLanguageText] CHECK CONSTRAINT [FK_cmsLanguageText_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsMacroProperty]  WITH CHECK ADD  CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id] FOREIGN KEY([macro])
REFERENCES [dbo].[cmsMacro] ([id])
GO
ALTER TABLE [dbo].[cmsMacroProperty] CHECK CONSTRAINT [FK_cmsMacroProperty_cmsMacro_id]
GO
ALTER TABLE [dbo].[cmsMember]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] CHECK CONSTRAINT [FK_cmsMember_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId] FOREIGN KEY([Member])
REFERENCES [dbo].[cmsMember] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_cmsMember_nodeId]
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id] FOREIGN KEY([MemberGroup])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMember2MemberGroup] CHECK CONSTRAINT [FK_cmsMember2MemberGroup_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId] FOREIGN KEY([NodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsMemberType]  WITH CHECK ADD  CONSTRAINT [FK_cmsMemberType_umbracoNode_id] FOREIGN KEY([NodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsMemberType] CHECK CONSTRAINT [FK_cmsMemberType_umbracoNode_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY([propertyTypeGroupId])
REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id]
GO
ALTER TABLE [dbo].[cmsPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId] FOREIGN KEY([dataTypeId])
REFERENCES [dbo].[umbracoDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] CHECK CONSTRAINT [FK_cmsPropertyType_umbracoDataType_nodeId]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup]  WITH CHECK ADD  CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY([contenttypeNodeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] CHECK CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsContent] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsContent]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsPropertyType]
GO
ALTER TABLE [dbo].[cmsTagRelationship]  WITH CHECK ADD  CONSTRAINT [FK_cmsTagRelationship_cmsTags_id] FOREIGN KEY([tagId])
REFERENCES [dbo].[cmsTags] ([id])
GO
ALTER TABLE [dbo].[cmsTagRelationship] CHECK CONSTRAINT [FK_cmsTagRelationship_cmsTags_id]
GO
ALTER TABLE [dbo].[cmsTags]  WITH CHECK ADD  CONSTRAINT [FK_cmsTags_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[cmsTags] CHECK CONSTRAINT [FK_cmsTags_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[cmsTemplate]  WITH CHECK ADD  CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTemplate] CHECK CONSTRAINT [FK_cmsTemplate_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id1] FOREIGN KEY([loginNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id1]
GO
ALTER TABLE [dbo].[umbracoAccess]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccess_umbracoNode_id2] FOREIGN KEY([noAccessNodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoAccess] CHECK CONSTRAINT [FK_umbracoAccess_umbracoNode_id2]
GO
ALTER TABLE [dbo].[umbracoAccessRule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY([accessId])
REFERENCES [dbo].[umbracoAccess] ([id])
GO
ALTER TABLE [dbo].[umbracoAccessRule] CHECK CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId] FOREIGN KEY([contentTypeId])
REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_cmsContentType_NodeId]
GO
ALTER TABLE [dbo].[umbracoContent]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContent_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoContent] CHECK CONSTRAINT [FK_umbracoContent_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentSchedule]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentSchedule] CHECK CONSTRAINT [FK_umbracoContentSchedule_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoContentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersion] CHECK CONSTRAINT [FK_umbracoContentVersion_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id] FOREIGN KEY([availableUserId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoContentVersionCultureVariation] CHECK CONSTRAINT [FK_umbracoContentVersionCultureVariation_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoDataType]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDataType] CHECK CONSTRAINT [FK_umbracoDataType_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocument]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoContent] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocument] CHECK CONSTRAINT [FK_umbracoDocument_umbracoContent_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation]  WITH NOCHECK ADD  CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentCultureVariation] CHECK CONSTRAINT [FK_umbracoDocumentCultureVariation_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId] FOREIGN KEY([templateId])
REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_cmsTemplate_nodeId]
GO
ALTER TABLE [dbo].[umbracoDocumentVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoDocumentVersion] CHECK CONSTRAINT [FK_umbracoDocumentVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoDomain]  WITH CHECK ADD  CONSTRAINT [FK_umbracoDomain_umbracoNode_id] FOREIGN KEY([domainRootStructureID])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoDomain] CHECK CONSTRAINT [FK_umbracoDomain_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoLanguage]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id] FOREIGN KEY([fallbackLanguageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoLanguage] CHECK CONSTRAINT [FK_umbracoLanguage_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoLog]  WITH CHECK ADD  CONSTRAINT [FK_umbracoLog_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoLog] CHECK CONSTRAINT [FK_umbracoLog_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoMediaVersion]  WITH CHECK ADD  CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id] FOREIGN KEY([id])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoMediaVersion] CHECK CONSTRAINT [FK_umbracoMediaVersion_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoNode_umbracoUser_id] FOREIGN KEY([nodeUser])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoNode] CHECK CONSTRAINT [FK_umbracoNode_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id] FOREIGN KEY([propertyTypeId])
REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_cmsPropertyType_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id] FOREIGN KEY([versionId])
REFERENCES [dbo].[umbracoContentVersion] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoContentVersion_id]
GO
ALTER TABLE [dbo].[umbracoPropertyData]  WITH CHECK ADD  CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id] FOREIGN KEY([languageId])
REFERENCES [dbo].[umbracoLanguage] ([id])
GO
ALTER TABLE [dbo].[umbracoPropertyData] CHECK CONSTRAINT [FK_umbracoPropertyData_umbracoLanguage_id]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY([contentKey])
REFERENCES [dbo].[umbracoNode] ([uniqueId])
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] CHECK CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode] FOREIGN KEY([parentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoNode1] FOREIGN KEY([childId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoNode1]
GO
ALTER TABLE [dbo].[umbracoRelation]  WITH CHECK ADD  CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id] FOREIGN KEY([relType])
REFERENCES [dbo].[umbracoRelationType] ([id])
GO
ALTER TABLE [dbo].[umbracoRelation] CHECK CONSTRAINT [FK_umbracoRelation_umbracoRelationType_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2NodeNotify] CHECK CONSTRAINT [FK_umbracoUser2NodeNotify_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUser2UserGroup] CHECK CONSTRAINT [FK_umbracoUser2UserGroup_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY([startContentId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startContentId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup]  WITH CHECK ADD  CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY([startMediaId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] CHECK CONSTRAINT [FK_startMediaId_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2App]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2App] CHECK CONSTRAINT [FK_umbracoUserGroup2App_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id] FOREIGN KEY([nodeId])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] CHECK CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id] FOREIGN KEY([userGroupId])
REFERENCES [dbo].[umbracoUserGroup] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup2NodePermission] CHECK CONSTRAINT [FK_umbracoUserGroup2NodePermission_umbracoUserGroup_id]
GO
ALTER TABLE [dbo].[umbracoUserLogin]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserLogin] CHECK CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY([startNode])
REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id]
GO
ALTER TABLE [dbo].[umbracoUserStartNode]  WITH CHECK ADD  CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY([userId])
REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] CHECK CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id]
GO
USE [master]
GO
ALTER DATABASE [LearningUmbraco8] SET  READ_WRITE 
GO
