CREATE TABLE [Production].[ProductPhoto]
(
[ProductPhotoID] [int] NOT NULL IDENTITY(1, 1),
[ThumbNailPhoto] [varbinary] (max) NULL,
[ThumbnailPhotoFileName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[LargePhoto] [varbinary] (max) NULL,
[LargePhotoFileName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_ProductPhoto_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductPhoto] ADD CONSTRAINT [PK_ProductPhoto_ProductPhotoID] PRIMARY KEY CLUSTERED  ([ProductPhotoID]) ON [PRIMARY]
GO
