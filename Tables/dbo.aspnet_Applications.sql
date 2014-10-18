CREATE TABLE [dbo].[aspnet_Applications]
(
[ApplicationName] [nvarchar] (256) COLLATE Latin1_General_CI_AS NOT NULL,
[LoweredApplicationName] [nvarchar] (256) COLLATE Latin1_General_CI_AS NOT NULL,
[ApplicationId] [uniqueidentifier] NOT NULL CONSTRAINT [DF__aspnet_Ap__Appli__160F4887] DEFAULT (newid()),
[Description] [nvarchar] (256) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD CONSTRAINT [PK__aspnet_A__C93A4C9808EA5793] PRIMARY KEY NONCLUSTERED  ([ApplicationId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD CONSTRAINT [UQ__aspnet_A__3091033103317E3D] UNIQUE NONCLUSTERED  ([ApplicationName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD CONSTRAINT [UQ__aspnet_A__17477DE4060DEAE8] UNIQUE NONCLUSTERED  ([LoweredApplicationName]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] ([LoweredApplicationName]) ON [PRIMARY]
GO
