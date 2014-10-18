CREATE TABLE [Sales].[CreditCard]
(
[CreditCardID] [int] NOT NULL IDENTITY(1, 1),
[CardType] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[CardNumber] [nvarchar] (25) COLLATE Latin1_General_CI_AS NOT NULL,
[ExpMonth] [tinyint] NOT NULL,
[ExpYear] [smallint] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CreditCard_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[CreditCard] ADD CONSTRAINT [PK_CreditCard_CreditCardID] PRIMARY KEY CLUSTERED  ([CreditCardID]) ON [PRIMARY]
GO
