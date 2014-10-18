CREATE TABLE [Sales].[CurrencyRate]
(
[CurrencyRateID] [int] NOT NULL IDENTITY(1, 1),
[CurrencyRateDate] [datetime] NOT NULL,
[FromCurrencyCode] [nchar] (3) COLLATE Latin1_General_CI_AS NOT NULL,
[ToCurrencyCode] [nchar] (3) COLLATE Latin1_General_CI_AS NOT NULL,
[AverageRate] [money] NOT NULL,
[EndOfDayRate] [money] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_CurrencyRate_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[CurrencyRate] ADD CONSTRAINT [PK_CurrencyRate_CurrencyRateID] PRIMARY KEY CLUSTERED  ([CurrencyRateID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[CurrencyRate] ADD CONSTRAINT [FK_CurrencyRate_Currency_FromCurrencyCode] FOREIGN KEY ([FromCurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode])
GO
ALTER TABLE [Sales].[CurrencyRate] ADD CONSTRAINT [FK_CurrencyRate_Currency_ToCurrencyCode] FOREIGN KEY ([ToCurrencyCode]) REFERENCES [Sales].[Currency] ([CurrencyCode])
GO
