CREATE TABLE [dbo].[ExtUserDetails]
(
[UserDetailID] [int] NOT NULL IDENTITY(1, 1),
[UserId] [uniqueidentifier] NULL,
[Surname] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[Firstname] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[Email] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[DOB] [datetime] NULL,
[Address] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[City] [varchar] (13) COLLATE Latin1_General_CI_AS NULL,
[PostalCode] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Country] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[Telephone] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[Fax] [nvarchar] (24) COLLATE Latin1_General_CI_AS NULL,
[ContactName] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[CompanyName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtUserDetails] ADD CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED  ([UserDetailID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExtUserDetails] ADD CONSTRAINT [FK_ExtUserDetails_aspnet_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[aspnet_Users] ([UserId]) ON DELETE CASCADE
GO
