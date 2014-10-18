CREATE TABLE [Person].[ContactType]
(
[ContactTypeID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ContactType_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Person].[ContactType] ADD CONSTRAINT [PK_ContactType_ContactTypeID] PRIMARY KEY CLUSTERED  ([ContactTypeID]) ON [PRIMARY]
GO
