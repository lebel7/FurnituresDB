CREATE TABLE [Person].[Photo]
(
[PhotoID] [int] NOT NULL IDENTITY(1, 1),
[Avatar] [varbinary] (max) NULL,
[MainPhoto] [varbinary] (max) NULL,
[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Person].[Photo] ADD CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED  ([PhotoID]) ON [PRIMARY]
GO
