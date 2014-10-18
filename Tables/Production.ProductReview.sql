CREATE TABLE [Production].[ProductReview]
(
[ReviewID] [int] NOT NULL IDENTITY(1, 1),
[ProductID] [int] NULL,
[CustomerName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[CustomerEmail] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Rating] [int] NULL,
[Comments] [nvarchar] (900) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductReview] ADD CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED  ([ReviewID]) ON [PRIMARY]
GO
ALTER TABLE [Production].[ProductReview] ADD CONSTRAINT [FK_Reviews_Products1] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
GO
