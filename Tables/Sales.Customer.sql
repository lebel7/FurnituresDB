CREATE TABLE [Sales].[Customer]
(
[CustomerID] [int] NOT NULL IDENTITY(1, 1),
[ContactID] [int] NOT NULL,
[AddressID] [int] NOT NULL,
[UserID] [uniqueidentifier] NULL,
[PhotoID] [int] NULL,
[BirthDate] [datetime] NULL,
[Gender] [nchar] (1) COLLATE Latin1_General_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Customer_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED  ([CustomerID]) ON [PRIMARY]
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [FK_Customer_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Person].[Contact] ([ContactID])
GO
ALTER TABLE [Sales].[Customer] ADD CONSTRAINT [FK_Customer_aspnet_Membership_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[aspnet_Membership] ([UserId])
GO
