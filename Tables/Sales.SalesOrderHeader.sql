CREATE TABLE [Sales].[SalesOrderHeader]
(
[SalesOrderID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RevisionNumber] [tinyint] NOT NULL CONSTRAINT [DF_SalesOrderHeader_RevisionNumber] DEFAULT ((0)),
[OrderDate] [datetime] NOT NULL CONSTRAINT [DF_SalesOrderHeader_OrderDate] DEFAULT (getdate()),
[DueDate] [datetime] NOT NULL,
[ShipDate] [datetime] NULL,
[StatusID] [int] NOT NULL,
[OnlineOrderFlag] [bit] NOT NULL CONSTRAINT [DF_SalesOrderHeader_OnlineOrderFlag] DEFAULT ((1)),
[SalesOrderNumber] AS (isnull(N'SO'+CONVERT([nvarchar](23),[SalesOrderID],0),N'*** ERROR ***')),
[CustomerID] [int] NOT NULL,
[ContactID] [int] NOT NULL,
[SalesPersonID] [int] NULL,
[BillToAddressID] [int] NOT NULL,
[ShipToAddressID] [int] NOT NULL,
[ShipMethodID] [int] NOT NULL,
[CreditCardID] [int] NULL,
[CreditCardApprovalCode] [varchar] (15) COLLATE Latin1_General_CI_AS NULL,
[CurrencyRateID] [int] NULL,
[SubTotal] [money] NOT NULL CONSTRAINT [DF_SalesOrderHeader_SubTotal] DEFAULT ((0.00)),
[Freight] [money] NOT NULL CONSTRAINT [DF_SalesOrderHeader_Freight] DEFAULT ((0.00)),
[TotalDue] AS (isnull([SubTotal]+[Freight],(0))),
[Comment] [nvarchar] (128) COLLATE Latin1_General_CI_AS NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_SalesOrderHeader_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SalesOrderHeader_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
ALTER TABLE [Sales].[SalesOrderHeader] ADD
CONSTRAINT [FK_SalesOrderHeader_OrderStatus_StatusID] FOREIGN KEY ([StatusID]) REFERENCES [Purchasing].[OrderState] ([OrderStatusID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_DueDate] CHECK (([DueDate]>=[OrderDate]))
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_Freight] CHECK (([Freight]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_ShipDate] CHECK (([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL))
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [CK_SalesOrderHeader_SubTotal] CHECK (([SubTotal]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [PK_SalesOrderHeader_SalesOrderID] PRIMARY KEY CLUSTERED  ([SalesOrderID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_Address_BillToAddressID] FOREIGN KEY ([BillToAddressID]) REFERENCES [Person].[Address] ([AddressID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Person].[Contact] ([ContactID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_CreditCard_CreditCardID] FOREIGN KEY ([CreditCardID]) REFERENCES [Sales].[CreditCard] ([CreditCardID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_CurrencyRate_CurrencyRateID] FOREIGN KEY ([CurrencyRateID]) REFERENCES [Sales].[CurrencyRate] ([CurrencyRateID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_Customer_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [Sales].[Customer] ([CustomerID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_ShipMethod_ShipMethodID] FOREIGN KEY ([ShipMethodID]) REFERENCES [Purchasing].[ShipMethod] ([ShipMethodID])
GO
ALTER TABLE [Sales].[SalesOrderHeader] ADD CONSTRAINT [FK_SalesOrderHeader_Address_ShipToAddressID] FOREIGN KEY ([ShipToAddressID]) REFERENCES [Person].[Address] ([AddressID])
GO
