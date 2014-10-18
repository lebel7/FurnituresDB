CREATE TABLE [dbo].[EmpUsers]
(
[EmpUserID] [int] NOT NULL IDENTITY(1, 1),
[EmployeeID] [int] NULL,
[UserId] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmpUsers] ADD CONSTRAINT [PK_EmpUsers] PRIMARY KEY CLUSTERED  ([EmpUserID]) ON [PRIMARY]
GO
