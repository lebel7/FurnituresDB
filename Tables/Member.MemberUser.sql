CREATE TABLE [Member].[MemberUser]
(
[MUS_ID] [int] NOT NULL IDENTITY(1, 1),
[MUS_Login] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[MUS_LoweredLogin] AS (lower([MUS_Login])),
[MUS_Password] [nvarchar] (300) COLLATE Latin1_General_CI_AS NOT NULL,
[MUS_Email] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[MUS_LoweredEmail] AS (lower([MUS_Email])),
[MUS_RoleID] [int] NULL,
[MUS_Token] [uniqueidentifier] NULL CONSTRAINT [DF_MemberUser_MUS_Token] DEFAULT (newid()),
[MUS_TokenCreatedAt] [datetime] NULL CONSTRAINT [DF_MemberUser_MUS_TokenCreatedAt] DEFAULT (getdate()),
[MUS_TokenExpiresAt] [datetime] NULL CONSTRAINT [DF_MemberUser_MUS_TokenExpiresAt] DEFAULT (getdate()),
[MUS_UserAgent] [nvarchar] (300) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Member].[MemberUser] ADD CONSTRAINT [PK_MemberUser_MUS_ID] PRIMARY KEY CLUSTERED  ([MUS_ID]) ON [PRIMARY]
GO
ALTER TABLE [Member].[MemberUser] ADD CONSTRAINT [FK_MemberUser_MemberRole_MUS_RoleID] FOREIGN KEY ([MUS_RoleID]) REFERENCES [Member].[MemberRole] ([MRO_ID])
GO
