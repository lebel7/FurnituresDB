CREATE TABLE [Sales].[SpecialOfferType]
(
[SpecialOfferTypeID] [int] NOT NULL IDENTITY(1, 1),
[Type] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_SpecialOfferType_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SpecialOfferType_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[SpecialOfferType] ADD CONSTRAINT [PK_SpecialOfferType_SpecialOfferTypeID] PRIMARY KEY CLUSTERED  ([SpecialOfferTypeID]) ON [PRIMARY]
GO
