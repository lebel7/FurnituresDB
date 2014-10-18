CREATE TABLE [dbo].[Product]
(
[ProductID] [int] NOT NULL IDENTITY(1, 1),
[ProductNumber] [uniqueidentifier] NOT NULL CONSTRAINT [DF__Products__Produc__1DB06A4F] DEFAULT (newid()),
[SupplierID] [int] NULL,
[CategoryID] [int] NULL,
[ProductName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Description] [nvarchar] (3800) COLLATE Latin1_General_CI_AS NULL,
[UnitPrice] [money] NULL,
[UnitsInStock] [smallint] NULL,
[UnitsOnOrder] [smallint] NULL,
[ReorderLevel] [smallint] NULL,
[Discountinued] [bit] NOT NULL CONSTRAINT [DF__Products__Discou__1EA48E88] DEFAULT ((0)),
[PhotoPath] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ShowCase] [bit] NOT NULL CONSTRAINT [DF__Products__ShowCa__1F98B2C1] DEFAULT ((0)),
[Promo_A] [bit] NOT NULL CONSTRAINT [DF__Products__Promo___208CD6FA] DEFAULT ((0)),
[Promo_B] [bit] NOT NULL CONSTRAINT [DF__Products__Promo___2180FB33] DEFAULT ((0)),
[ProductCode] AS ([dbo].[ProductCode]([ProductID]))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [CK_Product_UnitsInStock] CHECK (([UnitsInStock]>=(0)))
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [CK_Product_UnitsOnOrder] CHECK (([UnitsOnOrder]>=(1)))
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [PK_Productop_1] PRIMARY KEY CLUSTERED  ([ProductID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Products_SubCategories] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[ProductSubCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] ADD CONSTRAINT [FK_Products_Craftmen1] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Craftman] ([CraftID])
GO
