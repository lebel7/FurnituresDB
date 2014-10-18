CREATE TABLE [Sales].[CreditCardType]
(
[CreditCardTypeID] [int] NOT NULL IDENTITY(1, 1),
[CardType] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CreditCardType_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[CreditCardType] ADD CONSTRAINT [PK_CreditCardType_CreditCardTypeID] PRIMARY KEY CLUSTERED  ([CreditCardTypeID]) ON [PRIMARY]
GO
