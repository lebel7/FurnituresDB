CREATE TABLE [dbo].[Employees]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[Surname] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[Firstname] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[JobTilte] [varchar] (25) COLLATE Latin1_General_CI_AS NULL,
[TitleOfCourtesy] [varchar] (5) COLLATE Latin1_General_CI_AS NULL,
[Address] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[City] [varchar] (15) COLLATE Latin1_General_CI_AS NULL,
[PostalCode] [varchar] (10) COLLATE Latin1_General_CI_AS NULL,
[Country] [varchar] (20) COLLATE Latin1_General_CI_AS NULL,
[UserId] [uniqueidentifier] NULL,
[Email] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Photo] [image] NULL,
[PhotoPath] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK_Employees_1] PRIMARY KEY CLUSTERED  ([EmployeeID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [FK_Employees_aspnet_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
