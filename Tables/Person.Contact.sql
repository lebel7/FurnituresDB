CREATE TABLE [Person].[Contact]
(
[ContactID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Title] [nvarchar] (8) COLLATE Latin1_General_CI_AS NULL,
[FirstName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[MiddleName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[LastName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[Suffix] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[ShortName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[EmailPromotion] [int] NOT NULL CONSTRAINT [DF_Contact_EmailPromotion] DEFAULT ((0)),
[Phone] [nvarchar] (15) COLLATE Latin1_General_CI_AS NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_Contact_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Contact_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Person].[Contact] ADD CONSTRAINT [CK_Contact_EmailPromotion] CHECK (([EmailPromotion]>=(0) AND [EmailPromotion]<=(2)))
GO
ALTER TABLE [Person].[Contact] ADD CONSTRAINT [PK_Contact_ContactID] PRIMARY KEY CLUSTERED  ([ContactID]) ON [PRIMARY]
GO
