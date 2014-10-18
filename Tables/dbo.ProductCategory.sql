CREATE TABLE [dbo].[ProductCategory]
(
[StoreCatID] [int] NOT NULL IDENTITY(1, 1),
[StoreCatName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Description] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Photo] [image] NULL,
[PhotoPath] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductCategory] ADD CONSTRAINT [PK_StoreCategories] PRIMARY KEY CLUSTERED  ([StoreCatID]) ON [PRIMARY]
GO
