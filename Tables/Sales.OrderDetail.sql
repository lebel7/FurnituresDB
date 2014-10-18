CREATE TABLE [Sales].[OrderDetail]
(
[DetailID] [int] NOT NULL IDENTITY(1, 1),
[OrderID] [int] NULL,
[ProductID] [int] NULL,
[Quantity] [int] NULL,
[UnitPrice] [money] NULL,
[Discount] [decimal] (3, 3) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrderDetail] ADD CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED  ([DetailID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrderDetail] ADD CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([OrderID]) REFERENCES [Sales].[OrderHeader] ([OrderID]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Sales].[OrderDetail] ADD CONSTRAINT [FK_OrderDetails_Products1] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
GO
