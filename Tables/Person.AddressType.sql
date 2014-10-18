CREATE TABLE [Person].[AddressType]
(
[AddressTypeID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_AddressType_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_AddressType_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [Person].[AddressType] ADD CONSTRAINT [PK_AddressType_AddressTypeID] PRIMARY KEY CLUSTERED  ([AddressTypeID]) ON [PRIMARY]
GO
