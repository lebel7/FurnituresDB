CREATE TABLE [dbo].[Craftman]
(
[CraftID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ContactName] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[BusinessPhone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[MobilePhone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[Fax] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[Address] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[City] [varchar] (15) COLLATE Latin1_General_CI_AS NULL,
[PostalCode] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Country] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[Notes] [ntext] COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Craftman] ADD CONSTRAINT [PK_Craftmen] PRIMARY KEY CLUSTERED  ([CraftID]) ON [PRIMARY]
GO
