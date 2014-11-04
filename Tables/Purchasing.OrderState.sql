CREATE TABLE [Purchasing].[OrderState]
(
[OrderStatusID] [int] NOT NULL IDENTITY(1, 1),
[StatusName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_OrderStatus_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_OrderStatus_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Purchasing].[OrderState] ADD CONSTRAINT [PK_OrderStatus_OrderStatusID] PRIMARY KEY CLUSTERED  ([OrderStatusID]) ON [PRIMARY]
GO
