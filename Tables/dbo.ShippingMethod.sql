CREATE TABLE [dbo].[ShippingMethod]
(
[ShipperID] [int] NOT NULL IDENTITY(1, 1),
[CompanyName] [nvarchar] (40) COLLATE Latin1_General_CI_AS NULL,
[Phone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShippingMethod] ADD CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED  ([ShipperID]) ON [PRIMARY]
GO
