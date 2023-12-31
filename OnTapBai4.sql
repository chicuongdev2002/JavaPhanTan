USE [Bai4]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[date] [datetime2](6) NULL,
	[news_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[comment_content] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[news_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[creation_date] [datetime2](6) NULL,
	[news_id] [bigint] IDENTITY(1,1) NOT NULL,
	[news_content] [varchar](255) NULL,
	[news_title] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategories]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategories](
	[news_id] [bigint] NOT NULL,
	[news_categories] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResearchAreas]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResearchAreas](
	[user_id] [bigint] NOT NULL,
	[research_areas] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[news_id] [bigint] NOT NULL,
	[tag] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[city] [varchar](255) NULL,
	[state] [varchar](255) NULL,
	[street] [varchar](255) NULL,
	[user_email] [varchar](255) NULL,
	[user_name] [varchar](255) NULL,
	[user_password] [varchar](255) NULL,
	[zipCode] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Votes]    Script Date: 5/15/2023 9:18:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Votes](
	[vote] [int] NULL,
	[news_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6000720' AS DateTime2), 1, 1, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6299610' AS DateTime2), 1, 3, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6055160' AS DateTime2), 2, 1, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6197350' AS DateTime2), 2, 2, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6420200' AS DateTime2), 2, 4, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6100280' AS DateTime2), 3, 1, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6249680' AS DateTime2), 3, 2, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6355330' AS DateTime2), 4, 3, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6470050' AS DateTime2), 4, 4, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6529880' AS DateTime2), 5, 4, N'very good')
INSERT [dbo].[Comments] ([date], [news_id], [user_id], [comment_content]) VALUES (CAST(N'2023-04-25T00:15:16.6571360' AS DateTime2), 5, 5, N'very good')
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([creation_date], [news_id], [news_content], [news_title]) VALUES (CAST(N'2023-04-25T00:15:16.4763160' AS DateTime2), 1, N'The global stock market crashed today, losing trillions in value.', N'Stock Market Crash')
INSERT [dbo].[News] ([creation_date], [news_id], [news_content], [news_title]) VALUES (CAST(N'2023-04-25T00:15:16.4976310' AS DateTime2), 2, N'Scientists have made a major breakthrough in AI research, creating an algorithm that can learn without human supervision.', N'AI Breakthrough')
INSERT [dbo].[News] ([creation_date], [news_id], [news_content], [news_title]) VALUES (CAST(N'2023-04-25T00:15:16.5145840' AS DateTime2), 3, N'The final results of the election are in, with candidate X winning by a narrow margin.', N'Election Results')
INSERT [dbo].[News] ([creation_date], [news_id], [news_content], [news_title]) VALUES (CAST(N'2023-04-25T00:15:16.5325370' AS DateTime2), 4, N'Actor X''s latest film is breaking box office records, grossing over a billion dollars in its opening weekend.', N'Latest Film from Actor X')
INSERT [dbo].[News] ([creation_date], [news_id], [news_content], [news_title]) VALUES (CAST(N'2023-04-25T00:15:16.5455030' AS DateTime2), 5, N'Underdog team Y pulled off a major upset in the championship game, defeating the heavily-favored team Z.', N'Championship Upset')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (1, N'business')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (1, N'finance')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (2, N'science')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (2, N'technology')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (3, N'politics')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (3, N'government')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (4, N'entertainment')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (4, N'film')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (5, N'sports')
INSERT [dbo].[NewsCategories] ([news_id], [news_categories]) VALUES (5, N'competition')
GO
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (1, N'computer science')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (1, N'machine learning')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (1, N'artificial intelligence')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (2, N'biology')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (2, N'genetics')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (2, N'medicine')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (3, N'web development')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (3, N'software engineering')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (3, N'programming languages')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (4, N'digital marketing')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (4, N'consumer behavior')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (4, N'brand management')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (5, N'urban design')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (5, N'sustainability')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (5, N'architecture')
INSERT [dbo].[ResearchAreas] ([user_id], [research_areas]) VALUES (1, N'Internet technology')
GO
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (1, N'news')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (1, N'stocks')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (1, N'breaking')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (2, N'AI')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (2, N'technology')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (2, N'research')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (3, N'news')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (3, N'politics')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (3, N'voting')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (4, N'news')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (4, N'box office')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (4, N'film')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (5, N'news')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (5, N'upset')
INSERT [dbo].[Tags] ([news_id], [tag]) VALUES (5, N'sports')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [city], [state], [street], [user_email], [user_name], [user_password], [zipCode]) VALUES (1, N'San Francisco', N'CA', N'123 Main St', N'j.doe@example.com', N'Jane Doe', N'password123', N'94107')
INSERT [dbo].[Users] ([user_id], [city], [state], [street], [user_email], [user_name], [user_password], [zipCode]) VALUES (2, N'New York', N'NY', N'456 Broadway', N'j.smith@example.com', N'John Smith', N'pass123', N'10001')
INSERT [dbo].[Users] ([user_id], [city], [state], [street], [user_email], [user_name], [user_password], [zipCode]) VALUES (3, N'Seattle', N'WA', N'789 Pine St', N'j.brown@example.com', N'Joe Brown', N'password!@#', N'98101')
INSERT [dbo].[Users] ([user_id], [city], [state], [street], [user_email], [user_name], [user_password], [zipCode]) VALUES (4, N'Chicago', N'IL', N'101 Lake Shore Dr', N'j.davis@example.com', N'Jessica Davis', N'passswordword123', N'60601')
INSERT [dbo].[Users] ([user_id], [city], [state], [street], [user_email], [user_name], [user_password], [zipCode]) VALUES (5, N'Los Angeles', N'CA', N'456 Market St', N'j.lee@example.com', N'Justin Lee', N'123456', N'90001')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (50, 1)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (100, 1)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (200, 1)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (17, 2)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (2, 2)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (35, 2)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (7, 2)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (2, 3)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (3, 3)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (20, 3)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (10, 3)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (50, 4)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (25, 4)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (10, 4)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (20, 5)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (5, 5)
INSERT [dbo].[Votes] ([vote], [news_id]) VALUES (40, 5)
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK9kes41mri5w9d3xd5x58aoctk] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK9kes41mri5w9d3xd5x58aoctk]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FKrcsx8irqe5xlxmb6mdpxbjhbm] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FKrcsx8irqe5xlxmb6mdpxbjhbm]
GO
ALTER TABLE [dbo].[NewsCategories]  WITH CHECK ADD  CONSTRAINT [FKsgat74x6brnrboctqjbt6agl0] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[NewsCategories] CHECK CONSTRAINT [FKsgat74x6brnrboctqjbt6agl0]
GO
ALTER TABLE [dbo].[ResearchAreas]  WITH CHECK ADD  CONSTRAINT [FKimfa6wfq7kppajnr6gw9bev22] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[ResearchAreas] CHECK CONSTRAINT [FKimfa6wfq7kppajnr6gw9bev22]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FKet045ch9os78nbxb32ggtsvc4] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FKet045ch9os78nbxb32ggtsvc4]
GO
ALTER TABLE [dbo].[Votes]  WITH CHECK ADD  CONSTRAINT [FKi1tq7ry1rkmp5yakt57byitwt] FOREIGN KEY([news_id])
REFERENCES [dbo].[News] ([news_id])
GO
ALTER TABLE [dbo].[Votes] CHECK CONSTRAINT [FKi1tq7ry1rkmp5yakt57byitwt]
GO
