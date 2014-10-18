CREATE TABLE [dbo].[BedCategories]
(
[BedTypeID] [int] NOT NULL IDENTITY(1, 1),
[CategoryID] [int] NULL,
[BedType] [varchar] (25) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BedCategories] ADD CONSTRAINT [PK_BedCategories] PRIMARY KEY CLUSTERED  ([BedTypeID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BedCategories] ADD CONSTRAINT [FK_BedCategories_Categories] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[ProductSubCategory] ([CategoryID]) ON UPDATE CASCADE
GO
