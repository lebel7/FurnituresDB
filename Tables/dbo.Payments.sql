CREATE TABLE [dbo].[Payments]
(
[PaymentID] [int] NOT NULL IDENTITY(1, 1),
[PaymentType] [varchar] (40) COLLATE Latin1_General_CI_AS NULL,
[Photo] [image] NULL,
[PhotoPath] [nvarchar] (60) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Payments] ADD CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED  ([PaymentID]) ON [PRIMARY]
GO
