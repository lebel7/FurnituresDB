CREATE TABLE [Sales].[SalesPersonQuotaHistory]
(
[SalesPersonID] [int] NOT NULL,
[QuotaDate] [datetime] NOT NULL,
[SalesQuota] [money] NOT NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_SalesPersonQuotaHistory_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SalesPersonQuotaHistory_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory] ADD CONSTRAINT [CK_SalesPersonQuotaHistory_SalesQuota] CHECK (([SalesQuota]>(0.00)))
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory] ADD CONSTRAINT [PK_SalesPersonQuotaHistory_SalesPersonID_QuotaDate] PRIMARY KEY CLUSTERED  ([SalesPersonID], [QuotaDate]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SalesPersonQuotaHistory] ADD CONSTRAINT [FK_SalesPersonQuotaHistory_SalesPerson_SalesPersonID] FOREIGN KEY ([SalesPersonID]) REFERENCES [Sales].[SalesPerson] ([SalesPersonID])
GO
