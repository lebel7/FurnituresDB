CREATE TABLE [Sales].[OrderHeader]
(
[OrderID] [int] NOT NULL IDENTITY(1, 1),
[UserName] [nvarchar] (256) COLLATE Latin1_General_CI_AS NULL,
[EmployeeID] [int] NULL,
[PaymentID] [int] NULL,
[OrderDate] [datetime] NULL,
[ShippedDate] [datetime] NULL,
[ShipVia] [int] NULL,
[Freight] [decimal] (6, 2) NULL,
[ShipName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ShipAddress] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[ShipCity] [varchar] (15) COLLATE Latin1_General_CI_AS NULL,
[ShipPostalCode] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[ShipCountry] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[Total] [numeric] (10, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrderHeader] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED  ([OrderID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[OrderHeader] ADD CONSTRAINT [FK_Orders_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [Sales].[OrderHeader] ADD CONSTRAINT [FK_Orders_Payments] FOREIGN KEY ([PaymentID]) REFERENCES [dbo].[Payments] ([PaymentID])
GO
ALTER TABLE [Sales].[OrderHeader] ADD CONSTRAINT [FK_Orders_Shippers] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[ShippingMehtod] ([ShipperID])
GO
