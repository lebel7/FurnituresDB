CREATE TABLE [Sales].[SpecialOffer]
(
[SpecialOfferID] [int] NOT NULL IDENTITY(1, 1),
[SpecialOfferTypeID] [int] NULL,
[Description] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[DiscountPct] [smallmoney] NOT NULL CONSTRAINT [DF_SpecialOffer_DiscountPct] DEFAULT ((0.00)),
[CategoryPick] [smallint] NOT NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NOT NULL,
[MinQty] [smallint] NOT NULL CONSTRAINT [DF_SpecialOffer_MinQty] DEFAULT ((0)),
[MaxQty] [smallint] NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_SpecialOffer_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SpecialOffer_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_DiscountPct] CHECK (([DiscountPct]>=(0.00)))
GO
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_EndDate] CHECK (([EndDate]>=[StartDate]))
GO
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_MaxQty] CHECK (([MaxQty]>=(0)))
GO
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [CK_SpecialOffer_MinQty] CHECK (([MinQty]>=(0)))
GO
ALTER TABLE [Sales].[SpecialOffer] ADD CONSTRAINT [PK_SpecialOffer_SpecialOfferID] PRIMARY KEY CLUSTERED  ([SpecialOfferID]) ON [PRIMARY]
GO
