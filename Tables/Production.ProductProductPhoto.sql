CREATE TABLE [Production].[ProductProductPhoto]
(
[ProductID] [int] NOT NULL,
[ProductPhotoID] [int] NOT NULL,
[Primary] [bit] NOT NULL CONSTRAINT [DF_ProductProductPhoto_Primary] DEFAULT ((0)),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ProductProductPhoto_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductProductPhoto] ADD CONSTRAINT [PK_ProductProductPhoto_ProductID_ProductPhotoID] PRIMARY KEY NONCLUSTERED  ([ProductID], [ProductPhotoID]) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductProductPhoto] ADD CONSTRAINT [FK_ProductProductPhoto_Product_ProductID] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [Production].[ProductProductPhoto] ADD CONSTRAINT [FK_ProductProductPhoto_ProductPhoto_ProductPhotoID] FOREIGN KEY ([ProductPhotoID]) REFERENCES [Production].[ProductPhoto] ([ProductPhotoID])
GO
