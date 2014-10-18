CREATE TABLE [Location].[Country]
(
[CountryID] [int] NOT NULL IDENTITY(1, 1),
[CountryName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [Location].[Country] ADD CONSTRAINT [PK__Country__10D160BF0E18635C] PRIMARY KEY CLUSTERED  ([CountryID]) ON [PRIMARY]
GO
