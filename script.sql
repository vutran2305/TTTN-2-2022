USE [News]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 2/21/2022 9:22:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Cmt_id] [bigint] NOT NULL,
	[Cmt_content] [nvarchar](50) NULL,
	[News_id] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[Cmt_created_at] [nvarchar](50) NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Cmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 2/21/2022 9:22:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[News_ID] [int] NOT NULL,
	[News_title] [nvarchar](50) NULL,
	[News_content] [text] NULL,
	[News_view] [int] NULL,
	[News_cmt] [int] NULL,
	[News_url] [nvarchar](50) NULL,
	[News_img_upload] [nvarchar](50) NOT NULL,
	[Topic_id] [int] NOT NULL,
	[News_index] [int] NULL,
	[Created_at] [nvarchar](50) NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[News_ID] ASC,
	[Topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reply_Comment]    Script Date: 2/21/2022 9:22:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reply_Comment](
	[Reply_Cmt_id] [bigint] NOT NULL,
	[Reply_Cmt_content] [nvarchar](max) NULL,
	[Id] [int] NULL,
	[Cmt_id] [int] NULL,
	[Reply_cmt_create_at] [nvarchar](50) NULL,
 CONSTRAINT [PK_Reply_Comment] PRIMARY KEY CLUSTERED 
(
	[Reply_Cmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TOPIC]    Script Date: 2/21/2022 9:22:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TOPIC](
	[Topic_Id] [int] NOT NULL,
	[Topic_name] [nvarchar](225) NOT NULL,
	[Topic_describe] [nvarchar](225) NOT NULL,
	[Topic_amount] [nvarchar](50) NULL,
	[Topic_color] [nvarchar](50) NULL,
 CONSTRAINT [PK_TOPIC] PRIMARY KEY CLUSTERED 
(
	[Topic_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 2/21/2022 9:22:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Create_at] [date] NULL,
	[User_permision] [int] NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
