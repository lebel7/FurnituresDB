CREATE TABLE [Sales].[ShoppingBasketItem]
(
[RecordID] [int] NOT NULL IDENTITY(1, 1),
[BasketID] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ProductID] [int] NOT NULL,
[Quantity] [int] NOT NULL,
[DateCreated] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[ShoppingBasketItem] ADD CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED  ([RecordID]) ON [PRIMARY]
GO
