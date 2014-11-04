CREATE TABLE [Member].[MemberRole]
(
[MRO_ID] [int] NOT NULL IDENTITY(1, 1),
[MRO_RoleName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[MRO_LoweredRoleName] AS (lower([MRO_RoleName])),
[MRO_Description] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Member].[MemberRole] ADD CONSTRAINT [PK_MemberUser_MRO_ID] PRIMARY KEY CLUSTERED  ([MRO_ID]) ON [PRIMARY]
GO
