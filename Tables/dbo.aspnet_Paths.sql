CREATE TABLE [dbo].[aspnet_Paths]
(
[ApplicationId] [uniqueidentifier] NOT NULL,
[PathId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Pa__PathI__19DFD96B] DEFAULT (newid()),
[Path] [nvarchar] (256) COLLATE Latin1_General_CI_AS NOT NULL,
[LoweredPath] [nvarchar] (256) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD CONSTRAINT [PK__aspnet_P__CD67DC58286302EC] PRIMARY KEY NONCLUSTERED  ([PathId]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] ([ApplicationId], [LoweredPath]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD CONSTRAINT [FK__aspnet_Pa__Appli__236943A5] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
