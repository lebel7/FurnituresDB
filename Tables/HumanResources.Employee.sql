CREATE TABLE [HumanResources].[Employee]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[NationalIDNumber] [nvarchar] (15) COLLATE Latin1_General_CI_AS NOT NULL,
[ContactID] [int] NOT NULL,
[AddressID] [int] NOT NULL,
[UserID] [uniqueidentifier] NULL,
[Title] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[BirthDate] [datetime] NOT NULL,
[MaritalStatus] [nchar] (1) COLLATE Latin1_General_CI_AS NOT NULL,
[Gender] [nchar] (1) COLLATE Latin1_General_CI_AS NOT NULL,
[HireDate] [datetime] NOT NULL,
[SalariedFlag] [bit] NOT NULL CONSTRAINT [DF_Employee_SalariedFlag] DEFAULT ((1)),
[HolidayHours] [smallint] NOT NULL CONSTRAINT [DF_Employee_HolidayHours] DEFAULT ((0)),
[SickLeaveHours] [smallint] NOT NULL CONSTRAINT [DF_Employee_SickLeaveHours] DEFAULT ((0)),
[CurrentFlag] [bit] NOT NULL CONSTRAINT [DF_Employee_CurrentFlag] DEFAULT ((1)),
[PhotoID] [int] NULL,
[rowguid] [uniqueidentifier] NOT NULL ROWGUIDCOL CONSTRAINT [DF_Employee_rowguid] DEFAULT (newid()),
[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_Employee_ModifiedDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_BirthDate] CHECK (([BirthDate]>='1930-01-01' AND [BirthDate]<=dateadd(year,(-18),getdate())))
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_Gender] CHECK ((upper([Gender])='F' OR upper([Gender])='M'))
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_HireDate] CHECK (([HireDate]>='1996-07-01' AND [HireDate]<=dateadd(day,(1),getdate())))
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_MaritalStatus] CHECK ((upper([MaritalStatus])='S' OR upper([MaritalStatus])='M'))
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_SickLeaveHours] CHECK (([SickLeaveHours]>=(0) AND [SickLeaveHours]<=(120)))
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [CK_Employee_VacationHours] CHECK (([HolidayHours]>=(-40) AND [HolidayHours]<=(240)))
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [PK_Employee_EmployeeID] PRIMARY KEY CLUSTERED  ([EmployeeID]) ON [PRIMARY]
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [FK_Employee_Contact_ContactID] FOREIGN KEY ([ContactID]) REFERENCES [Person].[Contact] ([ContactID])
GO
ALTER TABLE [HumanResources].[Employee] ADD CONSTRAINT [FK_Employee_aspnet_Membership_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[aspnet_Membership] ([UserId])
GO
