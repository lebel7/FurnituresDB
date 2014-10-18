CREATE TABLE [Sales].[ContactCreditCard]
(
[ContactID] [int] NOT NULL,
[CreditCardID] [int] NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ContactCreditCard_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[ContactCreditCard] ADD CONSTRAINT [PK_ContactCreditCard_ContactID_CreditCardID] PRIMARY KEY CLUSTERED  ([ContactID], [CreditCardID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[ContactCreditCard] ADD CONSTRAINT [FK_ContactCreditCard_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Person].[Contact] ([ContactID])
GO
ALTER TABLE [Sales].[ContactCreditCard] ADD CONSTRAINT [FK_ContactCreditCard_CreditCard_CreditCardID] FOREIGN KEY ([CreditCardID]) REFERENCES [Sales].[CreditCard] ([CreditCardID])
GO
