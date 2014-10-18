CREATE TABLE [Supplies].[Craftman]
(
[CraftID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ContactName] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[BusinessPhone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[MobilePhone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[Fax] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[AddressID] [int] NOT NULL,
[Notes] [nvarchar] (300) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Supplies].[Craftman] ADD CONSTRAINT [PK_Craftmen] PRIMARY KEY CLUSTERED  ([CraftID]) ON [PRIMARY]
GO
ALTER TABLE [Supplies].[Craftman] ADD CONSTRAINT [FK_Craftman_Address] FOREIGN KEY ([AddressID]) REFERENCES [Person].[Address] ([AddressID])
GO
