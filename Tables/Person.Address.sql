CREATE TABLE [Person].[Address]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[AddressLine1] [nvarchar] (60) COLLATE Latin1_General_CI_AS NOT NULL,
[AddressLine2] [nvarchar] (60) COLLATE Latin1_General_CI_AS NULL,
[Town] [nvarchar] (30) COLLATE Latin1_General_CI_AS NOT NULL,
[CountyID] [int] NOT NULL,
[PostalCode] [nvarchar] (9) COLLATE Latin1_General_CI_AS NOT NULL,
[CountryID] [int] NOT NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_Address_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Address_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Person].[Address] ADD CONSTRAINT [PK_Address_AddressID] PRIMARY KEY CLUSTERED  ([AddressID]) ON [PRIMARY]
GO
ALTER TABLE [Person].[Address] ADD CONSTRAINT [FK_Address_Country_CountryID] FOREIGN KEY ([CountryID]) REFERENCES [Location].[Country] ([CountryID])
GO
ALTER TABLE [Person].[Address] ADD CONSTRAINT [FK_Address_County_CountyID] FOREIGN KEY ([CountyID]) REFERENCES [Location].[County] ([CountyID])
GO
