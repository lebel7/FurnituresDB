CREATE TABLE [dbo].[Messages]
(
[MessageID] [int] NOT NULL IDENTITY(1, 1),
[Text] [ntext] COLLATE Latin1_General_CI_AS NULL,
[Date] [datetime] NULL,
[Title] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Sender] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[Receiver] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[UserId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Messages] ADD CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED  ([MessageID]) ON [PRIMARY]
GO
