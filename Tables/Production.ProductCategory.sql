CREATE TABLE [Production].[ProductCategory]
(
[ProductCategoryID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_ProductCategory_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ProductCategory_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductCategory] ADD CONSTRAINT [PK_ProductCategory_ProductCategoryID] PRIMARY KEY CLUSTERED  ([ProductCategoryID]) ON [PRIMARY]
GO
