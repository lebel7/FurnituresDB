CREATE TABLE [dbo].[Customers]
(
[CustomerID] [int] NOT NULL IDENTITY(1, 1),
[Surname] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[Firstname] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[DOB] [datetime] NULL,
[Address] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[City] [varchar] (15) COLLATE Latin1_General_CI_AS NULL,
[PostalCode] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Country] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[Telephone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[Fax] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[UserId] [uniqueidentifier] NULL,
[ContactName] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[CompanyName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customers] ADD CONSTRAINT [PK_Customers_1] PRIMARY KEY CLUSTERED  ([CustomerID]) ON [PRIMARY]
GO
