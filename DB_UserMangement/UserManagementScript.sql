USE [RepairManagement]
GO
/****** Object:  Table [dbo].[City_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City_Tbl](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](150) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_City_Tbl] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoginDetail_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginDetail_Tbl](
	[LoginDetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[Login] [datetime] NULL,
	[Logout] [datetime] NULL,
	[LoginIp] [nvarchar](150) NULL,
	[LogoutIp] [nvarchar](150) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_LoginDetail] PRIMARY KEY CLUSTERED 
(
	[LoginDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ModuleList_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModuleList_Tbl](
	[ModuleId] [int] IDENTITY(1,1) NOT NULL,
	[Module_Name] [nvarchar](50) NULL,
	[CreatedOn] [date] NULL,
	[CreatedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_ModuleList_Tbl] PRIMARY KEY CLUSTERED 
(
	[ModuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Organization_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Organization_Tbl](
	[OrgId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](400) NULL,
	[Street] [nvarchar](100) NULL,
	[CityId] [bigint] NULL,
	[StateId] [bigint] NULL,
	[RegisteredAs] [varchar](50) NULL,
	[Logo] [nvarchar](150) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Organization_Tbl] PRIMARY KEY CLUSTERED 
(
	[OrgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role_Tbl](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NULL,
	[OrgId] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Role_Tbl] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[State_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State_Tbl](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](150) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_State_Tbl] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserInfo_Tbl](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[OrgId] [bigint] NULL,
	[FirstName] [varchar](70) NULL,
	[LastName] [varchar](70) NULL,
	[Street] [nvarchar](200) NULL,
	[CityId] [bigint] NULL,
	[StateId] [bigint] NULL,
	[ProfilePhoto] [nvarchar](max) NULL,
	[RoleId] [int] NULL,
	[UserName] [varchar](200) NULL,
	[EmailId] [nvarchar](150) NULL,
	[MobileNo] [nvarchar](13) NULL,
	[Password] [nvarchar](max) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_UserInfo_Tbl] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserPermissions_Tbl]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermissions_Tbl](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[U_RoleId] [bigint] NOT NULL,
	[ModuleId] [bigint] NOT NULL,
	[Org_Id] [bigint] NOT NULL,
	[All] [bit] NULL,
	[Add] [bit] NULL,
	[Edit] [bit] NULL,
	[Delete] [bit] NULL,
	[View] [bit] NULL,
	[Re-Activate] [bit] NULL,
	[Print] [bit] NULL,
	[IsActive] [bit] NULL,
	[Finalize] [bit] NULL,
	[Modifiedon] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[UserId] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[IsDefaultPermission_Fn]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IsDefaultPermission_Fn]
(	
 @U_RoleId bigint 
 ,@Org_Id bigint
 ,@UserId bigint
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT count(*) as result from dbo.UserPermissions_Tbl where U_RoleId = @U_RoleId  and Org_Id = @Org_Id and UserId=@UserId
)

GO
/****** Object:  UserDefinedFunction [dbo].[IsDefaultPermissionForUserRole_Fn]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IsDefaultPermissionForUserRole_Fn]
(	
 @U_RoleId bigint 
 ,@Org_Id bigint
  
)
RETURNS TABLE 
AS
RETURN 
(
	SELECT count(*) as result from dbo.UserPermissions_Tbl where U_RoleId = @U_RoleId  and Org_Id = @Org_Id  
)

GO
/****** Object:  UserDefinedFunction [dbo].[IsPermissionExistForUser_Fn]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IsPermissionExistForUser_Fn]
(	
  @U_RoleId bigint 
 , @ModuleId bigint
 , @Org_Id bigint
 , @UserId bigint

)
RETURNS TABLE 
AS
RETURN 
(
	SELECT count(*) as result from dbo.UserPermissions_Tbl where U_RoleId = @U_RoleId and ModuleId = @ModuleId and Org_Id = @Org_Id and UserId=@UserId
)
GO
/****** Object:  UserDefinedFunction [dbo].[IsPermissionExistForUserRole_Fn]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[IsPermissionExistForUserRole_Fn]
(	
  @U_RoleId bigint 
 , @ModuleId bigint
 , @Org_Id bigint
  

)
RETURNS TABLE 
AS
RETURN 
(
	SELECT count(*) as result from dbo.UserPermissions_Tbl where U_RoleId = @U_RoleId and ModuleId = @ModuleId and Org_Id = @Org_Id 
)
GO
SET IDENTITY_INSERT [dbo].[City_Tbl] ON 

INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (6, N'Autauga', 1256, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (7, N'Billingsley', 1588, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (8, N'Chefornak', 87878, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (9, N'Chuathbaluk', 788, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10, N'Douglas', 125, CAST(N'2015-12-28 17:44:47.007' AS DateTime), 125, CAST(N'2015-12-28 17:44:47.007' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (11, N'Huachuca', 125, CAST(N'2015-12-28 18:27:07.920' AS DateTime), 125, CAST(N'2015-12-28 18:27:07.920' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (40, N'Hamburg', 85, CAST(N'2015-12-31 13:55:19.417' AS DateTime), 85, CAST(N'2015-12-31 13:55:19.417' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (41, N'Oakland', 0, CAST(N'2015-12-31 13:57:11.723' AS DateTime), 0, CAST(N'2015-12-31 13:57:11.723' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (42, N'Pleasanton', 0, CAST(N'2015-12-31 13:57:57.350' AS DateTime), 0, CAST(N'2015-12-31 13:57:57.350' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (43, N'San Leandro', 90, CAST(N'2015-12-31 17:28:39.627' AS DateTime), 90, CAST(N'2015-12-31 17:28:39.627' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (44, N'Crosby town', 90, CAST(N'2015-12-31 17:48:45.843' AS DateTime), 90, CAST(N'2015-12-31 17:48:45.843' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10043, N'Gloster', 90, CAST(N'2016-01-02 14:20:39.887' AS DateTime), 90, CAST(N'2016-01-02 14:20:39.887' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10044, N'Snow Lake Shores', 90, CAST(N'2016-01-02 14:22:12.563' AS DateTime), 90, CAST(N'2016-01-02 14:22:12.563' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10045, N'Mound Bayou', 0, CAST(N'2016-01-05 15:35:55.680' AS DateTime), 0, CAST(N'2016-01-05 15:35:55.680' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10046, N'Pace', 0, CAST(N'2016-01-08 16:28:31.650' AS DateTime), 0, CAST(N'2016-01-08 16:28:31.650' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10047, N'Renova ', 92, CAST(N'2016-01-11 13:49:25.743' AS DateTime), 92, CAST(N'2016-01-11 13:49:25.743' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10048, N'Rosedale', 10094, CAST(N'2016-01-11 13:51:13.450' AS DateTime), 10094, CAST(N'2016-01-11 13:51:13.450' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10049, N'Shaw ', 86, CAST(N'2016-01-12 15:47:39.533' AS DateTime), 86, CAST(N'2016-01-12 15:47:39.533' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10050, N'Shelby', 86, CAST(N'2016-01-12 15:49:14.520' AS DateTime), 86, CAST(N'2016-01-12 15:49:14.520' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10051, N'Shelby', 86, CAST(N'2016-01-14 13:06:46.553' AS DateTime), 86, CAST(N'2016-01-14 13:06:46.553' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10052, N'Rosedale', 10094, CAST(N'2016-01-14 16:06:24.170' AS DateTime), 10094, CAST(N'2016-01-14 16:06:24.170' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10053, N'Rosedale', 10094, CAST(N'2016-01-14 16:10:08.360' AS DateTime), 10094, CAST(N'2016-01-14 16:10:08.360' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10054, N'Crosby town', 10096, CAST(N'2016-01-14 16:16:58.970' AS DateTime), 10096, CAST(N'2016-01-14 16:16:58.970' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10055, N'Oakland', 10097, CAST(N'2016-01-14 17:09:13.893' AS DateTime), 10097, CAST(N'2016-01-14 17:09:13.893' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10056, N'Shelby', 86, CAST(N'2016-01-14 17:39:51.893' AS DateTime), 86, CAST(N'2016-01-14 17:39:51.893' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10057, N'Shelby', 86, CAST(N'2016-01-14 17:45:15.037' AS DateTime), 86, CAST(N'2016-01-14 17:45:15.037' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10058, N'Oakland', 10097, CAST(N'2016-01-14 17:47:10.223' AS DateTime), 10097, CAST(N'2016-01-14 17:47:10.223' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10059, N'Oakland', 10097, CAST(N'2016-01-14 17:48:50.397' AS DateTime), 10097, CAST(N'2016-01-14 17:48:50.397' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10060, N'Oakland', 10097, CAST(N'2016-01-14 17:49:55.003' AS DateTime), 10097, CAST(N'2016-01-14 17:49:55.003' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10061, N'Oakland', 10097, CAST(N'2016-01-14 17:51:09.863' AS DateTime), 10097, CAST(N'2016-01-14 17:51:09.863' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10062, N'Oakland', 10097, CAST(N'2016-01-14 18:02:04.710' AS DateTime), 10097, CAST(N'2016-01-14 18:02:04.710' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10063, N'Shelby', 86, CAST(N'2016-01-14 18:31:18.897' AS DateTime), 86, CAST(N'2016-01-14 18:31:18.897' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10064, N'Shelby', 86, CAST(N'2016-01-14 18:44:30.913' AS DateTime), 86, CAST(N'2016-01-14 18:44:30.913' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10065, N'Shelby', 86, CAST(N'2016-01-14 18:45:20.617' AS DateTime), 86, CAST(N'2016-01-14 18:45:20.617' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10066, N'Shelby', 86, CAST(N'2016-01-14 18:46:21.587' AS DateTime), 86, CAST(N'2016-01-14 18:46:21.587' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10067, N'Oakland', 10097, CAST(N'2016-01-14 18:48:07.947' AS DateTime), 10097, CAST(N'2016-01-14 18:48:07.947' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10068, N'', 0, CAST(N'2016-01-16 16:37:33.593' AS DateTime), 0, CAST(N'2016-01-16 16:37:33.593' AS DateTime), 1, 0)
INSERT [dbo].[City_Tbl] ([CityId], [CityName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10069, N'Shelby', 86, CAST(N'2016-01-18 17:58:36.350' AS DateTime), 86, CAST(N'2016-01-18 17:58:36.350' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[City_Tbl] OFF
SET IDENTITY_INSERT [dbo].[LoginDetail_Tbl] ON 

INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (3, 90, CAST(N'2016-01-01 14:23:26.207' AS DateTime), CAST(N'2016-01-01 14:23:26.207' AS DateTime), N'::1', N'', CAST(N'2016-01-01 14:23:26.207' AS DateTime), 235, CAST(N'2016-01-01 14:23:26.207' AS DateTime), 235, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (4, 0, CAST(N'2016-01-01 14:35:09.320' AS DateTime), CAST(N'2016-01-01 14:35:09.320' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 14:35:09.320' AS DateTime), 0, CAST(N'2016-01-01 14:35:09.320' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (5, 0, CAST(N'2016-01-01 14:37:13.700' AS DateTime), CAST(N'2016-01-01 14:37:13.700' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 14:37:13.700' AS DateTime), 0, CAST(N'2016-01-01 14:37:13.700' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (6, 0, CAST(N'2016-01-01 14:38:01.503' AS DateTime), CAST(N'2016-01-01 14:38:01.503' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 14:38:01.503' AS DateTime), 0, CAST(N'2016-01-01 14:38:01.503' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (7, 0, CAST(N'2016-01-01 16:16:17.293' AS DateTime), CAST(N'2016-01-01 16:16:17.293' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 16:16:17.293' AS DateTime), 0, CAST(N'2016-01-01 16:16:17.293' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (8, 0, CAST(N'2016-01-01 16:17:49.600' AS DateTime), CAST(N'2016-01-01 16:17:49.600' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 16:17:49.600' AS DateTime), 0, CAST(N'2016-01-01 16:17:49.600' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (9, 0, CAST(N'2016-01-01 16:18:10.480' AS DateTime), CAST(N'2016-01-01 16:18:10.480' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 16:18:10.480' AS DateTime), 0, CAST(N'2016-01-01 16:18:10.480' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10, 0, CAST(N'2016-01-01 16:22:09.977' AS DateTime), CAST(N'2016-01-01 16:22:09.977' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 16:22:09.977' AS DateTime), 0, CAST(N'2016-01-01 16:22:09.977' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (11, 90, CAST(N'2016-01-01 16:50:32.403' AS DateTime), CAST(N'2016-01-01 16:50:32.403' AS DateTime), N'::1', NULL, CAST(N'2016-01-01 16:50:32.403' AS DateTime), 0, CAST(N'2016-01-01 16:50:32.403' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (12, 90, CAST(N'2016-01-02 15:14:58.487' AS DateTime), CAST(N'2016-01-02 15:14:58.487' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 15:14:58.487' AS DateTime), 0, CAST(N'2016-01-02 15:14:58.487' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (13, 90, CAST(N'2016-01-02 15:51:26.567' AS DateTime), CAST(N'2016-01-02 15:51:26.567' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 15:51:26.567' AS DateTime), 0, CAST(N'2016-01-02 15:51:26.567' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (14, 90, CAST(N'2016-01-02 16:12:16.177' AS DateTime), CAST(N'2016-01-02 16:12:16.177' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 16:12:16.177' AS DateTime), 0, CAST(N'2016-01-02 16:12:16.177' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (15, 90, CAST(N'2016-01-02 16:22:46.953' AS DateTime), CAST(N'2016-01-02 16:22:46.953' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 16:22:46.953' AS DateTime), 0, CAST(N'2016-01-02 16:22:46.953' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (16, 90, CAST(N'2016-01-02 16:27:59.910' AS DateTime), CAST(N'2016-01-02 16:27:59.910' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 16:27:59.910' AS DateTime), 0, CAST(N'2016-01-02 16:27:59.910' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (17, 90, CAST(N'2016-01-02 16:29:06.867' AS DateTime), CAST(N'2016-01-02 16:29:06.867' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 16:29:06.867' AS DateTime), 0, CAST(N'2016-01-02 16:29:06.867' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (18, 90, CAST(N'2016-01-02 19:21:19.507' AS DateTime), CAST(N'2016-01-02 19:21:19.507' AS DateTime), N'::1', NULL, CAST(N'2016-01-02 19:21:19.507' AS DateTime), 0, CAST(N'2016-01-02 19:21:19.507' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (19, 0, CAST(N'2016-01-04 11:46:43.660' AS DateTime), CAST(N'2016-01-04 11:46:43.660' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 11:46:43.660' AS DateTime), 0, CAST(N'2016-01-04 11:46:43.660' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20, 0, CAST(N'2016-01-04 11:46:49.487' AS DateTime), CAST(N'2016-01-04 11:46:49.487' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 11:46:49.487' AS DateTime), 0, CAST(N'2016-01-04 11:46:49.487' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (21, 0, CAST(N'2016-01-04 11:47:24.153' AS DateTime), CAST(N'2016-01-04 11:47:24.153' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 11:47:24.153' AS DateTime), 0, CAST(N'2016-01-04 11:47:24.153' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (22, 90, CAST(N'2016-01-04 11:50:14.920' AS DateTime), CAST(N'2016-01-04 11:50:14.920' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 11:50:14.920' AS DateTime), 0, CAST(N'2016-01-04 11:50:14.920' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (23, 91, CAST(N'2016-01-04 12:32:03.917' AS DateTime), CAST(N'2016-01-04 12:32:03.917' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 12:32:03.917' AS DateTime), 0, CAST(N'2016-01-04 12:32:03.917' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (24, 91, CAST(N'2016-01-04 13:06:46.640' AS DateTime), CAST(N'2016-01-04 13:06:46.640' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 13:06:46.640' AS DateTime), 0, CAST(N'2016-01-04 13:06:46.640' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (25, 91, CAST(N'2016-01-04 18:05:46.307' AS DateTime), CAST(N'2016-01-04 18:05:46.307' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 18:05:46.307' AS DateTime), 0, CAST(N'2016-01-04 18:05:46.307' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (26, 91, CAST(N'2016-01-04 19:04:58.130' AS DateTime), CAST(N'2016-01-04 19:04:58.130' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 19:04:58.130' AS DateTime), 0, CAST(N'2016-01-04 19:04:58.130' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (27, 91, CAST(N'2016-01-04 19:09:58.363' AS DateTime), CAST(N'2016-01-04 19:09:58.363' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 19:09:58.363' AS DateTime), 0, CAST(N'2016-01-04 19:09:58.363' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (28, 91, CAST(N'2016-01-04 19:15:54.963' AS DateTime), CAST(N'2016-01-04 19:15:54.963' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 19:15:54.963' AS DateTime), 0, CAST(N'2016-01-04 19:15:54.963' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (29, 91, CAST(N'2016-01-04 19:33:00.210' AS DateTime), CAST(N'2016-01-04 19:33:00.210' AS DateTime), N'::1', NULL, CAST(N'2016-01-04 19:33:00.210' AS DateTime), 0, CAST(N'2016-01-04 19:33:00.210' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30, 90, CAST(N'2016-01-05 13:13:10.720' AS DateTime), CAST(N'2016-01-05 13:13:10.720' AS DateTime), N'::1', NULL, CAST(N'2016-01-05 13:13:10.720' AS DateTime), 0, CAST(N'2016-01-05 13:13:10.720' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (31, 90, CAST(N'2016-01-05 13:21:28.823' AS DateTime), CAST(N'2016-01-05 13:21:28.823' AS DateTime), N'::1', NULL, CAST(N'2016-01-05 13:21:28.823' AS DateTime), 0, CAST(N'2016-01-05 13:21:28.823' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (32, 91, CAST(N'2016-01-05 14:12:04.637' AS DateTime), CAST(N'2016-01-05 14:12:04.637' AS DateTime), N'::1', NULL, CAST(N'2016-01-05 14:12:04.637' AS DateTime), 0, CAST(N'2016-01-05 14:12:04.637' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10018, 91, CAST(N'2016-01-05 16:07:36.017' AS DateTime), CAST(N'2016-01-05 16:07:36.017' AS DateTime), N'::1', NULL, CAST(N'2016-01-05 16:07:36.017' AS DateTime), 0, CAST(N'2016-01-05 16:07:36.017' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10019, 91, CAST(N'2016-01-05 20:02:25.347' AS DateTime), CAST(N'2016-01-05 20:02:25.347' AS DateTime), N'::1', NULL, CAST(N'2016-01-05 20:02:25.347' AS DateTime), 0, CAST(N'2016-01-05 20:02:25.347' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10020, 0, CAST(N'2016-01-06 17:32:21.073' AS DateTime), CAST(N'2016-01-06 17:32:21.073' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 17:32:21.073' AS DateTime), 0, CAST(N'2016-01-06 17:32:21.073' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10021, 90, CAST(N'2016-01-06 17:32:29.710' AS DateTime), CAST(N'2016-01-06 17:32:29.710' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 17:32:29.710' AS DateTime), 0, CAST(N'2016-01-06 17:32:29.710' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10022, 91, CAST(N'2016-01-06 17:35:03.380' AS DateTime), CAST(N'2016-01-06 17:35:03.380' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 17:35:03.380' AS DateTime), 0, CAST(N'2016-01-06 17:35:03.380' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10023, 90, CAST(N'2016-01-06 17:39:46.850' AS DateTime), CAST(N'2016-01-06 17:39:46.850' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 17:39:46.850' AS DateTime), 0, CAST(N'2016-01-06 17:39:46.850' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10024, 90, CAST(N'2016-01-06 17:40:33.690' AS DateTime), CAST(N'2016-01-06 17:40:33.690' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 17:40:33.690' AS DateTime), 0, CAST(N'2016-01-06 17:40:33.690' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10025, 90, CAST(N'2016-01-06 18:53:40.037' AS DateTime), CAST(N'2016-01-06 18:53:40.037' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 18:53:40.037' AS DateTime), 0, CAST(N'2016-01-06 18:53:40.037' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10026, 91, CAST(N'2016-01-06 18:54:17.573' AS DateTime), CAST(N'2016-01-06 18:54:17.573' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 18:54:17.573' AS DateTime), 0, CAST(N'2016-01-06 18:54:17.573' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10027, 91, CAST(N'2016-01-06 18:55:18.290' AS DateTime), CAST(N'2016-01-06 18:55:18.290' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 18:55:18.290' AS DateTime), 0, CAST(N'2016-01-06 18:55:18.290' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10028, 90, CAST(N'2016-01-06 19:07:20.813' AS DateTime), CAST(N'2016-01-06 19:07:20.813' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 19:07:20.813' AS DateTime), 0, CAST(N'2016-01-06 19:07:20.813' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10029, 91, CAST(N'2016-01-06 19:08:41.427' AS DateTime), CAST(N'2016-01-06 19:08:41.427' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 19:08:41.427' AS DateTime), 0, CAST(N'2016-01-06 19:08:41.427' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10030, 90, CAST(N'2016-01-06 19:09:20.850' AS DateTime), CAST(N'2016-01-06 19:09:20.850' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 19:09:20.850' AS DateTime), 0, CAST(N'2016-01-06 19:09:20.850' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (10031, 91, CAST(N'2016-01-06 19:35:40.550' AS DateTime), CAST(N'2016-01-06 19:35:40.550' AS DateTime), N'::1', NULL, CAST(N'2016-01-06 19:35:40.550' AS DateTime), 0, CAST(N'2016-01-06 19:35:40.550' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20020, 91, CAST(N'2016-01-07 12:06:50.220' AS DateTime), CAST(N'2016-01-07 12:06:50.220' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 12:06:50.220' AS DateTime), 0, CAST(N'2016-01-07 12:06:50.220' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20021, 91, CAST(N'2016-01-07 15:29:32.350' AS DateTime), CAST(N'2016-01-07 15:29:32.350' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 15:29:32.350' AS DateTime), 0, CAST(N'2016-01-07 15:29:32.350' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20022, 91, CAST(N'2016-01-07 15:29:32.360' AS DateTime), CAST(N'2016-01-07 15:29:32.360' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 15:29:32.360' AS DateTime), 0, CAST(N'2016-01-07 15:29:32.360' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20023, 91, CAST(N'2016-01-07 16:40:29.563' AS DateTime), CAST(N'2016-01-07 16:40:29.563' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 16:40:29.563' AS DateTime), 0, CAST(N'2016-01-07 16:40:29.563' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20024, 91, CAST(N'2016-01-07 18:52:18.703' AS DateTime), CAST(N'2016-01-07 18:52:18.703' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 18:52:18.703' AS DateTime), 0, CAST(N'2016-01-07 18:52:18.703' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20025, 90, CAST(N'2016-01-07 18:52:35.920' AS DateTime), CAST(N'2016-01-07 18:52:35.920' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 18:52:35.920' AS DateTime), 0, CAST(N'2016-01-07 18:52:35.920' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20026, 91, CAST(N'2016-01-07 18:53:48.317' AS DateTime), CAST(N'2016-01-07 18:53:48.317' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 18:53:48.317' AS DateTime), 0, CAST(N'2016-01-07 18:53:48.317' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20027, 90, CAST(N'2016-01-07 19:28:02.747' AS DateTime), CAST(N'2016-01-07 19:28:02.747' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 19:28:02.747' AS DateTime), 0, CAST(N'2016-01-07 19:28:02.747' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (20028, 91, CAST(N'2016-01-07 19:28:17.917' AS DateTime), CAST(N'2016-01-07 19:28:17.917' AS DateTime), N'::1', NULL, CAST(N'2016-01-07 19:28:17.917' AS DateTime), 0, CAST(N'2016-01-07 19:28:17.917' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30024, 90, CAST(N'2016-01-08 12:18:17.247' AS DateTime), CAST(N'2016-01-08 12:18:17.247' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 12:18:17.247' AS DateTime), 0, CAST(N'2016-01-08 12:18:17.247' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30025, 91, CAST(N'2016-01-08 12:18:48.780' AS DateTime), CAST(N'2016-01-08 12:18:48.780' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 12:18:48.780' AS DateTime), 0, CAST(N'2016-01-08 12:18:48.780' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30026, 91, CAST(N'2016-01-08 13:01:25.547' AS DateTime), CAST(N'2016-01-08 13:01:25.547' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 13:01:25.547' AS DateTime), 0, CAST(N'2016-01-08 13:01:25.547' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30027, 91, CAST(N'2016-01-08 14:18:52.700' AS DateTime), CAST(N'2016-01-08 14:18:52.700' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 14:18:52.700' AS DateTime), 0, CAST(N'2016-01-08 14:18:52.700' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30028, 91, CAST(N'2016-01-08 14:30:42.573' AS DateTime), CAST(N'2016-01-08 14:30:42.573' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 14:30:42.573' AS DateTime), 0, CAST(N'2016-01-08 14:30:42.573' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30029, 91, CAST(N'2016-01-08 16:03:20.307' AS DateTime), CAST(N'2016-01-08 16:03:20.307' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 16:03:20.307' AS DateTime), 0, CAST(N'2016-01-08 16:03:20.307' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30030, 91, CAST(N'2016-01-08 16:57:18.497' AS DateTime), CAST(N'2016-01-08 16:57:18.497' AS DateTime), N'::1', NULL, CAST(N'2016-01-08 16:57:18.497' AS DateTime), 0, CAST(N'2016-01-08 16:57:18.497' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30031, 91, CAST(N'2016-01-11 11:22:16.517' AS DateTime), CAST(N'2016-01-11 11:22:16.517' AS DateTime), N'::1', NULL, CAST(N'2016-01-11 11:22:16.517' AS DateTime), 0, CAST(N'2016-01-11 11:22:16.517' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30032, 91, CAST(N'2016-01-11 12:13:36.770' AS DateTime), CAST(N'2016-01-11 12:13:36.770' AS DateTime), N'::1', NULL, CAST(N'2016-01-11 12:13:36.770' AS DateTime), 0, CAST(N'2016-01-11 12:13:36.770' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30033, 90, CAST(N'2016-01-11 12:16:27.710' AS DateTime), CAST(N'2016-01-11 12:16:27.710' AS DateTime), N'::1', NULL, CAST(N'2016-01-11 12:16:27.710' AS DateTime), 0, CAST(N'2016-01-11 12:16:27.710' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30034, 91, CAST(N'2016-01-11 13:52:11.980' AS DateTime), CAST(N'2016-01-11 13:52:11.980' AS DateTime), N'::1', NULL, CAST(N'2016-01-11 13:52:11.980' AS DateTime), 0, CAST(N'2016-01-11 13:52:11.980' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30035, 91, CAST(N'2016-01-11 16:21:28.370' AS DateTime), CAST(N'2016-01-11 16:21:28.370' AS DateTime), N'::1', NULL, CAST(N'2016-01-11 16:21:28.370' AS DateTime), 0, CAST(N'2016-01-11 16:21:28.370' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30036, 91, CAST(N'2016-01-11 17:04:11.387' AS DateTime), CAST(N'2016-01-11 17:04:11.387' AS DateTime), N'::1', NULL, CAST(N'2016-01-11 17:04:11.387' AS DateTime), 0, CAST(N'2016-01-11 17:04:11.387' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30037, 91, CAST(N'2016-01-12 12:46:32.210' AS DateTime), CAST(N'2016-01-12 12:46:32.210' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 12:46:32.210' AS DateTime), 0, CAST(N'2016-01-12 12:46:32.210' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30038, 91, CAST(N'2016-01-12 12:48:13.233' AS DateTime), CAST(N'2016-01-12 12:48:13.233' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 12:48:13.233' AS DateTime), 0, CAST(N'2016-01-12 12:48:13.233' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30039, 91, CAST(N'2016-01-12 12:50:06.910' AS DateTime), CAST(N'2016-01-12 12:50:06.910' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 12:50:06.910' AS DateTime), 0, CAST(N'2016-01-12 12:50:06.910' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30040, 91, CAST(N'2016-01-12 13:26:46.383' AS DateTime), CAST(N'2016-01-12 13:26:46.383' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 13:26:46.383' AS DateTime), 0, CAST(N'2016-01-12 13:26:46.383' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30041, 91, CAST(N'2016-01-12 13:30:21.190' AS DateTime), CAST(N'2016-01-12 13:30:21.190' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 13:30:21.190' AS DateTime), 0, CAST(N'2016-01-12 13:30:21.190' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30042, 91, CAST(N'2016-01-12 15:31:33.100' AS DateTime), CAST(N'2016-01-12 15:31:33.100' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 15:31:33.100' AS DateTime), 0, CAST(N'2016-01-12 15:31:33.100' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30043, 0, CAST(N'2016-01-12 16:37:20.520' AS DateTime), CAST(N'2016-01-12 16:37:20.520' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:37:20.520' AS DateTime), 0, CAST(N'2016-01-12 16:37:20.520' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30044, 0, CAST(N'2016-01-12 16:39:21.257' AS DateTime), CAST(N'2016-01-12 16:39:21.257' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:39:21.257' AS DateTime), 0, CAST(N'2016-01-12 16:39:21.257' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30045, 0, CAST(N'2016-01-12 16:40:38.733' AS DateTime), CAST(N'2016-01-12 16:40:38.733' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:40:38.733' AS DateTime), 0, CAST(N'2016-01-12 16:40:38.733' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30046, 0, CAST(N'2016-01-12 16:48:35.293' AS DateTime), CAST(N'2016-01-12 16:48:35.293' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:48:35.293' AS DateTime), 0, CAST(N'2016-01-12 16:48:35.293' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30047, 90, CAST(N'2016-01-12 16:48:49.900' AS DateTime), CAST(N'2016-01-12 16:48:49.900' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:48:49.900' AS DateTime), 0, CAST(N'2016-01-12 16:48:49.900' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30048, 0, CAST(N'2016-01-12 16:49:04.913' AS DateTime), CAST(N'2016-01-12 16:49:04.913' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:49:04.913' AS DateTime), 0, CAST(N'2016-01-12 16:49:04.913' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30049, 86, CAST(N'2016-01-12 16:53:44.330' AS DateTime), CAST(N'2016-01-12 16:53:44.330' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:53:44.330' AS DateTime), 0, CAST(N'2016-01-12 16:53:44.330' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30050, 91, CAST(N'2016-01-12 16:54:41.207' AS DateTime), CAST(N'2016-01-12 16:54:41.207' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:54:41.207' AS DateTime), 0, CAST(N'2016-01-12 16:54:41.207' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30051, 86, CAST(N'2016-01-12 16:57:24.557' AS DateTime), CAST(N'2016-01-12 16:57:24.557' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:57:24.557' AS DateTime), 0, CAST(N'2016-01-12 16:57:24.557' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30052, 86, CAST(N'2016-01-12 16:57:41.390' AS DateTime), CAST(N'2016-01-12 16:57:41.390' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:57:41.390' AS DateTime), 0, CAST(N'2016-01-12 16:57:41.390' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30053, 91, CAST(N'2016-01-12 16:58:32.560' AS DateTime), CAST(N'2016-01-12 16:58:32.560' AS DateTime), N'::1', NULL, CAST(N'2016-01-12 16:58:32.560' AS DateTime), 0, CAST(N'2016-01-12 16:58:32.560' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30054, 90, CAST(N'2016-01-13 14:19:48.700' AS DateTime), CAST(N'2016-01-13 14:19:48.700' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 14:19:48.700' AS DateTime), 0, CAST(N'2016-01-13 14:19:48.700' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30055, 91, CAST(N'2016-01-13 14:20:25.597' AS DateTime), CAST(N'2016-01-13 14:20:25.597' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 14:20:25.597' AS DateTime), 0, CAST(N'2016-01-13 14:20:25.597' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30056, 91, CAST(N'2016-01-13 15:29:21.090' AS DateTime), CAST(N'2016-01-13 15:29:21.090' AS DateTime), N'::1', NULL, CAST(N'2016-01-13 15:29:21.090' AS DateTime), 0, CAST(N'2016-01-13 15:29:21.090' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30057, 91, CAST(N'2016-01-13 15:46:41.810' AS DateTime), CAST(N'2016-01-13 15:46:41.810' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 15:46:41.810' AS DateTime), 0, CAST(N'2016-01-13 15:46:41.810' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30058, 91, CAST(N'2016-01-13 15:46:54.470' AS DateTime), CAST(N'2016-01-13 15:46:54.470' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 15:46:54.470' AS DateTime), 0, CAST(N'2016-01-13 15:46:54.470' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30059, 91, CAST(N'2016-01-13 17:27:36.790' AS DateTime), CAST(N'2016-01-13 17:27:36.790' AS DateTime), N'::1', NULL, CAST(N'2016-01-13 17:27:36.790' AS DateTime), 0, CAST(N'2016-01-13 17:27:36.790' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30060, 0, CAST(N'2016-01-13 18:42:17.097' AS DateTime), CAST(N'2016-01-13 18:42:17.097' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 18:42:17.097' AS DateTime), 0, CAST(N'2016-01-13 18:42:17.097' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30061, 0, CAST(N'2016-01-13 18:43:11.297' AS DateTime), CAST(N'2016-01-13 18:43:11.297' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 18:43:11.297' AS DateTime), 0, CAST(N'2016-01-13 18:43:11.297' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30062, 91, CAST(N'2016-01-13 18:44:32.777' AS DateTime), CAST(N'2016-01-13 18:44:32.777' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 18:44:32.777' AS DateTime), 0, CAST(N'2016-01-13 18:44:32.777' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30063, 91, CAST(N'2016-01-13 19:52:19.520' AS DateTime), CAST(N'2016-01-13 19:52:19.520' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 19:52:19.520' AS DateTime), 0, CAST(N'2016-01-13 19:52:19.520' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30064, 91, CAST(N'2016-01-13 19:58:14.367' AS DateTime), CAST(N'2016-01-13 19:58:14.367' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-13 19:58:14.367' AS DateTime), 0, CAST(N'2016-01-13 19:58:14.367' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30065, 91, CAST(N'2016-01-13 20:21:46.263' AS DateTime), CAST(N'2016-01-13 20:21:46.263' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 20:21:46.263' AS DateTime), 0, CAST(N'2016-01-13 20:21:46.263' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30066, 91, CAST(N'2016-01-13 20:21:54.450' AS DateTime), CAST(N'2016-01-13 20:21:54.450' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 20:21:54.450' AS DateTime), 0, CAST(N'2016-01-13 20:21:54.450' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30067, 91, CAST(N'2016-01-13 20:22:02.850' AS DateTime), CAST(N'2016-01-13 20:22:02.850' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 20:22:02.850' AS DateTime), 0, CAST(N'2016-01-13 20:22:02.850' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30068, 91, CAST(N'2016-01-13 20:23:42.610' AS DateTime), CAST(N'2016-01-13 20:23:42.610' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 20:23:42.610' AS DateTime), 0, CAST(N'2016-01-13 20:23:42.610' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30069, 91, CAST(N'2016-01-13 20:39:38.933' AS DateTime), CAST(N'2016-01-13 20:39:38.933' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 20:39:38.933' AS DateTime), 0, CAST(N'2016-01-13 20:39:38.933' AS DateTime), 0, 1, 0)
GO
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30070, 91, CAST(N'2016-01-13 20:40:14.573' AS DateTime), CAST(N'2016-01-13 20:40:14.573' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 20:40:14.573' AS DateTime), 0, CAST(N'2016-01-13 20:40:14.573' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30071, 91, CAST(N'2016-01-13 21:00:48.717' AS DateTime), CAST(N'2016-01-13 21:00:48.717' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 21:00:48.717' AS DateTime), 0, CAST(N'2016-01-13 21:00:48.717' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30072, 91, CAST(N'2016-01-13 21:07:58.057' AS DateTime), CAST(N'2016-01-13 21:07:58.057' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 21:07:58.057' AS DateTime), 0, CAST(N'2016-01-13 21:07:58.057' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30073, 91, CAST(N'2016-01-13 21:13:07.047' AS DateTime), CAST(N'2016-01-13 21:13:07.047' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 21:13:07.047' AS DateTime), 0, CAST(N'2016-01-13 21:13:07.047' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30074, 91, CAST(N'2016-01-13 21:26:07.733' AS DateTime), CAST(N'2016-01-13 21:26:07.733' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-13 21:26:07.733' AS DateTime), 0, CAST(N'2016-01-13 21:26:07.733' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30075, 91, CAST(N'2016-01-14 11:12:53.560' AS DateTime), CAST(N'2016-01-14 11:12:53.560' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 11:12:53.560' AS DateTime), 0, CAST(N'2016-01-14 11:12:53.560' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30076, 91, CAST(N'2016-01-14 11:21:04.210' AS DateTime), CAST(N'2016-01-14 11:21:04.210' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 11:21:04.210' AS DateTime), 0, CAST(N'2016-01-14 11:21:04.210' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30077, 91, CAST(N'2016-01-14 11:30:08.883' AS DateTime), CAST(N'2016-01-14 11:30:08.883' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:30:08.883' AS DateTime), 0, CAST(N'2016-01-14 11:30:08.883' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30078, 91, CAST(N'2016-01-14 11:36:50.537' AS DateTime), CAST(N'2016-01-14 11:36:50.537' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:36:50.537' AS DateTime), 0, CAST(N'2016-01-14 11:36:50.537' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30079, 91, CAST(N'2016-01-14 11:37:33.833' AS DateTime), CAST(N'2016-01-14 11:37:33.833' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:37:33.833' AS DateTime), 0, CAST(N'2016-01-14 11:37:33.833' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30080, 91, CAST(N'2016-01-14 11:38:12.240' AS DateTime), CAST(N'2016-01-14 11:38:12.240' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:38:12.240' AS DateTime), 0, CAST(N'2016-01-14 11:38:12.240' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30081, 91, CAST(N'2016-01-14 11:42:58.833' AS DateTime), CAST(N'2016-01-14 11:42:58.833' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 11:42:58.833' AS DateTime), 0, CAST(N'2016-01-14 11:42:58.833' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30082, 91, CAST(N'2016-01-14 11:45:59.177' AS DateTime), CAST(N'2016-01-14 11:45:59.177' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:45:59.177' AS DateTime), 0, CAST(N'2016-01-14 11:45:59.177' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30083, 91, CAST(N'2016-01-14 11:48:19.787' AS DateTime), CAST(N'2016-01-14 11:48:19.787' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:48:19.787' AS DateTime), 0, CAST(N'2016-01-14 11:48:19.787' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30084, 91, CAST(N'2016-01-14 11:52:30.437' AS DateTime), CAST(N'2016-01-14 11:52:30.437' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:52:30.437' AS DateTime), 0, CAST(N'2016-01-14 11:52:30.437' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30085, 91, CAST(N'2016-01-14 11:59:34.820' AS DateTime), CAST(N'2016-01-14 11:59:34.820' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 11:59:34.820' AS DateTime), 0, CAST(N'2016-01-14 11:59:34.820' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30086, 91, CAST(N'2016-01-14 12:59:48.887' AS DateTime), CAST(N'2016-01-14 12:59:48.887' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 12:59:48.887' AS DateTime), 0, CAST(N'2016-01-14 12:59:48.887' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30087, 91, CAST(N'2016-01-14 13:00:05.983' AS DateTime), CAST(N'2016-01-14 13:00:05.983' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:00:05.983' AS DateTime), 0, CAST(N'2016-01-14 13:00:05.983' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30088, 91, CAST(N'2016-01-14 13:01:15.023' AS DateTime), CAST(N'2016-01-14 13:01:15.023' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:01:15.023' AS DateTime), 0, CAST(N'2016-01-14 13:01:15.023' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30089, 91, CAST(N'2016-01-14 13:03:08.667' AS DateTime), CAST(N'2016-01-14 13:03:08.667' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:03:08.667' AS DateTime), 0, CAST(N'2016-01-14 13:03:08.667' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30090, 91, CAST(N'2016-01-14 13:04:49.450' AS DateTime), CAST(N'2016-01-14 13:04:49.450' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:04:49.450' AS DateTime), 0, CAST(N'2016-01-14 13:04:49.450' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30091, 91, CAST(N'2016-01-14 13:06:34.650' AS DateTime), CAST(N'2016-01-14 13:06:34.650' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:06:34.650' AS DateTime), 0, CAST(N'2016-01-14 13:06:34.650' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30092, 91, CAST(N'2016-01-14 13:07:53.977' AS DateTime), CAST(N'2016-01-14 13:07:53.977' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:07:53.977' AS DateTime), 0, CAST(N'2016-01-14 13:07:53.977' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30093, 91, CAST(N'2016-01-14 13:10:15.150' AS DateTime), CAST(N'2016-01-14 13:10:15.150' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:10:15.150' AS DateTime), 0, CAST(N'2016-01-14 13:10:15.150' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30094, 91, CAST(N'2016-01-14 13:10:29.837' AS DateTime), CAST(N'2016-01-14 13:10:29.837' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:10:29.837' AS DateTime), 0, CAST(N'2016-01-14 13:10:29.837' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30095, 91, CAST(N'2016-01-14 13:10:34.460' AS DateTime), CAST(N'2016-01-14 13:10:34.460' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:10:34.460' AS DateTime), 0, CAST(N'2016-01-14 13:10:34.460' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30096, 91, CAST(N'2016-01-14 13:13:42.150' AS DateTime), CAST(N'2016-01-14 13:13:42.150' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 13:13:42.150' AS DateTime), 0, CAST(N'2016-01-14 13:13:42.150' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30097, 91, CAST(N'2016-01-14 13:19:16.010' AS DateTime), CAST(N'2016-01-14 13:19:16.010' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 13:19:16.010' AS DateTime), 0, CAST(N'2016-01-14 13:19:16.010' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30098, 91, CAST(N'2016-01-14 13:19:34.713' AS DateTime), CAST(N'2016-01-14 13:19:34.713' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 13:19:34.713' AS DateTime), 0, CAST(N'2016-01-14 13:19:34.713' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30099, 91, CAST(N'2016-01-14 13:21:22.173' AS DateTime), CAST(N'2016-01-14 13:21:22.173' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 13:21:22.173' AS DateTime), 0, CAST(N'2016-01-14 13:21:22.173' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30100, 91, CAST(N'2016-01-14 13:25:10.730' AS DateTime), CAST(N'2016-01-14 13:25:10.730' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 13:25:10.730' AS DateTime), 0, CAST(N'2016-01-14 13:25:10.730' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30101, 91, CAST(N'2016-01-14 13:56:11.857' AS DateTime), CAST(N'2016-01-14 13:56:11.857' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 13:56:11.857' AS DateTime), 0, CAST(N'2016-01-14 13:56:11.857' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30102, 91, CAST(N'2016-01-14 14:01:35.090' AS DateTime), CAST(N'2016-01-14 14:01:35.090' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 14:01:35.090' AS DateTime), 0, CAST(N'2016-01-14 14:01:35.090' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30103, 91, CAST(N'2016-01-14 14:03:18.407' AS DateTime), CAST(N'2016-01-14 14:03:18.407' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 14:03:18.407' AS DateTime), 0, CAST(N'2016-01-14 14:03:18.407' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30104, 91, CAST(N'2016-01-14 14:12:43.080' AS DateTime), CAST(N'2016-01-14 14:12:43.080' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 14:12:43.080' AS DateTime), 0, CAST(N'2016-01-14 14:12:43.080' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30105, 91, CAST(N'2016-01-14 15:02:47.047' AS DateTime), CAST(N'2016-01-14 15:02:47.047' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 15:02:47.047' AS DateTime), 0, CAST(N'2016-01-14 15:02:47.047' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30106, 91, CAST(N'2016-01-14 15:06:58.583' AS DateTime), CAST(N'2016-01-14 15:06:58.583' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 15:06:58.583' AS DateTime), 0, CAST(N'2016-01-14 15:06:58.583' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30107, 91, CAST(N'2016-01-14 15:07:43.217' AS DateTime), CAST(N'2016-01-14 15:07:43.217' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 15:07:43.217' AS DateTime), 0, CAST(N'2016-01-14 15:07:43.217' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30108, 91, CAST(N'2016-01-14 15:07:53.010' AS DateTime), CAST(N'2016-01-14 15:07:53.010' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 15:07:53.010' AS DateTime), 0, CAST(N'2016-01-14 15:07:53.010' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30109, 91, CAST(N'2016-01-14 15:09:01.717' AS DateTime), CAST(N'2016-01-14 15:09:01.717' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 15:09:01.717' AS DateTime), 0, CAST(N'2016-01-14 15:09:01.717' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30110, 91, CAST(N'2016-01-14 15:11:20.813' AS DateTime), CAST(N'2016-01-14 15:11:20.813' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 15:11:20.813' AS DateTime), 0, CAST(N'2016-01-14 15:11:20.813' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30111, 91, CAST(N'2016-01-14 15:23:42.500' AS DateTime), CAST(N'2016-01-14 15:23:42.500' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 15:23:42.500' AS DateTime), 0, CAST(N'2016-01-14 15:23:42.500' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30112, 91, CAST(N'2016-01-14 15:24:12.500' AS DateTime), CAST(N'2016-01-14 15:24:12.500' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 15:24:12.500' AS DateTime), 0, CAST(N'2016-01-14 15:24:12.500' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30113, 91, CAST(N'2016-01-14 15:27:26.687' AS DateTime), CAST(N'2016-01-14 15:27:26.687' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 15:27:26.687' AS DateTime), 0, CAST(N'2016-01-14 15:27:26.687' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30114, 91, CAST(N'2016-01-14 15:47:39.443' AS DateTime), CAST(N'2016-01-14 15:47:39.443' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 15:47:39.443' AS DateTime), 0, CAST(N'2016-01-14 15:47:39.443' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30115, 90, CAST(N'2016-01-14 15:50:42.830' AS DateTime), CAST(N'2016-01-14 15:50:42.830' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 15:50:42.830' AS DateTime), 0, CAST(N'2016-01-14 15:50:42.830' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30116, 90, CAST(N'2016-01-14 15:51:59.633' AS DateTime), CAST(N'2016-01-14 15:51:59.633' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 15:51:59.633' AS DateTime), 0, CAST(N'2016-01-14 15:51:59.633' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30117, 91, CAST(N'2016-01-14 15:52:31.813' AS DateTime), CAST(N'2016-01-14 15:52:31.813' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 15:52:31.813' AS DateTime), 0, CAST(N'2016-01-14 15:52:31.813' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30118, 91, CAST(N'2016-01-14 15:57:13.797' AS DateTime), CAST(N'2016-01-14 15:57:13.797' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 15:57:13.797' AS DateTime), 0, CAST(N'2016-01-14 15:57:13.797' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30119, 91, CAST(N'2016-01-14 16:00:36.357' AS DateTime), CAST(N'2016-01-14 16:00:36.357' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:00:36.357' AS DateTime), 0, CAST(N'2016-01-14 16:00:36.357' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30120, 91, CAST(N'2016-01-14 16:02:06.307' AS DateTime), CAST(N'2016-01-14 16:02:06.307' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:02:06.307' AS DateTime), 0, CAST(N'2016-01-14 16:02:06.307' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30121, 91, CAST(N'2016-01-14 16:03:06.203' AS DateTime), CAST(N'2016-01-14 16:03:06.203' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:03:06.203' AS DateTime), 0, CAST(N'2016-01-14 16:03:06.203' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30122, 91, CAST(N'2016-01-14 16:05:43.140' AS DateTime), CAST(N'2016-01-14 16:05:43.140' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:05:43.140' AS DateTime), 0, CAST(N'2016-01-14 16:05:43.140' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30123, 91, CAST(N'2016-01-14 16:08:33.477' AS DateTime), CAST(N'2016-01-14 16:08:33.477' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 16:08:33.477' AS DateTime), 0, CAST(N'2016-01-14 16:08:33.477' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30124, 91, CAST(N'2016-01-14 16:09:14.067' AS DateTime), CAST(N'2016-01-14 16:09:14.067' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:09:14.067' AS DateTime), 0, CAST(N'2016-01-14 16:09:14.067' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30125, 91, CAST(N'2016-01-14 16:11:40.950' AS DateTime), CAST(N'2016-01-14 16:11:40.950' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:11:40.950' AS DateTime), 0, CAST(N'2016-01-14 16:11:40.950' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30126, 0, CAST(N'2016-01-14 16:31:24.620' AS DateTime), CAST(N'2016-01-14 16:31:24.620' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:31:24.620' AS DateTime), 0, CAST(N'2016-01-14 16:31:24.620' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30127, 10097, CAST(N'2016-01-14 16:31:32.883' AS DateTime), CAST(N'2016-01-14 16:31:32.883' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:31:32.883' AS DateTime), 0, CAST(N'2016-01-14 16:31:32.883' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30128, 91, CAST(N'2016-01-14 16:39:31.390' AS DateTime), CAST(N'2016-01-14 16:39:31.390' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 16:39:31.390' AS DateTime), 0, CAST(N'2016-01-14 16:39:31.390' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30129, 91, CAST(N'2016-01-14 17:00:23.190' AS DateTime), CAST(N'2016-01-14 17:00:23.190' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 17:00:23.190' AS DateTime), 0, CAST(N'2016-01-14 17:00:23.190' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30130, 91, CAST(N'2016-01-14 17:42:22.910' AS DateTime), CAST(N'2016-01-14 17:42:22.910' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 17:42:22.910' AS DateTime), 0, CAST(N'2016-01-14 17:42:22.910' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30131, 91, CAST(N'2016-01-14 17:44:49.577' AS DateTime), CAST(N'2016-01-14 17:44:49.577' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 17:44:49.577' AS DateTime), 0, CAST(N'2016-01-14 17:44:49.577' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30132, 91, CAST(N'2016-01-14 18:00:31.880' AS DateTime), CAST(N'2016-01-14 18:00:31.880' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 18:00:31.880' AS DateTime), 0, CAST(N'2016-01-14 18:00:31.880' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30133, 91, CAST(N'2016-01-14 18:00:57.210' AS DateTime), CAST(N'2016-01-14 18:00:57.210' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 18:00:57.210' AS DateTime), 0, CAST(N'2016-01-14 18:00:57.210' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30134, 91, CAST(N'2016-01-14 18:02:38.790' AS DateTime), CAST(N'2016-01-14 18:02:38.790' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 18:02:38.790' AS DateTime), 0, CAST(N'2016-01-14 18:02:38.790' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30135, 91, CAST(N'2016-01-14 18:16:20.633' AS DateTime), CAST(N'2016-01-14 18:16:20.633' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 18:16:20.633' AS DateTime), 0, CAST(N'2016-01-14 18:16:20.633' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30136, 91, CAST(N'2016-01-14 18:16:37.523' AS DateTime), CAST(N'2016-01-14 18:16:37.523' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 18:16:37.523' AS DateTime), 0, CAST(N'2016-01-14 18:16:37.523' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30137, 91, CAST(N'2016-01-14 18:30:53.097' AS DateTime), CAST(N'2016-01-14 18:30:53.097' AS DateTime), N'::1', NULL, CAST(N'2016-01-14 18:30:53.097' AS DateTime), 0, CAST(N'2016-01-14 18:30:53.097' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30138, 91, CAST(N'2016-01-14 18:55:32.490' AS DateTime), CAST(N'2016-01-14 18:55:32.490' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 18:55:32.490' AS DateTime), 0, CAST(N'2016-01-14 18:55:32.490' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30139, 91, CAST(N'2016-01-14 19:11:03.573' AS DateTime), CAST(N'2016-01-14 19:11:03.573' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-14 19:11:03.573' AS DateTime), 0, CAST(N'2016-01-14 19:11:03.573' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30140, 91, CAST(N'2016-01-14 20:54:34.290' AS DateTime), CAST(N'2016-01-14 20:54:34.290' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 20:54:34.290' AS DateTime), 0, CAST(N'2016-01-14 20:54:34.290' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30141, 91, CAST(N'2016-01-14 21:07:29.557' AS DateTime), CAST(N'2016-01-14 21:07:29.557' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 21:07:29.557' AS DateTime), 0, CAST(N'2016-01-14 21:07:29.557' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30142, 91, CAST(N'2016-01-14 21:07:32.373' AS DateTime), CAST(N'2016-01-14 21:07:32.373' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 21:07:32.373' AS DateTime), 0, CAST(N'2016-01-14 21:07:32.373' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30143, 91, CAST(N'2016-01-14 21:09:52.087' AS DateTime), CAST(N'2016-01-14 21:09:52.087' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 21:09:52.087' AS DateTime), 0, CAST(N'2016-01-14 21:09:52.087' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30144, 91, CAST(N'2016-01-14 21:17:25.160' AS DateTime), CAST(N'2016-01-14 21:17:25.160' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 21:17:25.160' AS DateTime), 0, CAST(N'2016-01-14 21:17:25.160' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30145, 91, CAST(N'2016-01-14 21:18:34.950' AS DateTime), CAST(N'2016-01-14 21:18:34.950' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-14 21:18:34.950' AS DateTime), 0, CAST(N'2016-01-14 21:18:34.950' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30146, 91, CAST(N'2016-01-15 11:05:20.973' AS DateTime), CAST(N'2016-01-15 11:05:20.973' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 11:05:20.973' AS DateTime), 0, CAST(N'2016-01-15 11:05:20.973' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30147, 91, CAST(N'2016-01-15 11:20:13.680' AS DateTime), CAST(N'2016-01-15 11:20:13.680' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 11:20:13.680' AS DateTime), 0, CAST(N'2016-01-15 11:20:13.680' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30148, 91, CAST(N'2016-01-15 11:32:33.130' AS DateTime), CAST(N'2016-01-15 11:32:33.130' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-15 11:32:33.130' AS DateTime), 0, CAST(N'2016-01-15 11:32:33.130' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30149, 91, CAST(N'2016-01-15 12:45:01.153' AS DateTime), CAST(N'2016-01-15 12:45:01.153' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-15 12:45:01.153' AS DateTime), 0, CAST(N'2016-01-15 12:45:01.153' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30150, 91, CAST(N'2016-01-15 12:57:28.010' AS DateTime), CAST(N'2016-01-15 12:57:28.010' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-15 12:57:28.010' AS DateTime), 0, CAST(N'2016-01-15 12:57:28.010' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30151, 90, CAST(N'2016-01-15 13:37:39.897' AS DateTime), CAST(N'2016-01-15 13:37:39.897' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:37:39.897' AS DateTime), 0, CAST(N'2016-01-15 13:37:39.897' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30152, 91, CAST(N'2016-01-15 13:37:58.363' AS DateTime), CAST(N'2016-01-15 13:37:58.363' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:37:58.363' AS DateTime), 0, CAST(N'2016-01-15 13:37:58.363' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30153, 90, CAST(N'2016-01-15 13:38:46.160' AS DateTime), CAST(N'2016-01-15 13:38:46.160' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:38:46.160' AS DateTime), 0, CAST(N'2016-01-15 13:38:46.160' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30154, 91, CAST(N'2016-01-15 13:40:45.837' AS DateTime), CAST(N'2016-01-15 13:40:45.837' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:40:45.837' AS DateTime), 0, CAST(N'2016-01-15 13:40:45.837' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30155, 90, CAST(N'2016-01-15 13:42:26.220' AS DateTime), CAST(N'2016-01-15 13:42:26.220' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:42:26.220' AS DateTime), 0, CAST(N'2016-01-15 13:42:26.220' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30156, 91, CAST(N'2016-01-15 13:50:05.153' AS DateTime), CAST(N'2016-01-15 13:50:05.153' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:50:05.153' AS DateTime), 0, CAST(N'2016-01-15 13:50:05.153' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30157, 91, CAST(N'2016-01-15 13:54:46.737' AS DateTime), CAST(N'2016-01-15 13:54:46.737' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 13:54:46.737' AS DateTime), 0, CAST(N'2016-01-15 13:54:46.737' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30158, 91, CAST(N'2016-01-15 14:16:02.000' AS DateTime), CAST(N'2016-01-15 14:16:02.000' AS DateTime), N'::1', NULL, CAST(N'2016-01-15 14:16:02.000' AS DateTime), 0, CAST(N'2016-01-15 14:16:02.000' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30159, 91, CAST(N'2016-01-15 15:15:59.760' AS DateTime), CAST(N'2016-01-15 15:15:59.760' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 15:15:59.760' AS DateTime), 0, CAST(N'2016-01-15 15:15:59.760' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30160, 91, CAST(N'2016-01-15 15:25:49.683' AS DateTime), CAST(N'2016-01-15 15:25:49.683' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 15:25:49.683' AS DateTime), 0, CAST(N'2016-01-15 15:25:49.683' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30161, 91, CAST(N'2016-01-15 15:56:17.657' AS DateTime), CAST(N'2016-01-15 15:56:17.657' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 15:56:17.657' AS DateTime), 0, CAST(N'2016-01-15 15:56:17.657' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30162, 91, CAST(N'2016-01-15 15:58:03.957' AS DateTime), CAST(N'2016-01-15 15:58:03.957' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 15:58:03.957' AS DateTime), 0, CAST(N'2016-01-15 15:58:03.957' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30163, 91, CAST(N'2016-01-15 16:24:46.860' AS DateTime), CAST(N'2016-01-15 16:24:46.860' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 16:24:46.860' AS DateTime), 0, CAST(N'2016-01-15 16:24:46.860' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30164, 91, CAST(N'2016-01-15 16:32:47.640' AS DateTime), CAST(N'2016-01-15 16:32:47.640' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 16:32:47.640' AS DateTime), 0, CAST(N'2016-01-15 16:32:47.640' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30165, 91, CAST(N'2016-01-15 16:47:17.067' AS DateTime), CAST(N'2016-01-15 16:47:17.067' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 16:47:17.067' AS DateTime), 0, CAST(N'2016-01-15 16:47:17.067' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30166, 91, CAST(N'2016-01-15 16:52:06.783' AS DateTime), CAST(N'2016-01-15 16:52:06.783' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 16:52:06.783' AS DateTime), 0, CAST(N'2016-01-15 16:52:06.783' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30167, 91, CAST(N'2016-01-15 17:01:12.970' AS DateTime), CAST(N'2016-01-15 17:01:12.970' AS DateTime), N'192.168.0.39', NULL, CAST(N'2016-01-15 17:01:12.970' AS DateTime), 0, CAST(N'2016-01-15 17:01:12.970' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30168, 91, CAST(N'2016-01-15 17:18:24.747' AS DateTime), CAST(N'2016-01-15 17:18:24.747' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-15 17:18:24.747' AS DateTime), 0, CAST(N'2016-01-15 17:18:24.747' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30169, 91, CAST(N'2016-01-15 17:25:34.113' AS DateTime), CAST(N'2016-01-15 17:25:34.113' AS DateTime), N'192.168.0.44', NULL, CAST(N'2016-01-15 17:25:34.113' AS DateTime), 0, CAST(N'2016-01-15 17:25:34.113' AS DateTime), 0, 1, 0)
GO
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30170, 91, CAST(N'2016-01-16 11:57:17.777' AS DateTime), CAST(N'2016-01-16 11:57:17.777' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 11:57:17.777' AS DateTime), 0, CAST(N'2016-01-16 11:57:17.777' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30171, 91, CAST(N'2016-01-16 11:57:17.777' AS DateTime), CAST(N'2016-01-16 11:57:17.777' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 11:57:17.777' AS DateTime), 0, CAST(N'2016-01-16 11:57:17.777' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30172, 91, CAST(N'2016-01-16 11:58:03.160' AS DateTime), CAST(N'2016-01-16 11:58:03.160' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 11:58:03.160' AS DateTime), 0, CAST(N'2016-01-16 11:58:03.160' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30173, 91, CAST(N'2016-01-16 11:58:47.707' AS DateTime), CAST(N'2016-01-16 11:58:47.707' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 11:58:47.707' AS DateTime), 0, CAST(N'2016-01-16 11:58:47.707' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30174, 91, CAST(N'2016-01-16 12:21:09.147' AS DateTime), CAST(N'2016-01-16 12:21:09.147' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 12:21:09.147' AS DateTime), 0, CAST(N'2016-01-16 12:21:09.147' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30175, 91, CAST(N'2016-01-16 13:10:14.917' AS DateTime), CAST(N'2016-01-16 13:10:14.917' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 13:10:14.917' AS DateTime), 0, CAST(N'2016-01-16 13:10:14.917' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30176, 0, CAST(N'2016-01-16 15:19:29.720' AS DateTime), CAST(N'2016-01-16 15:19:29.720' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 15:19:29.720' AS DateTime), 0, CAST(N'2016-01-16 15:19:29.720' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30177, 91, CAST(N'2016-01-16 15:19:36.703' AS DateTime), CAST(N'2016-01-16 15:19:36.703' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 15:19:36.703' AS DateTime), 0, CAST(N'2016-01-16 15:19:36.703' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30178, 0, CAST(N'2016-01-16 15:38:59.867' AS DateTime), CAST(N'2016-01-16 15:38:59.867' AS DateTime), N'::1', NULL, CAST(N'2016-01-16 15:38:59.867' AS DateTime), 0, CAST(N'2016-01-16 15:38:59.867' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30179, 0, CAST(N'2016-01-16 15:39:07.143' AS DateTime), CAST(N'2016-01-16 15:39:07.143' AS DateTime), N'::1', NULL, CAST(N'2016-01-16 15:39:07.143' AS DateTime), 0, CAST(N'2016-01-16 15:39:07.143' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30180, 0, CAST(N'2016-01-16 15:51:34.017' AS DateTime), CAST(N'2016-01-16 15:51:34.017' AS DateTime), N'::1', NULL, CAST(N'2016-01-16 15:51:34.017' AS DateTime), 0, CAST(N'2016-01-16 15:51:34.017' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30181, 90, CAST(N'2016-01-16 15:51:40.463' AS DateTime), CAST(N'2016-01-16 15:51:40.463' AS DateTime), N'::1', NULL, CAST(N'2016-01-16 15:51:40.463' AS DateTime), 0, CAST(N'2016-01-16 15:51:40.463' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30182, 91, CAST(N'2016-01-16 15:55:18.037' AS DateTime), CAST(N'2016-01-16 15:55:18.037' AS DateTime), N'::1', NULL, CAST(N'2016-01-16 15:55:18.037' AS DateTime), 0, CAST(N'2016-01-16 15:55:18.037' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30183, 91, CAST(N'2016-01-16 16:06:53.920' AS DateTime), CAST(N'2016-01-16 16:06:53.920' AS DateTime), N'::1', NULL, CAST(N'2016-01-16 16:06:53.920' AS DateTime), 0, CAST(N'2016-01-16 16:06:53.920' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30184, 10099, CAST(N'2016-01-16 16:22:18.047' AS DateTime), CAST(N'2016-01-16 16:22:18.047' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 16:22:18.047' AS DateTime), 0, CAST(N'2016-01-16 16:22:18.047' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30185, 10099, CAST(N'2016-01-16 16:24:27.510' AS DateTime), CAST(N'2016-01-16 16:24:27.510' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 16:24:27.510' AS DateTime), 0, CAST(N'2016-01-16 16:24:27.510' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30186, 10099, CAST(N'2016-01-16 16:28:50.387' AS DateTime), CAST(N'2016-01-16 16:28:50.387' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 16:28:50.387' AS DateTime), 0, CAST(N'2016-01-16 16:28:50.387' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30187, 10099, CAST(N'2016-01-16 16:29:34.247' AS DateTime), CAST(N'2016-01-16 16:29:34.247' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 16:29:34.247' AS DateTime), 0, CAST(N'2016-01-16 16:29:34.247' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30188, 10099, CAST(N'2016-01-16 16:34:16.613' AS DateTime), CAST(N'2016-01-16 16:34:16.613' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 16:34:16.613' AS DateTime), 0, CAST(N'2016-01-16 16:34:16.613' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30189, 10099, CAST(N'2016-01-16 16:37:36.317' AS DateTime), CAST(N'2016-01-16 16:37:36.317' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 16:37:36.317' AS DateTime), 0, CAST(N'2016-01-16 16:37:36.317' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30190, 10099, CAST(N'2016-01-16 16:57:04.800' AS DateTime), CAST(N'2016-01-16 16:57:04.800' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-16 16:57:04.800' AS DateTime), 0, CAST(N'2016-01-16 16:57:04.800' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30191, 10099, CAST(N'2016-01-16 17:23:32.710' AS DateTime), CAST(N'2016-01-16 17:23:32.710' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 17:23:32.710' AS DateTime), 0, CAST(N'2016-01-16 17:23:32.710' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30192, 10099, CAST(N'2016-01-16 17:30:21.763' AS DateTime), CAST(N'2016-01-16 17:30:21.763' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 17:30:21.763' AS DateTime), 0, CAST(N'2016-01-16 17:30:21.763' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30193, 10099, CAST(N'2016-01-16 17:46:55.163' AS DateTime), CAST(N'2016-01-16 17:46:55.163' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-16 17:46:55.163' AS DateTime), 0, CAST(N'2016-01-16 17:46:55.163' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30194, 10099, CAST(N'2016-01-18 11:07:29.410' AS DateTime), CAST(N'2016-01-18 11:07:29.410' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:07:29.410' AS DateTime), 0, CAST(N'2016-01-18 11:07:29.410' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30195, 10099, CAST(N'2016-01-18 11:28:12.900' AS DateTime), CAST(N'2016-01-18 11:28:12.900' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:28:12.900' AS DateTime), 0, CAST(N'2016-01-18 11:28:12.900' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30196, 10099, CAST(N'2016-01-18 11:30:42.070' AS DateTime), CAST(N'2016-01-18 11:30:42.070' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:30:42.070' AS DateTime), 0, CAST(N'2016-01-18 11:30:42.070' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30197, 10099, CAST(N'2016-01-18 11:31:33.227' AS DateTime), CAST(N'2016-01-18 11:31:33.227' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:31:33.227' AS DateTime), 0, CAST(N'2016-01-18 11:31:33.227' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30198, 10099, CAST(N'2016-01-18 11:31:36.430' AS DateTime), CAST(N'2016-01-18 11:31:36.430' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:31:36.430' AS DateTime), 0, CAST(N'2016-01-18 11:31:36.430' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30199, 10099, CAST(N'2016-01-18 11:32:36.663' AS DateTime), CAST(N'2016-01-18 11:32:36.663' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:32:36.663' AS DateTime), 0, CAST(N'2016-01-18 11:32:36.663' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30200, 10099, CAST(N'2016-01-18 11:33:43.727' AS DateTime), CAST(N'2016-01-18 11:33:43.727' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:33:43.727' AS DateTime), 0, CAST(N'2016-01-18 11:33:43.727' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30201, 10099, CAST(N'2016-01-18 11:36:17.290' AS DateTime), CAST(N'2016-01-18 11:36:17.290' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:36:17.290' AS DateTime), 0, CAST(N'2016-01-18 11:36:17.290' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30202, 10099, CAST(N'2016-01-18 11:39:30.960' AS DateTime), CAST(N'2016-01-18 11:39:30.960' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:39:30.960' AS DateTime), 0, CAST(N'2016-01-18 11:39:30.960' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30203, 10099, CAST(N'2016-01-18 11:41:10.930' AS DateTime), CAST(N'2016-01-18 11:41:10.930' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 11:41:10.930' AS DateTime), 0, CAST(N'2016-01-18 11:41:10.930' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30204, 10099, CAST(N'2016-01-18 12:18:44.063' AS DateTime), CAST(N'2016-01-18 12:18:44.063' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 12:18:44.063' AS DateTime), 0, CAST(N'2016-01-18 12:18:44.063' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30205, 10099, CAST(N'2016-01-18 12:31:47.923' AS DateTime), CAST(N'2016-01-18 12:31:47.923' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 12:31:47.923' AS DateTime), 0, CAST(N'2016-01-18 12:31:47.923' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30206, 10099, CAST(N'2016-01-18 12:31:54.250' AS DateTime), CAST(N'2016-01-18 12:31:54.250' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 12:31:54.250' AS DateTime), 0, CAST(N'2016-01-18 12:31:54.250' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30207, 10099, CAST(N'2016-01-18 13:09:08.307' AS DateTime), CAST(N'2016-01-18 13:09:08.307' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 13:09:08.307' AS DateTime), 0, CAST(N'2016-01-18 13:09:08.307' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30208, 10099, CAST(N'2016-01-18 13:27:51.340' AS DateTime), CAST(N'2016-01-18 13:27:51.340' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 13:27:51.340' AS DateTime), 0, CAST(N'2016-01-18 13:27:51.343' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30209, 10099, CAST(N'2016-01-18 14:31:15.430' AS DateTime), CAST(N'2016-01-18 14:31:15.430' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 14:31:15.430' AS DateTime), 0, CAST(N'2016-01-18 14:31:15.430' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30210, 10099, CAST(N'2016-01-18 14:32:58.620' AS DateTime), CAST(N'2016-01-18 14:32:58.620' AS DateTime), N'192.168.0.221', NULL, CAST(N'2016-01-18 14:32:58.620' AS DateTime), 0, CAST(N'2016-01-18 14:32:58.620' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30211, 10099, CAST(N'2016-01-18 15:01:21.887' AS DateTime), CAST(N'2016-01-18 15:01:21.887' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 15:01:21.887' AS DateTime), 0, CAST(N'2016-01-18 15:01:21.887' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30212, 10099, CAST(N'2016-01-18 16:32:32.437' AS DateTime), CAST(N'2016-01-18 16:32:32.437' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 16:32:32.437' AS DateTime), 0, CAST(N'2016-01-18 16:32:32.437' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30213, 10099, CAST(N'2016-01-18 16:53:16.187' AS DateTime), CAST(N'2016-01-18 16:53:16.187' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 16:53:16.187' AS DateTime), 0, CAST(N'2016-01-18 16:53:16.187' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30214, 10099, CAST(N'2016-01-18 17:02:02.670' AS DateTime), CAST(N'2016-01-18 17:02:02.670' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 17:02:02.670' AS DateTime), 0, CAST(N'2016-01-18 17:02:02.670' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30215, 10099, CAST(N'2016-01-18 17:58:18.697' AS DateTime), CAST(N'2016-01-18 17:58:18.697' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 17:58:18.697' AS DateTime), 0, CAST(N'2016-01-18 17:58:18.697' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30216, 10099, CAST(N'2016-01-18 18:09:45.807' AS DateTime), CAST(N'2016-01-18 18:09:45.807' AS DateTime), N'192.168.0.44', NULL, CAST(N'2016-01-18 18:09:45.807' AS DateTime), 0, CAST(N'2016-01-18 18:09:45.807' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30217, 10099, CAST(N'2016-01-18 18:29:41.327' AS DateTime), CAST(N'2016-01-18 18:29:41.327' AS DateTime), N'::1', NULL, CAST(N'2016-01-18 18:29:41.327' AS DateTime), 0, CAST(N'2016-01-18 18:29:41.327' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30218, 0, CAST(N'2016-01-18 19:05:06.873' AS DateTime), CAST(N'2016-01-18 19:05:06.873' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 19:05:06.873' AS DateTime), 0, CAST(N'2016-01-18 19:05:06.873' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30219, 91, CAST(N'2016-01-18 19:05:14.337' AS DateTime), CAST(N'2016-01-18 19:05:14.337' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-18 19:05:14.337' AS DateTime), 0, CAST(N'2016-01-18 19:05:14.337' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30220, 91, CAST(N'2016-01-19 11:36:51.833' AS DateTime), CAST(N'2016-01-19 11:36:51.833' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-19 11:36:51.833' AS DateTime), 0, CAST(N'2016-01-19 11:36:51.833' AS DateTime), 0, 1, 0)
INSERT [dbo].[LoginDetail_Tbl] ([LoginDetailId], [UserId], [Login], [Logout], [LoginIp], [LogoutIp], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (30221, 91, CAST(N'2016-01-19 13:16:58.380' AS DateTime), CAST(N'2016-01-19 13:16:58.380' AS DateTime), N'192.168.0.179', NULL, CAST(N'2016-01-19 13:16:58.380' AS DateTime), 0, CAST(N'2016-01-19 13:16:58.380' AS DateTime), 0, 1, 0)
SET IDENTITY_INSERT [dbo].[LoginDetail_Tbl] OFF
SET IDENTITY_INSERT [dbo].[ModuleList_Tbl] ON 

INSERT [dbo].[ModuleList_Tbl] ([ModuleId], [Module_Name], [CreatedOn], [CreatedBy], [IsActive]) VALUES (1, N'User Management', CAST(N'2015-12-31' AS Date), 91, 1)
INSERT [dbo].[ModuleList_Tbl] ([ModuleId], [Module_Name], [CreatedOn], [CreatedBy], [IsActive]) VALUES (2, N'Property Level', CAST(N'2015-12-31' AS Date), 91, 1)
INSERT [dbo].[ModuleList_Tbl] ([ModuleId], [Module_Name], [CreatedOn], [CreatedBy], [IsActive]) VALUES (3, N'Company Level', CAST(N'2015-12-31' AS Date), 91, 1)
INSERT [dbo].[ModuleList_Tbl] ([ModuleId], [Module_Name], [CreatedOn], [CreatedBy], [IsActive]) VALUES (4, N'Tally Marketing', CAST(N'2015-12-31' AS Date), 91, 1)
INSERT [dbo].[ModuleList_Tbl] ([ModuleId], [Module_Name], [CreatedOn], [CreatedBy], [IsActive]) VALUES (5, N'Capital Project', CAST(N'2015-12-31' AS Date), 91, 1)
INSERT [dbo].[ModuleList_Tbl] ([ModuleId], [Module_Name], [CreatedOn], [CreatedBy], [IsActive]) VALUES (6, N'Work Order', CAST(N'2015-12-31' AS Date), 91, 1)
SET IDENTITY_INSERT [dbo].[ModuleList_Tbl] OFF
SET IDENTITY_INSERT [dbo].[Organization_Tbl] ON 

INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (53, N'Rising', N'StreetOrganization', 10069, 10083, NULL, NULL, 0, CAST(N'2015-12-30 12:50:58.770' AS DateTime), 86, CAST(N'2016-01-18 17:58:36.380' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (57, N'Organization Name', N'Organization Street', 10053, 10067, N'Organization', NULL, 0, CAST(N'2015-12-31 13:57:57.353' AS DateTime), 10094, CAST(N'2016-01-14 16:10:08.373' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (58, N'Super Organization', N'Organization_Street', 44, 1, N'Organization', N'', 0, CAST(N'2015-12-31 14:39:07.167' AS DateTime), 0, CAST(N'2016-01-19 13:17:07.597' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (59, N'Test Org 2', N'new street', 41, 27, N'Organization', NULL, 0, CAST(N'2016-01-08 16:28:31.713' AS DateTime), 10092, CAST(N'2016-01-14 16:20:54.220' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (60, N'Technocat', N'Organization_Street', 44, 1, N'Organization', NULL, 0, CAST(N'2016-01-14 13:43:17.133' AS DateTime), 10095, CAST(N'2016-01-14 15:37:54.407' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (61, N'fg', N'', 10054, 10068, N'Organization', NULL, 0, CAST(N'2016-01-14 15:40:00.483' AS DateTime), 10096, CAST(N'2016-01-14 16:16:58.973' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (62, N'Demo Org', N'', 10067, 10081, N'Organization', NULL, 0, CAST(N'2016-01-14 16:30:06.500' AS DateTime), 10097, CAST(N'2016-01-14 18:48:07.950' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (63, N'Nexa Motors', NULL, NULL, NULL, N'Organization', NULL, 0, CAST(N'2016-01-14 16:38:48.203' AS DateTime), 0, CAST(N'2016-01-14 16:38:48.203' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (64, N'Dfg', NULL, NULL, NULL, N'Organization', NULL, 0, CAST(N'2016-01-16 16:20:41.080' AS DateTime), 0, CAST(N'2016-01-16 16:20:41.080' AS DateTime), 1, 0)
INSERT [dbo].[Organization_Tbl] ([OrgId], [Name], [Street], [CityId], [StateId], [RegisteredAs], [Logo], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (65, N'', NULL, NULL, NULL, N'Individual', NULL, 0, CAST(N'2016-01-19 11:36:46.210' AS DateTime), 0, CAST(N'2016-01-19 11:36:46.210' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[Organization_Tbl] OFF
SET IDENTITY_INSERT [dbo].[Role_Tbl] ON 

INSERT [dbo].[Role_Tbl] ([RoleId], [RoleName], [OrgId], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (1, N'Super Admin', 58, NULL, 91, NULL, 1225, 1, 0)
INSERT [dbo].[Role_Tbl] ([RoleId], [RoleName], [OrgId], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (2, N'Organization Admin', 58, NULL, 91, NULL, 1225, 1, 0)
INSERT [dbo].[Role_Tbl] ([RoleId], [RoleName], [OrgId], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (3, N'general', 58, CAST(N'2016-01-02 13:50:49.010' AS DateTime), 91, CAST(N'2016-01-02 13:50:49.010' AS DateTime), 125, 1, 0)
INSERT [dbo].[Role_Tbl] ([RoleId], [RoleName], [OrgId], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsActive], [IsDeleted]) VALUES (6, N'Manager', 57, CAST(N'2016-01-11 13:39:55.847' AS DateTime), 90, CAST(N'2016-01-11 13:39:55.847' AS DateTime), 90, 1, 0)
SET IDENTITY_INSERT [dbo].[Role_Tbl] OFF
SET IDENTITY_INSERT [dbo].[State_Tbl] ON 

INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (1, N'Alabama', 125, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (2, N'Alaska', 156, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (3, N'Arizona', 499, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (4, N' Arkansas', 78878, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (5, N'California', 0, CAST(N'2015-12-28 20:07:48.213' AS DateTime), 0, CAST(N'2015-12-28 20:07:48.213' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (25, N'Colorado', 85, CAST(N'2015-12-31 13:55:19.420' AS DateTime), 85, CAST(N'2015-12-31 13:55:19.420' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (26, N'Connecticut', 90, CAST(N'2015-12-31 17:28:39.630' AS DateTime), 90, CAST(N'2015-12-31 17:28:39.630' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (27, N' Delaware', 90, CAST(N'2015-12-31 17:48:45.847' AS DateTime), 90, CAST(N'2015-12-31 17:48:45.847' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10026, N'Florida', 0, CAST(N'2016-01-05 15:35:55.703' AS DateTime), 0, CAST(N'2016-01-05 15:35:55.703' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10027, N'Georgia', 86, CAST(N'2016-01-08 12:52:22.490' AS DateTime), 86, CAST(N'2016-01-08 12:52:22.490' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10028, N'Hawaii', 92, CAST(N'2016-01-11 13:49:27.167' AS DateTime), 92, CAST(N'2016-01-11 13:49:27.167' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10029, N'Idaho', 10094, CAST(N'2016-01-11 13:51:13.453' AS DateTime), 10094, CAST(N'2016-01-11 13:51:13.453' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10030, N'Illinois', 86, CAST(N'2016-01-12 15:47:39.537' AS DateTime), 86, CAST(N'2016-01-12 15:47:39.537' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10031, N'Indiana', 86, CAST(N'2016-01-12 15:49:14.530' AS DateTime), 86, CAST(N'2016-01-12 15:49:14.530' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10032, N'Iowa', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10033, N'Kansas', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10034, N'Louisiana', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10035, N'Maine', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10036, N'Maryland', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10037, N' Michigan', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10038, N'Minnesota', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10039, N'Mississippi', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10040, N'Missouri', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10041, N'Montana', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10042, N'Nebraska', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10043, N' Nevada', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10044, N'New Jersey', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10045, N'New Mexico', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10046, N'New York', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10047, N'North Carolina', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10048, N'North Dakota', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10049, N' Ohio', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10050, N'Oklahoma', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10051, N' Oregon', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10052, N'Pennsylvania', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10053, N'Rhode Island', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10054, N' South Carolina', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10055, N' South Dakota', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10056, N'Tennessee', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10057, N'Texas', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10058, N' Utah', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10059, N' Vermont', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10060, N' Virginia', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10061, N' Washington', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10062, N' West Virginia', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10063, N'Wisconsin', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10064, N' Wyoming', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10065, N'Indiana', 86, CAST(N'2016-01-14 13:06:46.557' AS DateTime), 86, CAST(N'2016-01-14 13:06:46.557' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10066, N'Idaho', 10094, CAST(N'2016-01-14 16:06:24.173' AS DateTime), 10094, CAST(N'2016-01-14 16:06:24.173' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10067, N'Idaho', 10094, CAST(N'2016-01-14 16:10:08.370' AS DateTime), 10094, CAST(N'2016-01-14 16:10:08.370' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10068, N'Alabama', 10096, CAST(N'2016-01-14 16:16:58.970' AS DateTime), 10096, CAST(N'2016-01-14 16:16:58.970' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10069, N' Delaware', 10097, CAST(N'2016-01-14 17:09:13.897' AS DateTime), 10097, CAST(N'2016-01-14 17:09:13.897' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10070, N'Indiana', 86, CAST(N'2016-01-14 17:39:51.900' AS DateTime), 86, CAST(N'2016-01-14 17:39:51.900' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10071, N'Indiana', 86, CAST(N'2016-01-14 17:45:15.043' AS DateTime), 86, CAST(N'2016-01-14 17:45:15.043' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10072, N' Delaware', 10097, CAST(N'2016-01-14 17:47:10.240' AS DateTime), 10097, CAST(N'2016-01-14 17:47:10.240' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10073, N' Delaware', 10097, CAST(N'2016-01-14 17:48:50.400' AS DateTime), 10097, CAST(N'2016-01-14 17:48:50.400' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10074, N' Delaware', 10097, CAST(N'2016-01-14 17:49:55.007' AS DateTime), 10097, CAST(N'2016-01-14 17:49:55.007' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10075, N' Delaware', 10097, CAST(N'2016-01-14 17:51:09.867' AS DateTime), 10097, CAST(N'2016-01-14 17:51:09.867' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10076, N' Delaware', 10097, CAST(N'2016-01-14 18:02:04.713' AS DateTime), 10097, CAST(N'2016-01-14 18:02:04.713' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10077, N'Indiana', 86, CAST(N'2016-01-14 18:31:18.903' AS DateTime), 86, CAST(N'2016-01-14 18:31:18.903' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10078, N'Indiana', 86, CAST(N'2016-01-14 18:44:30.917' AS DateTime), 86, CAST(N'2016-01-14 18:44:30.917' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10079, N'Indiana', 86, CAST(N'2016-01-14 18:45:20.620' AS DateTime), 86, CAST(N'2016-01-14 18:45:20.620' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10080, N'Indiana', 86, CAST(N'2016-01-14 18:46:21.587' AS DateTime), 86, CAST(N'2016-01-14 18:46:21.587' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10081, N' Delaware', 10097, CAST(N'2016-01-14 18:48:07.947' AS DateTime), 10097, CAST(N'2016-01-14 18:48:07.947' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10082, N'', 0, CAST(N'2016-01-16 16:37:33.600' AS DateTime), 0, CAST(N'2016-01-16 16:37:33.600' AS DateTime), 1, 0)
INSERT [dbo].[State_Tbl] ([StateId], [StateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10083, N'Indiana', 86, CAST(N'2016-01-18 17:58:36.360' AS DateTime), 86, CAST(N'2016-01-18 17:58:36.360' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[State_Tbl] OFF
SET IDENTITY_INSERT [dbo].[UserInfo_Tbl] ON 

INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (86, 53, N'sameer', N'singh', N'new street', 9, 2, N'F://test', 2, N'user19', N'rohan@gmail.com', N'855855555', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2015-12-30 12:50:58.770' AS DateTime), 86, CAST(N'2016-01-18 17:58:36.403' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (90, 57, N'FirstName', N'LastName', N'Street', 6, 25, N'', 2, N'admin', N'admin@gmail.com', N'546546', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2015-12-31 13:57:57.353' AS DateTime), 90, CAST(N'2016-01-15 17:33:48.820' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (91, 58, N'Super', N'Admin', N'Street', 6, 3, N'', 1, N'superadmin', N'superadmin@gmail.com', N'8987656789', N'27R6nzADJDsJT4TjaS4wkLMX41UPRv5pT5V7sCjZPaU=', 0, CAST(N'2015-12-31 14:39:07.167' AS DateTime), 0, CAST(N'2016-01-19 13:17:07.597' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (92, 57, N'User First Name', N'User Last Name', N'Street', 40, 25, N'', 3, N'user2', N'aa@bb.com', N'8798797898797', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 90, CAST(N'2016-01-02 19:08:50.760' AS DateTime), 92, CAST(N'2016-01-11 13:50:09.280' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10092, 59, N'wer', N'ewrf', N'wef', 10046, 25, N'', 3, N'user22', N'admin@gmail.com1', N'43533', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2016-01-08 16:28:31.713' AS DateTime), 10092, CAST(N'2016-01-14 16:20:54.220' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10094, 57, N'Test First', N'Test Last', N'street', 6, 2, N'', 3, N'user5', N'tst@tst.com', N'8656457098', N'jPRFSPUXazZvWrz0Wc00Dg==', 90, CAST(N'2016-01-11 13:40:14.900' AS DateTime), 10094, CAST(N'2016-01-14 16:10:08.373' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10095, 60, N'Albert', N'Printo', N'new street', 6, 1, N'', 2, N'albert', N'albert@gmail.com', N'7053975448', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2016-01-14 13:43:17.133' AS DateTime), 10095, CAST(N'2016-01-14 15:37:54.407' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10096, 61, N'fgd', N'dgd', N'new street', 6, 3, N'', 2, N'dg', N'test1@test.com', N'8786342316', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2016-01-14 15:40:00.483' AS DateTime), 10096, CAST(N'2016-01-14 16:16:58.973' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10097, 62, N'Rishon', N'josef', N'nw street', 11, 1, N'', 2, N'rishon', N'risho@gmail.com', N'84535353456', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2016-01-14 16:30:06.500' AS DateTime), 10097, CAST(N'2016-01-14 18:48:07.950' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10098, 63, N'Nancy', N'disuza', N'infinite street', 7, 10026, NULL, 2, N'nancy', N'nancy@gmail.com', N'8435353177', N'lAUPJA23U+iEiCShBwtPo2jJ1tWvzDGGqI5mvyUdloI=', 0, CAST(N'2016-01-14 16:38:48.207' AS DateTime), 0, CAST(N'2016-01-14 16:38:48.207' AS DateTime), 1, 0)
INSERT [dbo].[UserInfo_Tbl] ([UserId], [OrgId], [FirstName], [LastName], [Street], [CityId], [StateId], [ProfilePhoto], [RoleId], [UserName], [EmailId], [MobileNo], [Password], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsActive], [IsDelete]) VALUES (10102, 65, N'tert', N're', N'street', 10051, 10027, NULL, 2, N'trt', N'ete@hdfg.ghf', N'86555675757', N'QlU18pGrkg/nVbXnRXwGNg==', 0, CAST(N'2016-01-19 11:36:46.210' AS DateTime), 0, CAST(N'2016-01-19 11:36:46.210' AS DateTime), 1, 0)
SET IDENTITY_INSERT [dbo].[UserInfo_Tbl] OFF
SET IDENTITY_INSERT [dbo].[UserPermissions_Tbl] ON 

INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (20029, 1, 1, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-07 17:03:40.077' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (20030, 1, 2, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-07 17:03:40.077' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (20031, 1, 3, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-07 17:03:40.080' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (20032, 1, 4, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-07 17:03:40.087' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (20033, 1, 5, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-07 17:03:40.087' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (20034, 1, 6, 58, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-07 17:03:40.090' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30041, 2, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, CAST(N'2016-01-12 12:00:22.113' AS DateTime), 91, 86)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30102, 2, 1, 57, 0, 1, 1, 0, 1, 1, 0, 1, 1, CAST(N'2016-01-15 13:38:38.873' AS DateTime), 91, 90)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30105, 2, 4, 57, 0, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-15 13:38:38.877' AS DateTime), 91, 90)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30106, 2, 5, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 13:38:38.880' AS DateTime), 91, 90)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30114, 2, 1, 60, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 17:32:04.300' AS DateTime), 91, 10095)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30115, 2, 2, 60, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 17:32:04.303' AS DateTime), 91, 10095)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30116, 2, 3, 60, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 17:32:04.317' AS DateTime), 91, 10095)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30035, 6, 1, 57, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-11 14:44:21.620' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30036, 6, 2, 57, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-11 14:44:21.623' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30037, 6, 3, 57, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-11 14:44:21.627' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30038, 6, 4, 57, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-11 14:44:21.627' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30039, 6, 5, 57, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-11 14:44:21.630' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30040, 6, 6, 57, 1, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-11 14:44:21.630' AS DateTime), 91, 0)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30056, 2, 1, 57, 0, 1, 1, 0, 1, 1, 0, 1, 0, CAST(N'2016-01-12 16:32:48.477' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30057, 2, 2, 57, 0, 1, 1, 0, 1, 1, 0, 1, 0, CAST(N'2016-01-12 16:32:48.480' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30058, 2, 3, 57, 0, 1, 1, 0, 1, 1, 0, 1, 0, CAST(N'2016-01-12 16:32:48.480' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30059, 2, 4, 57, 0, 1, 1, 1, 1, 1, 1, 1, 0, CAST(N'2016-01-12 16:32:48.483' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30060, 2, 5, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-12 16:32:48.487' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30061, 2, 6, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-12 16:32:48.497' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30099, 3, 4, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 11:20:48.373' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30100, 3, 5, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 11:20:48.380' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30101, 3, 6, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 11:20:48.387' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30119, 2, 6, 60, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 17:32:04.323' AS DateTime), 91, 10095)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30120, 2, 1, 63, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-18 18:41:32.813' AS DateTime), 91, 10098)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30121, 2, 2, 63, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-18 18:41:32.813' AS DateTime), 91, 10098)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30122, 2, 3, 63, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-18 18:41:32.817' AS DateTime), 91, 10098)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30123, 2, 4, 63, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-18 18:41:32.820' AS DateTime), 91, 10098)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30124, 2, 5, 63, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-18 18:41:32.823' AS DateTime), 91, 10098)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30125, 2, 6, 63, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-18 18:41:32.827' AS DateTime), 91, 10098)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30103, 2, 2, 57, 0, 1, 1, 0, 1, 1, 0, 1, 0, CAST(N'2016-01-15 13:38:38.873' AS DateTime), 91, 90)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30104, 2, 3, 57, 0, 1, 1, 0, 1, 1, 0, 1, 0, CAST(N'2016-01-15 13:38:38.877' AS DateTime), 91, 90)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30107, 2, 6, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 13:38:38.880' AS DateTime), 91, 90)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30108, 2, 1, 62, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 15:55:02.143' AS DateTime), 91, 10097)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30109, 2, 2, 62, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-15 15:55:02.143' AS DateTime), 91, 10097)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30110, 2, 3, 62, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 15:55:02.143' AS DateTime), 91, 10097)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30096, 3, 1, 57, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 11:20:48.343' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30097, 3, 2, 57, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-15 11:20:48.360' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30098, 3, 3, 57, 1, 1, 1, 1, 1, 1, 1, 1, 1, CAST(N'2016-01-15 11:20:48.370' AS DateTime), 91, 92)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30111, 2, 4, 62, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 15:55:02.147' AS DateTime), 91, 10097)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30112, 2, 5, 62, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 15:55:02.147' AS DateTime), 91, 10097)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30113, 2, 6, 62, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 15:55:02.147' AS DateTime), 91, 10097)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30117, 2, 4, 60, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 17:32:04.320' AS DateTime), 91, 10095)
INSERT [dbo].[UserPermissions_Tbl] ([Id], [U_RoleId], [ModuleId], [Org_Id], [All], [Add], [Edit], [Delete], [View], [Re-Activate], [Print], [IsActive], [Finalize], [Modifiedon], [ModifiedBy], [UserId]) VALUES (30118, 2, 5, 60, 0, 0, 0, 0, 0, 0, 0, 1, 0, CAST(N'2016-01-15 17:32:04.320' AS DateTime), 91, 10095)
SET IDENTITY_INSERT [dbo].[UserPermissions_Tbl] OFF
ALTER TABLE [dbo].[City_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_City_Tbl_City_Tbl] FOREIGN KEY([CityId])
REFERENCES [dbo].[City_Tbl] ([CityId])
GO
ALTER TABLE [dbo].[City_Tbl] CHECK CONSTRAINT [FK_City_Tbl_City_Tbl]
GO
ALTER TABLE [dbo].[Organization_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Tbl_City_Tbl] FOREIGN KEY([CityId])
REFERENCES [dbo].[City_Tbl] ([CityId])
GO
ALTER TABLE [dbo].[Organization_Tbl] CHECK CONSTRAINT [FK_Organization_Tbl_City_Tbl]
GO
ALTER TABLE [dbo].[Organization_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Tbl_State_Tbl] FOREIGN KEY([StateId])
REFERENCES [dbo].[State_Tbl] ([StateId])
GO
ALTER TABLE [dbo].[Organization_Tbl] CHECK CONSTRAINT [FK_Organization_Tbl_State_Tbl]
GO
ALTER TABLE [dbo].[Role_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_Role_Tbl_Organization_Tbl] FOREIGN KEY([OrgId])
REFERENCES [dbo].[Organization_Tbl] ([OrgId])
GO
ALTER TABLE [dbo].[Role_Tbl] CHECK CONSTRAINT [FK_Role_Tbl_Organization_Tbl]
GO
ALTER TABLE [dbo].[UserInfo_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Tbl_City_Tbl] FOREIGN KEY([CityId])
REFERENCES [dbo].[City_Tbl] ([CityId])
GO
ALTER TABLE [dbo].[UserInfo_Tbl] CHECK CONSTRAINT [FK_UserInfo_Tbl_City_Tbl]
GO
ALTER TABLE [dbo].[UserInfo_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Tbl_Organization_Tbl] FOREIGN KEY([OrgId])
REFERENCES [dbo].[Organization_Tbl] ([OrgId])
GO
ALTER TABLE [dbo].[UserInfo_Tbl] CHECK CONSTRAINT [FK_UserInfo_Tbl_Organization_Tbl]
GO
ALTER TABLE [dbo].[UserInfo_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Tbl_State_Tbl] FOREIGN KEY([StateId])
REFERENCES [dbo].[State_Tbl] ([StateId])
GO
ALTER TABLE [dbo].[UserInfo_Tbl] CHECK CONSTRAINT [FK_UserInfo_Tbl_State_Tbl]
GO
ALTER TABLE [dbo].[UserInfo_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_UserInfo_Tbl_UserInfo_Tbl] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role_Tbl] ([RoleId])
GO
ALTER TABLE [dbo].[UserInfo_Tbl] CHECK CONSTRAINT [FK_UserInfo_Tbl_UserInfo_Tbl]
GO
/****** Object:  StoredProcedure [dbo].[ActiveOrganization_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ActiveOrganization_Sp]

@OrgId bigint=NULL,
@ModifiedBy bigint=NULL

	
AS
BEGIN 

UPDATE [dbo].[Organization_Tbl]

SET 
	 IsActive='True'
	,IsDelete='False'
	,ModifiedBy=@ModifiedBy
	,ModifiedOn=GETDATE()
WHERE
	OrgId=@OrgId
END


GO
/****** Object:  StoredProcedure [dbo].[ActiveUser_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[ActiveUser_Sp]

@UserId bigint 
AS
BEGIN
	update [dbo].[UserInfo_Tbl] set [IsActive] =1 where  UserId=@UserId
END

GO
/****** Object:  StoredProcedure [dbo].[ActiveUserInfo_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ActiveUserInfo_Sp]

@UserId bigint=NULL,
@ModifiedBy bigint=NULL
	
AS
BEGIN 

UPDATE [dbo].[UserInfo_Tbl]

SET 
	 IsActive ='True'
	,IsDelete='False'
	,ModifiedBy=@ModifiedBy
	,ModifiedOn=GetDate()

WHERE
	UserId=@UserId
END

GO
/****** Object:  StoredProcedure [dbo].[AutoCompleteCity_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[AutoCompleteCity_Sp]

@CityName varchar(150)=NULL

AS
	BEGIN
		SELECT  
		ISNULL(CityId,'') as CityId
		,ISNULL(CityName,'') as CityName
		,ISNULL(CreatedBy,'') as CreatedBy
		,ISNULL(CreatedOn,'') as CreatedOn
		,ISNULL(ModifiedBy,'') as ModifiedBy
		,ISNULL(ModifiedOn,'') as ModifiedOn
		,ISNULL(IsActive,'') as IsActive
		,ISNULL(IsDelete,'') as IsDelete
		FROM [dbo].[City_Tbl]
		where
		CityName like Case when @CityName IS NOT NULL then  +@CityName+'%' else CityName end 	 
	END
GO
/****** Object:  StoredProcedure [dbo].[AutoCompleteState_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AutoCompleteState_Sp]

@StateName varchar(150)=NULL

AS
	BEGIN
		SELECT  
		ISNULL(StateId,'') as StateId
		,ISNULL(StateName,'') as StateName
		,ISNULL(CreatedBy,'') as CreatedBy
		,ISNULL(CreatedOn,'') as CreatedOn
		,ISNULL(ModifiedBy,'') as ModifiedBy
		,ISNULL(ModifiedOn,'') as ModifiedOn
		,ISNULL(IsActive,'') as IsActive
		,ISNULL(IsDelete,'') as IsDelete
		FROM [State_Tbl]
		where
		StateName like Case when @StateName IS NOT NULL then  +@StateName+'%' else StateName end 	 
	END
GO
/****** Object:  StoredProcedure [dbo].[CheckUniqueEmailAddress_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckUniqueEmailAddress_Sp]
      @EmailId nvarchar(50)=NULL
	 
AS

BEGIN
     (SELECT * FROM UserInfo_Tbl WHERE EmailId = @EmailId)
END


GO
/****** Object:  StoredProcedure [dbo].[CheckUniqueUserName_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckUniqueUserName_Sp]
      @UserName nvarchar(50)=NULL
AS
BEGIN

      (SELECT COUNT(*) as IsUnique FROM UserInfo_Tbl WHERE UserName = @UserName and IsActive='True')

END
GO
/****** Object:  StoredProcedure [dbo].[DashboardAccessibility_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DashboardAccessibility_Sp]
(

	@U_RoleId bigint ,
	@Org_Id bigint,
	@UserId bigint=null
)

AS
BEGIN
          if((select * from dbo.IsDefaultPermission_Fn(@U_RoleId,@Org_Id,@UserId))>0)
          begin
		  select u.[ModuleId],Module_Name,[All],[View] 
		  from [UserPermissions_Tbl] as u 
		  inner join dbo.ModuleList_Tbl as m on m.ModuleId = u.[ModuleId]
		  where [U_RoleId] = @U_RoleId and [Org_Id] = @Org_Id and UserId=@UserId
		  end
		  else
		  begin
		  select u.[ModuleId],Module_Name,[All],[View] 
		  from [UserPermissions_Tbl] as u 
		  inner join dbo.ModuleList_Tbl as m on m.ModuleId = u.[ModuleId]
		  where [U_RoleId] = @U_RoleId 
		  end
END




GO
/****** Object:  StoredProcedure [dbo].[DeleteOrganization_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DeleteOrganization_Sp]

@OrgId bigint=NULL,
@ModifiedBy bigint=NULL

	
AS
BEGIN 

UPDATE [dbo].[Organization_Tbl]

SET IsDelete='True'
	,IsActive ='False'
	,ModifiedBy=@ModifiedBy
	,ModifiedOn=GETDATE()
WHERE
	OrgId=@OrgId
END


GO
/****** Object:  StoredProcedure [dbo].[DeleteUserInfo_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUserInfo_Sp]

@UserId bigint=NULL,
@ModifiedBy bigint=NULL
	
AS
BEGIN 

UPDATE [dbo].[UserInfo_Tbl]

SET IsDelete='True'
	,IsActive ='False'
	,ModifiedBy=@ModifiedBy
	,ModifiedOn=GetDate()

WHERE
	UserId=@UserId
END

GO
/****** Object:  StoredProcedure [dbo].[GetAllModuleListByOrgId_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetAllModuleListByOrgId_Sp]

(
	@Org_Id bigint 

)
	
AS
BEGIN
	if(@Org_Id = 58)
	BEGIN
	SELECT 
			M.ModuleId,
			ISNULL(M.Module_Name, '') AS Module_Name,
			ISNULL(M.CreatedOn, '') AS CreatedOn,
			ISNULL(M.CreatedBy, '') AS CreatedBy,
			isnull(M.IsActive, 'TRUE') as IsActive
	FROM [dbo].[ModuleList_Tbl] AS M
	WHERE isnull(M.IsActive, 'TRUE') = 'TRUE'
	END

	ELSE 
	BEGIN
		SELECT 
			M.ModuleId,
			ISNULL(M.Module_Name, '') AS Module_Name,
			ISNULL(M.CreatedOn, '') AS CreatedOn,
			ISNULL(M.CreatedBy, '') AS CreatedBy,
			isnull(M.IsActive, 'TRUE') as IsActive
	FROM [dbo].[ModuleList_Tbl] as M
	INNER JOIN [dbo].[UserCredentials_Tbl] as UC ON UC.ModuleId = M.ModuleId 
	and UC.U_RoleId = 2 
	AND UC.[View] = 1
	WHERE isnull(M.IsActive, 'TRUE') = 'TRUE'	
	END

END


GO
/****** Object:  StoredProcedure [dbo].[GetAllUserInfo_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAllUserInfo_Sp]

AS
	SELECT 

	 ISNULL(U.UserId, 0) AS UserId
	, ISNULL(U.OrgId, 0) AS OrgId
	, ISNULL(O.Name,'') AS OrgName
	, ISNULL(O.Street,'') AS OrgStreet
	, (select ISNULL(CityName, '')  from  [dbo].[City_Tbl] where CityId = O.CityId) as OrgCityName
	, (select ISNULL(StateName, '')  from  [dbo].[State_Tbl]  where StateId = O.StateId)as OrgStateName
	, ISNULL(U.FirstName, '') AS FirstName
	, ISNULL(U.LastName , '') AS LastName
	, ISNULL(U.Street, '') AS Street
	, ISNULL(U.CityId , 0) AS CityId
	, ISNULL(U.StateId , 0) AS StateId
	, ISNULL(C.CityName, '') AS CityName
	, ISNULL(S.StateName , '') AS StateName
	, ISNULL(U.ProfilePhoto, '') AS ProfilePhoto
	, ISNULL(U.RoleId , 0) AS RoleId
	, ISNULL(R.RoleName ,'') AS RoleName
	, ISNULL(U.UserName, '') AS UserName
	, ISNULL(U.EmailId, '') AS EmailId
	, ISNULL(U.MobileNo, '') AS MobileNo
	, ISNULL(U.Password, '') AS Password
	, ISNULL(U.CreatedBy,0) AS CreatedBy
	, ISNULL(U.CreatedOn, '') AS CreatedOn
	, ISNULL(U.ModifiedBy, 0) AS ModifiedBy
	, ISNULL(U.ModifiedOn, '') AS ModifiedOn
	, U.IsActive as IsActive
	, U.IsDelete as IsDelete
	
	 from 
		 [dbo].[UserInfo_Tbl] U
		LEFT JOIN [dbo].[City_Tbl] AS C ON C.CityId = U.CityId
		LEFT JOIN [dbo].[State_Tbl] AS S ON S.StateId = U.StateId
		LEFT JOIN [dbo].[Role_Tbl] AS R ON R.RoleId = U.RoleId
		LEFT JOIN [dbo].[Organization_Tbl] AS O ON O.OrgId = U.OrgId
	WHERE
	U.IsDelete = 0 AND
	U.IsActive = 1

GO
/****** Object:  StoredProcedure [dbo].[GetAllUsers_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetAllUsers_Sp]

AS
	SELECT 
	ISNULL(O.OrgId, 0) AS Org_OrgId
	, ISNULL(O.Name, '') AS Org_Name
	, ISNULL(O.Street, '') AS Org_Street
	, ISNULL(O.CityId, 0) AS Org_CityId
	, ISNULL(O.StateId, 0) AS Org_StateId
	, ISNULL(C.CityName, '') AS Org_CityName
	, ISNULL(S.StateName , '') AS Org_StateName
	, ISNULL(O.RegisteredAs, '') AS Org_RegisteredAs
	, ISNULL(O.Logo, '') AS Org_Logo
	, O.IsActive as Org_IsActive
	, O.IsDelete as Org_IsDelete
	, ISNULL(U.UserId, 0) AS User_UserId
	, ISNULL(U.FirstName, '') AS User_FirstName
	, ISNULL(U.LastName , '') AS User_LastName
	, ISNULL(U.Street, '') AS User_Street
	, ISNULL(U.CityId , 0) AS User_CityId
	, ISNULL(U.StateId , 0) AS User_StateId
	, ISNULL(U.ProfilePhoto, '') AS User_ProfilePhoto
	, ISNULL(U.RoleId , 0) AS User_RoleId
	, ISNULL(R.RoleName, '') AS User_RoleName
	, ISNULL(U.UserName, '') AS User_UserName
	, ISNULL(U.EmailId, '') AS User_EmailId
	, ISNULL(U.MobileNo, '') AS User_MobileNo
	, ISNULL(U.Password, '') AS User_Password
	, ISNULL(U.CreatedBy,0) AS User_CreatedBy
	, ISNULL(U.CreatedOn, '') AS User_CreatedOn
	, ISNULL(U.ModifiedBy, 0) AS User_ModifiedBy
	, ISNULL(U.ModifiedOn, '') AS User_ModifiedOn
	, U.IsActive as User_IsActive
	, U.IsDelete as User_IsDelete
	
	 from 
		[dbo].[Organization_Tbl] AS O 	
		INNER JOIN [dbo].[UserInfo_Tbl] U
		ON O.OrgId=U.OrgId
		LEFT JOIN [dbo].[City_Tbl] AS C ON C.CityId = O.CityId
		LEFT JOIN [dbo].[State_Tbl] AS S ON S.StateId = O.StateId
		LEFT JOIN [dbo].[Role_Tbl] AS R ON R.RoleId=U.RoleId
	WHERE
	O.IsDelete = 0 AND
	O.IsActive = 1

GO
/****** Object:  StoredProcedure [dbo].[GetModuleAccessPermissions_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetModuleAccessPermissions_Sp]
	(
		@U_RoleId bigint,
		@ModuleId bigint,
		@UserID bigint,
		@Org_Id bigint
	)
	AS
		BEGIN
   if((select * from dbo.IsPermissionExistForUser_Fn(@U_RoleId,@ModuleId,@Org_Id,@UserId))>0)
		 Begin
			   SELECT 
						isnull([All],'') as  [All] ,
						isnull([Add],'') as  [Add] ,
						isnull(Edit,'') as Edit  ,
						isnull([Delete],'') as [Delete]  ,
						isnull([View],'') as  [View] ,
						isnull([Re-Activate],'') as  ReActivate ,
						isnull([Print],'') as  [Print] ,
						isnull([Finalize],'') as  [Finalize] 
				FROM 
						[dbo].[UserPermissions_Tbl]
				where 
						U_RoleId = @U_RoleId and ModuleId = @ModuleId and UserId=@UserId
			End
	ELSE if((select * from dbo.IsPermissionExistForUserRole_Fn(@U_RoleId,@ModuleId,@Org_Id))>0)
			 Begin
				SELECT 
						isnull([All],'') as  [All] ,
						isnull([Add],'') as  [Add] ,
						isnull(Edit,'') as Edit  ,
						isnull([Delete],'') as [Delete]  ,
						isnull([View],'') as  [View] ,
						isnull([Re-Activate],'') as  ReActivate ,
						isnull([Print],'') as  [Print] ,
						isnull([Finalize],'') as  [Finalize] 
						
				FROM 
						[dbo].[UserPermissions_Tbl]
				where 
						U_RoleId = @U_RoleId and ModuleId = @ModuleId and Org_Id = @Org_Id
			End
     ELSE
	      Begin
		         SELECT
						isnull([All],'') as  [All] ,
						isnull([Add],'') as  [Add] ,
						isnull(Edit,'') as Edit  ,
						isnull([Delete],'') as [Delete]  ,
						isnull([View],'') as  [View] ,
						isnull([Re-Activate],'') as  ReActivate ,
						isnull([Print],'') as  [Print] ,
						isnull([Finalize],'') as  [Finalize] 
						
				FROM 
						[dbo].[UserPermissions_Tbl]
				where 
						U_RoleId = @U_RoleId and ModuleId = @ModuleId and Org_Id = 0
		  End

						
		END
 
       



GO
/****** Object:  StoredProcedure [dbo].[GetPermissionsByUserRoleOrUserId_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPermissionsByUserRoleOrUserId_Sp]
(
	@U_RoleId bigint,
	@Org_Id bigint=null,
	@UserId bigint=null
)
	
AS
BEGIN
 if (@Org_Id=58)
    BEGIN
          SELECT 
					[Id], 
					U_RoleId, 
					ModuleId, 
					UserId,
					Org_Id,
					isnull([All],'') as  [All] ,
					isnull([Add],'') as  [Add] ,
					isnull(Edit,'') as Edit  ,
					isnull([Delete],'') as [Delete],
					isnull([View],'') as  [View] ,
					isnull([Re-Activate],'') as  [ReActivate] ,
					isnull([Print],'') as  [Print] ,
					isnull([Finalize],'') as [Finalize]  ,
					isnull([IsActive],'') as [IsActive]  ,
					Modifiedon, 
					isnull(ModifiedBy,'') as ModifiedBy
	    FROM 
			[dbo].[UserPermissions_Tbl]
	    where 
			U_RoleId = @U_RoleId and  ModifiedBy = 91  
    END

 ELSE if((select * from dbo.IsDefaultPermission_Fn(@U_RoleId,@Org_Id,@UserId))>0)
	    BEGIN
	         SELECT 
					[Id], 
					U_RoleId, 
					ModuleId, 
					UserId,
					Org_Id,
					isnull([All],'') as  [All] ,
					isnull([Add],'') as  [Add] ,
					isnull(Edit,'') as Edit  ,
					isnull([Delete],'') as [Delete],
					isnull([View],'') as  [View] ,
					isnull([Re-Activate],'') as  [ReActivate] ,
					isnull([Print],'') as  [Print] ,
					isnull([Finalize],'') as [Finalize]  ,
					isnull([IsActive],'') as [IsActive]  ,
					Modifiedon, 
					isnull(ModifiedBy,'') as ModifiedBy
	        FROM 
			        [dbo].[UserPermissions_Tbl]
	        where 
			         U_RoleId = @U_RoleId and Org_Id = @Org_Id and UserId=@UserId
	   END

 ELSE if((select * from dbo.IsDefaultPermissionForUserRole_Fn(@U_RoleId,@Org_Id) )>0)
	    BEGIN
	           SELECT 
						[Id], 
						U_RoleId, 
						ModuleId, 
						UserId,
						Org_Id,
						isnull([All],'') as  [All] ,
						isnull([Add],'') as  [Add] ,
						isnull(Edit,'') as Edit  ,
						isnull([Delete],'') as [Delete],
						isnull([View],'') as  [View] ,
						isnull([Re-Activate],'') as  [ReActivate] ,
						isnull([Print],'') as  [Print] ,
						isnull([Finalize],'') as  [Finalize] ,			
						isnull([IsActive],'') as [IsActive]  ,
						Modifiedon, 
						isnull(ModifiedBy,'') as ModifiedBy
	          FROM 
			       [dbo].[UserPermissions_Tbl]
	          where 
			        U_RoleId = @U_RoleId and Org_Id = @Org_Id
		END
ELSE 
       BEGIN
	           SELECT 
						[Id], 
						U_RoleId, 
						ModuleId, 
						UserId,
						Org_Id,
						isnull([All],'') as  [All] ,
						isnull([Add],'') as  [Add] ,
						isnull(Edit,'') as Edit  ,
						isnull([Delete],'') as [Delete],
						isnull([View],'') as  [View] ,
						isnull([Re-Activate],'') as  [ReActivate] ,
						isnull([Print],'') as  [Print] ,
						isnull([Finalize],'') as  [Finalize] ,			
						isnull([IsActive],'') as [IsActive]  ,
						Modifiedon, 
						isnull(ModifiedBy,'') as ModifiedBy
	          FROM 
			       [dbo].[UserPermissions_Tbl]
	          where 
			        U_RoleId = @U_RoleId and Org_Id = 0
		END

END




GO
/****** Object:  StoredProcedure [dbo].[GetRoleByOrgId_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetRoleByOrgId_Sp]
@OrgId bigint=NULL,
@RoleName varchar(100)=NULL
AS
BEGIN
if(@OrgId=58)
BEGIN
	Select
	ISNULL(RoleId,0) as RoleId
	,ISNULL(RoleName,'') as RoleName
	,ISNULL(OrgId,0) as OrgId
	,(select ISNULL(Name, '')  from [dbo].[Organization_Tbl]  where OrgId = R.OrgId) as OrgName
	,ISNULL(CreatedOn,'') as CreatedOn
	,ISNULL(CreatedBy,'') as CreatedBy
	,ISNULL(ModifiedOn,'') as ModifiedOn
	,ISNULL(ModifiedBy,'') as ModifiedBy
	,ISNULL(IsActive,'') as IsActive
	,ISNULL(IsDeleted,'') as IsDeleted
	From [dbo].[Role_Tbl] R
	Where
	RoleName like Case when @RoleName IS NOT NULL then  +@RoleName+'%' else RoleName end AND
	IsActive='True' AND
	IsDeleted='False'
	END

	ELSE
	BEGIN
	Select
	ISNULL(RoleId,0) as RoleId
	,ISNULL(RoleName,'') as RoleName
	,ISNULL(OrgId,0) as OrgId
	,(select ISNULL(Name, '')  from [dbo].[Organization_Tbl]  where OrgId = R.OrgId) as OrgName
	,ISNULL(CreatedOn,'') as CreatedOn
	,ISNULL(CreatedBy,'') as CreatedBy
	,ISNULL(ModifiedOn,'') as ModifiedOn
	,ISNULL(ModifiedBy,'') as ModifiedBy
	,ISNULL(IsActive,'') as IsActive
	,ISNULL(IsDeleted,'') as IsDeleted
	From [dbo].[Role_Tbl] R
	Where
	RoleName like Case when @RoleName IS NOT NULL then  +@RoleName+'%' else RoleName end AND
	(OrgId=@OrgId OR  OrgId=58)AND
	IsActive='True' AND
	IsDeleted='False'
	END
END

GO
/****** Object:  StoredProcedure [dbo].[GetUserByUserId_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetUserByUserId_Sp]
@UserId bigint=NULL
AS
BEGIN
	SELECT 
	 ISNULL(U.UserId, 0) AS UserId
	, ISNULL(U.OrgId, 0) AS OrgId
	, ISNULL(O.Name,'') AS OrgName
	, ISNULL(O.Street,'') AS OrgStreet
	, (select ISNULL(CityName, '')  from  [dbo].[City_Tbl] where CityId = O.CityId) as OrgCityName
	, (select ISNULL(StateName, '')  from  [dbo].[State_Tbl]  where StateId = O.StateId)as OrgStateName
	, ISNULL(U.FirstName, '') AS FirstName
	, ISNULL(U.LastName , '') AS LastName
	, ISNULL(U.Street, '') AS Street
	, ISNULL(U.CityId , 0) AS CityId
	, ISNULL(U.StateId , 0) AS StateId
	, ISNULL(C.CityName, '') AS CityName
	, ISNULL(S.StateName , '') AS StateName
	, ISNULL(U.ProfilePhoto, '') AS ProfilePhoto
	, ISNULL(U.RoleId , 0) AS RoleId
	, ISNULL(R.RoleName ,'') AS RoleName
	, ISNULL(U.UserName, '') AS UserName
	, ISNULL(U.EmailId, '') AS EmailId
	, ISNULL(O.RegisteredAs, '') AS RegisteredAs
	, ISNULL(U.MobileNo, '') AS MobileNo
	, ISNULL(U.Password, '') AS Password
	, ISNULL(U.CreatedBy,0) AS CreatedBy
	, ISNULL(U.CreatedOn, '') AS CreatedOn
	, ISNULL(U.ModifiedBy, 0) AS ModifiedBy
	, ISNULL(U.ModifiedOn, '') AS ModifiedOn
	, U.IsActive as IsActive
	, U.IsDelete as IsDelete
	
	 from 
		 [dbo].[UserInfo_Tbl] U
		LEFT JOIN [dbo].[City_Tbl] AS C ON C.CityId = U.CityId
		LEFT JOIN [dbo].[State_Tbl] AS S ON S.StateId = U.StateId
		LEFT JOIN [dbo].[Role_Tbl] AS R ON R.RoleId = U.RoleId
		LEFT JOIN [dbo].[Organization_Tbl] AS O ON O.OrgId = U.OrgId
	WHERE
	U.UserId=@UserId AND
	U.IsDelete = 0 AND
	U.IsActive = 1
END

GO
/****** Object:  StoredProcedure [dbo].[GetUserInfoByUserNamePassword_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserInfoByUserNamePassword_Sp]

@UserName varchar(200)=NULL,
@Password nvarchar(max)=NULL

as

BEGIN
 
 If((select count(*) from [dbo].[UserInfo_Tbl] where (UserName = @UserName OR EmailId = @UserName) and Password = @Password) >0)
	BEGIN 
			select 
			ISNULL(UI.UserId,'0') as User_UserId
			,ISNULL(UI.OrgId,'0') as User_OrgId
			,ISNULL(UI.FirstName,'') as User_FirstName
			,ISNULL(UI.LastName,'') as User_LastName
			,ISNULL(UI.Street,'') as User_Street
			,ISNULL(UI.CityId,'0') as User_CityId
			, (select ISNULL(CityName, '')  from  [dbo].[City_Tbl] where CityId = UI.CityId) as User_CityName
			,ISNULL(UI.StateId,'0') as User_StateId
			, (select ISNULL(StateName, '')  from  [dbo].[State_Tbl]  where StateId = UI.StateId)as User_StateName
			,ISNULL(UI.ProfilePhoto,'') as User_ProfilePhoto
			,ISNULL(UI.RoleId,'0') as User_RoleId
			, (select ISNULL(RoleName, '')  from  [dbo].[Role_Tbl]  where RoleId = UI.RoleId)as User_RoleName
			,ISNULL(UI.UserName,'') as User_UserName
			,ISNULL(UI.EmailId,'') as User_EmailId
			,ISNULL(UI.MobileNo,'') as User_MobileNo
			,ISNULL(UI.Password,'') as User_Password
			,ISNULL(UI.CreatedBy,'') as User_CreatedBy
			,ISNULL(UI.CreatedOn,'') as User_CreatedOn
			,ISNULL(UI.ModifiedBy,'') as User_ModifiedBy
			,ISNULL(UI.ModifiedOn,'') as User_ModifiedOn
			,ISNULL(UI.IsActive,'') as User_IsActive
			,ISNULL(UI.IsDelete,'') as User_IsDelete
			--,ISNULL(C.CityName, '') as User_CityName
			


			,ISNULL(Org.Name,'') as Org_Name
			,ISNULL(Org.Street,'') as Org_Street
			,ISNULL(Org.CityId,'0') as Org_CityId
			,(select ISNULL(CityName, '')from  [dbo].[City_Tbl] where CityId = Org.CityId) as Org_CityName 
			,ISNULL(Org.StateId,'0') as Org_StateId
			,(select ISNULL(StateName, '') from  [dbo].[State_Tbl] where StateId = Org.StateId)as Org_StateName 
			,ISNULL(Org.RegisteredAs,'') as Org_RegisteredAs
			,ISNULL(Org.Logo,'') as Org_Logo
			,ISNULL(Org.CreatedBy,'') as Org_CreatedBy
			,ISNULL(Org.CreatedOn,'') as Org_CreatedOn
			,ISNULL(Org.ModifiedBy,'') as Org_ModifiedBy
			,ISNULL(Org.ModifiedOn,'') as Org_ModifiedOn
			,ISNULL(Org.IsActive,'') as Org_IsActive
			,ISNULL(Org.IsDelete,'') as Org_IsDelete
			
			  
			from [dbo].[UserInfo_Tbl] as UI left join [dbo].[Organization_Tbl] as Org
					On UI.OrgId = Org.OrgId 
					--INNER JOIN  [dbo].[City_Tbl] AS C ON C.CityId = UI.CityId
			WHERE  (UserName = @UserName OR EmailId = @UserName) and Password = @Password
			and UI.IsDelete=0  
			and UI.IsActive=1

	END

	ELSE 
	BEGIN
		select 
			ISNULL(UserId,'0') as UserId
			,ISNULL(OrgId,'0') as OrgId
			,ISNULL(FirstName,'') as FirstName
			,ISNULL(LastName,'') as LastName
			,ISNULL(Street,'') as Street
			,ISNULL(CityId,'0') as CityId
			,ISNULL(StateId,'0') as StateId
			,ISNULL(ProfilePhoto,'') as ProfilePhoto
			,ISNULL(RoleId,'0') as RoleId
			,ISNULL(UserName,'') as UserName
			,ISNULL(EmailId,'') as EmailId
			,ISNULL(MobileNo,'') as MobileNo
			,ISNULL(Password,'') as Password
			,ISNULL(CreatedBy,'') as CreatedBy
			,ISNULL(CreatedOn,'') as CreatedOn
			,ISNULL(ModifiedBy,'') as ModifiedBy
			,ISNULL(ModifiedOn,'') as ModifiedOn
			,ISNULL(IsActive,'') as IsActive
			,ISNULL(IsDelete,'') as IsDelete
			from [dbo].[UserInfo_Tbl] 
			WHERE 
			EmailId=@UserName
			and Password=@Password 
			and IsDelete=0  
			and IsActive=1

	END
END

GO
/****** Object:  StoredProcedure [dbo].[GetUsersByOrgId_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsersByOrgId_Sp]
@OrgId Bigint=NULL,
@UserId Bigint=NULL
AS
BEGIN
if(@OrgId=58)
begin
SELECT 
	ISNULL(O.OrgId, 0) AS Org_OrgId
	, ISNULL(O.Name, '') AS Org_Name
	, ISNULL(O.Street, '') AS Org_Street
	, ISNULL(O.CityId, 0) AS Org_CityId
	, ISNULL(O.StateId, 0) AS Org_StateId
	, ISNULL(C.CityName, '') AS Org_CityName
	, ISNULL(S.StateName , '') AS Org_StateName
	, ISNULL(O.RegisteredAs, '') AS Org_RegisteredAs
	, ISNULL(O.Logo, '') AS Org_Logo
	, O.IsActive as Org_IsActive
	, O.IsDelete as Org_IsDelete
	, ISNULL(U.UserId, 0) AS User_UserId
	, ISNULL(U.FirstName, '') AS User_FirstName
	, ISNULL(U.LastName , '') AS User_LastName
	, ISNULL(U.Street, '') AS User_Street
	, ISNULL(U.CityId , 0) AS User_CityId
	, ISNULL(U.StateId , 0) AS User_StateId
	, ISNULL(U.ProfilePhoto, '') AS User_ProfilePhoto
	, ISNULL(U.RoleId , 0) AS User_RoleId
	, ISNULL(R.RoleName, '') AS User_RoleName
	, ISNULL(U.UserName, '') AS User_UserName
	, ISNULL(U.EmailId, '') AS User_EmailId
	, ISNULL(U.MobileNo, '') AS User_MobileNo
	, ISNULL(U.Password, '') AS User_Password
	, ISNULL(U.CreatedBy,0) AS User_CreatedBy
	, ISNULL(U.CreatedOn, '') AS User_CreatedOn
	, ISNULL(U.ModifiedBy, 0) AS User_ModifiedBy
	, ISNULL(U.ModifiedOn, '') AS User_ModifiedOn
	, U.IsActive as User_IsActive
	, U.IsDelete as User_IsDelete
	
	 from 
		[dbo].[Organization_Tbl] AS O 	
		INNER JOIN [dbo].[UserInfo_Tbl] U
		ON O.OrgId=U.OrgId
		LEFT JOIN [dbo].[City_Tbl] AS C ON C.CityId = O.CityId
		LEFT JOIN [dbo].[State_Tbl] AS S ON S.StateId = O.StateId
		LEFT JOIN [dbo].[Role_Tbl] AS R ON R.RoleId = U.RoleId
		WHERE
		O.IsDelete = 0 AND
		O.IsActive = 1 AND U.UserId!=@UserId
		--and U.IsActive=1
end

else
begin
SELECT 
	ISNULL(O.OrgId, 0) AS Org_OrgId
	, ISNULL(O.Name, '') AS Org_Name
	, ISNULL(O.Street, '') AS Org_Street
	, ISNULL(O.CityId, 0) AS Org_CityId
	, ISNULL(O.StateId, 0) AS Org_StateId
	, ISNULL(C.CityName, '') AS Org_CityName
	, ISNULL(S.StateName , '') AS Org_StateName
	, ISNULL(O.RegisteredAs, '') AS Org_RegisteredAs
	, ISNULL(O.Logo, '') AS Org_Logo
	, O.IsActive as Org_IsActive
	, O.IsDelete as Org_IsDelete
	, ISNULL(U.UserId, 0) AS User_UserId
	, ISNULL(U.FirstName, '') AS User_FirstName
	, ISNULL(U.LastName , '') AS User_LastName
	, ISNULL(U.Street, '') AS User_Street
	, ISNULL(U.CityId , 0) AS User_CityId
	, ISNULL(U.StateId , 0) AS User_StateId
	, ISNULL(U.ProfilePhoto, '') AS User_ProfilePhoto
	, ISNULL(U.RoleId , 0) AS User_RoleId
	, ISNULL(R.RoleName, '') AS User_RoleName
	, ISNULL(U.UserName, '') AS User_UserName
	, ISNULL(U.EmailId, '') AS User_EmailId
	, ISNULL(U.MobileNo, '') AS User_MobileNo
	, ISNULL(U.Password, '') AS User_Password
	, ISNULL(U.CreatedBy,0) AS User_CreatedBy
	, ISNULL(U.CreatedOn, '') AS User_CreatedOn
	, ISNULL(U.ModifiedBy, 0) AS User_ModifiedBy
	, ISNULL(U.ModifiedOn, '') AS User_ModifiedOn
	, U.IsActive as User_IsActive
	, U.IsDelete as User_IsDelete
	
	 from 
		[dbo].[Organization_Tbl] AS O 	
		INNER JOIN [dbo].[UserInfo_Tbl] U
		ON O.OrgId=U.OrgId
		LEFT JOIN [dbo].[City_Tbl] AS C ON C.CityId = O.CityId
		LEFT JOIN [dbo].[State_Tbl] AS S ON S.StateId = O.StateId
		LEFT JOIN [dbo].[Role_Tbl] AS R ON R.RoleId = U.RoleId
		WHERE
		O.OrgId=@OrgId AND
		O.IsDelete = 0 AND
		O.IsActive = 1 AND U.UserId!=@UserId
		--and	U.IsActive=1
end
END

GO
/****** Object:  StoredProcedure [dbo].[GetUsersByOrgIdAndRoleId_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsersByOrgIdAndRoleId_Sp]
 @OrgId Bigint=NULL
,@RoleId bigint
AS
BEGIN
if(@OrgId=58)
begin
SELECT 
	ISNULL(O.OrgId, 0) AS OrgId	
	, ISNULL(U.UserId, 0) AS UserId
	, ISNULL(U.FirstName, '') AS FirstName
	, ISNULL(U.LastName , '') AS LastName	
	, ISNULL(U.EmailId, '') AS EmailId
	 from 
		[dbo].[Organization_Tbl] AS O 	
		INNER JOIN [dbo].[UserInfo_Tbl] U
		ON O.OrgId=U.OrgId		
		WHERE
		O.IsDelete = 0 AND
		O.IsActive = 1 and
		U.IsActive=1  and 
		RoleId = @RoleId
end

else
begin
SELECT 
	ISNULL(O.OrgId, 0) AS OrgId	
	, ISNULL(U.UserId, 0) AS UserId
	, ISNULL(U.FirstName, '') AS FirstName
	, ISNULL(U.LastName , '') AS LastName
	, ISNULL(U.EmailId, '') AS EmailId	
	 from 
		[dbo].[Organization_Tbl] AS O 	
		INNER JOIN [dbo].[UserInfo_Tbl] U
		ON O.OrgId=U.OrgId
		WHERE
		O.OrgId=@OrgId AND
		O.IsDelete = 0 AND
		O.IsActive = 1 and
		U.IsActive =1 and 
		RoleId = @RoleId
end
END

GO
/****** Object:  StoredProcedure [dbo].[InActiveUser_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[InActiveUser_Sp]

@UserId bigint 
AS
BEGIN
	update [dbo].[UserInfo_Tbl] set [IsActive] =0 where  UserId=@UserId
END

GO
/****** Object:  StoredProcedure [dbo].[InsertCity_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertCity_Sp]

@CityName varchar(150)=NULL,
@CreatedBy bigint=NULL,
@Result_CityId bigint=NULL OUTPUT

AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [dbo].[City_Tbl] ( CityName, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, IsActive, IsDelete)
	VALUES	( @CityName, @CreatedBy, GETDATE(), @CreatedBy, GETDATE(),'True', 'False')
	SET @Result_CityId = SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[InsertLoginDetail_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertLoginDetail_Sp]
@LoginDetailId bigint=NULL,
@UserId bigint=NULL,
@LoginIp nvarchar(150)=NULL,
@LogoutIp nvarchar(150)=NULL,
@CreatedBy bigint=NULL
AS
BEGIN

Insert into [dbo].[LoginDetail_Tbl] (UserId, Login, Logout, LoginIp, LogoutIp, CreatedOn, CreatedBy, ModifiedOn, ModifiedBy, IsActive, IsDeleted)
VALUES (@UserId, GETDATE(), GETDATE(), @LoginIp, @LogoutIp, GETDATE(),@CreatedBy,GETDATE(), @CreatedBy, 'True', 'False')

END

GO
/****** Object:  StoredProcedure [dbo].[InsertOrgAndUser_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertOrgAndUser_Sp]
	-- Add the parameters for the stored procedure here
	@OrgId bigint = NULL
	, @Name varchar(400) = NULL
	, @Street nvarchar(100) = NULL
	, @CityId bigint = NULL
	, @StateId bigint = NULL
	, @RegisteredAs varchar(50) = NULL
	, @Logo nvarchar(150) = NULL
	, @CreatedBy bigint = NULL
	, @UserId bigint = NULL
	, @FirstName varchar(70) = NULL
	, @LastName varchar(70) = NULL
	, @U_Street nvarchar(200) = NULL
	, @U_CityId bigint = NULL
	, @U_StateId bigint = NULL
	, @ProfilePhoto nvarchar(max) = NULL
	, @RoleId bigint = NULL
	, @UserName varchar(200) = NULL
	, @EmailId nvarchar(150) = NULL
	, @MobileNo nvarchar(13) = NULL
	, @Password nvarchar(max) = NULL
	, @IsActive bit = NULL
	, @IsDelete bit = NULL
	, @U_IsActive bit = NULL
	, @U_IsDelete bit = NULL
	, @Result_OrgId bigint=NULL OUTPUT
	, @Result_UserId bigint=NULL OUTPUT

AS
BEGIN
	SET NOCOUNT ON;
	IF(@OrgId IS NULL AND  @UserId IS NULL)
	BEGIN
			-- Insert statements for procedure here
		INSERT INTO dbo.Organization_Tbl(Name, Street, CityId, StateId, RegisteredAs, Logo, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, IsActive, IsDelete)
		VALUES (@Name, @Street, @CityId, @StateId, @RegisteredAs, @Logo, @CreatedBy, GETDATE (), @CreatedBy, GETDATE (), 'TRUE', 'FALSE')
	
		SET @Result_OrgId = SCOPE_IDENTITY()

		INSERT INTO [dbo].[UserInfo_Tbl](OrgId, FirstName, LastName, Street, CityId, StateId, ProfilePhoto, RoleId, UserName, EmailId, MobileNo, Password, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, IsActive, IsDelete)
		VALUES (@Result_OrgId, @FirstName, @LastName, @U_Street, @U_CityId, @U_StateId,	@ProfilePhoto, @RoleId, @UserName, @EmailId, @MobileNo, @Password, @CreatedBy, GETDATE(), @CreatedBy,GETDATE(), 'TRUE', 'FALSE' )
	
		SET @Result_UserId = SCOPE_IDENTITY()
	END

	ELSE if(@UserId IS NULL AND @OrgId IS NOT NULL) 
	BEGIN
		INSERT INTO [dbo].[UserInfo_Tbl](OrgId, FirstName, LastName, Street, CityId, StateId, ProfilePhoto, RoleId, UserName, EmailId, MobileNo, Password, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, IsActive, IsDelete)
		VALUES (@OrgId, @FirstName, @LastName, @U_Street, @U_CityId, @U_StateId,	@ProfilePhoto, @RoleId, @UserName, @EmailId, @MobileNo, @Password, @CreatedBy, GETDATE(), @CreatedBy,GETDATE(), 'TRUE', 'FALSE' )
	
		SET @Result_UserId = SCOPE_IDENTITY()
	END
	
  ELSE	
	--ELSE IF(@OrgId =(select OrgId from [dbo].[Organization_Tbl] where OrgId = @OrgId ))
	BEGIN
	UPDATE dbo.Organization_Tbl
	SET Name = @Name
	, Street = @Street
	, CityId = @CityId
	, StateId = @StateId
	, RegisteredAs = @RegisteredAs
	, Logo = @Logo
	, ModifiedBy = @CreatedBy
	, ModifiedOn = GETDATE ()
	, IsActive = @IsActive
	, IsDelete = @IsDelete
	WHERE OrgId =@OrgId
	END

	--IF(@UserId =(select UserId from [dbo].UserInfo_Tbl where UserId = @UserId))
	BEGIN
	UPDATE [dbo].[UserInfo_Tbl]
	SET OrgId = @OrgId
	, FirstName = @FirstName
	, LastName = @LastName
	, Street = @U_Street
	, CityId = @U_CityId
	, StateId = @U_StateId
	, ProfilePhoto = @ProfilePhoto
	, RoleId = @RoleId
	, UserName = @UserName 
	, EmailId = @EmailId
	, MobileNo = @MobileNo
	, Password = @Password
	, ModifiedBy = @CreatedBy
	, ModifiedOn = GETDATE ()
	, IsActive = @U_IsActive
	, IsDelete = @U_IsDelete
	WHERE UserId = @UserId 
	END
 
END
GO
/****** Object:  StoredProcedure [dbo].[InsertRole_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertRole_Sp]
@RoleName varchar(100)=NULL,
@OrgId bigint=NULL,
@CreatedBy bigint=NULL,
@Result_RoleId bigint=NULL OUTPUT
AS
BEGIN
	Insert Into [dbo].[Role_Tbl] (RoleName, OrgId, CreatedOn, CreatedBy, ModifiedOn, ModifiedBy, IsActive, IsDeleted)
	Values (@RoleName, @OrgId, GETDATE(), @CreatedBy, GETDATE(), @CreatedBy, 'True','False')
	SET @Result_RoleId = SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[InsertState_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertState_Sp]
@StateName varchar(150)=NULL, 
@CreatedBy bigint=NULL,
@Result_StateId bigint=NULL OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
Insert into dbo.State_Tbl (StateName, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, IsActive, IsDelete)
VALUES (@StateName, @CreatedBy, GETDATE(), @CreatedBy, GETDATE(), 'TRUE', 'FALSE')
SET @Result_StateId = SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[InsertUserPermissions_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertUserPermissions_Sp]

(
	  @U_RoleId bigint 
	, @ModuleId bigint
	, @Org_Id bigint
	, @UserId bigint
	, @All bit = NULL
	, @Add bit = NULL
	, @Edit bit = NULL
	, @Delete bit = NULL
	, @View bit = NULL
	, @ReActivate bit = NULL
	, @Print bit = NULL
	,@Finalize bit = NULL
	, @ModifiedBy bigint
)
	
AS
BEGIN
if(@UserId!=0)
Begin
	  if((select * from dbo.IsPermissionExistForUser_Fn(@U_RoleId,@ModuleId,@Org_Id,@UserId))=0)
	  Begin
           INSERT INTO [dbo].[UserPermissions_Tbl] ([U_RoleId],[ModuleId],[Org_Id],[UserId],[All] ,[Add],[Edit] ,[Delete]  ,[View],[Re-Activate],[Print],[Finalize], IsActive, Modifiedon,ModifiedBy)
           VALUES (@U_RoleId, @ModuleId , @Org_Id ,@UserId, @All , @Add, @Edit, @Delete, @View, @ReActivate, @Print,@Finalize, 'TRUE', getdate(),@ModifiedBy)
      End
     else if((select * from dbo.IsPermissionExistForUser_Fn(@U_RoleId,@ModuleId,@Org_Id,@UserId))>=1)
     Begin

     update [dbo].[UserPermissions_Tbl] 
     set [All] = @All,
     [Add] = @Add,
     [Edit]= @Edit,
     [Delete]= @Delete,
     [View]=@View,
     [Re-Activate]=@ReActivate,
     [Print]=@Print,
     [Finalize]=@Finalize,
     IsActive='TRUE',Modifiedon = getdate(),ModifiedBy = @ModifiedBy
     where [U_RoleId] = @U_RoleId and [ModuleId] = @ModuleId and [Org_Id] = @Org_Id and UserId=@UserId
     
     End
 End

	 ELSE If(@UserId=0)
Begin
	 if((select * from dbo.IsPermissionExistForUserRole_Fn(@U_RoleId,@ModuleId,@Org_Id))=0)
	  Begin
           INSERT INTO [dbo].[UserPermissions_Tbl] ([U_RoleId],[ModuleId],[Org_Id],[UserId],[All] ,[Add],[Edit] ,[Delete]  ,[View],[Re-Activate],[Print],[Finalize], IsActive, Modifiedon,ModifiedBy)
           VALUES (@U_RoleId, @ModuleId , @Org_Id ,@UserId, @All , @Add, @Edit, @Delete, @View, @ReActivate, @Print,@Finalize, 'TRUE', getdate(),@ModifiedBy)
      End
     else if((select * from dbo.IsPermissionExistForUserRole_Fn(@U_RoleId,@ModuleId,@Org_Id))>=1)
		 Begin

		 update [dbo].[UserPermissions_Tbl] 
		 set [All] = @All,
		 [Add] = @Add,
		 [Edit]= @Edit,
		 [Delete]= @Delete,
		 [View]=@View,
		 [Re-Activate]=@ReActivate,
		 [Print]=@Print,
		 [Finalize]=@Finalize,
		 IsActive='TRUE',Modifiedon = getdate(),ModifiedBy = @ModifiedBy
		 where [U_RoleId] = @U_RoleId and [ModuleId] = @ModuleId and [Org_Id] = @Org_Id 
		 End
	 End
END

GO
/****** Object:  StoredProcedure [dbo].[ReactiveUser_Sp]    Script Date: 19-01-2016 16:45:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ReactiveUser_Sp]

@OrgId bigint=NULL,
@EmailId varchar
AS
BEGIN
	update [dbo].[UserInfo_Tbl] set [IsActive] =1 where [EmailId]=@EmailId and  [OrgId]=@OrgId
END

GO
