CREATE TABLE [Production].[Product]
(
[ProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductNumber] AS (isnull('FN'+[dbo].[ufnLeadingZeros]([ProductID]),'')),
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Description] [nvarchar] (800) COLLATE Latin1_General_CI_AS NULL,
[Color] [nvarchar] (15) COLLATE Latin1_General_CI_AS NULL,
[UnitsInStock] [smallint] NULL,
[UnitsOnOrder] [smallint] NULL,
[SafetyStockLevel] [smallint] NOT NULL,
[ReorderPoint] [smallint] NOT NULL,
[StandardCost] [money] NOT NULL,
[ListPrice] [money] NOT NULL,
[DaysToManufacture] [int] NOT NULL,
[CategoryID] [int] NULL,
[SupplierID] [int] NULL,
[PhotoID] [int] NULL,
[SellStartDate] [datetime] NOT NULL,
[SellEndDate] [datetime] NULL,
[DiscontinuedDate] [datetime] NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_Product_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Product_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_DaysToManufacture] CHECK (([DaysToManufacture]>=(0)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_ListPrice] CHECK (([ListPrice]>=(0.00)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_ReorderPoint] CHECK (([ReorderPoint]>(0)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_SafetyStockLevel] CHECK (([SafetyStockLevel]>(0)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_SellEndDate] CHECK (([SellEndDate]>=[SellStartDate] OR [SellEndDate] IS NULL))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_StandardCost] CHECK (([StandardCost]>=(0.00)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_UnitsInStock] CHECK (([UnitsInStock]>=(0)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [CK_Product_UnitsOnOrder] CHECK (([UnitsOnOrder]>=(1)))
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [PK_Product_ProductID] PRIMARY KEY CLUSTERED  ([ProductID]) ON [PRIMARY]
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [FK_Product_ProductCategory_CategoryID] FOREIGN KEY ([CategoryID]) REFERENCES [Production].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [FK_Product_ProductPhoto_PhotoID] FOREIGN KEY ([PhotoID]) REFERENCES [Production].[ProductPhoto] ([ProductPhotoID])
GO
ALTER TABLE [Production].[Product] ADD CONSTRAINT [FK_Product_Craftman_SupplierID] FOREIGN KEY ([SupplierID]) REFERENCES [Supplies].[Craftman] ([CraftID])
GO
