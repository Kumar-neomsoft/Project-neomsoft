USE [master]
GO
/****** Object:  Database [ModSolSales]    Script Date: 19-12-2022 13:08:42 ******/
CREATE DATABASE [ModSolSales]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ModSolSales', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ModSolSales.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ModSolSales_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ModSolSales_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ModSolSales] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ModSolSales].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ModSolSales] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ModSolSales] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ModSolSales] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ModSolSales] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ModSolSales] SET ARITHABORT OFF 
GO
ALTER DATABASE [ModSolSales] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ModSolSales] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ModSolSales] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ModSolSales] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ModSolSales] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ModSolSales] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ModSolSales] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ModSolSales] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ModSolSales] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ModSolSales] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ModSolSales] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ModSolSales] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ModSolSales] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ModSolSales] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ModSolSales] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ModSolSales] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ModSolSales] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ModSolSales] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ModSolSales] SET  MULTI_USER 
GO
ALTER DATABASE [ModSolSales] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ModSolSales] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ModSolSales] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ModSolSales] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ModSolSales] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ModSolSales] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ModSolSales] SET QUERY_STORE = OFF
GO
USE [ModSolSales]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](200) NOT NULL,
	[LastName] [varchar](100) NULL,
	[MobileNumber] [varchar](50) NOT NULL,
	[DOB] [datetime] NULL,
	[Gender] [varchar](50) NULL,
	[LeadSource] [varchar](50) NULL,
	[Address] [varchar](800) NULL,
	[DOW] [datetime] NULL,
	[Email] [varchar](50) NULL,
	[Remarks] [varchar](300) NULL,
	[Membership] [bit] NULL,
	[FirstRegister] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEmployee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EMPCode] [varchar](50) NOT NULL,
	[EMPName] [varchar](100) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](150) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[TaxName] [varchar](50) NULL,
	[TaxPercentage] [decimal](18, 2) NULL,
	[MemberDiscount] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[Createdby] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Updatedby] [int] NULL,
	[UpdatedOn] [datetime] NULL,
	[ProductCode] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCustomer] ON 

INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'kumar', NULL, N'8610357522', NULL, N'1', N'google', NULL, NULL, NULL, NULL, 1, N'CHENNAI BRANCH', 1, 1, NULL, 1, NULL)
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (11, N'sadam', N'hjsaj asjg jsga', N'8610458795', NULL, N'1', N'google', N'jhd dshgsdhg sjhgdsjdsjhgdsj', NULL, N'asasa', N'', 0, N'SOUDI ARABIA', 1, 1, CAST(N'2022-12-17T20:17:43.130' AS DateTime), 1, CAST(N'2022-12-17T20:17:43.130' AS DateTime))
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (12, N'test', N'sasas', N'8789565220', NULL, N'1', N'google', N'as assasa', NULL, N'sasaas@gmail.com', N'sassa', 0, N'SOUDI ARABIA', 1, 1, CAST(N'2022-12-17T20:37:53.330' AS DateTime), 1, CAST(N'2022-12-17T20:37:53.330' AS DateTime))
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (13, N'test1', N'fsdfsdf', N'8610524852', NULL, N'1', N'Online', N'ssf', NULL, N'', N'ffsfsf', 0, N'SOUDI ARABIA', 1, 1, CAST(N'2022-12-17T20:40:07.987' AS DateTime), 1, CAST(N'2022-12-17T20:40:07.987' AS DateTime))
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (14, N'test3', N'sddsdsds', N'8610478596', NULL, N'1', N'Online', N'dsdsds', NULL, N'', N'', 0, N'SOUDI ARABIA', 1, 1, CAST(N'2022-12-17T20:41:33.060' AS DateTime), 1, CAST(N'2022-12-17T20:41:33.060' AS DateTime))
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (15, N'test2', N'sddsdsds', N'8611234567', NULL, N'1', N'Online', N'dsdsds', NULL, N'', N'', 0, N'SOUDI ARABIA', 1, 1, CAST(N'2022-12-17T20:42:03.877' AS DateTime), 1, CAST(N'2022-12-17T20:42:03.877' AS DateTime))
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (16, N'test4', N'dfdd', N'8611478966', NULL, N'1', N'Online', N'ffdfd', NULL, N'', N'', 0, N'SOUDI ARABIA', 1, 1, CAST(N'2022-12-17T20:53:35.690' AS DateTime), 1, CAST(N'2022-12-17T20:53:35.690' AS DateTime))
INSERT [dbo].[tblCustomer] ([Id], [CustomerName], [LastName], [MobileNumber], [DOB], [Gender], [LeadSource], [Address], [DOW], [Email], [Remarks], [Membership], [FirstRegister], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (17, N'DecCust', N'Lastname', N'8611452589', NULL, N'1', N'Lastname', N'This is test address', NULL, N'', N'this is remarks', 0, NULL, NULL, 1, CAST(N'2022-12-19T12:23:18.563' AS DateTime), 1, CAST(N'2022-12-19T12:23:18.563' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[tblEmployee] ON 

INSERT [dbo].[tblEmployee] ([Id], [EMPCode], [EMPName], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (1, N'TMB001', N'Dinesh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblEmployee] ([Id], [EMPCode], [EMPName], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (2, N'TMB002', N'Mohammed', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblEmployee] ([Id], [EMPCode], [EMPName], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (3, N'TMB003', N'Raj', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[tblEmployee] ([Id], [EMPCode], [EMPName], [IsActive], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn]) VALUES (4, N'CBE001', N'Sadam', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblEmployee] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 

INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (1, N'Dell laptop', CAST(1500.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'DLP')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (2, N'Dell Harddisk', CAST(2000.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'DHD')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (3, N'Dell Keyboard', CAST(1200.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'DPEN')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (4, N'D link', CAST(600.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'DLK')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (5, N'dell mouse', CAST(450.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'MSE')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (6, N'dell usb', CAST(250.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'USB')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (7, N'dell 8b flash disk', CAST(2500.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'DFD')
INSERT [dbo].[tblProduct] ([ID], [ProductName], [Price], [TaxName], [TaxPercentage], [MemberDiscount], [IsActive], [Createdby], [CreatedOn], [Updatedby], [UpdatedOn], [ProductCode]) VALUES (8, N'dell usb cable', CAST(150.00 AS Decimal(18, 2)), N'gst', CAST(18.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, NULL, NULL, NULL, NULL, N'DUC')
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AddCustomer]
(
@UserId int,@MobileNo varchar(200),@CustomerName varchar(200),
@MailId varchar(200),@DOB varchar(40),@DOW varchar(40),@Gender varchar(200),@LastName varchar(200),
@Source varchar(200),@Remarks varchar(200),@Address varchar(200)
)
as
Begin

insert into tblCustomer(CustomerName,LastName,MobileNumber,
--DOB,
Gender,LeadSource,[Address],
--DOW,
Email, Remarks,Membership,CreatedBy,CreatedOn,
UpdatedBy,UpdatedOn)
values(@CustomerName,@LastName,@MobileNo,
--@DOB,
@Gender,@LastName,@Address,
--@DOW,
@MailId,@Remarks,0,@UserId,GETDATE(),
@UserId,GETDATE())
Select @@IDENTITY as ID
End
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerDetails]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetCustomerDetails](@CusName varchar(40))
as
Begin
Select upper(customername)+' - '+ mobilenumber as 'customername',
case when Gender= '1' then 'MALE' else 'FEMALE' end as 'Gender',
id,'Non-Member' as 'Membership',LastName,upper(FirstRegister) as 'FirstRegister',MobileNumber
from tblCustomer where mobilenumber like +@CusName+'%'
End
GO
/****** Object:  StoredProcedure [dbo].[GetCustomerDetailsbyID]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetCustomerDetailsbyID](@CusId int)
as
Begin
Select upper(customername)+' - '+ mobilenumber as 'label',
case when Gender= '1' then 'MALE' else 'FEMALE' end as 'Gender',
id as 'value','Non-Member' as 'Membership',LastName,upper(FirstRegister) as 'FirstRegister',MobileNumber,
'time' as 'CurrentTime'
from tblCustomer where id=@CusId
End
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeeDetails]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetEmployeeDetails](@Name varchar(40))
as
Begin

select id as 'value',Empcode+ ' - '+upper(EmpName) as 'label' ,EmpName,EMPCode
from tblemployee 

End

GO
/****** Object:  StoredProcedure [dbo].[GetProuctDetails]    Script Date: 19-12-2022 13:08:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GetProuctDetails](@Name varchar(40),@CustID int)
as
Begin

select id as 'value',upper(productcode)+ ' - '+upper(productname) as 'label' ,1 as 'qty',price as 'actualPrice',
memberDiscount,1 as 'taxid',taxname,TaxPercentage

from tblProduct where productname like +@Name+'%'


End
GO
USE [master]
GO
ALTER DATABASE [ModSolSales] SET  READ_WRITE 
GO
