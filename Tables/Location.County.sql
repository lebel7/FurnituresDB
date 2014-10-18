CREATE TABLE [Location].[County]
(
[CountyID] [int] NOT NULL IDENTITY(1, 1),
[CountyName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL,
[CountyCountryID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Location].[County] ADD CONSTRAINT [PK__County__B68F9DF76AE76D5A] PRIMARY KEY CLUSTERED  ([CountyID]) ON [PRIMARY]
GO
ALTER TABLE [Location].[County] ADD CONSTRAINT [FK_County_Country_CountyCountryID] FOREIGN KEY ([CountyCountryID]) REFERENCES [Location].[Country] ([CountryID])
GO
