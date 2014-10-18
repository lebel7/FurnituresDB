CREATE TABLE [Sales].[Currency]
(
[CurrencyCode] [nchar] (3) COLLATE Latin1_General_CI_AS NOT NULL,
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Currency_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Currency] ADD CONSTRAINT [PK_Currency_CurrencyCode] PRIMARY KEY CLUSTERED  ([CurrencyCode]) ON [PRIMARY]
GO
