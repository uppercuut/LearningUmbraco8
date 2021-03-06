USE [LearningUmbraco8]
GO
/****** Object:  Table [dbo].[cmsContentNu]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsContentType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsContentType2ContentType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsContentTypeAllowedContentType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsDictionary]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsDocumentType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsLanguageText]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsMacro]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsMacroProperty]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsMember]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsMember2MemberGroup]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsMemberType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsPropertyType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsPropertyTypeGroup]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsTagRelationship]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsTags]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[cmsTemplate]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoAccess]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoAccessRule]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoAudit]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoCacheInstruction]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoConsent]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoContent]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoContentSchedule]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoContentVersion]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoContentVersionCultureVariation]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoDataType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoDocument]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoDocumentCultureVariation]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoDocumentVersion]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoDomain]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoExternalLogin]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoKeyValue]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoLanguage]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoLock]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoLog]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoMediaVersion]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoNode]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoPropertyData]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoRedirectUrl]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoRelation]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoRelationType]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoServer]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUser]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUser2NodeNotify]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUser2UserGroup]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUserGroup]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUserGroup2App]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUserGroup2NodePermission]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUserLogin]    Script Date: 1/17/2020 1:27:21 PM ******/
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
/****** Object:  Table [dbo].[umbracoUserStartNode]    Script Date: 1/17/2020 1:27:21 PM ******/
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
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1053, 0, N'{"properties":{"metaTags":[],"bodyText":[{"culture":"","seg":"","val":"Umniah Website from Umbraco8"}],"rTEBodyText":[{"culture":"","seg":"","val":"<p>this is a <strong>body</strong> text from rte <br><br><br></p>\n<p> </p>\n<p> </p>\n<?UMBRACO_MACRO macroAlias=\"GreetingMacro\" name=\"Hello from RTE\" />"}],"bodyTextColor":[{"culture":"","seg":"","val":"{\r\n  \"value\": \"df2513\",\r\n  \"label\": \"df2513\",\r\n  \"sortOrder\": 2,\r\n  \"id\": \"3\"\r\n}"}],"testingProp":[{"culture":"en-us","seg":"","val":"English"},{"culture":"ar","seg":"","val":"عربي"}],"imagesrc":[{"culture":"","seg":"","val":"umb://media/b24fcbeba75d4952bbbc93348cf9b197"}],"mainImageCropper":[],"sliderLanding":[{"culture":"","seg":"","val":"[{\"key\":\"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/b24fcbeba75d4952bbbc93348cf9b197\",\"desc\":\"image one \"},{\"key\":\"fa66879f-622c-4250-85cc-1953852d1811\",\"name\":\"Item 2\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/66dc4efb8c4b45b687abe04076e1f0e1\",\"desc\":\"image 2 \"}]"}],"cssClasses":[{"culture":"","seg":"","val":"[\"pTagWithPadding\"]"}],"multiCssClasses":[{"culture":"","seg":"","val":"[\"bluePTag\"]"}],"footerUrls":[{"culture":"","seg":"","val":"[{\"name\":\"FaQs\",\"target\":\"_blank\",\"udi\":\"umb://document/98ef8208e80449c383270df3c947ab05\"},{\"name\":\"Umbraco\",\"target\":\"\",\"url\":\"Https://www.Google.com\",\"queryString\":\"?q=umbraco\"}]"}]},"cultureData":{"en-us":{"name":"Umniah","urlSegment":"umniah","date":"2020-01-12T20:50:56.3533648+03:00","isDraft":false},"ar":{"name":"Main","urlSegment":"main","date":"2020-01-11T16:46:44.477Z","isDraft":false}},"urlSegment":"umniah"}', 1)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1053, 1, N'{"properties":{"metaTags":[],"bodyText":[{"culture":"","seg":"","val":"Umniah Website from Umbraco8"}],"rTEBodyText":[{"culture":"","seg":"","val":"<p>this is a <strong>body</strong> text from rte <br><br><br></p>\n<p> </p>\n<p> </p>\n<?UMBRACO_MACRO macroAlias=\"GreetingMacro\" name=\"Hello from RTE\" />"}],"bodyTextColor":[{"culture":"","seg":"","val":"{\r\n  \"value\": \"df2513\",\r\n  \"label\": \"df2513\",\r\n  \"sortOrder\": 2,\r\n  \"id\": \"3\"\r\n}"}],"testingProp":[{"culture":"en-us","seg":"","val":"English"},{"culture":"ar","seg":"","val":"عربي"}],"imagesrc":[{"culture":"","seg":"","val":"umb://media/b24fcbeba75d4952bbbc93348cf9b197"}],"mainImageCropper":[],"sliderLanding":[{"culture":"","seg":"","val":"[{\"key\":\"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e\",\"name\":\"Item 1\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/b24fcbeba75d4952bbbc93348cf9b197\",\"desc\":\"image one \"},{\"key\":\"fa66879f-622c-4250-85cc-1953852d1811\",\"name\":\"Item 2\",\"ncContentTypeAlias\":\"sliderItems\",\"backGroundImage\":\"umb://media/66dc4efb8c4b45b687abe04076e1f0e1\",\"desc\":\"image 2 \"}]"}],"cssClasses":[{"culture":"","seg":"","val":"[\"pTagWithPadding\"]"}],"multiCssClasses":[{"culture":"","seg":"","val":"[\"bluePTag\"]"}],"footerUrls":[{"culture":"","seg":"","val":"[{\"name\":\"FaQs\",\"target\":\"_blank\",\"udi\":\"umb://document/98ef8208e80449c383270df3c947ab05\"},{\"name\":\"Umbraco\",\"target\":\"\",\"url\":\"Https://www.Google.com\",\"queryString\":\"?q=umbraco\"}]"}]},"cultureData":{"en-us":{"name":"Umniah","urlSegment":"umniah","date":"2020-01-12T20:50:56.3533648+03:00","isDraft":false},"ar":{"name":"Main","urlSegment":"main","date":"2020-01-11T16:46:44.477Z","isDraft":false}},"urlSegment":"umniah"}', 1)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1056, 0, N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/1mmou4he/maxresdefault.jpg\",\"crops\":null}"}],"umbracoWidth":[{"culture":"","seg":"","val":1280}],"umbracoHeight":[{"culture":"","seg":"","val":720}],"umbracoBytes":[{"culture":"","seg":"","val":"47263"}],"umbracoExtension":[{"culture":"","seg":"","val":"jpg"}]},"cultureData":{},"urlSegment":"maxresdefault"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1065, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}]},"cultureData":{},"urlSegment":"personal"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1066, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}],"newestOffers":[{"culture":"","seg":"","val":"umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22"}],"childrenItems":[],"gridViewLayout":[{"culture":"","seg":"","val":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"Article\",\"id\":\"d4a10134-2bce-1592-c330-9f6fde2d1476\",\"areas\":[{\"grid\":\"4\",\"controls\":[{\"value\":\"test\",\"editor\":{\"alias\":\"headline\",\"view\":\"textstring\"},\"styles\":null,\"config\":null},{\"value\":{\"id\":1076,\"udi\":\"umb://media/b24fcbeba75d4952bbbc93348cf9b197\",\"image\":\"/media/3xff5ms3/crash_test_dummy.png\"},\"editor\":{\"alias\":\"media\",\"view\":\"media\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null},{\"grid\":\"8\",\"controls\":[{\"value\":{\"focalPoint\":{\"left\":0.16157205240174671,\"top\":0.79961183891314891},\"id\":1056,\"udi\":\"umb://media/78ea18ddbae445dfb571e42b5200dc45\",\"image\":\"/media/1mmou4he/maxresdefault.jpg\"},\"editor\":{\"alias\":\"media\",\"view\":\"media\"},\"styles\":null,\"config\":null},{\"value\":\"Test test test\",\"editor\":{\"alias\":\"quote\",\"view\":\"textstring\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}]},"cultureData":{},"urlSegment":"home"}', 2)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1066, 1, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}],"newestOffers":[{"culture":"","seg":"","val":"umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22"}],"childrenItems":[],"gridViewLayout":[{"culture":"","seg":"","val":"{\"name\":\"1 column layout\",\"sections\":[{\"grid\":\"12\",\"rows\":[{\"name\":\"Article\",\"id\":\"d4a10134-2bce-1592-c330-9f6fde2d1476\",\"areas\":[{\"grid\":\"4\",\"controls\":[{\"value\":\"test\",\"editor\":{\"alias\":\"headline\",\"view\":\"textstring\"},\"styles\":null,\"config\":null},{\"value\":{\"id\":1076,\"udi\":\"umb://media/b24fcbeba75d4952bbbc93348cf9b197\",\"image\":\"/media/3xff5ms3/crash_test_dummy.png\"},\"editor\":{\"alias\":\"media\",\"view\":\"media\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null},{\"grid\":\"8\",\"controls\":[{\"value\":{\"focalPoint\":{\"left\":0.16157205240174671,\"top\":0.79961183891314891},\"id\":1056,\"udi\":\"umb://media/78ea18ddbae445dfb571e42b5200dc45\",\"image\":\"/media/1mmou4he/maxresdefault.jpg\"},\"editor\":{\"alias\":\"media\",\"view\":\"media\"},\"styles\":null,\"config\":null},{\"value\":\"Test test test\",\"editor\":{\"alias\":\"quote\",\"view\":\"textstring\"},\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}],\"styles\":null,\"config\":null}]}]}"}]},"cultureData":{},"urlSegment":"home"}', 2)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1067, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}],"metaTags":[],"font":[{"culture":"","seg":"","val":"fas fa-tablet-alt"}]},"cultureData":{},"urlSegment":"business111"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1067, 1, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":1}],"metaTags":[],"font":[{"culture":"","seg":"","val":"fas fa-tablet-alt"}]},"cultureData":{},"urlSegment":"business111"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1076, 0, N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/3xff5ms3/crash_test_dummy.png\",\"crops\":[{\"alias\":\"200X200\",\"width\":200,\"height\":200}]}"}],"umbracoWidth":[{"culture":"","seg":"","val":512}],"umbracoHeight":[{"culture":"","seg":"","val":512}],"umbracoBytes":[{"culture":"","seg":"","val":"17515"}],"umbracoExtension":[{"culture":"","seg":"","val":"png"}]},"cultureData":{},"urlSegment":"crash-test-dummy"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1077, 0, N'{"properties":{"umbracoFile":[{"culture":"","seg":"","val":"{\"src\":\"/media/5vhnyzsl/dummy_nipple-512.png\",\"crops\":[{\"alias\":\"200X200\",\"width\":200,\"height\":200}]}"}],"umbracoWidth":[{"culture":"","seg":"","val":512}],"umbracoHeight":[{"culture":"","seg":"","val":512}],"umbracoBytes":[{"culture":"","seg":"","val":"15939"}],"umbracoExtension":[{"culture":"","seg":"","val":"png"}]},"cultureData":{},"urlSegment":"dummy-nipple-512"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1080, 0, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":0}]},"cultureData":{},"urlSegment":"faqs"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1080, 1, N'{"properties":{"showInMainMenu":[{"culture":"","seg":"","val":0}]},"cultureData":{},"urlSegment":"faqs"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1085, 0, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"300Giga"},{"culture":"ar","seg":"","val":"300 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"300Giga from desc"},{"culture":"ar","seg":"","val":"300 جيحا from desc"}]},"cultureData":{"en-us":{"name":"300Giga","urlSegment":"300giga","date":"2020-01-12T20:54:56.7930289+03:00","isDraft":false},"ar":{"name":"300 جيحا","urlSegment":"300-جيحا","date":"2020-01-12T18:27:50.51Z","isDraft":false}},"urlSegment":"300giga"}', 2)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1085, 1, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"300Giga"},{"culture":"ar","seg":"","val":"300 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"300Giga from desc"},{"culture":"ar","seg":"","val":"300 جيحا from desc"}]},"cultureData":{"en-us":{"name":"300Giga","urlSegment":"300giga","date":"2020-01-12T20:54:56.7930289+03:00","isDraft":false},"ar":{"name":"300 جيحا","urlSegment":"300-جيحا","date":"2020-01-12T18:27:50.51Z","isDraft":false}},"urlSegment":"300giga"}', 2)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1086, 0, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"600 Giga "},{"culture":"ar","seg":"","val":"600 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"600 Giga from desc"},{"culture":"ar","seg":"","val":"600 جيحا from desc"}]},"cultureData":{"en-us":{"name":"600 Giga","urlSegment":"600-giga","date":"2020-01-12T18:42:36.23Z","isDraft":true},"ar":{"name":"600 جيحا","urlSegment":"600-جيحا","date":"2020-01-12T18:31:06.207Z","isDraft":true}},"urlSegment":"600-giga"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1087, 0, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"900 Giga"},{"culture":"ar","seg":"","val":"900 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"900 Giga from desc"},{"culture":"ar","seg":"","val":"900 جيحا from desc"}]},"cultureData":{"en-us":{"name":"900 Giga (1)","urlSegment":"900-giga-1","date":"2020-01-12T19:20:24.573Z","isDraft":false},"ar":{"name":"900 جيحا (1)","urlSegment":"900-جيحا-1","date":"2020-01-12T18:31:59.157Z","isDraft":false}},"urlSegment":"900-giga-1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1087, 1, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"900 Giga"},{"culture":"ar","seg":"","val":"900 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"900 Giga from desc"},{"culture":"ar","seg":"","val":"900 جيحا from desc"}]},"cultureData":{"en-us":{"name":"900 Giga (1)","urlSegment":"900-giga-1","date":"2020-01-12T19:20:24.573Z","isDraft":false},"ar":{"name":"900 جيحا (1)","urlSegment":"900-جيحا-1","date":"2020-01-12T18:31:59.157Z","isDraft":false}},"urlSegment":"900-giga-1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1088, 0, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"1000 Giga "},{"culture":"ar","seg":"","val":"1000 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"1000 Giga from desc"},{"culture":"ar","seg":"","val":"1000 جيحا from desc"}]},"cultureData":{"en-us":{"name":"1000 Giga (1)","urlSegment":"1000-giga-1","date":"2020-01-12T18:32:19.193Z","isDraft":false},"ar":{"name":"1000 جيحا (1)","urlSegment":"1000-جيحا-1","date":"2020-01-12T18:32:19.193Z","isDraft":false}},"urlSegment":"1000-giga-1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1088, 1, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"1000 Giga "},{"culture":"ar","seg":"","val":"1000 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"1000 Giga from desc"},{"culture":"ar","seg":"","val":"1000 جيحا from desc"}]},"cultureData":{"en-us":{"name":"1000 Giga (1)","urlSegment":"1000-giga-1","date":"2020-01-12T18:32:19.193Z","isDraft":false},"ar":{"name":"1000 جيحا (1)","urlSegment":"1000-جيحا-1","date":"2020-01-12T18:32:19.193Z","isDraft":false}},"urlSegment":"1000-giga-1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1092, 0, N'{"properties":{"question":[{"culture":"","seg":"","val":"Q1"}],"answer":[{"culture":"","seg":"","val":"A1"}]},"cultureData":{},"urlSegment":"q1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1092, 1, N'{"properties":{"question":[{"culture":"","seg":"","val":"Q1"}],"answer":[{"culture":"","seg":"","val":"A1"}]},"cultureData":{},"urlSegment":"q1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1093, 0, N'{"properties":{"question":[{"culture":"","seg":"","val":"Q2"}],"answer":[{"culture":"","seg":"","val":"A2"}]},"cultureData":{},"urlSegment":"q2"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1093, 1, N'{"properties":{"question":[{"culture":"","seg":"","val":"Q2"}],"answer":[{"culture":"","seg":"","val":"A2"}]},"cultureData":{},"urlSegment":"q2"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1098, 0, N'{"properties":{},"cultureData":{},"urlSegment":"list-of-news"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1098, 1, N'{"properties":{},"cultureData":{},"urlSegment":"list-of-news"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1099, 0, N'{"properties":{"desc":[{"culture":"","seg":"","val":"test"}]},"cultureData":{},"urlSegment":"news1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1099, 1, N'{"properties":{"desc":[{"culture":"","seg":"","val":"test"}]},"cultureData":{},"urlSegment":"news1"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1104, 0, N'{"properties":{"smtpServer":[],"serverDomain":[],"targetEmail":[{"culture":"","seg":"","val":"gg@wp.com"}]},"cultureData":{},"urlSegment":"main-config"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1104, 1, N'{"properties":{"smtpServer":[],"serverDomain":[],"targetEmail":[{"culture":"","seg":"","val":"gg@wp.com"}]},"cultureData":{},"urlSegment":"main-config"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1105, 0, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"300Giga"},{"culture":"ar","seg":"","val":"300 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"300Giga from desc"},{"culture":"ar","seg":"","val":"300 جيحا from desc"}]},"cultureData":{"en-us":{"name":"300Giga","urlSegment":"300giga","date":"2020-01-12T20:16:03.8338634+03:00","isDraft":true},"ar":{"name":"300 جيحا","urlSegment":"300-جيحا","date":"2020-01-12T20:16:03.8338634+03:00","isDraft":true}},"urlSegment":"300giga"}', 0)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1106, 0, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"300Giga"},{"culture":"ar","seg":"","val":"300 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"300Giga from desc"},{"culture":"ar","seg":"","val":"300 جيحا from desc"}]},"cultureData":{"en-us":{"name":"300Giga (1)","urlSegment":"300giga-1","date":"2020-01-12T20:58:27.1385035+03:00","isDraft":false},"ar":{"name":"300 جيحا (1)","urlSegment":"300-جيحا-1","date":"2020-01-12T20:17:04.157Z","isDraft":false}},"urlSegment":"300giga-1"}', 1)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1106, 1, N'{"properties":{"offerName":[{"culture":"en-us","seg":"","val":"300Giga"},{"culture":"ar","seg":"","val":"300 جيحا"}],"desc":[{"culture":"en-us","seg":"","val":"300Giga from desc"},{"culture":"ar","seg":"","val":"300 جيحا from desc"}]},"cultureData":{"en-us":{"name":"300Giga (1)","urlSegment":"300giga-1","date":"2020-01-12T20:58:27.1385035+03:00","isDraft":false},"ar":{"name":"300 جيحا (1)","urlSegment":"300-جيحا-1","date":"2020-01-12T20:17:04.157Z","isDraft":false}},"urlSegment":"300giga-1"}', 1)
INSERT [dbo].[cmsContentNu] ([nodeId], [published], [data], [rv]) VALUES (1107, 0, N'{"properties":{"umbracoMemberComments":[],"umbracoMemberFailedPasswordAttempts":[],"umbracoMemberApproved":[{"culture":"","seg":"","val":1}],"umbracoMemberLockedOut":[],"umbracoMemberLastLockoutDate":[],"umbracoMemberLastLogin":[{"culture":"","seg":"","val":"2020-01-12T20:29:57Z"}],"umbracoMemberLastPasswordChangeDate":[{"culture":"","seg":"","val":"2020-01-12T20:18:41Z"}],"umbracoMemberPasswordRetrievalQuestion":[],"umbracoMemberPasswordRetrievalAnswer":[]},"cultureData":{},"urlSegment":"ibrahim-nada"}', 0)
SET IDENTITY_INSERT [dbo].[cmsContentType] ON 

INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (531, 1044, N'Member', N'icon-user', N'icon-user', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (532, 1031, N'Folder', N'icon-folder', N'icon-folder', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (533, 1032, N'Image', N'icon-picture', N'icon-picture', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (534, 1033, N'File', N'icon-document', N'icon-document', NULL, 0, 0, 1, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (535, 1052, N'landingPage', N'icon-home color-indigo', N'folder.png', NULL, 0, 0, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (536, 1060, N'personal', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (537, 1062, N'home', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (538, 1064, N'business', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (539, 1068, N'webPageBase', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (540, 1070, N'landingPageV2', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (541, 1073, N'sliderItems', N'icon-document', N'folder.png', NULL, 0, 1, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (542, 1079, N'fAQs', N'icon-document', N'folder.png', NULL, 1, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (543, 1081, N'mainConfig', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (544, 1084, N'offers', N'icon-document', N'folder.png', NULL, 0, 0, 0, 1)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (545, 1091, N'faq', N'icon-document', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (546, 1095, N'news', N'icon-newspaper-alt', N'folder.png', NULL, 0, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (547, 1097, N'listOfNews', N'icon-folders', N'folder.png', NULL, 1, 0, 0, 0)
INSERT [dbo].[cmsContentType] ([pk], [nodeId], [alias], [icon], [thumbnail], [description], [isContainer], [isElement], [allowAtRoot], [variations]) VALUES (548, 1103, N'config', N'icon-axis-rotation color-black', N'folder.png', NULL, 0, 0, 0, 0)
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
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1052, 1097, 4)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1062, 1084, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1079, 1091, 0)
INSERT [dbo].[cmsContentTypeAllowedContentType] ([Id], [AllowedId], [SortOrder]) VALUES (1097, 1095, 0)
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
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1084, 1083, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1091, 1090, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1095, 1094, 1)
INSERT [dbo].[cmsDocumentType] ([contentTypeNodeId], [templateNodeId], [IsDefault]) VALUES (1097, 1096, 1)
SET IDENTITY_INSERT [dbo].[cmsLanguageText] ON 

INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (1, 1, N'9ebcfb76-1819-4334-b8bd-f25cabe27919', N'Next')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (2, 2, N'9ebcfb76-1819-4334-b8bd-f25cabe27919', N'التالي')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (3, 1, N'd763a7a0-60c7-4807-8f1e-a9fb7119e2d3', N'en')
INSERT [dbo].[cmsLanguageText] ([pk], [languageId], [UniqueId], [value]) VALUES (4, 2, N'd763a7a0-60c7-4807-8f1e-a9fb7119e2d3', N'ar')
SET IDENTITY_INSERT [dbo].[cmsLanguageText] OFF
SET IDENTITY_INSERT [dbo].[cmsMacro] ON 

INSERT [dbo].[cmsMacro] ([id], [uniqueId], [macroUseInEditor], [macroRefreshRate], [macroAlias], [macroName], [macroCacheByPage], [macroCachePersonalized], [macroDontRender], [macroSource], [macroType]) VALUES (1, N'52bcec3a-b2fa-4854-949b-f75a4f79f985', 1, 0, N'GreetingMacro', N'GreetingMacro', 0, 0, 0, N'~/Views/MacroPartials/GreetingsView.cshtml', 7)
SET IDENTITY_INSERT [dbo].[cmsMacro] OFF
SET IDENTITY_INSERT [dbo].[cmsMacroProperty] ON 

INSERT [dbo].[cmsMacroProperty] ([id], [uniquePropertyId], [editorAlias], [macro], [macroPropertySortOrder], [macroPropertyAlias], [macroPropertyName]) VALUES (2, N'a3c74edd-da19-4328-8a63-7f52c3309e52', N'Umbraco.TextArea', 1, 0, N'name', N'Name')
SET IDENTITY_INSERT [dbo].[cmsMacroProperty] OFF
INSERT [dbo].[cmsMember] ([nodeId], [Email], [LoginName], [Password]) VALUES (1107, N'ibra@gg.com', N'ibra@gg.com', N'QCmJF/Owd8X45AXaSvI6RQ==+GGtoGntSojZ2HwJMArxjDGiGXVCoEDSzQ9mFd4bnbA=')
INSERT [dbo].[cmsMember2MemberGroup] ([Member], [MemberGroup]) VALUES (1107, 1108)
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
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1052, -88, 1084, 1018, N'desc', N'Desc', 1, 0, NULL, NULL, 1, N'daa940fa-0bd2-40f9-9a4f-26fadf221d03')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1053, -88, 1084, 1018, N'offerName', N'Offer Name', 0, 0, NULL, NULL, 1, N'6650d027-78db-45f7-b495-fe1da4ebedf3')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1055, 1089, 1062, 1019, N'newestOffers', N'Newest Offers', 1, 0, NULL, NULL, 0, N'5094306b-e147-49ce-b23b-a1ce687cf2e3')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1056, -88, 1091, 1020, N'question', N'Question', 0, 0, NULL, NULL, 0, N'3835d9b9-0633-434b-975b-d5b38ae27ee6')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1057, -88, 1091, 1020, N'answer', N'answer', 1, 0, NULL, NULL, 0, N'9e265101-2105-4507-b5f2-9a29a6c224e5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1058, -88, 1095, 1021, N'desc', N'Desc', 0, 0, NULL, NULL, 0, N'aafd7ce1-b20d-48b7-8fac-c8afe28bea04')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1059, 1102, 1064, 1022, N'font', N'font', 1, 0, NULL, NULL, 0, N'4eaa3529-42cb-4274-addd-377ee3eea81e')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1060, -88, 1103, 1023, N'smtpServer', N'Smtp Server', 0, 0, NULL, NULL, 0, N'5f160a12-c551-4538-8d5b-52c5157b0fd5')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1061, -88, 1103, 1023, N'serverDomain', N'server domain', 1, 0, NULL, NULL, 0, N'90492f54-4398-4370-97fb-6f0edb711661')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1062, -88, 1103, 1023, N'targetEmail', N'Target Email', 2, 0, NULL, NULL, 0, N'9497279b-85ac-4325-a05e-d6b56cf23dcd')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1063, 1110, 1062, 1024, N'childrenItems', N'ChildrenItems', 0, 0, NULL, NULL, 0, N'06cbbd21-4af5-4b50-9165-e462ab153e58')
INSERT [dbo].[cmsPropertyType] ([id], [dataTypeId], [contentTypeId], [propertyTypeGroupId], [Alias], [Name], [sortOrder], [mandatory], [validationRegExp], [Description], [variations], [UniqueID]) VALUES (1064, 1111, 1062, 1024, N'gridViewLayout', N'GridViewLayout', 1, 0, NULL, NULL, 0, N'4a3869cd-1dcb-4588-8109-7a3d80f36679')
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
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1018, 1084, N'Basic Info', 0, N'e3064828-4581-4b7c-bca6-9744e5484e22')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1019, 1062, N'config', 0, N'dda4d7da-cd76-4fab-8960-0dc2e1195e32')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1020, 1091, N'Basic info', 0, N'074aa6bf-e4cb-4f2e-ac2b-20b32cda2fbe')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1021, 1095, N'Basic', 0, N'ffb1db9c-0579-4d27-ab2d-13c97d72564a')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1022, 1064, N'Seo', 0, N'2ea82670-a1e0-44df-8ba2-2028cdb72786')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1023, 1103, N'Email Config', 0, N'75db972a-82f9-48ad-b090-1022f1ccd704')
INSERT [dbo].[cmsPropertyTypeGroup] ([id], [contenttypeNodeId], [text], [sortorder], [uniqueID]) VALUES (1024, 1062, N'Chilldren Items', 1, N'091191a6-c076-4d14-a4bb-718e9b04b6f5')
SET IDENTITY_INSERT [dbo].[cmsPropertyTypeGroup] OFF
SET IDENTITY_INSERT [dbo].[cmsTemplate] ON 

INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (1, 1051, N'LandingPage')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (2, 1057, N'masterPage')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (3, 1059, N'Personal')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (4, 1061, N'Home')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (5, 1063, N'Business')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (6, 1069, N'LandingPageV2')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (7, 1078, N'FAQs')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (8, 1083, N'Offers')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (9, 1090, N'Faq')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (10, 1094, N'News')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (11, 1096, N'ListOfNews')
INSERT [dbo].[cmsTemplate] ([pk], [nodeId], [alias]) VALUES (12, 1101, N'child')
SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
INSERT [dbo].[umbracoAccess] ([id], [nodeId], [loginNodeId], [noAccessNodeId], [createDate], [updateDate]) VALUES (N'cc04cc20-0a6a-4b4b-92eb-0ce0c4f280dc', 1067, 1053, 1104, CAST(N'2020-01-12T20:23:56.620' AS DateTime), CAST(N'2020-01-12T20:23:56.620' AS DateTime))
INSERT [dbo].[umbracoAccess] ([id], [nodeId], [loginNodeId], [noAccessNodeId], [createDate], [updateDate]) VALUES (N'5373768a-25d6-44d7-a63e-a77165f3f8a1', 1106, 1104, 1053, CAST(N'2020-01-12T20:55:57.687' AS DateTime), CAST(N'2020-01-12T20:55:57.687' AS DateTime))
INSERT [dbo].[umbracoAccessRule] ([id], [accessId], [ruleValue], [ruleType], [createDate], [updateDate]) VALUES (N'962a097a-4a35-421a-91b3-5fbff46fc888', N'5373768a-25d6-44d7-a63e-a77165f3f8a1', N'ibra@gg.com', N'MemberUsername', CAST(N'2020-01-12T20:55:57.687' AS DateTime), CAST(N'2020-01-12T20:55:57.687' AS DateTime))
INSERT [dbo].[umbracoAccessRule] ([id], [accessId], [ruleValue], [ruleType], [createDate], [updateDate]) VALUES (N'64812996-d3c6-4ec4-b138-ebaf6901fbe4', N'cc04cc20-0a6a-4b4b-92eb-0ce0c4f280dc', N'BusinessGroup', N'MemberRole', CAST(N'2020-01-12T20:23:56.620' AS DateTime), CAST(N'2020-01-12T20:23:56.620' AS DateTime))
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
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (11, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T15:51:57.577' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (12, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-11T15:51:57.627' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (13, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T14:57:48.647' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (14, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T14:57:48.697' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (15, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:28:48.500' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/save', N'updating SessionTimeout, SecurityStamp, CreateDate, UpdateDate, Id')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (16, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:28:48.520' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/save', N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (17, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:28:48.533' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/save', N'updating Key, IsApproved, Groups, UpdateDate; groups assigned: editor')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (18, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:08.643' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (19, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:19.657' AS DateTime), 0, N'User UNKNOWN:0', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (20, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:27.267' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (21, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:27.273' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (22, 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'::1', CAST(N'2020-01-12T16:29:29.760' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (23, 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'::1', CAST(N'2020-01-12T16:29:29.767' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (24, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:37.580' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (25, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:41.803' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (26, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:29:41.810' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (27, 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'::1', CAST(N'2020-01-12T16:30:09.803' AS DateTime), 1, N'User "ibrahim" <tupacmuhammad5@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (28, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:30:12.707' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (29, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:30:12.710' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (30, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:30:41.683' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating SessionTimeout, SecurityStamp, CreateDate, UpdateDate, Id')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (31, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:30:41.693' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (32, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:30:41.740' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating Key, IsApproved, Groups, UpdateDate; groups assigned: translator')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (33, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:30:47.217' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (34, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:30:54.603' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (35, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:30:54.607' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (36, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:04.827' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (37, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:04.830' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (38, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:09.000' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (39, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:09.003' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (40, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:12.017' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (41, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:12.020' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (42, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:16.073' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (43, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:31:16.077' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (44, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:31:54.967' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating StartContentIds, StartMediaIds, Key, Groups, UpdateDate; groups assigned: translator')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (45, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:32:06.267' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastPasswordChangeDate, RawPasswordValue, SecurityStamp, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (46, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:32:06.277' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating Key, Groups, UpdateDate; groups assigned: translator')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (47, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:32:18.020' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (48, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:32:23.500' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (49, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:32:23.507' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (50, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:32:29.473' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (51, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:32:29.477' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (52, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:33:05.363' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (53, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:06.700' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (54, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:06.707' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (55, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:33:17.853' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (56, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:24.517' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (57, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:24.520' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (58, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:33:38.680' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating IsApproved, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (59, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:33:40.600' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating Key, Groups, UpdateDate; groups assigned: translator')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (60, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:44.373' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (61, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:51.967' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (62, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:33:51.973' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (63, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:34:00.580' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating IsApproved, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (64, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T16:34:01.567' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating Key, Groups, UpdateDate; groups assigned: translator')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (65, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:03.060' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (66, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:05.970' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (67, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:05.973' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (68, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:34:19.967' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (69, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:23.090' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (70, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:23.093' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (71, 2, N'User "test" <gg@wp.com>', N'::1', CAST(N'2020-01-12T16:34:55.203' AS DateTime), 2, N'User "test" <gg@wp.com>', N'umbraco/user/sign-in/logout', N'logout success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (72, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:58.630' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/save', N'updating LastLoginDate, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (73, 0, N'User "SYTEM" ', N'::1', CAST(N'2020-01-12T16:34:58.637' AS DateTime), -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'umbraco/user/sign-in/login', N'login success')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (74, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T17:18:41.147' AS DateTime), -1, N'Member 1107 "ibra@gg.com" <ibra@gg.com>', N'umbraco/member/save', N'updating Name, ParentId, CreatorId, ProviderUserKey, CreateDate, UpdateDate, Id, Path, SortOrder, Level, umbracoMemberApproved')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (75, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T17:18:41.183' AS DateTime), -1, N'Member 1107 "ibra@gg.com" <ibra@gg.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberLastLogin, umbracoMemberLastPasswordChangeDate, umbracoMemberPasswordRetrievalQuestion, umbracoMemberPasswordRetrievalAnswer')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (76, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T17:18:41.210' AS DateTime), -1, N'Member 1107 "ibrahim nada" <ibra@gg.com>', N'umbraco/member/save', N'updating Name, UpdateDate')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (77, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T17:18:45.537' AS DateTime), -1, N'Member 1107 "ibrahim nada" <ibra@gg.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberComments, umbracoMemberLockedOut')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (78, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T17:22:47.443' AS DateTime), -1, N'Member 1107 "ibrahim nada" <ibra@gg.com>', N'umbraco/member/save', N'updating UpdateDate, umbracoMemberComments, umbracoMemberLockedOut')
INSERT [dbo].[umbracoAudit] ([id], [performingUserId], [performingDetails], [performingIp], [eventDateUtc], [affectedUserId], [affectedDetails], [eventType], [eventDetails]) VALUES (79, -1, N'User "Echo" <ibrrahim.nada@gmail.com>', N'::1', CAST(N'2020-01-12T17:22:47.470' AS DateTime), -1, N'Member 1107 "ibrahim nada" <ibra@gg.com>', N'umbraco/member/roles/assigned', N'roles modified, assigned BusinessGroup')
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
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1158, CAST(N'2020-01-11T15:51:58.237' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P2944/D2] 3900B63214FF44EAB6AC30ACC6F9482C', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1159, CAST(N'2020-01-12T14:57:49.140' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1160, CAST(N'2020-01-12T15:23:33.010' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1083]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1084,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1161, CAST(N'2020-01-12T15:24:45.723' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1084,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1162, CAST(N'2020-01-12T15:24:49.457' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1084,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1163, CAST(N'2020-01-12T15:24:51.723' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1084,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1164, CAST(N'2020-01-12T15:25:06.540' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1165, CAST(N'2020-01-12T15:25:39.883' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1166, CAST(N'2020-01-12T15:25:56.707' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1167, CAST(N'2020-01-12T15:26:01.250' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1168, CAST(N'2020-01-12T15:26:11.650' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1169, CAST(N'2020-01-12T15:26:34.373' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1170, CAST(N'2020-01-12T15:27:50.657' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1171, CAST(N'2020-01-12T15:30:19.703' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1084,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1172, CAST(N'2020-01-12T15:30:25.233' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1086,\"Key\":\"100b2e49-96ce-4f4d-8680-b1d4ea7ccc22\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1173, CAST(N'2020-01-12T15:31:06.337' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1086,\"Key\":\"100b2e49-96ce-4f4d-8680-b1d4ea7ccc22\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1174, CAST(N'2020-01-12T15:31:31.797' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"15a0de14-889c-4497-93a0-3e421e3b701c\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1175, CAST(N'2020-01-12T15:31:39.963' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1088,\"Key\":\"a84a756e-3526-4cda-8520-9b6d5477230f\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1176, CAST(N'2020-01-12T15:31:59.227' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"15a0de14-889c-4497-93a0-3e421e3b701c\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1177, CAST(N'2020-01-12T15:32:19.243' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1088,\"Key\":\"a84a756e-3526-4cda-8520-9b6d5477230f\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1178, CAST(N'2020-01-12T15:34:01.190' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1179, CAST(N'2020-01-12T15:34:48.320' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1046,\"Key\":\"fd1e0da5-5606-4862-b679-5d0cf3a52a59\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1180, CAST(N'2020-01-12T15:34:51.397' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1181, CAST(N'2020-01-12T15:36:43.570' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1089,\"Key\":\"1539f612-1682-46f8-911f-cae8d64e8a6e\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1182, CAST(N'2020-01-12T15:38:02.977' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1089,\"Key\":\"1539f612-1682-46f8-911f-cae8d64e8a6e\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1183, CAST(N'2020-01-12T15:38:05.033' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1184, CAST(N'2020-01-12T15:39:40.040' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1185, CAST(N'2020-01-12T15:41:25.533' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1186, CAST(N'2020-01-12T15:41:34.860' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
GO
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1187, CAST(N'2020-01-12T15:42:31.797' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1086,\"Key\":\"100b2e49-96ce-4f4d-8680-b1d4ea7ccc22\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1188, CAST(N'2020-01-12T15:42:36.273' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1086,\"Key\":\"100b2e49-96ce-4f4d-8680-b1d4ea7ccc22\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1189, CAST(N'2020-01-12T15:42:51.290' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1086,\"Key\":\"100b2e49-96ce-4f4d-8680-b1d4ea7ccc22\",\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1190, CAST(N'2020-01-12T15:47:11.397' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1090]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1091,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1191, CAST(N'2020-01-12T15:47:21.977' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1079,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1192, CAST(N'2020-01-12T15:47:55.937' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1092,\"Key\":\"5f09573a-bc9d-45d0-beba-08b139ad2127\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1193, CAST(N'2020-01-12T15:48:08.423' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1093,\"Key\":\"e4d0c442-3108-447f-830a-e53bc5cee698\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1194, CAST(N'2020-01-12T15:48:10.960' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1093,\"Key\":\"e4d0c442-3108-447f-830a-e53bc5cee698\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1195, CAST(N'2020-01-12T15:48:43.103' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1079,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1196, CAST(N'2020-01-12T15:48:44.263' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1080,\"Key\":\"98ef8208-e804-49c3-8327-0df3c947ab05\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1197, CAST(N'2020-01-12T15:50:08.783' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1094]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1095,\"ChangeTypes\":1}]"},{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1096]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1097,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 4)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1198, CAST(N'2020-01-12T15:50:10.383' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1095,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1199, CAST(N'2020-01-12T15:50:37.107' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1200, CAST(N'2020-01-12T15:50:48.217' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1098,\"Key\":\"297f06ad-21ac-45d9-bdfb-0ee8debe1ed9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1201, CAST(N'2020-01-12T15:51:05.050' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1099,\"Key\":\"2412d648-87a9-42da-bf25-b0bc946db082\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1202, CAST(N'2020-01-12T15:51:21.497' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1100,\"Key\":\"b2cc36a8-5e53-44eb-bdcd-23f2ecf762fe\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1203, CAST(N'2020-01-12T15:53:31.540' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1095,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1204, CAST(N'2020-01-12T15:53:32.847' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1099,\"Key\":\"2412d648-87a9-42da-bf25-b0bc946db082\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1205, CAST(N'2020-01-12T15:53:40.437' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1099,\"Key\":\"2412d648-87a9-42da-bf25-b0bc946db082\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1206, CAST(N'2020-01-12T15:54:10.550' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1100,\"Key\":\"b2cc36a8-5e53-44eb-bdcd-23f2ecf762fe\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1207, CAST(N'2020-01-12T15:54:11.583' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1097,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1208, CAST(N'2020-01-12T15:54:13.193' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1098,\"Key\":\"297f06ad-21ac-45d9-bdfb-0ee8debe1ed9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1209, CAST(N'2020-01-12T15:54:48.060' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1100,\"Key\":\"b2cc36a8-5e53-44eb-bdcd-23f2ecf762fe\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1210, CAST(N'2020-01-12T15:54:49.130' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1097,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1211, CAST(N'2020-01-12T15:54:50.157' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1098,\"Key\":\"297f06ad-21ac-45d9-bdfb-0ee8debe1ed9\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1212, CAST(N'2020-01-12T16:01:31.323' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1213, CAST(N'2020-01-12T16:01:47.650' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1214, CAST(N'2020-01-12T16:04:09.423' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"Alias\":\"GreetingMacro\"}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1215, CAST(N'2020-01-12T16:05:42.617' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"Alias\":\"GreetingMacro\"}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1216, CAST(N'2020-01-12T16:06:37.450' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1217, CAST(N'2020-01-12T16:07:29.693' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"Alias\":\"GreetingMacro\"}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1218, CAST(N'2020-01-12T16:07:40.150' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1219, CAST(N'2020-01-12T16:07:40.457' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1220, CAST(N'2020-01-12T16:07:57.070' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1221, CAST(N'2020-01-12T16:13:04.350' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1222, CAST(N'2020-01-12T16:13:17.943' AS DateTime), N'[{"RefreshType":4,"RefresherId":"7b1e683c-5f34-43dd-803d-9699ea1e98ca","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1,\"Alias\":\"GreetingMacro\"}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1223, CAST(N'2020-01-12T16:13:38.970' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1224, CAST(N'2020-01-12T16:15:04.257' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1225, CAST(N'2020-01-12T16:15:09.893' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1226, CAST(N'2020-01-12T16:15:12.877' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1227, CAST(N'2020-01-12T16:15:13.077' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1228, CAST(N'2020-01-12T16:15:14.627' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1229, CAST(N'2020-01-12T16:15:29.153' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1230, CAST(N'2020-01-12T16:15:30.077' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1231, CAST(N'2020-01-12T16:15:30.323' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1232, CAST(N'2020-01-12T16:15:30.520' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1233, CAST(N'2020-01-12T16:15:30.643' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1234, CAST(N'2020-01-12T16:15:40.810' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1235, CAST(N'2020-01-12T16:15:51.297' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1236, CAST(N'2020-01-12T16:15:51.540' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1237, CAST(N'2020-01-12T16:15:51.707' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1238, CAST(N'2020-01-12T16:15:52.350' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1239, CAST(N'2020-01-12T16:15:52.553' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1240, CAST(N'2020-01-12T16:15:52.793' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1241, CAST(N'2020-01-12T16:16:10.683' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1242, CAST(N'2020-01-12T16:16:11.217' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1243, CAST(N'2020-01-12T16:16:11.397' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1244, CAST(N'2020-01-12T16:16:11.647' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1245, CAST(N'2020-01-12T16:16:30.613' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1246, CAST(N'2020-01-12T16:16:30.850' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1247, CAST(N'2020-01-12T16:16:31.043' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1057]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1248, CAST(N'2020-01-12T16:19:11.187' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1249, CAST(N'2020-01-12T16:19:11.410' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1250, CAST(N'2020-01-12T16:19:11.603' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1063]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1251, CAST(N'2020-01-12T16:19:33.210' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1090]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1252, CAST(N'2020-01-12T16:19:33.413' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1090]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1253, CAST(N'2020-01-12T16:19:33.607' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1090]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1254, CAST(N'2020-01-12T16:19:33.763' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1090]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1255, CAST(N'2020-01-12T16:20:03.133' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"15a0de14-889c-4497-93a0-3e421e3b701c\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1256, CAST(N'2020-01-12T16:20:05.567' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1083]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1257, CAST(N'2020-01-12T16:20:15.150' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"15a0de14-889c-4497-93a0-3e421e3b701c\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1258, CAST(N'2020-01-12T16:20:21.330' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1083]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1259, CAST(N'2020-01-12T16:20:22.673' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"15a0de14-889c-4497-93a0-3e421e3b701c\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1260, CAST(N'2020-01-12T16:20:24.620' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1087,\"Key\":\"15a0de14-889c-4497-93a0-3e421e3b701c\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1261, CAST(N'2020-01-12T16:20:54.130' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1101]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1262, CAST(N'2020-01-12T16:27:14.403' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1263, CAST(N'2020-01-12T16:28:49.090' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1264, CAST(N'2020-01-12T16:29:27.273' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1265, CAST(N'2020-01-12T16:29:29.770' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1266, CAST(N'2020-01-12T16:29:41.813' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1267, CAST(N'2020-01-12T16:30:12.713' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1268, CAST(N'2020-01-12T16:30:42.157' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1269, CAST(N'2020-01-12T16:30:54.610' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1270, CAST(N'2020-01-12T16:31:04.833' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1271, CAST(N'2020-01-12T16:31:09.007' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1272, CAST(N'2020-01-12T16:31:12.023' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1273, CAST(N'2020-01-12T16:31:16.080' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1274, CAST(N'2020-01-12T16:31:54.990' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1275, CAST(N'2020-01-12T16:32:06.287' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 2)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1276, CAST(N'2020-01-12T16:32:23.510' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1277, CAST(N'2020-01-12T16:32:29.483' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1278, CAST(N'2020-01-12T16:33:06.710' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1279, CAST(N'2020-01-12T16:33:24.523' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1280, CAST(N'2020-01-12T16:33:38.683' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1281, CAST(N'2020-01-12T16:33:40.613' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1282, CAST(N'2020-01-12T16:33:51.973' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1283, CAST(N'2020-01-12T16:34:00.597' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1284, CAST(N'2020-01-12T16:34:01.590' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1285, CAST(N'2020-01-12T16:34:05.977' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1286, CAST(N'2020-01-12T16:34:23.097' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[2]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
GO
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1287, CAST(N'2020-01-12T16:34:58.640' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e057af6d-2ee6-41f4-8045-3694010f0aa6","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[-1]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D2] 67B71FC21E90429694B6CA308E76E868', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1288, CAST(N'2020-01-12T16:39:05.230' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1102,\"Key\":\"e73dbafd-d1f6-49b6-bc97-2eff8dc33bb8\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1289, CAST(N'2020-01-12T16:39:13.363' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1064,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1290, CAST(N'2020-01-12T16:39:31.283' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1291, CAST(N'2020-01-12T16:46:49.367' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1292, CAST(N'2020-01-12T16:47:13.440' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1293, CAST(N'2020-01-12T16:48:14.690' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1294, CAST(N'2020-01-12T16:48:23.697' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1295, CAST(N'2020-01-12T16:48:45.910' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1296, CAST(N'2020-01-12T16:49:00.103' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1297, CAST(N'2020-01-12T16:49:23.087' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1298, CAST(N'2020-01-12T16:49:24.947' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1299, CAST(N'2020-01-12T16:49:55.967' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1300, CAST(N'2020-01-12T16:50:00.533' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1052,\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1301, CAST(N'2020-01-12T16:58:30.210' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1302, CAST(N'2020-01-12T17:00:08.920' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1103,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1303, CAST(N'2020-01-12T17:00:13.960' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1304, CAST(N'2020-01-12T17:00:14.183' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1305, CAST(N'2020-01-12T17:00:14.377' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1306, CAST(N'2020-01-12T17:00:14.540' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1307, CAST(N'2020-01-12T17:00:15.053' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1104,\"Key\":\"e685f2a1-86b8-47f1-8a77-debec6af0091\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1308, CAST(N'2020-01-12T17:05:52.243' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"Key\":null,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"Key\":null,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeType\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D5] DFE38CEF9CD44DFB9BF31D13A61927FA', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1309, CAST(N'2020-01-12T17:17:04.853' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1106,\"Key\":\"fc50f369-fc4f-4d00-a14e-c31a509906f1\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1310, CAST(N'2020-01-12T17:18:41.220' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1107]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1107]","JsonIdCount":1,"JsonPayload":null},{"RefreshType":3,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1107]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1311, CAST(N'2020-01-12T17:18:45.543' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1107]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1312, CAST(N'2020-01-12T17:19:52.963' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1313, CAST(N'2020-01-12T17:19:55.887' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1314, CAST(N'2020-01-12T17:19:56.097' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1315, CAST(N'2020-01-12T17:19:56.300' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1316, CAST(N'2020-01-12T17:21:08.413' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1317, CAST(N'2020-01-12T17:21:14.727' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1318, CAST(N'2020-01-12T17:21:14.937' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1319, CAST(N'2020-01-12T17:21:15.143' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1051]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1320, CAST(N'2020-01-12T17:22:37.930' AS DateTime), N'[{"RefreshType":5,"RefresherId":"187f236b-bd21-4c85-8a7c-29fba3d6c00c","GuidId":"00000000-0000-0000-0000-000000000000","IntId":1108,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1321, CAST(N'2020-01-12T17:22:47.483' AS DateTime), N'[{"RefreshType":3,"RefresherId":"e285df34-acdc-4226-ae32-c0cb5cf388da","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1107]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1322, CAST(N'2020-01-12T17:23:17.637' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1323, CAST(N'2020-01-12T17:23:56.637' AS DateTime), N'[{"RefreshType":0,"RefresherId":"1db08769-b104-4f8b-850e-169cac1df2ec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1324, CAST(N'2020-01-12T17:24:00.110' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1325, CAST(N'2020-01-12T17:28:57.263' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1061]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1326, CAST(N'2020-01-12T17:28:57.487' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1061]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1327, CAST(N'2020-01-12T17:28:57.650' AS DateTime), N'[{"RefreshType":3,"RefresherId":"dd12b6a0-14b9-46e8-8800-c154f74047c8","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":"[1061]","JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1328, CAST(N'2020-01-12T17:35:20.323' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1109,\"Key\":\"b7e2c071-ba18-4cad-b451-64f7988008c8\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1329, CAST(N'2020-01-12T17:35:48.217' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1110,\"Key\":\"62e54438-53f3-4fff-92a0-3c772dff734d\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1330, CAST(N'2020-01-12T17:35:50.483' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1331, CAST(N'2020-01-12T17:36:23.907' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1332, CAST(N'2020-01-12T17:36:25.047' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1333, CAST(N'2020-01-12T17:37:19.907' AS DateTime), N'[{"RefreshType":4,"RefresherId":"35b16c25-a17e-45d7-bc8f-edab1dcc28d2","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1111,\"Key\":\"f2521db3-8982-4f21-8956-d13f9812d760\",\"Removed\":false}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1334, CAST(N'2020-01-12T17:37:31.140' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1335, CAST(N'2020-01-12T17:37:32.137' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1336, CAST(N'2020-01-12T17:39:08.460' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1337, CAST(N'2020-01-12T17:40:40.977' AS DateTime), N'[{"RefreshType":4,"RefresherId":"6902e22c-9c10-483c-91f3-66b7cae9e2f5","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"ItemType\":\"IContentType\",\"Id\":1062,\"ChangeTypes\":4}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1338, CAST(N'2020-01-12T17:40:41.927' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1339, CAST(N'2020-01-12T17:41:25.387' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D9] 9A2C7F7F5ED9400981EE8A57F6A8479F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1340, CAST(N'2020-01-12T17:44:15.280' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1341, CAST(N'2020-01-12T17:44:30.910' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1342, CAST(N'2020-01-12T17:44:33.480' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1343, CAST(N'2020-01-12T17:44:59.433' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1344, CAST(N'2020-01-12T17:46:10.063' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1345, CAST(N'2020-01-12T17:46:26.230' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1346, CAST(N'2020-01-12T17:47:54.877' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1347, CAST(N'2020-01-12T17:47:57.380' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1067,\"Key\":\"45c93ac5-6cd7-4264-b790-2e74025914e8\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1348, CAST(N'2020-01-12T17:48:10.823' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"Key\":null,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"b29286dd-2d40-4ddb-b325-681226589fec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"Key\":null,\"ChangeTypes\":1}]"},{"RefreshType":4,"RefresherId":"11290a79-4b57-4c99-ad72-7748a3cf38af","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":0,\"ChangeType\":1}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 3)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1349, CAST(N'2020-01-12T17:49:31.307' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1350, CAST(N'2020-01-12T17:49:40.020' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1066,\"Key\":\"650f7d5c-1240-4b5d-aa40-87d23c649242\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1351, CAST(N'2020-01-12T17:50:56.480' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1053,\"Key\":\"a51dec6a-eb3e-48e2-95eb-e546f6a7d79f\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1352, CAST(N'2020-01-12T17:54:54.557' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1353, CAST(N'2020-01-12T17:54:56.837' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1085,\"Key\":\"e10653a6-d959-48d5-899b-044d9701ef4e\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1354, CAST(N'2020-01-12T17:55:57.703' AS DateTime), N'[{"RefreshType":0,"RefresherId":"1db08769-b104-4f8b-850e-169cac1df2ec","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":null}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
INSERT [dbo].[umbracoCacheInstruction] ([id], [utcStamp], [jsonInstruction], [originated], [instructionCount]) VALUES (1355, CAST(N'2020-01-12T17:58:27.253' AS DateTime), N'[{"RefreshType":4,"RefresherId":"900a4fbe-df3c-41e6-bb77-be896cd158ea","GuidId":"00000000-0000-0000-0000-000000000000","IntId":0,"JsonIds":null,"JsonIdCount":1,"JsonPayload":"[{\"Id\":1106,\"Key\":\"fc50f369-fc4f-4d00-a14e-c31a509906f1\",\"ChangeTypes\":2}]"}]', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT [P10912/D12] E1B081BFD3D544088F3CAEDF302D8E5F', 1)
SET IDENTITY_INSERT [dbo].[umbracoCacheInstruction] OFF
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1053, 1052)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1056, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1065, 1060)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1066, 1062)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1067, 1064)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1076, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1077, 1032)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1080, 1079)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1085, 1084)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1086, 1084)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1087, 1084)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1088, 1084)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1092, 1091)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1093, 1091)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1098, 1097)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1099, 1095)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1104, 1103)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1105, 1084)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1106, 1084)
INSERT [dbo].[umbracoContent] ([nodeId], [contentTypeId]) VALUES (1107, 1044)
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
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1051, 1067, CAST(N'2020-01-12T19:39:30.767' AS DateTime), -1, 0, N'Business')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1052, 1080, CAST(N'2020-01-11T16:08:54.003' AS DateTime), -1, 0, N'FaQs')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1053, 1080, CAST(N'2020-01-12T18:48:44.230' AS DateTime), -1, 0, N'FaQs')
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
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1068, 1053, CAST(N'2020-01-12T19:13:04.240' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1069, 1066, CAST(N'2020-01-11T17:20:45.903' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1070, 1066, CAST(N'2020-01-12T18:39:39.963' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1071, 1085, CAST(N'2020-01-12T18:25:39.657' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1072, 1085, CAST(N'2020-01-12T18:25:56.647' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1073, 1085, CAST(N'2020-01-12T18:26:01.150' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1074, 1085, CAST(N'2020-01-12T18:26:11.543' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1075, 1085, CAST(N'2020-01-12T18:26:34.323' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1076, 1085, CAST(N'2020-01-12T18:27:50.510' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1077, 1085, CAST(N'2020-01-12T20:54:54.463' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1078, 1086, CAST(N'2020-01-12T18:31:06.207' AS DateTime), -1, 0, N'600 Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1079, 1086, CAST(N'2020-01-12T18:42:31.690' AS DateTime), -1, 0, N'600 Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1080, 1087, CAST(N'2020-01-12T18:31:59.157' AS DateTime), -1, 0, N'900 Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1081, 1088, CAST(N'2020-01-12T18:32:19.193' AS DateTime), -1, 0, N'1000 Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1082, 1087, CAST(N'2020-01-12T19:20:24.573' AS DateTime), -1, 0, N'900 Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1083, 1088, CAST(N'2020-01-12T18:32:19.193' AS DateTime), -1, 1, N'1000 Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1084, 1066, CAST(N'2020-01-12T18:41:34.803' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1085, 1066, CAST(N'2020-01-12T20:36:24.963' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1086, 1086, CAST(N'2020-01-12T18:42:36.230' AS DateTime), -1, 0, N'600 Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1087, 1086, CAST(N'2020-01-12T18:42:51.213' AS DateTime), -1, 1, N'600 Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1088, 1092, CAST(N'2020-01-12T18:47:55.837' AS DateTime), -1, 0, N'Q1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1089, 1092, CAST(N'2020-01-12T18:47:55.837' AS DateTime), -1, 1, N'Q1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1090, 1093, CAST(N'2020-01-12T18:48:08.347' AS DateTime), -1, 0, N'Q2')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1091, 1093, CAST(N'2020-01-12T18:48:10.923' AS DateTime), -1, 0, N'Q2')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1092, 1093, CAST(N'2020-01-12T18:48:10.923' AS DateTime), -1, 1, N'Q2')
GO
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1093, 1080, CAST(N'2020-01-12T18:48:44.230' AS DateTime), -1, 1, N'FaQs')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1094, 1098, CAST(N'2020-01-12T18:50:48.163' AS DateTime), -1, 0, N'List of news')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1095, 1098, CAST(N'2020-01-12T18:54:13.160' AS DateTime), -1, 0, N'List of news')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1096, 1099, CAST(N'2020-01-12T18:51:05.017' AS DateTime), -1, 0, N'News1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1097, 1099, CAST(N'2020-01-12T18:53:32.800' AS DateTime), -1, 0, N'News1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1098, 1099, CAST(N'2020-01-12T18:53:40.400' AS DateTime), -1, 0, N'News1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1099, 1099, CAST(N'2020-01-12T18:53:40.400' AS DateTime), -1, 1, N'News1')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1100, 1098, CAST(N'2020-01-12T18:54:50.107' AS DateTime), -1, 0, N'List of news')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1101, 1098, CAST(N'2020-01-12T18:54:50.107' AS DateTime), -1, 1, N'List of news')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1102, 1053, CAST(N'2020-01-12T19:13:38.853' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1103, 1053, CAST(N'2020-01-12T19:27:14.290' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1104, 1087, CAST(N'2020-01-12T19:20:24.573' AS DateTime), -1, 1, N'900 Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1105, 1053, CAST(N'2020-01-12T20:50:56.353' AS DateTime), -1, 0, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1106, 1067, CAST(N'2020-01-12T20:23:17.543' AS DateTime), -1, 0, N'Business')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1107, 1104, CAST(N'2020-01-12T19:49:00.000' AS DateTime), -1, 0, N'Main Config')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1108, 1104, CAST(N'2020-01-12T19:49:24.903' AS DateTime), -1, 0, N'Main Config')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1109, 1104, CAST(N'2020-01-12T19:58:30.140' AS DateTime), -1, 0, N'Main Config')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1110, 1104, CAST(N'2020-01-12T20:00:14.993' AS DateTime), -1, 0, N'Main Config')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1111, 1104, CAST(N'2020-01-12T20:00:14.993' AS DateTime), -1, 1, N'Main Config')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1112, 1105, CAST(N'2020-01-12T20:16:03.840' AS DateTime), -1, 1, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1113, 1106, CAST(N'2020-01-12T20:17:04.157' AS DateTime), -1, 0, N'300Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1114, 1106, CAST(N'2020-01-12T20:58:27.140' AS DateTime), -1, 0, N'300Giga (1)')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1115, 1107, CAST(N'2020-01-12T20:29:57.000' AS DateTime), NULL, 1, N'ibrahim nada')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1116, 1067, CAST(N'2020-01-12T20:24:00.047' AS DateTime), -1, 0, N'Business')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1117, 1067, CAST(N'2020-01-12T20:47:54.810' AS DateTime), -1, 0, N'Business111')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1118, 1066, CAST(N'2020-01-12T20:37:32.060' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1119, 1066, CAST(N'2020-01-12T20:39:08.383' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1120, 1066, CAST(N'2020-01-12T20:40:41.870' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1121, 1066, CAST(N'2020-01-12T20:41:25.300' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1122, 1066, CAST(N'2020-01-12T20:44:14.453' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1123, 1066, CAST(N'2020-01-12T20:44:30.870' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1124, 1066, CAST(N'2020-01-12T20:44:33.443' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1125, 1066, CAST(N'2020-01-12T20:44:59.353' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1126, 1066, CAST(N'2020-01-12T20:46:09.977' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1127, 1066, CAST(N'2020-01-12T20:46:26.163' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1128, 1066, CAST(N'2020-01-12T20:49:31.233' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1129, 1067, CAST(N'2020-01-12T20:47:57.310' AS DateTime), -1, 0, N'Business111')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1130, 1067, CAST(N'2020-01-12T20:47:57.310' AS DateTime), -1, 1, N'Business111')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1131, 1066, CAST(N'2020-01-12T20:49:39.927' AS DateTime), -1, 0, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1132, 1066, CAST(N'2020-01-12T20:49:39.927' AS DateTime), -1, 1, N'Home')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1133, 1053, CAST(N'2020-01-12T20:50:56.353' AS DateTime), -1, 1, N'Umniah')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1134, 1085, CAST(N'2020-01-12T20:54:56.793' AS DateTime), -1, 0, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1135, 1085, CAST(N'2020-01-12T20:54:56.793' AS DateTime), -1, 1, N'300Giga')
INSERT [dbo].[umbracoContentVersion] ([id], [nodeId], [versionDate], [userId], [current], [text]) VALUES (1136, 1106, CAST(N'2020-01-12T20:58:27.140' AS DateTime), -1, 1, N'300Giga (1)')
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
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (87, 1066, 1, N'Umniah', CAST(N'2020-01-11T17:15:12.277' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (88, 1066, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (90, 1071, 1, N'300Giga', CAST(N'2020-01-12T18:25:39.657' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (93, 1072, 1, N'300Giga', CAST(N'2020-01-12T18:25:39.657' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (94, 1072, 2, N'300 جيحا', CAST(N'2020-01-12T18:25:56.647' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (97, 1073, 1, N'300Giga', CAST(N'2020-01-12T18:25:39.657' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (98, 1073, 2, N'300 جيحا', CAST(N'2020-01-12T18:26:01.150' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (101, 1074, 1, N'300Giga', CAST(N'2020-01-12T18:25:39.657' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (102, 1074, 2, N'300 جيحا', CAST(N'2020-01-12T18:26:11.543' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (105, 1075, 1, N'300Giga', CAST(N'2020-01-12T18:26:34.323' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (106, 1075, 2, N'300 جيحا', CAST(N'2020-01-12T18:26:34.323' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (109, 1076, 1, N'300Giga', CAST(N'2020-01-12T18:26:34.323' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (110, 1076, 2, N'300 جيحا', CAST(N'2020-01-12T18:27:50.510' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (115, 1078, 1, N'600 Giga', CAST(N'2020-01-12T18:31:06.207' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (116, 1078, 2, N'600 جيحا', CAST(N'2020-01-12T18:31:06.207' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (123, 1080, 1, N'900 Giga (1)', CAST(N'2020-01-12T18:31:59.157' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (124, 1080, 2, N'900 جيحا (1)', CAST(N'2020-01-12T18:31:59.157' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (125, 1083, 1, N'1000 Giga (1)', CAST(N'2020-01-12T18:32:19.193' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (126, 1083, 2, N'1000 جيحا (1)', CAST(N'2020-01-12T18:32:19.193' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (127, 1081, 1, N'1000 Giga (1)', CAST(N'2020-01-12T18:32:19.193' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (128, 1081, 2, N'1000 جيحا (1)', CAST(N'2020-01-12T18:32:19.193' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (131, 1079, 2, N'600 جيحا', CAST(N'2020-01-12T18:31:06.207' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (134, 1086, 2, N'600 جيحا', CAST(N'2020-01-12T18:31:06.207' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (135, 1086, 1, N'600 Giga', CAST(N'2020-01-12T18:42:36.230' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (136, 1087, 1, N'600 Giga', CAST(N'2020-01-12T18:42:36.230' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (137, 1087, 2, N'600 جيحا', CAST(N'2020-01-12T18:31:06.207' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (140, 1068, 1, N'Umniah', CAST(N'2020-01-12T19:13:04.240' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (141, 1068, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (144, 1102, 1, N'Umniah', CAST(N'2020-01-12T19:13:38.853' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (145, 1102, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (152, 1104, 1, N'900 Giga (1)', CAST(N'2020-01-12T19:20:24.573' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (153, 1104, 2, N'900 جيحا (1)', CAST(N'2020-01-12T18:31:59.157' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (154, 1082, 1, N'900 Giga (1)', CAST(N'2020-01-12T19:20:24.573' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (155, 1082, 2, N'900 جيحا (1)', CAST(N'2020-01-12T18:31:59.157' AS DateTime), NULL)
GO
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (158, 1103, 1, N'Umniah', CAST(N'2020-01-12T19:27:14.290' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (159, 1103, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (160, 1112, 1, N'300Giga', CAST(N'2020-01-12T20:16:03.833' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (161, 1112, 2, N'300 جيحا', CAST(N'2020-01-12T20:16:03.833' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (164, 1113, 1, N'300Giga (1)', CAST(N'2020-01-12T20:17:04.157' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (165, 1113, 2, N'300 جيحا (1)', CAST(N'2020-01-12T20:17:04.157' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (166, 1133, 1, N'Umniah', CAST(N'2020-01-12T20:50:56.353' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (167, 1133, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (168, 1105, 1, N'Umniah', CAST(N'2020-01-12T20:50:56.353' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (169, 1105, 2, N'Main', CAST(N'2020-01-11T16:46:44.477' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (172, 1077, 1, N'300Giga', CAST(N'2020-01-12T20:54:54.463' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (173, 1077, 2, N'300 جيحا', CAST(N'2020-01-12T18:27:50.510' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (174, 1135, 1, N'300Giga', CAST(N'2020-01-12T20:54:56.793' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (175, 1135, 2, N'300 جيحا', CAST(N'2020-01-12T18:27:50.510' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (176, 1134, 1, N'300Giga', CAST(N'2020-01-12T20:54:56.793' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (177, 1134, 2, N'300 جيحا', CAST(N'2020-01-12T18:27:50.510' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (178, 1136, 1, N'300Giga (1)', CAST(N'2020-01-12T20:58:27.140' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (179, 1136, 2, N'300 جيحا (1)', CAST(N'2020-01-12T20:17:04.157' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (180, 1114, 1, N'300Giga (1)', CAST(N'2020-01-12T20:58:27.140' AS DateTime), NULL)
INSERT [dbo].[umbracoContentVersionCultureVariation] ([id], [versionId], [languageId], [name], [date], [availableUserId]) VALUES (181, 1114, 2, N'300 جيحا (1)', CAST(N'2020-01-12T20:17:04.157' AS DateTime), NULL)
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
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1046, N'Umbraco.ContentPicker', N'Nvarchar', N'{"showOpenButton":false,"startNodeId":"umb://document/650f7d5c12404b5daa4087d23c649242","ignoreUserStartNodes":false}')
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
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1089, N'Umbraco.MultiNodeTreePicker', N'Ntext', N'{"startNode":{"type":"content","query":null,"id":null},"filter":"offers","minNumber":0,"maxNumber":0,"showOpenButton":false,"ignoreUserStartNodes":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1100, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":10,"orderBy":"sortOrder","orderDirection":"asc","includeProperties":[{"alias":"sortOrder","header":"Sort order","nameTemplate":null,"isSystem":1},{"alias":"owner","header":"Created by","nameTemplate":null,"isSystem":1},{"alias":"desc","header":"Desc","nameTemplate":null,"isSystem":0}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"icon":"icon-list","tabName":null,"showContentFirst":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1102, N'fontAwesomeIconFinder', N'Nvarchar', N'{}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1109, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":10,"orderBy":"SortOrder","orderDirection":"asc","includeProperties":[{"alias":"sortOrder","header":"Sort order","nameTemplate":null,"isSystem":1},{"alias":"updateDate","header":"Last edited","nameTemplate":null,"isSystem":1},{"alias":"owner","header":"Created by","nameTemplate":null,"isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"icon":"icon-list","tabName":null,"showContentFirst":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1110, N'Umbraco.ListView', N'Nvarchar', N'{"pageSize":10,"orderBy":"SortOrder","orderDirection":"asc","includeProperties":[{"alias":"sortOrder","header":"Sort order","nameTemplate":null,"isSystem":1},{"alias":"updateDate","header":"Last edited","nameTemplate":null,"isSystem":1},{"alias":"owner","header":"Created by","nameTemplate":null,"isSystem":1}],"layouts":[{"name":"List","path":"views/propertyeditors/listview/layouts/list/list.html","icon":"icon-list","isSystem":1,"selected":true},{"name":"grid","path":"views/propertyeditors/listview/layouts/grid/grid.html","icon":"icon-thumbnails-small","isSystem":1,"selected":true}],"bulkActionPermissions":{"allowBulkPublish":true,"allowBulkUnpublish":true,"allowBulkCopy":true,"allowBulkMove":true,"allowBulkDelete":true},"icon":"icon-list","tabName":null,"showContentFirst":false}')
INSERT [dbo].[umbracoDataType] ([nodeId], [propertyEditorAlias], [dbType], [config]) VALUES (1111, N'Umbraco.Grid', N'Ntext', N'{"items":{"styles":[{"label":"Set a background image","description":"Set a row background","key":"background-image","view":"imagepicker","modifier":"url({0})"}],"config":[{"label":"Class","description":"Set a css class","key":"class","view":"textstring"}],"columns":12,"templates":[{"name":"1 column layout","sections":[{"grid":12}]},{"name":"2 column layout","sections":[{"grid":4},{"grid":8}]}],"layouts":[{"label":"Headline","name":"Headline","areas":[{"grid":12,"editors":["headline"]}]},{"label":"Article","name":"Article","areas":[{"grid":4},{"grid":8}]}]},"rte":{"toolbar":["ace","styleselect","bold","italic","alignleft","aligncenter","alignright","bullist","numlist","outdent","indent","link","umbmediapicker","umbmacro","umbembeddialog"],"stylesheets":[],"maxImageSize":500,"mode":"classic"},"ignoreUserStartNodes":false,"mediaParentId":null}')
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1053, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1065, 0, 1)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1066, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1067, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1080, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1085, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1086, 0, 1)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1087, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1088, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1092, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1093, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1098, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1099, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1104, 1, 0)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1105, 0, 1)
INSERT [dbo].[umbracoDocument] ([nodeId], [published], [edited]) VALUES (1106, 1, 0)
SET IDENTITY_INSERT [dbo].[umbracoDocumentCultureVariation] ON 

INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (43, 1088, 1, 0, 1, 1, N'1000 Giga (1)')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (44, 1088, 2, 0, 1, 1, N'1000 جيحا (1)')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (49, 1086, 1, 0, 1, 1, N'600 Giga')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (50, 1086, 2, 0, 1, 1, N'600 جيحا')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (61, 1087, 1, 0, 1, 1, N'900 Giga (1)')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (62, 1087, 2, 0, 1, 1, N'900 جيحا (1)')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (65, 1105, 1, 1, 1, 0, N'300Giga')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (66, 1105, 2, 1, 1, 0, N'300 جيحا')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (69, 1053, 1, 0, 1, 1, N'Umniah')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (70, 1053, 2, 0, 1, 1, N'Main')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (73, 1085, 1, 0, 1, 1, N'300Giga')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (74, 1085, 2, 0, 1, 1, N'300 جيحا')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (75, 1106, 1, 0, 1, 1, N'300Giga (1)')
INSERT [dbo].[umbracoDocumentCultureVariation] ([id], [nodeId], [languageId], [edited], [available], [published], [name]) VALUES (76, 1106, 2, 0, 1, 1, N'300 جيحا (1)')
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
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1038, 1063, 0)
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
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1052, 1078, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1053, 1078, 1)
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
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1066, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1067, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1068, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1069, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1070, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1071, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1072, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1073, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1074, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1075, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1076, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1077, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1078, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1079, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1080, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1081, 1083, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1082, 1083, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1083, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1084, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1085, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1086, 1083, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1087, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1088, 1090, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1089, 1090, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1090, 1090, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1091, 1090, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1092, 1090, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1093, 1078, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1094, 1096, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1095, 1096, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1096, 1094, 0)
GO
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1097, 1094, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1098, 1094, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1099, 1094, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1100, 1096, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1101, 1096, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1102, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1103, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1104, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1105, 1051, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1106, 1063, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1107, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1108, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1109, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1110, NULL, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1111, NULL, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1112, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1113, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1114, 1083, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1116, 1063, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1117, 1063, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1118, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1119, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1120, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1121, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1122, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1123, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1124, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1125, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1126, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1127, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1128, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1129, 1063, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1130, 1063, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1131, 1061, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1132, 1061, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1133, 1051, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1134, 1083, 1)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1135, 1083, 0)
INSERT [dbo].[umbracoDocumentVersion] ([id], [templateId], [published]) VALUES (1136, 1083, 0)
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
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-333, -1, N'ContentTree')
INSERT [dbo].[umbracoLock] ([id], [value], [name]) VALUES (-332, -1, N'ContentTypes')
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
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1161, -1, 1083, N'Template', CAST(N'2020-01-12T18:23:32.770' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1162, -1, 1084, N'DocumentType', CAST(N'2020-01-12T18:23:32.823' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1163, -1, 1084, N'DocumentType', CAST(N'2020-01-12T18:24:19.087' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1164, -1, 1084, N'DocumentType', CAST(N'2020-01-12T18:24:45.637' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1165, -1, 1084, N'DocumentType', CAST(N'2020-01-12T18:24:49.373' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1166, -1, 1084, N'DocumentType', CAST(N'2020-01-12T18:24:51.637' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1167, -1, 1062, N'DocumentType', CAST(N'2020-01-12T18:25:06.417' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1168, -1, 1085, N'Document', CAST(N'2020-01-12T18:25:39.723' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1169, -1, 1085, N'Document', CAST(N'2020-01-12T18:25:56.670' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1170, -1, 1085, N'Document', CAST(N'2020-01-12T18:26:01.197' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1171, -1, 1085, N'Document', CAST(N'2020-01-12T18:26:11.597' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1172, -1, 1085, N'Document', CAST(N'2020-01-12T18:26:34.340' AS DateTime), N'PublishVariant', N'Published languages: English (United States), Arabic', N'English (United States), Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1173, -1, 1085, N'Document', CAST(N'2020-01-12T18:27:50.567' AS DateTime), N'PublishVariant', N'Published languages: Arabic', N'Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1174, -1, 1084, N'DocumentType', CAST(N'2020-01-12T18:30:19.583' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1175, -1, 1085, N'Document', CAST(N'2020-01-12T18:30:25.030' AS DateTime), N'Copy', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1176, -1, 1086, N'Document', CAST(N'2020-01-12T18:30:25.190' AS DateTime), N'Copy', N'Copied content with Id: ''1086'' related to original content with Id: ''1085''', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1177, -1, 1086, N'Document', CAST(N'2020-01-12T18:31:06.257' AS DateTime), N'PublishVariant', N'Published languages: English (United States), Arabic', N'English (United States), Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1178, -1, 1085, N'Document', CAST(N'2020-01-12T18:31:31.733' AS DateTime), N'Copy', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1179, -1, 1087, N'Document', CAST(N'2020-01-12T18:31:31.783' AS DateTime), N'Copy', N'Copied content with Id: ''1087'' related to original content with Id: ''1085''', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1180, -1, 1086, N'Document', CAST(N'2020-01-12T18:31:39.900' AS DateTime), N'Copy', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1181, -1, 1088, N'Document', CAST(N'2020-01-12T18:31:39.953' AS DateTime), N'Copy', N'Copied content with Id: ''1088'' related to original content with Id: ''1086''', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1182, -1, 1087, N'Document', CAST(N'2020-01-12T18:31:59.180' AS DateTime), N'PublishVariant', N'Published languages: English (United States), Arabic', N'English (United States), Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1183, -1, 1088, N'Document', CAST(N'2020-01-12T18:32:19.207' AS DateTime), N'PublishVariant', N'Published languages: English (United States), Arabic', N'English (United States), Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1184, -1, 1062, N'DocumentType', CAST(N'2020-01-12T18:34:01.087' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1185, -1, 1046, N'DataType', CAST(N'2020-01-12T18:34:48.290' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1186, -1, 1062, N'DocumentType', CAST(N'2020-01-12T18:34:51.293' AS DateTime), N'Save', NULL, NULL)
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1187, -1, 1089, N'DataType', CAST(N'2020-01-12T18:36:43.563' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1188, -1, 1089, N'DataType', CAST(N'2020-01-12T18:38:02.970' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1189, -1, 1062, N'DocumentType', CAST(N'2020-01-12T18:38:04.930' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1190, -1, 1066, N'Document', CAST(N'2020-01-12T18:39:39.987' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1191, -1, 1062, N'DocumentType', CAST(N'2020-01-12T18:41:25.430' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1192, -1, 1066, N'Document', CAST(N'2020-01-12T18:41:34.820' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1193, -1, 1086, N'Document', CAST(N'2020-01-12T18:42:31.743' AS DateTime), N'UnpublishVariant', N'Unpublished languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1194, -1, 1086, N'Document', CAST(N'2020-01-12T18:42:36.243' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1195, -1, 1086, N'Document', CAST(N'2020-01-12T18:42:51.227' AS DateTime), N'Unpublish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1196, -1, 1090, N'Template', CAST(N'2020-01-12T18:47:11.280' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1197, -1, 1091, N'DocumentType', CAST(N'2020-01-12T18:47:11.307' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1198, -1, 1079, N'DocumentType', CAST(N'2020-01-12T18:47:21.887' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1199, -1, 1092, N'Document', CAST(N'2020-01-12T18:47:55.883' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1200, -1, 1093, N'Document', CAST(N'2020-01-12T18:48:08.367' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1201, -1, 1093, N'Document', CAST(N'2020-01-12T18:48:10.933' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1202, -1, 1079, N'DocumentType', CAST(N'2020-01-12T18:48:42.997' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1203, -1, 1080, N'Document', CAST(N'2020-01-12T18:48:44.237' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1204, -1, 1094, N'Template', CAST(N'2020-01-12T18:50:08.543' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1205, -1, 1095, N'DocumentType', CAST(N'2020-01-12T18:50:08.563' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1206, -1, 1096, N'Template', CAST(N'2020-01-12T18:50:08.670' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1207, -1, 1097, N'DocumentType', CAST(N'2020-01-12T18:50:08.693' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1208, -1, 1095, N'DocumentType', CAST(N'2020-01-12T18:50:10.277' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1209, -1, 1052, N'DocumentType', CAST(N'2020-01-12T18:50:36.990' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1210, -1, 1098, N'Document', CAST(N'2020-01-12T18:50:48.177' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1211, -1, 1099, N'Document', CAST(N'2020-01-12T18:51:05.020' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1212, -1, 1100, N'DataType', CAST(N'2020-01-12T18:51:21.490' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1213, -1, 1095, N'DocumentType', CAST(N'2020-01-12T18:53:31.443' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1214, -1, 1099, N'Document', CAST(N'2020-01-12T18:53:32.810' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1215, -1, 1099, N'Document', CAST(N'2020-01-12T18:53:40.403' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1216, -1, 1100, N'DataType', CAST(N'2020-01-12T18:54:10.543' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1217, -1, 1097, N'DocumentType', CAST(N'2020-01-12T18:54:11.477' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1218, -1, 1098, N'Document', CAST(N'2020-01-12T18:54:13.163' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1219, -1, 1100, N'DataType', CAST(N'2020-01-12T18:54:48.053' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1220, -1, 1097, N'DocumentType', CAST(N'2020-01-12T18:54:49.040' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1221, -1, 1098, N'Document', CAST(N'2020-01-12T18:54:50.120' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1222, -1, -1, N'PartialView', CAST(N'2020-01-12T18:59:53.793' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1223, -1, -1, N'PartialView', CAST(N'2020-01-12T19:00:06.380' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1224, -1, -1, N'PartialView', CAST(N'2020-01-12T19:00:06.773' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1225, -1, -1, N'PartialView', CAST(N'2020-01-12T19:00:06.950' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1226, -1, -1, N'PartialView', CAST(N'2020-01-12T19:00:07.113' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1227, -1, -1, N'PartialView', CAST(N'2020-01-12T19:00:08.563' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1228, -1, 1051, N'Template', CAST(N'2020-01-12T19:01:31.317' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1229, -1, 1051, N'Template', CAST(N'2020-01-12T19:01:47.647' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1230, -1, -1, N'PartialView', CAST(N'2020-01-12T19:02:34.573' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1231, -1, -1, N'Macro', CAST(N'2020-01-12T19:04:09.413' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1232, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:05:25.877' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1233, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:05:26.620' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1234, -1, -1, N'Macro', CAST(N'2020-01-12T19:05:42.610' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1235, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:06:03.107' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1236, -1, 1063, N'Template', CAST(N'2020-01-12T19:06:37.447' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1237, -1, -1, N'Macro', CAST(N'2020-01-12T19:07:29.693' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1238, -1, 1063, N'Template', CAST(N'2020-01-12T19:07:40.143' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1239, -1, 1063, N'Template', CAST(N'2020-01-12T19:07:40.453' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1240, -1, 1063, N'Template', CAST(N'2020-01-12T19:07:57.063' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1241, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:08:10.317' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1242, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:08:45.973' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1243, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:08:54.900' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1244, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:08:55.100' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1245, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T19:08:55.227' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1246, -1, 1053, N'Document', CAST(N'2020-01-12T19:13:04.300' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1247, -1, -1, N'Macro', CAST(N'2020-01-12T19:13:17.940' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1248, -1, 1053, N'Document', CAST(N'2020-01-12T19:13:38.910' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1249, -1, -1, N'PartialView', CAST(N'2020-01-12T19:14:45.837' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1250, -1, -1, N'PartialView', CAST(N'2020-01-12T19:14:46.693' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1251, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:04.253' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1252, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:09.893' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1253, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:12.873' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1254, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:13.070' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1255, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:14.623' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1256, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:29.150' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1257, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:30.070' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1258, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:30.320' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1259, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:30.517' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1260, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:30.640' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1261, -1, 1051, N'Template', CAST(N'2020-01-12T19:15:40.803' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1262, -1, 1057, N'Template', CAST(N'2020-01-12T19:15:51.293' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1263, -1, 1057, N'Template', CAST(N'2020-01-12T19:15:51.537' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1264, -1, 1057, N'Template', CAST(N'2020-01-12T19:15:51.703' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1265, -1, 1057, N'Template', CAST(N'2020-01-12T19:15:52.347' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1266, -1, 1057, N'Template', CAST(N'2020-01-12T19:15:52.550' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1267, -1, 1057, N'Template', CAST(N'2020-01-12T19:15:52.790' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1268, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:10.680' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1269, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:11.210' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1270, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:11.393' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1271, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:11.643' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1272, -1, -1, N'PartialView', CAST(N'2020-01-12T19:16:17.120' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1273, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:30.607' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1274, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:30.847' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1275, -1, 1057, N'Template', CAST(N'2020-01-12T19:16:31.040' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1276, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:16.287' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1277, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:16.507' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1278, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:16.630' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1279, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:32.440' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1280, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:32.640' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1281, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:32.833' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1282, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:32.967' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1283, -1, -1, N'PartialView', CAST(N'2020-01-12T19:17:45.933' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1284, -1, 1063, N'Template', CAST(N'2020-01-12T19:19:11.183' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1285, -1, 1063, N'Template', CAST(N'2020-01-12T19:19:11.407' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1286, -1, 1063, N'Template', CAST(N'2020-01-12T19:19:11.600' AS DateTime), N'Save', NULL, NULL)
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1287, -1, 1090, N'Template', CAST(N'2020-01-12T19:19:33.207' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1288, -1, 1090, N'Template', CAST(N'2020-01-12T19:19:33.410' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1289, -1, 1090, N'Template', CAST(N'2020-01-12T19:19:33.603' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1290, -1, 1090, N'Template', CAST(N'2020-01-12T19:19:33.760' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1291, -1, 1087, N'Document', CAST(N'2020-01-12T19:20:03.083' AS DateTime), N'SaveVariant', N'Saved languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1292, -1, 1083, N'Template', CAST(N'2020-01-12T19:20:05.563' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1293, -1, 1087, N'Document', CAST(N'2020-01-12T19:20:15.117' AS DateTime), N'SaveVariant', N'Saved languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1294, -1, 1083, N'Template', CAST(N'2020-01-12T19:20:21.323' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1295, -1, 1087, N'Document', CAST(N'2020-01-12T19:20:22.647' AS DateTime), N'SaveVariant', N'Saved languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1296, -1, 1087, N'Document', CAST(N'2020-01-12T19:20:24.587' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1297, -1, 1101, N'Template', CAST(N'2020-01-12T19:20:54.120' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1298, -1, 1053, N'Document', CAST(N'2020-01-12T19:27:14.353' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1299, -1, -1, N'Package', CAST(N'2020-01-12T19:36:21.277' AS DateTime), N'PackagerInstall', N'Package files installed for package ''Font Awesome Links''.', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1300, -1, -1, N'DocumentType', CAST(N'2020-01-12T19:36:29.277' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1301, -1, -1, N'Package', CAST(N'2020-01-12T19:36:29.300' AS DateTime), N'PackagerInstall', N'Package data installed for package ''Font Awesome Links''.', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1302, -1, -1, N'Package', CAST(N'2020-01-12T19:38:17.373' AS DateTime), N'PackagerInstall', N'Package files installed for package ''FontAwesomeIconFinder''.', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1303, -1, -1, N'DocumentType', CAST(N'2020-01-12T19:38:22.317' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1304, -1, -1, N'Package', CAST(N'2020-01-12T19:38:22.340' AS DateTime), N'PackagerInstall', N'Package data installed for package ''FontAwesomeIconFinder''.', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1305, -1, 1102, N'DataType', CAST(N'2020-01-12T19:39:05.203' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1306, -1, 1064, N'DocumentType', CAST(N'2020-01-12T19:39:13.170' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1307, -1, 1067, N'Document', CAST(N'2020-01-12T19:39:30.807' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1308, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:46:49.267' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1309, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:47:13.337' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1310, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:48:14.577' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1311, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:48:23.597' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1312, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:48:45.830' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1313, -1, 1104, N'Document', CAST(N'2020-01-12T19:49:00.023' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1314, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:49:22.987' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1315, -1, 1104, N'Document', CAST(N'2020-01-12T19:49:24.917' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1316, -1, 1103, N'DocumentType', CAST(N'2020-01-12T19:49:55.880' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1317, -1, 1052, N'DocumentType', CAST(N'2020-01-12T19:50:00.427' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1318, -1, 1104, N'Document', CAST(N'2020-01-12T19:58:30.160' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1319, -1, 1103, N'DocumentType', CAST(N'2020-01-12T20:00:08.820' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1320, -1, 1104, N'Document', CAST(N'2020-01-12T20:00:13.920' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1321, -1, 1104, N'Document', CAST(N'2020-01-12T20:00:14.140' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1322, -1, 1104, N'Document', CAST(N'2020-01-12T20:00:14.323' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1323, -1, 1104, N'Document', CAST(N'2020-01-12T20:00:14.490' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1324, -1, 1104, N'Document', CAST(N'2020-01-12T20:00:15.010' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1325, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:07:54.910' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1326, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:07:55.143' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1327, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:07:55.387' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1328, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:07:55.527' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1329, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:08:16.060' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1330, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:08:16.460' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1331, -1, -1, N'PartialViewMacro', CAST(N'2020-01-12T20:08:16.663' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1332, -1, 1106, N'Document', CAST(N'2020-01-12T20:17:04.227' AS DateTime), N'PublishVariant', N'Published languages: English (United States), Arabic', N'English (United States), Arabic')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1333, -1, 1107, N'Member', CAST(N'2020-01-12T20:18:41.140' AS DateTime), N'New', N'Member ''ibra@gg.com'' was created with Id 1107', NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1334, NULL, 1107, N'Member', CAST(N'2020-01-12T20:18:41.180' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1335, NULL, 1107, N'Member', CAST(N'2020-01-12T20:18:41.210' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1336, NULL, 1107, N'Member', CAST(N'2020-01-12T20:18:45.537' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1337, -1, -1, N'PartialView', CAST(N'2020-01-12T20:19:28.383' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1338, -1, -1, N'PartialView', CAST(N'2020-01-12T20:19:29.537' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1339, -1, 1051, N'Template', CAST(N'2020-01-12T20:19:52.957' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1340, -1, 1051, N'Template', CAST(N'2020-01-12T20:19:55.880' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1341, -1, 1051, N'Template', CAST(N'2020-01-12T20:19:56.093' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1342, -1, 1051, N'Template', CAST(N'2020-01-12T20:19:56.293' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1343, NULL, 1107, N'Member', CAST(N'2020-01-12T20:20:22.743' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1344, NULL, 1107, N'Member', CAST(N'2020-01-12T20:20:22.757' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1345, -1, -1, N'PartialView', CAST(N'2020-01-12T20:20:55.263' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1346, -1, -1, N'PartialView', CAST(N'2020-01-12T20:20:56.667' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1347, -1, 1051, N'Template', CAST(N'2020-01-12T20:21:08.407' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1348, -1, 1051, N'Template', CAST(N'2020-01-12T20:21:14.723' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1349, -1, 1051, N'Template', CAST(N'2020-01-12T20:21:14.933' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1350, -1, 1051, N'Template', CAST(N'2020-01-12T20:21:15.140' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1351, NULL, 1107, N'Member', CAST(N'2020-01-12T20:21:36.437' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1352, NULL, 1107, N'Member', CAST(N'2020-01-12T20:21:36.447' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1353, NULL, 1107, N'Member', CAST(N'2020-01-12T20:22:47.440' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1354, -1, 1067, N'Document', CAST(N'2020-01-12T20:23:17.570' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1355, -1, 1067, N'Document', CAST(N'2020-01-12T20:24:00.067' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1356, NULL, 1107, N'Member', CAST(N'2020-01-12T20:24:51.330' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1357, NULL, 1107, N'Member', CAST(N'2020-01-12T20:24:51.337' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1358, NULL, 1107, N'Member', CAST(N'2020-01-12T20:25:12.940' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1359, NULL, 1107, N'Member', CAST(N'2020-01-12T20:25:12.947' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1360, -1, -1, N'PartialView', CAST(N'2020-01-12T20:27:18.340' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1361, -1, -1, N'PartialView', CAST(N'2020-01-12T20:27:18.597' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1362, -1, 1061, N'Template', CAST(N'2020-01-12T20:28:57.257' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1363, -1, 1061, N'Template', CAST(N'2020-01-12T20:28:57.483' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1364, -1, 1061, N'Template', CAST(N'2020-01-12T20:28:57.647' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1365, NULL, 1107, N'Member', CAST(N'2020-01-12T20:29:56.993' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1366, NULL, 1107, N'Member', CAST(N'2020-01-12T20:29:57.003' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1367, -1, 1109, N'DataType', CAST(N'2020-01-12T20:35:20.307' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1368, -1, 1110, N'DataType', CAST(N'2020-01-12T20:35:48.210' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1369, -1, 1062, N'DocumentType', CAST(N'2020-01-12T20:35:50.343' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1370, -1, 1062, N'DocumentType', CAST(N'2020-01-12T20:36:23.783' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1371, -1, 1066, N'Document', CAST(N'2020-01-12T20:36:24.987' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1372, -1, 1111, N'DataType', CAST(N'2020-01-12T20:37:19.897' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1373, -1, 1062, N'DocumentType', CAST(N'2020-01-12T20:37:31.013' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1374, -1, 1066, N'Document', CAST(N'2020-01-12T20:37:32.080' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1375, -1, 1066, N'Document', CAST(N'2020-01-12T20:39:08.410' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1376, -1, 1062, N'DocumentType', CAST(N'2020-01-12T20:40:40.873' AS DateTime), N'Save', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1377, -1, 1066, N'Document', CAST(N'2020-01-12T20:40:41.887' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1378, -1, 1066, N'Document', CAST(N'2020-01-12T20:41:25.323' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1379, -1, 1066, N'Document', CAST(N'2020-01-12T20:44:14.517' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1380, -1, 1066, N'Document', CAST(N'2020-01-12T20:44:30.877' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1381, -1, 1066, N'Document', CAST(N'2020-01-12T20:44:33.450' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1382, -1, 1066, N'Document', CAST(N'2020-01-12T20:44:59.377' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1383, -1, 1066, N'Document', CAST(N'2020-01-12T20:46:10.000' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1384, -1, 1066, N'Document', CAST(N'2020-01-12T20:46:26.183' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1385, -1, 1067, N'Document', CAST(N'2020-01-12T20:47:54.837' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1386, -1, 1067, N'Document', CAST(N'2020-01-12T20:47:57.330' AS DateTime), N'Publish', NULL, NULL)
GO
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1387, -1, 1066, N'Document', CAST(N'2020-01-12T20:49:31.257' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1388, -1, 1066, N'Document', CAST(N'2020-01-12T20:49:39.963' AS DateTime), N'Publish', NULL, NULL)
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1389, -1, 1053, N'Document', CAST(N'2020-01-12T20:50:56.420' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1390, -1, 1085, N'Document', CAST(N'2020-01-12T20:54:54.517' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1391, -1, 1085, N'Document', CAST(N'2020-01-12T20:54:56.803' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
INSERT [dbo].[umbracoLog] ([id], [userId], [NodeId], [entityType], [Datestamp], [logHeader], [logComment], [parameters]) VALUES (1392, -1, 1106, N'Document', CAST(N'2020-01-12T20:58:27.197' AS DateTime), N'PublishVariant', N'Published languages: English (United States)', N'English (United States)')
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
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1067, N'45c93ac5-6cd7-4264-b790-2e74025914e8', 1053, 2, N'-1,1053,1067', 2, 0, -1, N'Business111', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-11T15:27:51.057' AS DateTime))
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
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1083, N'e39c2b7d-cbb5-4eed-b9cc-aeddd059ab5a', -1, 1, N'-1,1083', 0, 0, NULL, N'Offers', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-12T18:23:32.740' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1084, N'568ddff0-12d4-4878-aa1b-bfa51c073237', -1, 1, N'-1,1084', 6, 0, -1, N'Offers', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-12T18:23:32.797' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1085, N'e10653a6-d959-48d5-899b-044d9701ef4e', 1066, 3, N'-1,1053,1066,1085', 0, 0, -1, N'300Giga', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:25:39.657' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1086, N'100b2e49-96ce-4f4d-8680-b1d4ea7ccc22', 1066, 3, N'-1,1053,1066,1086', 1, 0, -1, N'600 Giga', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:30:24.933' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1087, N'15a0de14-889c-4497-93a0-3e421e3b701c', 1066, 3, N'-1,1053,1066,1087', 2, 0, -1, N'900 Giga (1)', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:31:31.667' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1088, N'a84a756e-3526-4cda-8520-9b6d5477230f', 1066, 3, N'-1,1053,1066,1088', 3, 0, -1, N'1000 Giga (1)', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:31:39.833' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1089, N'1539f612-1682-46f8-911f-cae8d64e8a6e', -1, 1, N'-1,1089', 36, 0, -1, N'Home - Newest Offers - Multinode Treepicker', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-12T18:36:43.547' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1090, N'd75ff4aa-bb22-431b-9e84-449072d6fe86', -1, 1, N'-1,1090', 0, 0, NULL, N'Faq', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-12T18:47:11.263' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1091, N'9be37c81-a6ad-433a-8dd6-df68ba714826', -1, 1, N'-1,1091', 7, 0, -1, N'Faq', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-12T18:47:11.287' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1092, N'5f09573a-bc9d-45d0-beba-08b139ad2127', 1080, 3, N'-1,1053,1080,1092', 0, 0, -1, N'Q1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:47:55.837' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1093, N'e4d0c442-3108-447f-830a-e53bc5cee698', 1080, 3, N'-1,1053,1080,1093', 1, 0, -1, N'Q2', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:48:08.347' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1094, N'9afcc2cc-7705-429f-b3ff-d8f4b3ae5917', -1, 1, N'-1,1094', 0, 0, NULL, N'News', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-12T18:50:08.530' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1095, N'446cc734-9b43-4087-abb7-b37a85d47bf5', -1, 1, N'-1,1095', 8, 0, -1, N'News', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-12T18:50:08.550' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1096, N'6dd4b925-769a-459a-8646-f9143c5006c2', -1, 1, N'-1,1096', 0, 0, NULL, N'List Of News', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-12T18:50:08.657' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1097, N'ccecbed6-37c3-4251-9515-7db37ef5ceef', -1, 1, N'-1,1097', 9, 0, -1, N'List Of News', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-12T18:50:08.677' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1098, N'297f06ad-21ac-45d9-bdfb-0ee8debe1ed9', 1053, 2, N'-1,1053,1098', 4, 0, -1, N'List of news', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:50:48.163' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1099, N'2412d648-87a9-42da-bf25-b0bc946db082', 1098, 3, N'-1,1053,1098,1099', 0, 0, -1, N'News1', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T18:51:05.017' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1100, N'b2cc36a8-5e53-44eb-bdcd-23f2ecf762fe', -1, 1, N'-1,1100', 37, 0, -1, N'List View - listOfNews', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-12T18:51:21.477' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1101, N'00148aad-0c3c-440d-8a24-1c51050b401f', 1057, 1, N'-1,1057,1101', 0, 0, NULL, N'Child', N'6fbde604-4178-42ce-a10b-8a2600a2f07d', CAST(N'2020-01-12T19:20:54.100' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1102, N'e73dbafd-d1f6-49b6-bc97-2eff8dc33bb8', -1, 1, N'-1,1102', 38, 0, -1, N'Business - Font Awesome Icon Finder', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-12T19:39:05.173' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1103, N'8ef4381e-4492-4f49-9b14-665b5d111136', -1, 1, N'-1,1103', 10, 0, -1, N'Config', N'a2cb7800-f571-4787-9638-bc48539a0efb', CAST(N'2020-01-12T19:46:49.253' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1104, N'e685f2a1-86b8-47f1-8a77-debec6af0091', -1, 1, N'-1,1104', 1, 0, -1, N'Main Config', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T19:49:00.000' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1105, N'23598e07-6d39-41b6-acd1-0ab30d1ba16c', -1, 1, N'-1,1105', 0, 0, -1, N'300Giga', N'6ebef410-03aa-48cf-a792-e1c1cb087aca', CAST(N'2020-01-12T20:16:03.840' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1106, N'fc50f369-fc4f-4d00-a14e-c31a509906f1', 1066, 3, N'-1,1053,1066,1106', 0, 0, -1, N'300Giga (1)', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', CAST(N'2020-01-12T20:17:04.157' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1107, N'f4777a50-db58-41fc-8ca1-9091918d3ae5', -1, 1, N'-1,1107', 1, 0, -1, N'ibrahim nada', N'39eb0f98-b348-42a1-8662-e7eb18487560', CAST(N'2020-01-12T20:18:41.120' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1108, N'7448ca22-b604-4ffe-adcd-b1dc1c6dda09', -1, 0, N'-1,1108', 0, 0, NULL, N'BusinessGroup', N'366e63b9-880f-4e13-a61c-98069b029728', CAST(N'2020-01-12T20:22:37.917' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1109, N'b7e2c071-ba18-4cad-b451-64f7988008c8', -1, 1, N'-1,1109', 39, 0, -1, N'Home - List view', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-12T20:35:20.277' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1110, N'62e54438-53f3-4fff-92a0-3c772dff734d', -1, 1, N'-1,1110', 40, 0, -1, N'Home - ChildrenItems - List view', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-12T20:35:48.197' AS DateTime))
INSERT [dbo].[umbracoNode] ([id], [uniqueId], [parentId], [level], [path], [sortOrder], [trashed], [nodeUser], [text], [nodeObjectType], [createDate]) VALUES (1111, N'f2521db3-8982-4f21-8956-d13f9812d760', -1, 1, N'-1,1111', 41, 0, -1, N'Home - Grid layout', N'30a2a501-1978-4ddb-a57b-f7efed43ba3c', CAST(N'2020-01-12T20:37:19.880' AS DateTime))
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
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1277, 1048, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1279, 1052, 1047, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1281, 1046, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1283, 1046, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1285, 1046, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1287, 1046, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1289, 1046, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
GO
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
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1493, 1066, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte</p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1495, 1066, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1497, 1066, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1499, 1066, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1501, 1066, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1503, 1066, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1505, 1066, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1507, 1066, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1509, 1067, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1511, 1069, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1513, 1075, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1515, 1075, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1517, 1075, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1519, 1075, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1521, 1076, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1523, 1076, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1525, 1076, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1527, 1076, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1533, 1078, 1053, 1, NULL, NULL, NULL, NULL, N'600 Giga ', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1535, 1078, 1053, 2, NULL, NULL, NULL, NULL, N'600 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1537, 1078, 1052, 1, NULL, NULL, NULL, NULL, N'600 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1539, 1078, 1052, 2, NULL, NULL, NULL, NULL, N'600 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1549, 1080, 1053, 1, NULL, NULL, NULL, NULL, N'900 Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1551, 1080, 1053, 2, NULL, NULL, NULL, NULL, N'900 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1553, 1080, 1052, 1, NULL, NULL, NULL, NULL, N'900 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1555, 1080, 1052, 2, NULL, NULL, NULL, NULL, N'900 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1557, 1081, 1053, 1, NULL, NULL, NULL, NULL, N'1000 Giga ', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1558, 1083, 1053, 1, NULL, NULL, NULL, NULL, N'1000 Giga ', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1559, 1081, 1053, 2, NULL, NULL, NULL, NULL, N'1000 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1560, 1083, 1053, 2, NULL, NULL, NULL, NULL, N'1000 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1561, 1081, 1052, 1, NULL, NULL, NULL, NULL, N'1000 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1562, 1083, 1052, 1, NULL, NULL, NULL, NULL, N'1000 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1563, 1081, 1052, 2, NULL, NULL, NULL, NULL, N'1000 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1564, 1083, 1052, 2, NULL, NULL, NULL, NULL, N'1000 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1565, 1070, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1567, 1084, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1569, 1084, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1572, 1079, 1053, 2, NULL, NULL, NULL, NULL, N'600 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1575, 1079, 1052, 2, NULL, NULL, NULL, NULL, N'600 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1577, 1086, 1053, 1, NULL, NULL, NULL, NULL, N'600 Giga ', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1579, 1086, 1053, 2, NULL, NULL, NULL, NULL, N'600 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1581, 1086, 1052, 1, NULL, NULL, NULL, NULL, N'600 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1583, 1086, 1052, 2, NULL, NULL, NULL, NULL, N'600 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1585, 1087, 1053, 1, NULL, NULL, NULL, NULL, N'600 Giga ', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1586, 1087, 1053, 2, NULL, NULL, NULL, NULL, N'600 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1587, 1087, 1052, 1, NULL, NULL, NULL, NULL, N'600 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1588, 1087, 1052, 2, NULL, NULL, NULL, NULL, N'600 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1589, 1088, 1056, NULL, NULL, NULL, NULL, NULL, N'Q1', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1590, 1089, 1056, NULL, NULL, NULL, NULL, NULL, N'Q1', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1591, 1088, 1057, NULL, NULL, NULL, NULL, NULL, N'A1', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1592, 1089, 1057, NULL, NULL, NULL, NULL, NULL, N'A1', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1593, 1090, 1056, NULL, NULL, NULL, NULL, NULL, N'Q2', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1595, 1090, 1057, NULL, NULL, NULL, NULL, NULL, N'A2', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1597, 1091, 1056, NULL, NULL, NULL, NULL, NULL, N'Q2', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1598, 1092, 1056, NULL, NULL, NULL, NULL, NULL, N'Q2', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1599, 1091, 1057, NULL, NULL, NULL, NULL, NULL, N'A2', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1600, 1092, 1057, NULL, NULL, NULL, NULL, NULL, N'A2', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1601, 1053, 1047, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1602, 1093, 1047, NULL, NULL, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1603, 1098, 1058, NULL, NULL, NULL, NULL, NULL, N'test', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1604, 1099, 1058, NULL, NULL, NULL, NULL, NULL, N'test', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1605, 1068, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1607, 1068, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte <br /><br /><br /></p>')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1609, 1068, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1611, 1068, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1613, 1068, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1615, 1068, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1617, 1068, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1619, 1068, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1621, 1068, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1623, 1102, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1625, 1102, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte <br><br><br></p>
<p> </p>
<p> </p>
<?UMBRACO_MACRO macroAlias="GreetingMacro" name="Hello from RTE" />')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1627, 1102, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1629, 1102, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1631, 1102, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1633, 1102, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1635, 1102, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1637, 1102, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1639, 1102, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1653, 1082, 1053, 1, NULL, NULL, NULL, NULL, N'900 Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1654, 1104, 1053, 1, NULL, NULL, NULL, NULL, N'900 Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1655, 1082, 1053, 2, NULL, NULL, NULL, NULL, N'900 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1656, 1104, 1053, 2, NULL, NULL, NULL, NULL, N'900 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1657, 1082, 1052, 1, NULL, NULL, NULL, NULL, N'900 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1658, 1104, 1052, 1, NULL, NULL, NULL, NULL, N'900 Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1659, 1082, 1052, 2, NULL, NULL, NULL, NULL, N'900 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1660, 1104, 1052, 2, NULL, NULL, NULL, NULL, N'900 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1661, 1103, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1663, 1103, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte <br><br><br></p>
<p> </p>
<p> </p>
<?UMBRACO_MACRO macroAlias="GreetingMacro" name="Hello from RTE" />')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1665, 1103, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1667, 1103, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1669, 1103, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1671, 1103, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1673, 1103, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1675, 1103, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1677, 1103, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1679, 1051, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1681, 1051, 1059, NULL, NULL, NULL, NULL, NULL, N'fas fa-tablet-alt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1687, 1110, 1062, NULL, NULL, NULL, NULL, NULL, N'gg@wp.com', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1688, 1111, 1062, NULL, NULL, NULL, NULL, NULL, N'gg@wp.com', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1689, 1112, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1690, 1112, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
GO
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1691, 1112, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1692, 1112, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1693, 1113, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1695, 1113, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1697, 1113, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1699, 1113, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1728, 1106, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1730, 1106, 1059, NULL, NULL, NULL, NULL, NULL, N'fas fa-tablet-alt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1732, 1116, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1734, 1116, 1059, NULL, NULL, NULL, NULL, NULL, N'fas fa-tablet-alt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1751, 1115, 30, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1752, 1115, 33, NULL, NULL, NULL, NULL, CAST(N'2020-01-12T20:29:57.000' AS DateTime), NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1753, 1115, 34, NULL, NULL, NULL, NULL, CAST(N'2020-01-12T20:18:41.000' AS DateTime), NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1754, 1085, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1756, 1085, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1758, 1118, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1760, 1118, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1762, 1119, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1764, 1119, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1766, 1120, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1768, 1120, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1770, 1121, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1772, 1121, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1774, 1121, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null},{"name":"Headline","id":"6bbdab6a-b93c-47e2-bfba-24bca371ae02","areas":[{"grid":"12","controls":[{"value":{"constrain":true,"height":240,"width":360,"url":"https://youtu.be/oISwbSe1LHU","info":"","preview":"<iframe width=\"360\" height=\"203\" src=\"https://www.youtube.com/embed/oISwbSe1LHU?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"},"editor":{"alias":"embed","view":"embed"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1776, 1122, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1778, 1122, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1780, 1122, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null},{"name":"Headline","id":"362e29ee-4e41-7c56-c82c-8656571770bd","areas":[{"grid":"12","controls":[{"value":{"constrain":false,"height":240,"width":360,"url":"https://youtu.be/oISwbSe1LHU","info":"","preview":"<iframe width=\"360\" height=\"203\" src=\"https://www.youtube.com/embed/oISwbSe1LHU?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"},"editor":{"alias":"embed","view":"embed"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1782, 1123, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1784, 1123, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1786, 1123, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null},{"name":"Headline","id":"362e29ee-4e41-7c56-c82c-8656571770bd","areas":[{"grid":"12","controls":[{"value":{"constrain":true,"height":240,"width":360,"url":"https://youtu.be/oISwbSe1LHU","info":"","preview":"<iframe width=\"360\" height=\"203\" src=\"https://www.youtube.com/embed/oISwbSe1LHU?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"},"editor":{"alias":"embed","view":"embed"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1788, 1124, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1790, 1124, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1792, 1124, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null},{"name":"Headline","id":"362e29ee-4e41-7c56-c82c-8656571770bd","areas":[{"grid":"12","controls":[{"value":{"constrain":true,"height":240,"width":360,"url":"https://youtu.be/oISwbSe1LHU","info":"","preview":"<iframe width=\"360\" height=\"203\" src=\"https://www.youtube.com/embed/oISwbSe1LHU?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"},"editor":{"alias":"embed","view":"embed"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1794, 1125, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1796, 1125, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1798, 1125, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null},{"value":{"constrain":true,"height":600,"width":1040,"url":"https://youtu.be/oISwbSe1LHU","info":"","preview":"<iframe width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/oISwbSe1LHU?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>"},"editor":{"alias":"embed","view":"embed"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1800, 1126, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1802, 1126, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1804, 1126, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null},{"value":"Test test test","editor":{"alias":"quote","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1806, 1127, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1808, 1127, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1810, 1127, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null},{"value":{"id":1076,"udi":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","image":"/media/3xff5ms3/crash_test_dummy.png"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null},{"value":"Test test test","editor":{"alias":"quote","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1812, 1117, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1814, 1117, 1059, NULL, NULL, NULL, NULL, NULL, N'fas fa-tablet-alt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1816, 1129, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1817, 1130, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1818, 1129, 1059, NULL, NULL, NULL, NULL, NULL, N'fas fa-tablet-alt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1819, 1130, 1059, NULL, NULL, NULL, NULL, NULL, N'fas fa-tablet-alt', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1820, 1128, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1822, 1128, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1824, 1128, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null},{"value":{"id":1076,"udi":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","image":"/media/3xff5ms3/crash_test_dummy.png"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null},{"value":"Test test test","editor":{"alias":"quote","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1826, 1131, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1827, 1132, 1047, NULL, NULL, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1828, 1131, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1829, 1132, 1055, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://document/e10653a6d95948d5899b044d9701ef4e,umb://document/100b2e4996ce4f4d8680b1d4ea7ccc22')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1830, 1131, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null},{"value":{"id":1076,"udi":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","image":"/media/3xff5ms3/crash_test_dummy.png"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null},{"value":"Test test test","editor":{"alias":"quote","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1831, 1132, 1064, NULL, NULL, NULL, NULL, NULL, NULL, N'{"name":"1 column layout","sections":[{"grid":"12","rows":[{"name":"Article","id":"d4a10134-2bce-1592-c330-9f6fde2d1476","areas":[{"grid":"4","controls":[{"value":"test","editor":{"alias":"headline","view":"textstring"},"styles":null,"config":null},{"value":{"id":1076,"udi":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","image":"/media/3xff5ms3/crash_test_dummy.png"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null}],"styles":null,"config":null},{"grid":"8","controls":[{"value":{"focalPoint":{"left":0.16157205240174671,"top":0.79961183891314891},"id":1056,"udi":"umb://media/78ea18ddbae445dfb571e42b5200dc45","image":"/media/1mmou4he/maxresdefault.jpg"},"editor":{"alias":"media","view":"media"},"styles":null,"config":null},{"value":"Test test test","editor":{"alias":"quote","view":"textstring"},"styles":null,"config":null}],"styles":null,"config":null}],"styles":null,"config":null}]}]}')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1832, 1105, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1833, 1133, 37, NULL, NULL, NULL, NULL, NULL, N'Umniah Website from Umbraco8', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1834, 1105, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte <br><br><br></p>
<p> </p>
<p> </p>
<?UMBRACO_MACRO macroAlias="GreetingMacro" name="Hello from RTE" />')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1835, 1133, 38, NULL, NULL, NULL, NULL, NULL, NULL, N'<p>this is a <strong>body</strong> text from rte <br><br><br></p>
<p> </p>
<p> </p>
<?UMBRACO_MACRO macroAlias="GreetingMacro" name="Hello from RTE" />')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1836, 1105, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1837, 1133, 41, NULL, NULL, NULL, NULL, NULL, N'{
  "value": "df2513",
  "label": "df2513",
  "sortOrder": 2,
  "id": "3"
}', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1838, 1105, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1839, 1133, 1049, 1, NULL, NULL, NULL, NULL, N'English', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1840, 1105, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1841, 1133, 1049, 2, NULL, NULL, NULL, NULL, N'عربي', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1842, 1105, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/b24fcbeba75d4952bbbc93348cf9b197')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1843, 1133, 39, NULL, NULL, NULL, NULL, NULL, NULL, N'umb://media/b24fcbeba75d4952bbbc93348cf9b197')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1844, 1105, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1845, 1133, 1046, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"key":"b562a7f5-a5e0-42fc-b6ea-96cd95c2827e","name":"Item 1","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/b24fcbeba75d4952bbbc93348cf9b197","desc":"image one "},{"key":"fa66879f-622c-4250-85cc-1953852d1811","name":"Item 2","ncContentTypeAlias":"sliderItems","backGroundImage":"umb://media/66dc4efb8c4b45b687abe04076e1f0e1","desc":"image 2 "}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1846, 1105, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1847, 1133, 42, NULL, NULL, NULL, NULL, NULL, N'["pTagWithPadding"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1848, 1105, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1849, 1133, 43, NULL, NULL, NULL, NULL, NULL, N'["bluePTag"]', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1850, 1105, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1851, 1133, 1048, NULL, NULL, NULL, NULL, NULL, NULL, N'[{"name":"FaQs","target":"_blank","udi":"umb://document/98ef8208e80449c383270df3c947ab05"},{"name":"Umbraco","target":"","url":"Https://www.Google.com","queryString":"?q=umbraco"}]')
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1852, 1077, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1854, 1077, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1856, 1077, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1858, 1077, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1860, 1134, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1861, 1135, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1862, 1134, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1863, 1135, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1864, 1134, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1865, 1135, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1866, 1134, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1867, 1135, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1868, 1114, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1869, 1136, 1053, 1, NULL, NULL, NULL, NULL, N'300Giga', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1870, 1114, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1871, 1136, 1053, 2, NULL, NULL, NULL, NULL, N'300 جيحا', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1872, 1114, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1873, 1136, 1052, 1, NULL, NULL, NULL, NULL, N'300Giga from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1874, 1114, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
INSERT [dbo].[umbracoPropertyData] ([id], [versionId], [propertyTypeId], [languageId], [segment], [intValue], [decimalValue], [dateValue], [varcharValue], [textValue]) VALUES (1875, 1136, 1052, 2, NULL, NULL, NULL, NULL, N'300 جيحا from desc', NULL)
SET IDENTITY_INSERT [dbo].[umbracoPropertyData] OFF
SET IDENTITY_INSERT [dbo].[umbracoRelation] ON 

INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (1, 1085, 1086, 1, CAST(N'2020-01-12T18:30:25.130' AS DateTime), N'')
INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (2, 1085, 1087, 1, CAST(N'2020-01-12T18:31:31.783' AS DateTime), N'')
INSERT [dbo].[umbracoRelation] ([id], [parentId], [childId], [relType], [datetime], [comment]) VALUES (3, 1086, 1088, 1, CAST(N'2020-01-12T18:31:39.950' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[umbracoRelation] OFF
SET IDENTITY_INSERT [dbo].[umbracoRelationType] ON 

INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (1, N'4cbeb612-e689-3563-b755-bf3ede295433', 1, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Document On Copy', N'relateDocumentOnCopy')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (2, N'0cc3507c-66ab-3091-8913-3d998148e423', 0, N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'c66ba18e-eaf3-4cff-8a22-41b16d66a972', N'Relate Parent Document On Delete', N'relateParentDocumentOnDelete')
INSERT [dbo].[umbracoRelationType] ([id], [typeUniqueId], [dual], [parentObjectType], [childObjectType], [name], [alias]) VALUES (3, N'8307994f-faf2-3844-bab9-72d34514edf2', 0, N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'b796f64c-1f99-4ffb-b886-4bf4bc011a9c', N'Relate Parent Media Folder On Delete', N'relateParentMediaFolderOnDelete')
SET IDENTITY_INSERT [dbo].[umbracoRelationType] OFF
SET IDENTITY_INSERT [dbo].[umbracoServer] ON 

INSERT [dbo].[umbracoServer] ([id], [address], [computerName], [registeredDate], [lastNotifiedDate], [isActive], [isMaster]) VALUES (1, N'http://localhost:61231/umbraco', N'DESKTOP-1BH9I9N//LM/W3SVC/2/ROOT', CAST(N'2020-01-11T14:26:47.480' AS DateTime), CAST(N'2020-01-12T21:12:33.033' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[umbracoServer] OFF
SET IDENTITY_INSERT [dbo].[umbracoUser] ON 

INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (-1, 0, 0, N'Echo', N'ibrrahim.nada@gmail.com', N'27Hztl0bfpyN1RnS+9JkUA==Kr10gf+6pka3hY+7pEACaxu37dkpUeksTgXlU1FdFp0=', N'{"hashAlgorithm":"HMACSHA256"}', N'ibrrahim.nada@gmail.com', N'en-US', N'850c4e25-65b9-46de-bd63-329e306a2084', NULL, NULL, CAST(N'2020-01-11T14:26:13.533' AS DateTime), CAST(N'2020-01-12T19:34:58.627' AS DateTime), NULL, NULL, CAST(N'2020-01-11T14:26:12.627' AS DateTime), CAST(N'2020-01-12T19:34:58.630' AS DateTime), NULL, N'[{"alias":"umbIntroIntroduction","completed":false,"disabled":true}]')
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (1, 0, 0, N'ibrahim', N'tupacmuhammad5@gmail.com', N'pwc3adJZniW+F7UMFaPNGA==+tzJAeQMsgHMuwstOCmKbRPqGWRyyYi+eetIEPFIhxE=', N'{"hashAlgorithm":"HMACSHA256"}', N'tupacmuhammad5@gmail.com', N'en-US', N'037dfcd6-56b2-4500-8bf7-35fcd44e3067', 0, NULL, CAST(N'2020-01-12T19:28:48.513' AS DateTime), CAST(N'2020-01-12T19:29:41.803' AS DateTime), NULL, NULL, CAST(N'2020-01-12T19:28:48.497' AS DateTime), CAST(N'2020-01-12T19:29:41.803' AS DateTime), NULL, NULL)
INSERT [dbo].[umbracoUser] ([id], [userDisabled], [userNoConsole], [userName], [userLogin], [userPassword], [passwordConfig], [userEmail], [userLanguage], [securityStampToken], [failedLoginAttempts], [lastLockoutDate], [lastPasswordChangeDate], [lastLoginDate], [emailConfirmedDate], [invitedDate], [createDate], [updateDate], [avatar], [tourData]) VALUES (2, 0, 0, N'test', N'gg@wp.com', N'UBryjFnR8G+hx6wRH7HsuQ==BlECDMwenLd9491zANM9FV13b6lQ987Mw7WHlH+9Tdc=', N'{"hashAlgorithm":"HMACSHA256"}', N'gg@wp.com', N'en-US', N'499d7141-de6b-4261-88a3-eb978e40e11b', 0, NULL, CAST(N'2020-01-12T19:32:06.263' AS DateTime), CAST(N'2020-01-12T19:34:23.087' AS DateTime), NULL, NULL, CAST(N'2020-01-12T19:30:41.683' AS DateTime), CAST(N'2020-01-12T19:34:23.087' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[umbracoUser] OFF
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 1)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (-1, 5)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (1, 3)
INSERT [dbo].[umbracoUser2UserGroup] ([userId], [userGroupId]) VALUES (2, 4)
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
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'35afd1f0-0c06-40a3-ae54-284adfadcb23', -1, CAST(N'2020-01-12T16:34:58.640' AS DateTime), CAST(N'2020-01-12T18:02:21.917' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'db9c524e-1275-4e67-92c9-297d72cc0c1c', 2, CAST(N'2020-01-12T16:34:23.097' AS DateTime), CAST(N'2020-01-12T16:34:23.097' AS DateTime), CAST(N'2020-01-12T16:34:55.203' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'7c4390d9-1e02-4f4c-b90d-30caf2d17c90', -1, CAST(N'2020-01-12T16:30:12.717' AS DateTime), CAST(N'2020-01-12T16:30:12.717' AS DateTime), CAST(N'2020-01-12T16:30:47.220' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'27e9cac1-a7b7-4209-a707-374627b0f849', -1, CAST(N'2020-01-12T16:31:16.083' AS DateTime), CAST(N'2020-01-12T16:32:17.360' AS DateTime), CAST(N'2020-01-12T16:32:18.023' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'09c7e795-07d3-4d02-bc78-4487fb5f8f90', -1, CAST(N'2020-01-12T16:29:29.770' AS DateTime), CAST(N'2020-01-12T16:29:29.770' AS DateTime), CAST(N'2020-01-12T16:29:37.583' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'e04a509f-de88-40e4-8b19-4ae218b3ad52', -1, CAST(N'2020-01-11T15:07:28.430' AS DateTime), CAST(N'2020-01-11T15:07:28.440' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'0d557f12-1caa-4f0e-8a51-4b5b1ca4d59e', 1, CAST(N'2020-01-12T16:29:41.817' AS DateTime), CAST(N'2020-01-12T16:29:41.817' AS DateTime), CAST(N'2020-01-12T16:30:09.807' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'b51b59ff-50e6-431c-b064-672f5ceee36f', 2, CAST(N'2020-01-12T16:33:06.713' AS DateTime), CAST(N'2020-01-12T16:33:06.713' AS DateTime), CAST(N'2020-01-12T16:33:17.853' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4e937301-2654-4385-8b2c-695d3d338a58', 2, CAST(N'2020-01-12T16:32:29.483' AS DateTime), CAST(N'2020-01-12T16:32:29.483' AS DateTime), CAST(N'2020-01-12T16:33:05.367' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'abb5b846-ccb7-4f90-95bb-6bc3bdf03395', 2, CAST(N'2020-01-12T16:34:05.980' AS DateTime), CAST(N'2020-01-12T16:34:05.980' AS DateTime), CAST(N'2020-01-12T16:34:19.970' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'4a006dbc-22b7-4220-9561-8a3223536cfc', -1, CAST(N'2020-01-11T14:12:46.667' AS DateTime), CAST(N'2020-01-11T14:29:40.170' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'1b3ff2a7-e4af-42da-a2e7-91afb9baa9e7', 2, CAST(N'2020-01-12T16:30:54.613' AS DateTime), CAST(N'2020-01-12T16:30:54.613' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'cff8760f-d588-4c4a-9324-93d0c3d964ec', -1, CAST(N'2020-01-12T14:57:49.150' AS DateTime), CAST(N'2020-01-12T16:28:19.417' AS DateTime), CAST(N'2020-01-12T16:29:08.650' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'f5caeb78-aca2-4ea0-b657-9491937dafb2', 2, CAST(N'2020-01-12T16:31:09.007' AS DateTime), CAST(N'2020-01-12T16:31:09.007' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'd282a723-6482-4753-9708-955b8db46b2a', 2, CAST(N'2020-01-12T16:32:23.510' AS DateTime), CAST(N'2020-01-12T16:32:23.510' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'836139dc-ab47-480f-98c0-9ba37eadec6d', 1, CAST(N'2020-01-12T16:29:27.277' AS DateTime), CAST(N'2020-01-12T16:29:27.277' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'04b6ff6a-d26b-428e-8478-d1dd675f9874', 2, CAST(N'2020-01-12T16:31:04.833' AS DateTime), CAST(N'2020-01-12T16:31:04.833' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'd441648d-a2fe-4bc5-a06c-e0757996527a', -1, CAST(N'2020-01-12T16:33:24.523' AS DateTime), CAST(N'2020-01-12T16:33:24.523' AS DateTime), CAST(N'2020-01-12T16:33:44.377' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'10ac786b-3492-4117-a572-e54d9f8ab7d2', -1, CAST(N'2020-01-11T11:28:23.510' AS DateTime), CAST(N'2020-01-11T13:52:09.170' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'be89786e-707d-4a7a-abb5-f01cb08dbf4b', -1, CAST(N'2020-01-11T15:51:58.247' AS DateTime), CAST(N'2020-01-11T15:51:58.247' AS DateTime), NULL, N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'3d22c228-84e8-4cdd-8c99-f0e563c2809d', -1, CAST(N'2020-01-12T16:33:51.973' AS DateTime), CAST(N'2020-01-12T16:33:51.973' AS DateTime), CAST(N'2020-01-12T16:34:03.063' AS DateTime), N'::1')
INSERT [dbo].[umbracoUserLogin] ([sessionId], [userId], [loggedInUtc], [lastValidatedUtc], [loggedOutUtc], [ipAddress]) VALUES (N'0a3e9759-3351-483f-b30c-f6bd729196fe', 2, CAST(N'2020-01-12T16:31:12.023' AS DateTime), CAST(N'2020-01-12T16:31:12.023' AS DateTime), NULL, N'::1')
SET IDENTITY_INSERT [dbo].[umbracoUserStartNode] ON 

INSERT [dbo].[umbracoUserStartNode] ([id], [userId], [startNode], [startNodeType]) VALUES (1, 2, 1067, 1)
INSERT [dbo].[umbracoUserStartNode] ([id], [userId], [startNode], [startNodeType]) VALUES (2, 2, 1076, 2)
SET IDENTITY_INSERT [dbo].[umbracoUserStartNode] OFF
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
