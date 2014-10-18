CREATE TABLE [Purchasing].[ShipMethod]
(
[ShipMethodID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ShipBase] [money] NOT NULL CONSTRAINT [DF_ShipMethod_ShipBase] DEFAULT ((0.00)),
[ShipRate] [money] NOT NULL CONSTRAINT [DF_ShipMethod_ShipRate] DEFAULT ((0.00)),
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_ShipMethod_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ShipMethod_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [CK_ShipMethod_ShipBase] CHECK (([ShipBase]>(0.00)))
GO
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [CK_ShipMethod_ShipRate] CHECK (([ShipRate]>(0.00)))
GO
ALTER TABLE [Purchasing].[ShipMethod] ADD CONSTRAINT [PK_ShipMethod_ShipMethodID] PRIMARY KEY CLUSTERED  ([ShipMethodID]) ON [PRIMARY]
GO
