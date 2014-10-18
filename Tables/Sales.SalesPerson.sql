CREATE TABLE [Sales].[SalesPerson]
(
[SalesPersonID] [int] NOT NULL,
[TerritoryID] [int] NULL,
[SalesQuota] [money] NULL,
[Bonus] [money] NOT NULL CONSTRAINT [DF_SalesPerson_Bonus] DEFAULT ((0.00)),
[CommissionPct] [smallmoney] NOT NULL CONSTRAINT [DF_SalesPerson_CommissionPct] DEFAULT ((0.00)),
[SalesYTD] [money] NOT NULL CONSTRAINT [DF_SalesPerson_SalesYTD] DEFAULT ((0.00)),
[SalesLastYear] [money] NOT NULL CONSTRAINT [DF_SalesPerson_SalesLastYear] DEFAULT ((0.00)),
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_SalesPerson_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SalesPerson_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_Bonus] CHECK (([Bonus]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_CommissionPct] CHECK (([CommissionPct]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_SalesLastYear] CHECK (([SalesLastYear]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_SalesQuota] CHECK (([SalesQuota]>(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [CK_SalesPerson_SalesYTD] CHECK (([SalesYTD]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [PK_SalesPerson_SalesPersonID] PRIMARY KEY CLUSTERED  ([SalesPersonID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SalesPerson] ADD CONSTRAINT [FK_SalesPerson_Employee_SalesPersonID] FOREIGN KEY ([SalesPersonID]) REFERENCES [HumanResources].[Employee] ([EmployeeID])
GO
