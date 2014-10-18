CREATE TABLE [dbo].[ProductSubCategory]
(
[CategoryID] [int] NOT NULL IDENTITY(1, 1),
[CategoryName] [varchar] (15) COLLATE Latin1_General_CI_AS NULL,
[Description] [ntext] COLLATE Latin1_General_CI_AS NULL,
[Photo] [image] NULL,
[PhotoPath] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[StoreCatID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductSubCategory] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED  ([CategoryID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProductSubCategory] ADD CONSTRAINT [FK_Categories_StoreCategories] FOREIGN KEY ([StoreCatID]) REFERENCES [dbo].[ProductCategory] ([StoreCatID])
GO
