USE [CDCT]
GO
/****** Object:  User [CDCT_WEB]    Script Date: 2020/12/22 上午 11:22:14 ******/
CREATE USER [CDCT_WEB] FOR LOGIN [CDCT_WEB] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [CDCT_WEB]
GO
ALTER ROLE [db_datareader] ADD MEMBER [CDCT_WEB]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [CDCT_WEB]
GO
/****** Object:  Table [dbo].[M_Account]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Account](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Product_Logo] [varchar](3) NOT NULL,
	[Account_Id] [varchar](19) NOT NULL,
	[Short_Name] [varchar](20) NULL,
	[Billing_Date] [varchar](8) NULL,
	[Status] [varchar](1) NULL,
	[Block_Code_1] [varchar](1) NULL,
	[Block_Code_2] [varchar](1) NULL,
	[Block_Code_Date_1] [varchar](8) NULL,
	[Block_Code_Date_2] [varchar](8) NULL,
	[Billing_Cycle] [varchar](2) NULL,
	[Acct_History] [varchar](48) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Account] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Product_Logo] ASC,
	[Account_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ACCT_DIFF]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ACCT_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ACCT_JOCS]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ACCT_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ACCT_MIATC]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ACCT_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ACT_LIST_DOWNLOAD]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ACT_LIST_DOWNLOAD](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Act_Type] [varchar](10) NULL,
	[Act_Id] [varchar](20) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Qty] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ACTI]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ACTI](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[BATCH_NO] [varchar](20) NOT NULL,
	[TYPE] [varchar](15) NULL,
	[CHECK_TYPE] [varchar](2) NULL,
	[CHECK_COND] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Lounge]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Lounge](
	[Airport_Lounge_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Lounge_Code] [varchar](15) NOT NULL,
	[Airport_Lounge_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Bill_Amt] [int] NULL,
	[Plus_One_Amt] [int] NULL,
	[Reward_Type] [varchar](15) NULL,
	[Airport_Lounge_Flag] [varchar](1) NULL,
	[Per_Time_Amt] [int] NULL,
	[Previous_Qty] [int] NULL,
	[After_Per_Time_Amt] [int] NULL,
	[Plus_One_Reward_Type] [varchar](15) NULL,
	[Plus_One_Airport_Lounge_Flag] [varchar](1) NULL,
	[Plus_One_Per_Time_Amt] [int] NULL,
	[Plus_One_Previous_Qty] [int] NULL,
	[Plus_One_After_Per_Time_Amt] [int] NULL,
	[Extra_Serv_Level_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Lounge] PRIMARY KEY CLUSTERED 
(
	[Airport_Lounge_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Code]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Lounge_Code](
	[Airport_Lounge_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Lounge_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Lounge_Level_Code] PRIMARY KEY CLUSTERED 
(
	[Airport_Lounge_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Level]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Lounge_Level](
	[Airport_Lounge_Level_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Lounge_Seq] [int] NOT NULL,
	[Card_Service_Level] [varchar](1) NOT NULL,
	[Card_Flag] [varchar](1) NOT NULL,
	[Times_Per_Year] [int] NULL,
	[Times_Per_Month] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Lounge_Level] PRIMARY KEY CLUSTERED 
(
	[Airport_Lounge_Level_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Trans]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Lounge_Trans](
	[Airport_Lounge_Trans_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Card_No] [varchar](16) NULL,
	[PP_Card_No] [varchar](18) NULL,
	[Lounge_Name] [varchar](55) NULL,
	[Lounge_Code] [varchar](5) NULL,
	[Country] [varchar](20) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Member_Count] [int] NULL,
	[Member_Fee] [decimal](12, 2) NULL,
	[Guest_Count] [int] NULL,
	[Guest_Fee] [decimal](12, 2) NULL,
	[Total_Count] [int] NULL,
	[Total_Fee] [decimal](12, 2) NULL,
	[Invoice_No] [varchar](30) NULL,
	[Remark] [varchar](50) NULL,
	[Batch_Flag] [varchar](1) NULL,
	[Charge_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Charge_Amount] [int] NULL,
	[Billing_Amount] [int] NULL,
 CONSTRAINT [PK_M_Priority_Pass_Trans] PRIMARY KEY CLUSTERED 
(
	[Airport_Lounge_Trans_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Lounge_Trans_Static_Account](
	[Year] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [decimal](12, 2) NULL,
	[Used_Self] [int] NULL,
	[Used_Company] [int] NULL,
	[Paid_Times] [int] NULL,
 CONSTRAINT [PK_M_Airport_Lounge_Trans_Static_Account] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Lounge_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Lounge_Trans_Static_Card](
	[Year] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Pp_Card_No] [varchar](50) NOT NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Used_Self] [int] NULL,
	[Used_Company] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [decimal](12, 2) NULL,
	[Used_Date] [varchar](8) NULL,
	[Used_Country] [varchar](50) NULL,
	[Used_City] [varchar](50) NULL,
	[Paid_Times] [int] NULL,
	[Expire_Start_YYYYMM] [varchar](6) NULL,
	[Expire_End_YYYYMM] [varchar](6) NULL,
 CONSTRAINT [PK_M_Airport_Lounge_Trans_Static_Card] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Pp_Card_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle](
	[Airport_Shuttle_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Shuttle_Code] [varchar](15) NOT NULL,
	[Airport_Shuttle_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Bill_Amt_Buss] [int] NULL,
	[Reward_Type_Buss] [varchar](15) NULL,
	[Airport_Shuttle_Flag_Buss] [varchar](1) NULL,
	[Per_Time_Amt_Buss] [int] NULL,
	[Previous_Qty_Buss] [int] NULL,
	[After_Per_Time_Amt_Buss] [int] NULL,
	[Bill_Amt] [int] NULL,
	[Reward_Type] [varchar](15) NULL,
	[Airport_Shuttle_Flag] [varchar](1) NULL,
	[Per_Time_Amt] [int] NULL,
	[Previous_Qty] [int] NULL,
	[After_Per_Time_Amt] [int] NULL,
	[Extra_Serv_Level_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Shuttle] PRIMARY KEY CLUSTERED 
(
	[Airport_Shuttle_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Code]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle_Code](
	[Airport_Shuttle_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Shuttle_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Shuttle_Level_Code] PRIMARY KEY CLUSTERED 
(
	[Airport_Shuttle_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Level]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle_Level](
	[Airport_Shuttle_Level_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Shuttle_Seq] [int] NOT NULL,
	[Card_Service_Level] [varchar](1) NOT NULL,
	[Card_Flag] [varchar](1) NOT NULL,
	[Times_Per_Year] [int] NULL,
	[Times_Per_Month] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Shuttle_Level] PRIMARY KEY CLUSTERED 
(
	[Airport_Shuttle_Level_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Product]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle_Product](
	[Airport_Shuttle_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Airport_Shuttle_Seq] [int] NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Airport_Shuttle_Product] PRIMARY KEY CLUSTERED 
(
	[Airport_Shuttle_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Trans]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](20) NULL,
	[Bank_Name] [varchar](30) NULL,
	[Logo_Name] [nvarchar](50) NULL,
	[Pickup_Date] [varchar](8) NULL,
	[Cardholder_Id] [varchar](16) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Pay_Amount] [int] NULL,
	[Pickup_Type] [varchar](1) NULL,
	[City] [varchar](30) NULL,
	[Address] [varchar](40) NULL,
	[Extra_Service_Type] [varchar](1) NULL,
	[Uni_Code] [varchar](15) NULL,
	[Driver_Name] [varchar](8) NULL,
	[Car_No] [varchar](8) NULL,
	[Charge_Amount] [int] NULL,
	[Car_Type] [varchar](1) NULL,
	[Airport_Type] [varchar](1) NULL,
	[Card_No] [varchar](16) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[batch_Status] [varchar](1) NULL,
	[Billing_Amount] [int] NULL,
	[Charge_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_UPXTMA] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle_Trans_Static_Account](
	[Year] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_M_Airport_Shuttle_Trans_Static_Account] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Airport_Shuttle_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Airport_Shuttle_Trans_Static_Card](
	[Year] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_M_Airport_Shuttle_Trans_Static_Card] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_Id] ASC,
	[Card_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_APAN]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_APAN](
	[Batch_No] [varchar](20) NULL,
	[Card_No] [varchar](19) NULL,
	[Applepay_No] [varchar](19) NULL,
	[Card_Status] [varchar](1) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Expire_Date] [varchar](8) NULL,
	[Oppost_Reason] [varchar](2) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Oppost_Time] [varchar](6) NULL,
	[Oppost_User] [varchar](8) NULL,
	[Update_Reason] [varchar](1) NULL,
	[Tel_Gsm] [varchar](10) NULL,
	[Q9_Msg_Rsn_Code] [varchar](4) NULL,
	[Q8_38] [varchar](24) NULL,
	[Q8_Q4] [varchar](11) NULL,
	[Q8_05] [varchar](32) NULL,
	[Card_No_Old] [varchar](16) NULL,
	[Master_Seq] [int] NULL,
	[Master_Seq_Old] [int] NULL,
	[Create_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_App_Card_Issuer]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[M_App_Card_Issuer](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[App_Card_Issuer_Id] [varchar](15) NOT NULL,
	[App_Card_Issuer_Name] [varchar](50) NULL,
	[Mcht_Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_App_Card_Issuer_Id] PRIMARY KEY CLUSTERED 
(
	[App_Card_Issuer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_App_Card_Issuer_Dtl]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[M_App_Card_Issuer_Dtl](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[App_Card_Issuer_Id] [varchar](15) NULL,
	[Product_Logo] [varchar](3) NULL,
	[Card_Kind] [nvarchar](10) NULL,
	[Card_Rank1] [nvarchar](10) NULL,
	[Prj_Name] [nvarchar](20) NULL,
	[Logo_Desc] [nvarchar](20) NULL,
	[Bin] [varchar](6) NULL,
	[app_code] [varchar](8) NULL,
	[app_code_old] [varchar](8) NULL,
	[Pord] [varchar](1) NULL,
	[Prj_Id] [varchar](4) NULL,
	[Nccc_No] [varchar](4) NULL,
	[Remark] [nvarchar](256) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Seq_No] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ARMX_DIFF]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ARMX_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ARMX_JOCS]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ARMX_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ARMX_MIATC]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ARMX_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ATBK]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ATBK](
	[BATCH_NO] [varchar](19) NULL,
	[TYPE] [varchar](15) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ACCOUNT_ID] [varchar](19) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TX_DATE] [varchar](8) NULL,
	[FDBACK_AMT] [int] NULL,
	[FDBACK_DESC] [varchar](40) NULL,
	[USE_BEG_DATE] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_AuditTrail]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_AuditTrail](
	[AUDITID] [varchar](50) NOT NULL,
	[USERACCOUNT] [varchar](30) NOT NULL,
	[USERIP] [varchar](100) NULL,
	[FUNCTIONURL] [varchar](100) NULL,
	[METHODNAME] [varchar](100) NULL,
	[QUERYPARAMETER] [varchar](500) NULL,
	[SQLREPORT] [varchar](1500) NULL,
	[CREATE_USER] [varchar](30) NOT NULL,
	[CREATE_DATETIME] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AUDITID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_AULG]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_AULG](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[TRANS_AMT] [int] NULL,
	[TRANS_DATE] [varchar](8) NULL,
	[TRANS_TIME] [varchar](8) NULL,
	[MERCH_DECS] [varchar](40) NULL,
	[AUTH_DATE] [varchar](8) NULL,
	[AUTH_TIME] [varchar](6) NULL,
	[AUTH_CODE] [varchar](6) NULL,
	[TOT_DOTS] [int] NULL,
	[POINTS_REDEMPTION] [int] NULL,
	[POINTS_AMT_SIGN] [varchar](1) NULL,
	[POINTS_AMT] [int] NULL,
	[MCHT_NO] [varchar](15) NULL,
	[AUTHORIZE_REASON] [varchar](2) NULL,
	[SOURCE_COUNTRY] [varchar](3) NULL,
	[CURRENCY_CODE] [varchar](3) NULL,
	[CURRENCY_RATE] [int] NULL,
	[ENTRY_MODE] [varchar](4) NULL,
	[POS_FLAG] [varchar](1) NULL,
	[ACQUIR_ID] [varchar](7) NULL,
	[MCC_CODE] [varchar](4) NULL,
	[PURCHASE_REGION] [varchar](1) NULL,
	[REVERSAL_FLAG] [varchar](1) NULL,
	[TERM_ID] [varchar](8) NULL,
	[ENTRY_COND] [varchar](2) NULL,
	[TOKEN_EC_FLAG] [varchar](1) NULL,
	[POSTAL_CODE] [varchar](10) NULL,
	[MANUAL_AUTH_CANCEL] [varchar](1) NULL,
	[ECC_FLAG] [varchar](1) NULL,
	[EDC_CNT] [int] NULL,
	[EDC_AMT_1ST] [int] NULL,
	[EDC_AMT] [int] NULL,
	[EDC_FEE] [int] NULL,
	[PROD_NAME] [varchar](20) NULL,
	[PROD_CNT] [int] NULL,
	[PROD_CODE] [varchar](8) NULL,
	[TRAN_LDATE] [varchar](4) NULL,
	[TRAN_LTIME] [varchar](6) NULL,
	[TX_TYPE] [varchar](4) NULL,
	[Match_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Batch_Date] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_AULG_DIFF]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_AULG_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_AULG_JOCS]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_AULG_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_AULG_MIATC]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_AULG_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Auto_Pay]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Auto_Pay](
	[Auto_Pay_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Auto_Pay_Code] [varchar](15) NOT NULL,
	[Auto_Pay_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Deadline] [varchar](8) NULL,
	[All_Logo_Flag] [varchar](1) NULL,
	[Activity_Start_Date] [varchar](8) NULL,
	[Activity_End_Date] [varchar](8) NULL,
	[Billing_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[First_Apply_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[Tran_Group] [varchar](15) NULL,
 CONSTRAINT [PK_M_Auto_Pa] PRIMARY KEY CLUSTERED 
(
	[Auto_Pay_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Auto_Pay_Plan]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Auto_Pay_Plan](
	[Auto_Pay_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Auto_Pay_Code] [varchar](15) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Trans_Threshold_Flag] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Redeem_This_Month] [varchar](1) NULL,
	[Redeem_Date] [varchar](1) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](15) NULL,
	[Reward_Limit] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Auto_Pay_Plan] PRIMARY KEY CLUSTERED 
(
	[Auto_Pay_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Auto_Pay_Product]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Auto_Pay_Product](
	[Auto_Pay_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Auto_Pay_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Auto_Pay_Product] PRIMARY KEY CLUSTERED 
(
	[Auto_Pay_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Auto_Pay_Trans]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Auto_Pay_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Auto_Pay_Code] [varchar](15) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Apply_Date] [varchar](20) NULL,
	[Reward_Type] [varchar](20) NULL,
	[Reward_Amount] [int] NULL,
	[Reward_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Auto_Pay_Trans] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Auto_Redeem_Hist]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Auto_Redeem_Hist](
	[Seq_No] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Auto_Redeem_Flag_Before] [varchar](1) NULL,
	[Auto_Redeem_Flag_After] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Auto_Redeem_HIst] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_B162]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_B162](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[APPROVAL_NO] [varchar](6) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_B608]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_B608](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[MARK] [varchar](4) NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_DOTS] [int] NULL,
	[CARD_NO] [varchar](16) NULL,
	[MAJOR_CARD_NO] [varchar](16) NULL,
	[CYCLE] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billboard]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billboard](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Billboard_Title] [nvarchar](50) NOT NULL,
	[Billboard_Content] [text] NOT NULL,
	[Start_Date] [datetime] NOT NULL,
	[End_Date] [datetime] NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Billboard] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Card_Logo]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Card_Logo](
	[Template_Code] [varchar](15) NOT NULL,
	[Template_Name] [nvarchar](100) NOT NULL,
	[Billing_Type] [varchar](1) NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Card_Logo] PRIMARY KEY CLUSTERED 
(
	[Template_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Card_Logo_Group]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[M_Billing_Card_Logo_Group](
	[Template_Code] [varchar](15) NOT NULL,
	[Logo_Group_ID] [varchar](10) NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Card_Logo_Group] PRIMARY KEY CLUSTERED 
(
	[Template_Code] ASC,
	[Logo_Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Month_Event_Static]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Month_Event_Static](
	[Seq_No] [bigint] IDENTITY(1,1) NOT NULL,
	[RelationshipId] [varchar](19) NOT NULL,
	[CardNo] [varchar](19) NOT NULL,
	[Billing_YM] [varchar](6) NOT NULL,
	[Event] [varchar](50) NULL,
	[Event_No] [varchar](50) NULL,
	[Point_Type] [varchar](3) NULL,
	[Event_No1] [varchar](10) NULL,
	[Ms_Type] [nchar](10) NULL,
	[D_Amt] [bigint] NULL,
	[F_Amt] [bigint] NULL,
	[Amt] [bigint] NULL,
	[Total_D_Point] [int] NULL,
	[Total_F_Point] [int] NULL,
	[TOTAL_POINT] [int] NULL,
	[Total_D_Amt] [bigint] NULL,
	[Total_F_Amt] [bigint] NULL,
	[Total_Amt] [bigint] NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Cycle_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_Billing_Month_Event_Static] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Point]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Point](
	[Acct_Id] [varchar](15) NOT NULL,
	[Billing_Date] [varchar](8) NULL,
	[Point_Type] [varchar](1) NOT NULL,
	[Last_Point] [int] NOT NULL,
	[Add_Point] [int] NULL,
	[Man_Adj_Point] [int] NULL,
	[Sys_Adj_Point] [int] NULL,
	[Used_point] [int] NULL,
	[Total_Point] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_1](
	[Seq_No] [int] NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Billing_Type] [varchar](1) NOT NULL,
	[Template_Code] [varchar](15) NOT NULL,
	[Tran_group_code] [varchar](15) NULL,
	[Sex] [varchar](1) NOT NULL,
	[Birth_MM] [varchar](2) NULL,
	[Age_St] [int] NULL,
	[Age_En] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Cycle_Before] [int] NULL,
	[Cycle_Before_Type] [int] NULL,
	[Sett_Amount_St] [int] NULL,
	[Sett_Amount_En] [int] NULL,
	[ANDOR] [int] NULL,
	[Sett_Count_St] [int] NULL,
	[Sett_Count_En] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[Pic_Position] [int] NULL,
	[Redeem_Point_En] [int] NULL,
	[Card_Type_V_Flag] [varchar](1) NULL,
	[Card_Type_M_Flag] [varchar](1) NULL,
	[Card_Type_J_Flag] [varchar](1) NULL,
	[Card_Type_U_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_Billing_Specified_1] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Card_Cd]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_1_Card_Cd](
	[Seq_No] [int] NOT NULL,
	[Card_Cd] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Specified_1_Card_C] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC,
	[Card_Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Card_Type]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_1_Card_Type](
	[Seq_No] [int] NOT NULL,
	[Card_Type] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Specified_1_Card_Type] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC,
	[Card_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_City]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_1_City](
	[Seq_No] [int] NOT NULL,
	[City_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Specified_1_City1] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC,
	[City_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Image]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_1_Image](
	[Billing_Specified_1_Seq_No] [int] NOT NULL,
	[Seq_Code] [int] NOT NULL,
	[File_Name] [varchar](100) NULL,
	[Picture_Data] [varbinary](max) NULL,
	[Picture_Data_S] [varbinary](max) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[typeseq] [char](4) NULL,
 CONSTRAINT [PK_Billing_Specified_1_Image] PRIMARY KEY CLUSTERED 
(
	[Billing_Specified_1_Seq_No] ASC,
	[Seq_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_1_Mcc_Code]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_1_Mcc_Code](
	[Seq_No] [int] NOT NULL,
	[Consume_Type] [varchar](50) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Specified_1_Mcc_Code] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC,
	[Consume_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_2]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_2](
	[Specified_2_Seq] [int] NOT NULL,
	[picCode] [varchar](15) NOT NULL,
	[startDate] [varchar](8) NULL,
	[endDate] [varchar](8) NULL,
	[picOrder] [int] NULL,
	[priority] [varchar](1) NULL,
	[uploadDate] [datetime] NULL,
	[Billing_Type] [varchar](2) NULL,
	[Pic_Name] [varchar](100) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Billing_Specified_2] PRIMARY KEY CLUSTERED 
(
	[Specified_2_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Specified_2_ID]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Specified_2_ID](
	[Specified_2_Seq] [int] NOT NULL,
	[Seq_Code] [int] NOT NULL,
	[Specified_ID] [varchar](10) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[Create_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Billing_Specified_2_ID] PRIMARY KEY CLUSTERED 
(
	[Seq_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Template]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[M_Billing_Template](
	[Template_Code] [varchar](15) NOT NULL,
	[Template_Name] [nvarchar](100) NOT NULL,
	[Billing_Type] [varchar](1) NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[Logo_Group_ID] [varchar](10) NULL,
 CONSTRAINT [PK_Billing_Template] PRIMARY KEY CLUSTERED 
(
	[Template_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Template_Card_Cd]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Billing_Template_Card_Cd](
	[Template_Code] [varchar](15) NOT NULL,
	[Card_Cd] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Billing_Template_Card_C] PRIMARY KEY CLUSTERED 
(
	[Template_Code] ASC,
	[Card_Cd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Billing_Template_Image]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[M_Billing_Template_Image](
	[Template_Code] [varchar](15) NOT NULL,
	[Seq_Code] [int] NOT NULL,
	[File_Name] [varchar](100) NULL,
	[Picture_Data] [varbinary](max) NULL,
	[Picture_Data_S] [varbinary](max) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[M_Billing_Template_Image] ADD [Img_Position] [char](2) NULL
 CONSTRAINT [PK_Billing_Template_Image] PRIMARY KEY CLUSTERED 
(
	[Template_Code] ASC,
	[Seq_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birth_Trans]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birth_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Dept_Store] [varchar](4) NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Card_No] [varchar](20) NULL,
	[Birth_Date] [varchar](8) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Ticket_Qty] [int] NULL,
	[Ticket_Amt] [int] NULL,
	[Wheel_Qty] [int] NULL,
	[Wheel_Amt] [int] NULL,
	[Status] [varchar](1) NULL,
	[Charge_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Err_Msg] [varchar](200) NULL,
	[BATCH_STATUS] [varchar](1) NULL,
	[IN_STORE_AMT] [bigint] NULL,
	[GEN_AMT] [bigint] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_Bonus]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_Bonus](
	[Birthday_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[Birthday_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[New_Account_Flag] [varchar](1) NULL,
	[Fixed_Value_Flag] [varchar](1) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Tran_Group] [varchar](15) NULL,
	[All_Birthday_Flag] [varchar](1) NULL,
	[Before_Birthday_Day] [int] NULL,
	[Yearly_Total_Flag] [varchar](1) NULL,
	[Before_Birthday_Month] [int] NULL,
	[All_Flag] [varchar](1) NULL,
	[First_Trans_Amount] [int] NULL,
	[Total_Trans_Amount] [int] NULL,
	[Total_Trans_Count_1] [int] NULL,
	[Total_Trans_Pre_Amount] [int] NULL,
	[Total_Trans_Count_2] [int] NULL,
	[Total_Trans_Amount_2] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[PCard_Flag] [varchar](1) NULL,
	[SCard_Flag] [varchar](1) NULL,
	[Per_Card_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_Birthday_Bonus] PRIMARY KEY CLUSTERED 
(
	[Birthday_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_MCC]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_MCC](
	[Birthday_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Reward_Seq] [int] NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Birthday_MCC] PRIMARY KEY CLUSTERED 
(
	[Birthday_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_Mcht]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_Mcht](
	[Birthday_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Reward_Seq] [int] NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Birthday_Mcht] PRIMARY KEY CLUSTERED 
(
	[Birthday_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_Plan]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_Plan](
	[Birthday_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[All_Birthday_Flag] [varchar](1) NULL,
	[Before_Birthday_Day] [int] NULL,
	[Yearly_Total_Flag] [varchar](1) NULL,
	[Before_Birthday_Month] [int] NULL,
	[All_Flag] [varchar](1) NULL,
	[First_Trans_Amount] [int] NULL,
	[Total_Trans_Amount] [int] NULL,
	[Total_Trans_Count_1] [int] NULL,
	[Total_Trans_Pre_Amount] [int] NULL,
	[Total_Trans_Count_2] [int] NULL,
	[Total_Trans_Amount_2] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Birthday_Plan] PRIMARY KEY CLUSTERED 
(
	[Birthday_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_Product]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_Product](
	[Birthday_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Birthday_Product] PRIMARY KEY CLUSTERED 
(
	[Birthday_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_Reward]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_Reward](
	[Birthday_Reward_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Reward_Flag] [varchar](1) NULL,
	[Reward_Trans_Flag] [varchar](1) NULL,
	[Amount_Percentage] [numeric](18, 2) NULL,
	[Amount_Unit] [int] NULL,
	[Point] [int] NULL,
	[Qty] [int] NULL,
	[Reward_Limit] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Gift_Code] [varchar](50) NULL,
 CONSTRAINT [PK_M_Birthday_Reward] PRIMARY KEY CLUSTERED 
(
	[Birthday_Reward_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Birthday_VIP]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Birthday_VIP](
	[Birthday_Vip_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Birthday_Code] [varchar](15) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Birthday_VIP] PRIMARY KEY CLUSTERED 
(
	[Birthday_Vip_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_BMSG]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_BMSG](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[BILL_DESC] [varchar](40) NULL,
	[ROLLOUT_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[FORCE_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_C147]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_C147](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_NO] [varchar](16) NULL,
	[NCCC_ATFY_CODE] [varchar](4) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[FIRST_PUR_DATE] [varchar](8) NULL,
	[FIRST_PUR_AMT_SIGN] [varchar](1) NULL,
	[FIRST_PUR_AMT] [int] NULL,
	[MERCHANT_NO] [varchar](15) NULL,
	[AUHI_PUR_DATE] [varchar](8) NULL,
	[AUHI_PUR_AMT_SIGN] [varchar](1) NULL,
	[AUHI_PUR_AMT] [int] NULL,
	[AUHI_MERCHANT_NO] [varchar](15) NULL,
	[AUHI_PUR_CNT_SIGN] [varchar](1) NULL,
	[AUHI_PUR_CNT] [int] NULL,
	[FEEDBACK_FLAG] [varchar](1) NULL,
	[AUHI_FEEDBACK_FLAG] [varchar](1) NULL,
	[NEW_FLAG] [varchar](1) NULL,
	[APPLY_NO6] [varchar](6) NULL,
	[FIRST_REWARD_NO] [varchar](4) NULL,
	[FLAG_801] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport](
	[Car_Park_Airport_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Airport_Code] [varchar](15) NOT NULL,
	[Car_Park_Airport_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Bill_Amt] [int] NULL,
	[Reward_Type] [varchar](15) NULL,
	[Per_Day_Amt] [int] NULL,
	[Extra_Serv_Level_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Airport] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Airport_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Code]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport_Code](
	[Car_Park_Airport_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Airport_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Airport_Code] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Airport_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Level]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport_Level](
	[Car_Park_Airport_Level_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Airport_Seq] [varchar](15) NOT NULL,
	[Card_Service_Level] [varchar](1) NULL,
	[Card_Flag] [varchar](1) NULL,
	[Day_Per_Year] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Airport_Level] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Airport_Level_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Level_Code]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport_Level_Code](
	[Car_Park_Airport_Level_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Airport_Level_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Airport_Level_Code] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Airport_Level_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Trans]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](20) NULL,
	[Company_Id] [varchar](5) NULL,
	[Car_No] [varchar](7) NULL,
	[Card_No] [varchar](16) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Days] [int] NULL,
	[Free_Days] [int] NULL,
	[Special_Event] [varchar](1) NULL,
	[Vendor_Id] [varchar](3) NULL,
	[Last_Year_Park_Days] [int] NULL,
	[This_Year_Park_Days] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Charge_Amount] [int] NULL,
	[batch_Status] [varchar](1) NULL,
	[Charge_Flag] [varchar](1) NULL,
	[Charge_Fee] [int] NULL,
 CONSTRAINT [PK_M_OutShinKong] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport_Trans_Static_Account](
	[Year] [int] NOT NULL,
	[Relationship_id] [varchar](20) NOT NULL,
	[Service_Level] [varchar](1) NULL,
	[Total_Days] [int] NOT NULL,
	[Used_Days] [int] NULL,
	[Free_Days] [int] NULL,
	[Used_Times] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_M_Car_Park_Airport_Trans_Static_Account_1] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Airport_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Airport_Trans_Static_Card](
	[Year] [int] NOT NULL,
	[Relationship_id] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Service_Level] [varchar](1) NULL,
	[Total_Days] [int] NULL,
	[Used_Days] [int] NULL,
	[Free_Days] [int] NULL,
	[Used_Times] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_M_Car_Park_Airport_Trans_Static_Card] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_id] ASC,
	[Card_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service](
	[Car_Park_Service_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Service_Code] [varchar](15) NOT NULL,
	[Car_Park_Service_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Bill_Amt] [int] NULL,
	[Reward_Type] [varchar](15) NULL,
	[Car_Park_Flag] [varchar](1) NULL,
	[Per_Hour_Amt] [int] NULL,
	[Previous_Qty] [int] NULL,
	[After_Per_Hour_Amt] [int] NULL,
	[Redeem_Limit] [int] NULL,
	[Extra_Serv_Level_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Per_Hour_Amt_C] [int] NULL,
	[Previous_Qty_C] [int] NULL,
	[After_Per_Hour_Amt_C] [int] NULL,
	[Redeem_Limit_C] [int] NULL,
	[Per_Hour_Amt_G] [int] NULL,
	[Previous_Qty_G] [int] NULL,
	[After_Per_Hour_Amt_G] [int] NULL,
	[Redeem_Limit_G] [int] NULL,
	[Car_Park_Flag_C] [varchar](1) NULL,
	[Car_Park_Flag_G] [varchar](1) NULL,
 CONSTRAINT [PK_M_Car_Park_Service] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Service_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Code]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service_Code](
	[Car_Park_Service_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Service_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Service_Code] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Service_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Level]    Script Date: 2020/12/22 上午 11:22:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service_Level](
	[Car_Park_Service_Level_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Service_Seq] [int] NOT NULL,
	[Card_Service_Level] [varchar](1) NULL,
	[Card_Flag] [varchar](1) NULL,
	[Day_Per_Year] [int] NULL,
	[Hour_Per_Times] [int] NULL,
	[Times_Per_Day] [int] NULL,
	[Times_Per_Month] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Service_Level] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Service_Level_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Level_Code]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service_Level_Code](
	[Car_Park_Service_Level_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Car_Park_Service_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Car_Park_Service_Level_Code] PRIMARY KEY CLUSTERED 
(
	[Car_Park_Service_Level_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Data_Type] [varchar](1) NULL,
	[Card_No] [varchar](16) NULL,
	[Company_Id] [varchar](5) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Hours] [numeric](4, 1) NULL,
	[Free_Hours] [numeric](4, 1) NULL,
	[Park_Fee] [int] NULL,
	[Redeem_Hour] [numeric](4, 1) NULL,
	[Redeem_Point] [int] NULL,
	[Auth_Code] [varchar](6) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[batch_Status] [varchar](1) NULL,
	[Billing_Amount] [int] NULL,
 CONSTRAINT [PK_M_PackCo] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service_Trans_Static_Account](
	[Year] [int] NOT NULL,
	[Relationship_id] [varchar](20) NOT NULL,
	[Service_Level] [varchar](1) NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Total_Times_D] [int] NULL,
	[Used_Times_D] [int] NULL,
	[Each_Time_Hour] [decimal](12, 2) NULL,
	[Park_Times] [int] NULL,
	[Park_Hours] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_Car_Park_Service_Trans_Static_Card] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Car_Park_Service_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Car_Park_Service_Trans_Static_Card](
	[Year] [int] NOT NULL,
	[Relationship_id] [varchar](20) NOT NULL,
	[CardNo] [varchar](19) NOT NULL,
	[Service_Level] [varchar](1) NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Total_Times_D] [int] NULL,
	[Used_Times_D] [int] NULL,
	[Each_Time_Hour] [decimal](12, 2) NULL,
	[Park_Times] [int] NULL,
	[Park_Hours] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_Car_Park_Service_Trans_Static_Account] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_id] ASC,
	[CardNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CAR_PARK_TXN_LOG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CAR_PARK_TXN_LOG](
	[CAR_Park_Txn_Log_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Command] [varchar](20) NULL,
	[UserID] [varchar](15) NULL,
	[CardNo] [varchar](20) NULL,
	[ExpiredDate] [varchar](4) NULL,
	[OrderID] [varchar](30) NULL,
	[ParkStID] [varchar](15) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[ParkHour] [numeric](3, 1) NULL,
	[BinNo] [varchar](10) NULL,
	[Type] [varchar](2) NULL,
	[UpperHr] [int] NULL,
	[FeedBackID] [varchar](15) NULL,
	[ResponseCode] [varchar](15) NULL,
	[ErrMsg] [varchar](100) NULL,
	[FreeHr] [int] NULL,
	[BonusHr] [int] NULL,
	[BonusCount] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_CAR_PARK_TXN_LOG] PRIMARY KEY CLUSTERED 
(
	[CAR_Park_Txn_Log_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Card](
	[Product_Logo] [varchar](3) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Due_Date] [varchar](6) NULL,
	[Account_Id] [varchar](19) NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Primary_Cardholder_Id] [varchar](19) NULL,
	[Status] [varchar](1) NULL,
	[Apply_Date] [varchar](8) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Open_Date] [varchar](8) NULL,
	[Reissue_Date] [varchar](8) NULL,
	[Change_Date] [varchar](8) NULL,
	[First_Use_Date] [varchar](8) NULL,
	[New_Card_No] [varchar](19) NULL,
	[Old_Card_No] [varchar](19) NULL,
	[Stop_Reason] [varchar](15) NULL,
	[Block_Code] [varchar](15) NULL,
	[Block_Date] [varchar](8) NULL,
	[Cardholder_Flag] [varchar](1) NULL,
	[Chinese_Name] [varchar](40) NULL,
	[English_Name] [varchar](26) NULL,
	[Prod_No] [varchar](4) NULL,
	[NCCC_Code] [varchar](4) NULL,
	[Easy_Card] [varchar](16) NULL,
	[DTS_Card] [varchar](8) NULL,
	[Last_Trans_Date] [varchar](8) NULL,
	[Recommand_Id] [varchar](11) NULL,
	[Member_Since] [varchar](8) NULL,
	[Promote_Dept] [varchar](4) NULL,
	[Promote_Prpj_No] [varchar](4) NULL,
	[Prpj_Chi_Name] [varchar](22) NULL,
	[Jcbrc_Chi_Name] [varchar](22) NULL,
	[Appl_No] [varchar](12) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Date_Opened] [varchar](8) NULL,
	[First_Flag] [varchar](1) NULL,
	[Last_Trans_Date_1] [varchar](8) NULL,
	[First_Flag_2] [varchar](1) NULL,
	[Sprd_No] [varchar](6) NULL,
	[Sprd_Chi_Name] [varchar](60) NULL,
	[System_Opst_Flag] [varchar](1) NULL,
	[Promote_Emp_No] [varchar](11) NULL,
	[Promote_Chi_Name] [varchar](12) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Card] PRIMARY KEY CLUSTERED 
(
	[Product_Logo] ASC,
	[Card_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CARD_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CARD_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Card_Holder_Billing_Detail]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Card_Holder_Billing_Detail](
	[Seq_No] [int] NOT NULL,
	[Billing_Date] [varchar](8) NULL,
	[Card_Holder_ID] [varchar](11) NULL,
	[Pic_Code1] [varchar](5) NULL,
	[Pic_Code2] [varchar](5) NULL,
	[Pic_Code3] [varchar](5) NULL,
	[Pic_Code4] [varchar](5) NULL,
	[Pic_Code5] [varchar](5) NULL,
	[Pic_Code6] [varchar](5) NULL,
	[Pic_Code7] [varchar](5) NULL,
	[Pic_Code8] [varchar](5) NULL,
	[Pic_Code9] [varchar](5) NULL,
	[Pic_Code10] [varchar](5) NULL,
	[Pic_Code11] [varchar](5) NULL,
	[Pic_Code12] [varchar](5) NULL,
	[Pic_Code13] [varchar](5) NULL,
	[Pic_Code14] [varchar](5) NULL,
	[Pic_Code15] [varchar](5) NULL,
	[Pic_Code16] [varchar](5) NULL,
	[Pic_Code17] [varchar](5) NULL,
	[Pic_Code18] [varchar](5) NULL,
	[Pic_Code19] [varchar](5) NULL,
	[Pic_Code20] [varchar](5) NULL,
	[Pic_Code21] [varchar](5) NULL,
	[Del_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_Card_Holder_Billing_Detai] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CARD_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CARD_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CARD_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CARD_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Card_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Card_Product](
	[Product_Logo_Org] [varchar](3) NOT NULL,
	[Product_Logo] [varchar](3) NOT NULL,
	[Product_Card_Bin] [varchar](8) NOT NULL,
	[Product_Name] [varchar](100) NOT NULL,
	[Card_Type] [varchar](15) NOT NULL,
	[Card_CD] [varchar](15) NOT NULL,
	[Buss_Flag] [varchar](1) NULL,
	[Card_Code] [varchar](15) NOT NULL,
	[Card_Curr] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[M_Card_Product] ADD [Logo_Group_ID] [varchar](10) NULL
 CONSTRAINT [PK_M_Card_Product] PRIMARY KEY CLUSTERED 
(
	[Product_Logo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Card_Report_Detail]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Card_Report_Detail](
	[Product_Logo] [varchar](3) NOT NULL,
	[Product_Card_Bin] [varchar](8) NULL,
	[Product_Name] [varchar](100) NULL,
	[Logo_Group_ID] [varchar](10) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cardholder]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cardholder](
	[Cardholder_Id] [varchar](19) NOT NULL,
	[Cardholder_Name] [varchar](40) NULL,
	[Cardholder_Eng_Name] [varchar](40) NULL,
	[Birthday_Date] [varchar](8) NULL,
	[Sex] [varchar](1) NULL,
	[Office_Area_Code] [varchar](3) NULL,
	[Office_Tel_No] [varchar](20) NULL,
	[Tel_Area_Code] [varchar](3) NULL,
	[Tel_No] [varchar](20) NULL,
	[Statement_Send_Type] [varchar](1) NULL,
	[Resident_Zip_Code] [varchar](5) NULL,
	[Resident_City] [nvarchar](15) NULL,
	[Resident_District] [nvarchar](15) NULL,
	[Resident_Address] [nvarchar](100) NULL,
	[Mail_Zip_Code] [varchar](5) NULL,
	[Mail_City] [nvarchar](15) NULL,
	[Mail_District] [nvarchar](15) NULL,
	[Mail_Address] [nvarchar](100) NULL,
	[Office_Zip_Code] [varchar](5) NULL,
	[Office_City] [nvarchar](15) NULL,
	[Office_District] [nvarchar](15) NULL,
	[Office_Address] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Miramar_Cinema_Year] [varchar](4) NULL,
	[Miramar_Wheel_Year] [varchar](4) NULL,
	[Eda_Birth_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[M_Cardholder] ADD [Auto_Redeem_Flag] [varchar](1) NULL
 CONSTRAINT [PK_M_Cardholder] PRIMARY KEY CLUSTERED 
(
	[Cardholder_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cash_Back]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cash_Back](
	[Cash_Back_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cash_Back_Code] [varchar](15) NOT NULL,
	[Cash_Back_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Deadline] [varchar](8) NULL,
	[Message_Eff_Date] [varchar](8) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Redeem_Mcht_Flag] [varchar](1) NULL,
	[Tran_Group] [varchar](15) NULL,
	[All_Logo_Flag] [varchar](1) NULL,
	[Trans_Accumulation_Flag] [varchar](1) NULL,
	[Reward_Mcht_Flag] [varchar](1) NULL,
	[Per_Card_Flag] [varchar](1) NULL,
	[Per_Card_Reward_Limit_Flag] [varchar](1) NULL,
	[Reward_Limit] [int] NULL,
	[Period_Limit] [int] NULL,
	[Daily_Limit] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_Cash_Back] PRIMARY KEY CLUSTERED 
(
	[Cash_Back_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cash_Back_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cash_Back_Mcht](
	[Cash_Back_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cash_Back_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cash_Back_Mcht] PRIMARY KEY CLUSTERED 
(
	[Cash_Back_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cash_Back_Period]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cash_Back_Period](
	[Cash_Back_Period_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cash_Back_Code] [varchar](15) NOT NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cash_Back_Period] PRIMARY KEY CLUSTERED 
(
	[Cash_Back_Period_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cash_Back_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cash_Back_Plan](
	[Cash_Back_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cash_Back_Code] [varchar](15) NOT NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Reward_Limit] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cash_Back_Plan] PRIMARY KEY CLUSTERED 
(
	[Cash_Back_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cash_Back_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cash_Back_Product](
	[Cash_Back_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cash_Back_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cash_Back_Product] PRIMARY KEY CLUSTERED 
(
	[Cash_Back_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cash_Back_Redeem_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cash_Back_Redeem_Mcht](
	[Cash_Back_Redeem_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cash_Back_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cash_Back_Redeem_Mcht] PRIMARY KEY CLUSTERED 
(
	[Cash_Back_Redeem_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CDPA]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CDPA](
	[BATCH_NO] [varchar](20) NULL,
	[PROD_NO] [varchar](8) NULL,
	[PROD_DOT] [int] NULL,
	[CHI_NAME] [varchar](40) NULL,
	[USE_CNT] [int] NULL,
	[PLAT_FLAG] [varchar](1) NULL,
	[BIRTHP_FLAG] [varchar](1) NULL,
	[AFTY_CODE] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Co_Branding]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Co_Branding](
	[Co_Branding_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Co_Branding_Name] [nvarchar](100) NOT NULL,
	[Uni_Code] [varchar](8) NULL,
	[In_Mcht_Commision] [decimal](18, 2) NULL,
	[Other_Mcht_Commision] [decimal](18, 2) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[M_Co_Branding] ADD [Tran_Group] [varchar](15) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[M_Co_Branding] ADD [Logo_Exclude_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[M_Co_Branding] ADD [Billing_Desc] [nvarchar](50) NULL
 CONSTRAINT [PK_M_Co_Branding] PRIMARY KEY CLUSTERED 
(
	[Co_Branding_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Co_Branding_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Co_Branding_Mcht](
	[Co_Branding_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Co_Branding_Seq] [int] NOT NULL,
	[Mcht_Id] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Co_Branding_Mcht] PRIMARY KEY CLUSTERED 
(
	[Co_Branding_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Co_Branding_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Co_Branding_Product](
	[Co_Branding_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Co_Branding_Seq] [int] NOT NULL,
	[Product_Logo] [varchar](50) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Co_Branding_Product] PRIMARY KEY CLUSTERED 
(
	[Co_Branding_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CODE_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CODE_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](8) NULL,
	[PROD_MERC_NO] [varchar](4) NULL,
	[PROD_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CODE_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CODE_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](8) NULL,
	[PROD_MERC_NO] [varchar](4) NULL,
	[PROD_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CODE_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CODE_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](8) NULL,
	[PROD_MERC_NO] [varchar](4) NULL,
	[PROD_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cooperative]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cooperative](
	[Cooperative_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Activity_Id] [varchar](15) NOT NULL,
	[Activity_Name] [nvarchar](100) NOT NULL,
	[Cooperative_Id] [varchar](15) NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [nchar](10) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_Cooperative] PRIMARY KEY CLUSTERED 
(
	[Cooperative_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cooperative_Commision]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cooperative_Commision](
	[Cooperative_Commision_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Activity_Id] [varchar](15) NOT NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Commision_Percentage_1] [numeric](18, 2) NULL,
	[Commision_Percentage_2] [numeric](18, 2) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cooperative_Commision] PRIMARY KEY CLUSTERED 
(
	[Cooperative_Commision_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Cooperative_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Cooperative_Product](
	[Cooperative_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Activity_Id] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Cooperative_Product] PRIMARY KEY CLUSTERED 
(
	[Cooperative_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CUST_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CUST_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CUST_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CUST_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CUST_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CUST_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_CYCLE_RESULT_STATIC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_CYCLE_RESULT_STATIC](
	[B233A_DATE] [date] NULL,
	[B233A_DOT_CNT_0] [varchar](7) NULL,
	[B233A_ID_CNT] [varchar](7) NULL,
	[B233A_DOT_CNT_1] [varchar](7) NULL,
	[B233A_DOT_CNT_2] [varchar](7) NULL,
	[B233A_DOT_TOT] [varchar](10) NULL,
	[B233A_DOT_JAA] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Card_Point]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Card_Point](
	[Seq_No] [int] NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Acct_Id] [varchar](15) NULL,
	[Product_Logo] [varchar](3) NULL,
	[Card_No] [varchar](16) NULL,
	[Point_Type] [varchar](1) NULL,
	[Trans_Amt] [int] NULL,
	[Mcht_Id] [varchar](15) NULL,
	[Point] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Consumption_Account](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Amount] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [M_Daily_Consumption_Account1] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Auth_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Consumption_Auth_Account](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Amount] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [M_Daily_Consumption_Auth_Account1] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Auth_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Consumption_Auth_Card](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Amount] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [M_Daily_Consumption_Auth_Card1] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Consumption_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Consumption_Card](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Amount] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [M_Daily_Consumption_Card1] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Extra_Service_Level_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Extra_Service_Level_Account](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Extra_Service_Level] [varchar](5) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [M_Daily_Extra_Service_Level_Account1] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Daily_Extra_Service_Level_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Daily_Extra_Service_Level_Card](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Extra_Service_Level] [varchar](5) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [M_Daily_Extra_Service_Level_Card1] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dante_Adjustment]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dante_Adjustment](
	[Dante_Adjustment_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Account_No] [varchar](11) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Adj_Action] [varchar](15) NULL,
	[Qty] [int] NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Adj_Reason] [varchar](15) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Dante_Adjustment] PRIMARY KEY CLUSTERED 
(
	[Dante_Adjustment_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Department]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Department](
	[Dept_Id] [varchar](50) NOT NULL,
	[Dept_Name] [nvarchar](50) NOT NULL,
	[Dept_Desc] [nvarchar](100) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Dept_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dept_Store]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dept_Store](
	[Dept_Store_Id] [varchar](15) NOT NULL,
	[Dept_Store_Name] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Dept_Store_Id] PRIMARY KEY CLUSTERED 
(
	[Dept_Store_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dept_Store_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dept_Store_Mcht](
	[Mcht_Id] [varchar](15) NOT NULL,
	[Mcht_Name] [varchar](50) NULL,
	[Dept_Store_Id] [varchar](10) NULL,
	[Response_Bank] [varchar](10) NULL,
	[Dept_Store_Block] [varchar](10) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Mcht_Id] PRIMARY KEY CLUSTERED 
(
	[Mcht_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOBF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOBF](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[SEQ] [int] NULL,
	[CARD_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[STATION_NO] [varchar](5) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[DOTS_OVER] [int] NULL,
	[CARD_NAME] [varchar](20) NULL,
	[CARD_LEVEL] [varchar](4) NULL,
	[RESULT] [varchar](2) NULL,
	[SERVICE_NO] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOBS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOBS](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[SEQ] [int] NULL,
	[CARD_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[STATION_NO] [varchar](5) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[DOTS_OVER] [int] NULL,
	[CARD_NAME] [varchar](20) NULL,
	[CARD_LEVEL] [varchar](4) NULL,
	[SERVICE_NO] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD](
	[ID_NO] [varchar](11) NULL,
	[ACCT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CAR_NO] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[LAST_IN_DATE] [varchar](8) NULL,
	[LAST_OUT_DATE] [varchar](8) NULL,
	[LAST_USE_DAY] [int] NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[TRAN_AMT] [int] NULL,
	[USE_DAY_B] [int] NULL,
	[USE_CNT_B] [int] NULL,
	[LAST_IN_DATE_C] [varchar](8) NULL,
	[LAST_IN_TIME_C] [varchar](6) NULL,
	[LAST_OUT_DATE_C] [varchar](8) NULL,
	[LAST_OUT_TIME_C] [varchar](6) NULL,
	[LAST_USE_HOUR_C] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[TRAN_AMT_C] [int] NULL,
	[USE_CNT_B_C] [int] NULL,
	[USE_HOUR_B_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD1_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD1_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[CARD_NO] [varchar](16) NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD1_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD1_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[CARD_NO] [varchar](16) NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODD1_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODD1_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[CARD_NO] [varchar](16) NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODO](
	[ID_NO] [varchar](11) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[TRAN_AMT] [int] NULL,
	[USE_DAY_B] [int] NULL,
	[USE_CNT_B] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[TRAN_AMT_C] [int] NULL,
	[USE_CNT_B_C] [int] NULL,
	[USE_HOUR_B_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODO_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODO_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODO_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODO_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DODO_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DODO_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOME]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOME](
	[BATCH_NO] [varchar](20) NOT NULL,
	[SEQ] [varchar](1) NULL,
	[STATION_NO] [varchar](5) NULL,
	[CARD_NO] [varchar](16) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[REASON] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOST]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOST](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LAST_TOT_DOT_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT] [int] NULL,
	[CURR_DOT_SIGN] [varchar](1) NULL,
	[CURR_DOT] [int] NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[ADJ_DOT_SIGN] [varchar](1) NULL,
	[ADJ_DOT] [int] NULL,
	[THIS_TOT_DOT_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[CANCEL_DOT_SIGN] [varchar](1) NULL,
	[CANCEL_DOT] [int] NULL,
	[PROD_DOT_SING] [varchar](1) NULL,
	[PROD_DOT] [int] NULL,
	[LAST_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_C] [int] NULL,
	[CURR_DOT_C_SIGN] [varchar](1) NULL,
	[CURR_DOT_C] [int] NULL,
	[USE_DOT_C_SIGN] [varchar](1) NULL,
	[USE_DOT_C] [int] NULL,
	[THIS_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[ADJ_DOT_C_SIGN] [varchar](1) NULL,
	[ADJ_DOT_C] [int] NULL,
	[CANCEL_DOT_C_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_C] [int] NULL,
	[LAST_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_G] [int] NULL,
	[CURR_DOT_G_SIGN] [varchar](1) NULL,
	[CURR_DOT_G] [int] NULL,
	[USE_DOT_G_SIGN] [varchar](1) NULL,
	[USE_DOT_G] [int] NULL,
	[THIS_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[ADJ_DOT_G_SIGN] [varchar](1) NULL,
	[ADJ_DOT_G] [int] NULL,
	[CANCEL_DOT_G_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_G] [int] NULL,
	[JAA_MILE_001_SIGN] [varchar](1) NULL,
	[JAA_MILE_001] [int] NULL,
	[JAA_MILE_002_SIGN] [varchar](1) NULL,
	[JAA_MILE_002] [int] NULL,
	[JAA_MILE_003_SIGN] [varchar](1) NULL,
	[JAA_MILE_003] [int] NULL,
	[JAA_MILE_999_SIGN] [varchar](1) NULL,
	[JAA_MILE_999] [int] NULL,
	[NOT_SEND_DOT_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOST_TEST]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOST_TEST](
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LAST_TOT_DOT_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT] [int] NULL,
	[CURR_DOT_SIGN] [varchar](1) NULL,
	[CURR_DOT] [int] NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[ADJ_DOT_SIGN] [varchar](1) NULL,
	[ADJ_DOT] [int] NULL,
	[THIS_TOT_DOT_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[CANCEL_DOT_SIGN] [varchar](1) NULL,
	[CANCEL_DOT] [int] NULL,
	[PROD_DOT_SING] [varchar](1) NULL,
	[PROD_DOT] [int] NULL,
	[LAST_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_C] [int] NULL,
	[CURR_DOT_C_SIGN] [varchar](1) NULL,
	[CURR_DOT_C] [int] NULL,
	[USE_DOT_C_SIGN] [varchar](1) NULL,
	[USE_DOT_C] [int] NULL,
	[THIS_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[ADJ_DOT_C_SIGN] [varchar](1) NULL,
	[ADJ_DOT_C] [int] NULL,
	[CANCEL_DOT_C_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_C] [int] NULL,
	[LAST_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_G] [int] NULL,
	[CURR_DOT_G_SIGN] [varchar](1) NULL,
	[CURR_DOT_G] [int] NULL,
	[USE_DOT_G_SIGN] [varchar](1) NULL,
	[USE_DOT_G] [int] NULL,
	[THIS_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[ADJ_DOT_G_SIGN] [varchar](1) NULL,
	[ADJ_DOT_G] [int] NULL,
	[CANCEL_DOT_G_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_G] [int] NULL,
	[JAA_MILE_001_SIGN] [varchar](1) NULL,
	[JAA_MILE_001] [int] NULL,
	[JAA_MILE_002_SIGN] [varchar](1) NULL,
	[JAA_MILE_002] [int] NULL,
	[JAA_MILE_003_SIGN] [varchar](1) NULL,
	[JAA_MILE_003] [int] NULL,
	[JAA_MILE_999_SIGN] [varchar](1) NULL,
	[JAA_MILE_999] [int] NULL,
	[NOT_SEND_DOT_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dot01_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dot01_Rec](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[Dot01_I1] [varchar](19) NULL,
	[Dot01_I2] [int] NULL,
	[Dot01_I3] [varchar](8) NULL,
	[Dot01_I4] [varchar](6) NULL,
	[Dot01_I5] [varchar](6) NULL,
	[Dot01_I6] [int] NULL,
	[Dot01_I7] [varchar](1) NULL,
	[Dot01_I8] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Dot01_Rec] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dot01_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dot01_Send](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[Dot01_O1] [varchar](19) NULL,
	[Dot01_O2] [varchar](1) NULL,
	[Dot01_O3] [int] NULL,
	[Dot01_O4] [varchar](1) NULL,
	[Dot01_O5] [int] NULL,
	[Return_Code] [varchar](6) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Dot01_Send] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dot02_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dot02_Rec](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[Dot02_I1] [varchar](19) NULL,
	[Dot02_I2] [int] NULL,
	[Dot02_I3] [varchar](8) NULL,
	[Dot02_I4] [varchar](6) NULL,
	[Dot02_I5] [varchar](6) NULL,
	[Dot02_I6] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Dot02_Rec] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOT03_REC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOT03_REC](
	[SEQ_NO] [int] IDENTITY(1,1) NOT NULL,
	[TXN_CHANNEL] [varchar](2) NULL,
	[HOST_SEQ_NO] [varchar](7) NULL,
	[STAN_NO] [varchar](10) NULL,
	[TXN_DATE] [varchar](8) NULL,
	[TXN_TIME] [varchar](6) NULL,
	[TERM_ID] [varchar](8) NULL,
	[BUSI_DATE] [varchar](8) NULL,
	[ATMP_MODE] [varchar](1) NULL,
	[FISC_MODE] [varchar](1) NULL,
	[RTN_CODE] [varchar](4) NULL,
	[SEND_BANK] [varchar](7) NULL,
	[RECV_BANK] [varchar](7) NULL,
	[EIBRSRCE] [varchar](4) NULL,
	[FILLER] [varchar](2) NULL,
	[DOT02_I1] [varchar](19) NULL,
	[DOT02_I2] [varchar](1) NULL,
	[CREATE_DATETIME] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOT03_SEND]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOT03_SEND](
	[SEQ_NO] [int] IDENTITY(1,1) NOT NULL,
	[TXN_CHANNEL] [varchar](2) NULL,
	[HOST_SEQ_NO] [varchar](7) NULL,
	[STAN_NO] [varchar](10) NULL,
	[TXN_DATE] [varchar](8) NULL,
	[TXN_TIME] [varchar](6) NULL,
	[TERM_ID] [varchar](8) NULL,
	[BUSI_DATE] [varchar](8) NULL,
	[ATMP_MODE] [varchar](1) NULL,
	[FISC_MODE] [varchar](1) NULL,
	[RTN_CODE] [varchar](4) NULL,
	[SEND_BANK] [varchar](7) NULL,
	[RECV_BANK] [varchar](7) NULL,
	[EIBRSRCE] [varchar](4) NULL,
	[FILLER] [varchar](2) NULL,
	[DOT03_O1] [varchar](19) NULL,
	[DOT03_O2] [varchar](1) NULL,
	[DOT03_O3] [varchar](1) NULL,
	[DOT03_O4] [varchar](8) NULL,
	[RETURN_CODE] [varchar](4) NULL,
	[CREATE_DATETIME] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SEQ_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOTS_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOTS_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOTS_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOTS_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DOTS_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DOTS_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DVIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DVIP](
	[RELATIONSHIP_ID] [nchar](19) NULL,
	[THIS_YY_AMT_SIGN] [varchar](1) NULL,
	[THIS_YY_AMT] [int] NULL,
	[PREV_YY_AMT_SIGN] [varchar](1) NULL,
	[PREV_YY_AMT] [int] NULL,
	[THIS_MM_AMT_SIGN] [varchar](1) NULL,
	[THIS_MM_AMT] [int] NULL,
	[THIS_1M_AMT_SIGN] [varchar](1) NULL,
	[THIS_1M_AMT] [int] NULL,
	[THIS_2M_AMT_SIGN] [varchar](1) NULL,
	[THIS_2M_AMT] [int] NULL,
	[THIS_3M_AMT_SIGN] [varchar](1) NULL,
	[THIS_3M_AMT] [int] NULL,
	[THIS_4M_AMT_SIGN] [varchar](1) NULL,
	[THIS_4M_AMT] [int] NULL,
	[THIS_5M_AMT_SIGN] [varchar](1) NULL,
	[THIS_5M_AMT] [int] NULL,
	[THIS_6M_AMT_SIGN] [varchar](1) NULL,
	[THIS_6M_AMT] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DVIP_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DVIP_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [nchar](19) NULL,
	[THIS_YY_AMT] [int] NULL,
	[THIS_MM_AMT] [int] NULL,
	[THIS_1M_AMT] [int] NULL,
	[THIS_2M_AMT] [int] NULL,
	[THIS_3M_AMT] [int] NULL,
	[THIS_4M_AMT] [int] NULL,
	[THIS_5M_AMT] [int] NULL,
	[THIS_6M_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DVIP_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DVIP_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [nchar](19) NULL,
	[THIS_YY_AMT] [int] NULL,
	[THIS_MM_AMT] [int] NULL,
	[THIS_1M_AMT] [int] NULL,
	[THIS_2M_AMT] [int] NULL,
	[THIS_3M_AMT] [int] NULL,
	[THIS_4M_AMT] [int] NULL,
	[THIS_5M_AMT] [int] NULL,
	[THIS_6M_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DVIP_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DVIP_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [nchar](19) NULL,
	[THIS_YY_AMT] [int] NULL,
	[THIS_MM_AMT] [int] NULL,
	[THIS_1M_AMT] [int] NULL,
	[THIS_2M_AMT] [int] NULL,
	[THIS_3M_AMT] [int] NULL,
	[THIS_4M_AMT] [int] NULL,
	[THIS_5M_AMT] [int] NULL,
	[THIS_6M_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_E123]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_E123](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](11) NULL,
	[CARD_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPL_NO] [varchar](12) NULL,
	[ISSUE_DATE] [varchar](8) NULL,
	[END_DATE] [varchar](8) NULL,
	[FLAG] [varchar](1) NULL,
	[FEEDBACK_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_E149]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_E149](
	[BATCH_NO] [varchar](20) NOT NULL,
	[MAJOR_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[CARD_NO] [varchar](16) NULL,
	[EASY_CARD_NO] [varchar](16) NULL,
	[AMT_SIGN] [varchar](1) NULL,
	[AMT] [int] NULL,
	[PYBT_AMT_SIGN] [varchar](1) NULL,
	[PYBT_AMT] [int] NULL,
	[FEEDBACK_AMT_SIGN] [varchar](1) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[PROC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_E151]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_E151](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[YYYYMM] [varchar](6) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL,
	[USE_BEGIN_DATE] [varchar](8) NULL,
	[USE_BEGIN_TIME] [varchar](6) NULL,
	[USE_BEGIN_AMT_SIGN] [varchar](1) NULL,
	[USE_BEGIN_AMT] [int] NULL,
	[PAY_TYPE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_E152]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_E152](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](10) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[PAY_TYPE] [varchar](2) NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_CYCLE] [varchar](2) NULL,
	[ACCOUNT_ID] [varchar](11) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_E167]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_E167](
	[BATCH_NO] [varchar](20) NOT NULL,
	[TYPE] [varchar](1) NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[UPLOAD_DATE] [varchar](8) NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_BEGIN_DATE] [varchar](8) NULL,
	[USE_BEGIN_TIME] [varchar](6) NULL,
	[USE_BEGIN_AMT_SIGN] [varchar](1) NULL,
	[USE_BEGIN_AMT] [int] NULL,
	[USE_BEGIN_AUTH] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[INST_CNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_E168]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_E168](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[DATA_DATE] [varchar](8) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NOT NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_eBilling]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_eBilling](
	[eBilling_Seq] [int] IDENTITY(1,1) NOT NULL,
	[eBilling_Code] [varchar](15) NOT NULL,
	[eBilling_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Trans_Start_Date] [varchar](8) NULL,
	[Trans_End_Date] [varchar](8) NULL,
	[Deadline_Flag] [varchar](1) NULL,
	[Deadline] [varchar](8) NULL,
	[Tran_Group] [varchar](15) NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Apply_Last] [int] NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[FIRST_APPLY_FLAG] [varchar](1) NULL,
	[ANNUAL_FEE_DISCOUNT_FLAG] [varchar](1) NULL,
	[Used_Times_After_Apply] [int] NULL,
 CONSTRAINT [PK_M_eBilling] PRIMARY KEY CLUSTERED 
(
	[eBilling_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_eBilling_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_eBilling_Plan](
	[eBilling_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[eBilling_Code] [varchar](15) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Double_Amt] [int] NULL,
	[Loyalty_Threshold_Flag] [varchar](1) NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Redeem_This_Month] [varchar](1) NULL,
	[Redeem_Date] [varchar](1) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[reward_Limit] [int] NULL,
	[Gift_Code] [varchar](50) NULL,
 CONSTRAINT [PK_M_eBilling_Plan] PRIMARY KEY CLUSTERED 
(
	[eBilling_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_eBilling_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_eBilling_Product](
	[eBilling_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[eBilling_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_eBilling_Product] PRIMARY KEY CLUSTERED 
(
	[eBilling_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_eBilling_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_eBilling_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[EBilling_Code] [varchar](15) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Apply_Date] [varchar](8) NULL,
	[Reward_Code] [varchar](50) NULL,
	[Feedback_Date] [varchar](8) NULL,
	[Source] [varchar](50) NULL,
 CONSTRAINT [PK_M_eBilling_Trans] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Employee]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Employee](
	[Empl_Id] [varchar](50) NOT NULL,
	[Empl_Name] [nvarchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Dept_Id] [varchar](50) NULL,
	[EMail] [varchar](100) NULL,
	[Birthday] [varchar](8) NULL,
	[Activated] [varchar](1) NULL,
	[Suspend] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_Employee_1] PRIMARY KEY CLUSTERED 
(
	[Empl_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Error_Message]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Error_Message](
	[Err_Code] [varchar](20) NOT NULL,
	[Err_Message] [nvarchar](50) NULL,
	[Err_Desc] [nvarchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Error_Message] PRIMARY KEY CLUSTERED 
(
	[Err_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Extra_Service_Level](
	[Extra_Serv_Level_Code] [varchar](15) NOT NULL,
	[Extra_Serv_Level_Name] [nvarchar](100) NOT NULL,
	[Tran_Code] [varchar](15) NULL,
	[Second_Flag] [varchar](1) NOT NULL,
	[Third_Flag] [varchar](1) NOT NULL,
	[Third_New_Card_Flag] [varchar](1) NULL,
	[Third_Num] [int] NULL,
	[Third_Day] [varchar](1) NULL,
	[Fourth_Flag] [varchar](1) NULL,
	[Fourth_Before_After] [varchar](1) NULL,
	[Fourth_Num] [int] NULL,
	[Fourth_Day] [varchar](1) NULL,
	[Fourth_Count_Flag] [varchar](1) NULL,
	[Fourth_Count] [int] NULL,
	[Fourth_Row_Flag] [varchar](1) NULL,
	[Fourth_Row_Amt] [int] NULL,
	[Fourth_Total_Flag] [varchar](1) NULL,
	[Fourth_Total_Amt] [int] NULL,
	[Fifth_Name] [nvarchar](100) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Cal_Type] [varchar](1) NULL,
	[Year_Type] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Amt_Type] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level_F]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Extra_Service_Level_F](
	[Extra_Serv_Level_F_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Extra_Serv_Level_Code] [varchar](15) NOT NULL,
	[First_Code] [varchar](1) NULL,
	[Seq] [int] NULL,
	[First_Code_Name] [nvarchar](100) NULL,
	[First_Code_Month] [int] NULL,
	[First_Code_Amt] [int] NULL,
	[First_Code_Last_Year_Amt] [int] NULL,
	[First_Code_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Amt_Type] [varchar](1) NULL,
 CONSTRAINT [PK_M_Extra_Service_Level_F_1] PRIMARY KEY CLUSTERED 
(
	[Extra_Serv_Level_F_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level_NdTh]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Extra_Service_Level_NdTh](
	[Extra_Serv_Level_Ndth_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Extra_Serv_Level_Code] [varchar](15) NOT NULL,
	[Ndth_Code] [varchar](1) NOT NULL,
	[Before_After] [varchar](1) NULL,
	[Ndth_Num] [int] NULL,
	[Ndth_Day] [varchar](1) NULL,
	[Ndth_Times] [varchar](1) NULL,
	[Ndth_Amt] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Extra_Service_Level_NdTh] PRIMARY KEY CLUSTERED 
(
	[Extra_Serv_Level_Ndth_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Extra_Service_Level_Tran]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Extra_Service_Level_Tran](
	[Extra_Serv_Level_Tran_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Extra_Serv_Level_Code] [varchar](15) NOT NULL,
	[Tran_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Extra_Service_Level_Tran] PRIMARY KEY CLUSTERED 
(
	[Extra_Serv_Level_Tran_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Extra_Service_Special_Lists]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Extra_Service_Special_Lists](
	[Extra_Service_Special_Lists_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Extra_Service_Item] [varchar](15) NOT NULL,
	[Qty] [int] NOT NULL,
	[Date_Limit] [datetime] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Extra_Service_Special_Lists] PRIMARY KEY CLUSTERED 
(
	[Extra_Service_Special_Lists_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FEBK]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FEBK](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[ACCOUNT_ID] [varchar](19) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TX_DATE] [varchar](8) NULL,
	[POST_DATE] [varchar](8) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[FDBACK_AMT] [int] NULL,
	[FDBACK_DESC] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift](
	[Gift_Code] [varchar](15) NOT NULL,
	[Gift_Type] [varchar](15) NOT NULL,
	[Gift_Name] [nvarchar](100) NOT NULL,
	[Gift_Desc] [nvarchar](1000) NULL,
	[File_Name] [varchar](100) NULL,
	[Picture_Data] [varbinary](max) NULL,
	[Picture_Data_S] [varbinary](max) NULL,
	[Charge_Amount] [int] NULL,
	[Stop_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Gift] PRIMARY KEY CLUSTERED 
(
	[Gift_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift_Inv]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift_Inv](
	[Gift_Code] [varchar](15) NOT NULL,
	[Gift_No] [varchar](7) NULL,
	[Gift_Type] [varchar](15) NOT NULL,
	[Red_Commodity_Flag] [varchar](1) NULL,
	[Picture_Data] [varbinary](max) NULL,
	[First_Inv_Date] [varchar](8) NULL,
	[Vendor_Id] [varchar](15) NULL,
	[In_Qty] [int] NULL,
	[Eff_Date] [varchar](8) NULL,
	[Cost_Price] [decimal](12, 4) NULL,
	[Net_Cost_Price] [decimal](12, 4) NULL,
	[Total_Amt] [decimal](12, 4) NULL,
	[Project_Manager] [varchar](15) NULL,
	[Org_Pur_Qty] [int] NULL,
	[Available_Qty] [int] NULL,
	[Defective_Qty] [int] NULL,
	[Inv_Qty] [int] NULL,
	[Reserve_Qty] [int] NULL,
	[Used_Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[No_Expiry_Date] [varchar](1) NULL,
	[Signed_Doc_No] [varchar](15) NULL,
	[Project_Name] [varchar](100) NULL,
 CONSTRAINT [PK_M_Gift_Inv] PRIMARY KEY CLUSTERED 
(
	[Gift_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift_Location]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift_Location](
	[Gift_Location_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Gift_Code] [varchar](7) NULL,
	[Location] [nvarchar](50) NULL,
	[Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Gift_Location] PRIMARY KEY CLUSTERED 
(
	[Gift_Location_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift_Txn]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift_Txn](
	[Gift_Txn_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Gift_Txn_Type] [varchar](15) NULL,
	[Gift_Type] [varchar](15) NULL,
	[Gift_Code] [varchar](15) NULL,
	[Plan_Type] [varchar](15) NULL,
	[Plan_Code] [varchar](15) NULL,
	[Sign_No] [varchar](100) NULL,
	[Vendor_Id] [varchar](15) NULL,
	[Qty] [int] NULL,
	[Eff_Date] [varchar](8) NULL,
	[Cost_Price] [decimal](12, 4) NULL,
	[Net_Cost_Price] [decimal](12, 4) NULL,
	[Report_Flag] [varchar](1) NULL,
	[Location] [varchar](15) NULL,
	[Remark] [varchar](50) NULL,
	[Approved_Flag] [varchar](8) NULL,
	[Approved_User] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Project_Name] [varchar](100) NULL,
	[Bringout_Location] [varchar](15) NULL,
	[Bringout_Remark] [varchar](100) NULL,
	[Storage_Location] [varchar](15) NULL,
	[Storage_Remark] [varchar](100) NULL,
	[Delivery_Time] [varchar](8) NULL,
	[Change_Total_Count] [int] NULL,
	[Dispatch_Form] [varchar](10) NULL,
	[Project_Manager] [varchar](15) NULL,
	[Vendor_Id_Put_In] [varchar](15) NULL,
	[Vendor_Id_Bring_Out] [varchar](15) NULL,
	[GiftTxn_Change_Seq] [varchar](50) NULL,
	[Reservations] [int] NULL,
 CONSTRAINT [PK_M_Gift_Txn] PRIMARY KEY CLUSTERED 
(
	[Gift_Txn_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift_Txn_Location]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift_Txn_Location](
	[Gift_Txn_Location_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Gift_Txn_Seq] [int] NOT NULL,
	[IO_TYPE] [varchar](1) NULL,
	[Location] [nvarchar](50) NULL,
	[Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Gift_Txn_Location] PRIMARY KEY CLUSTERED 
(
	[Gift_Txn_Location_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift_Voucher]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift_Voucher](
	[Gift_Voucher_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Gift_Code] [varchar](15) NULL,
	[Plan_Type] [varchar](15) NULL,
	[Plan_Code] [varchar](15) NULL,
	[Qty] [int] NULL,
	[Cost_Price] [int] NULL,
	[Net_Cost_Price] [int] NULL,
	[Voucher_Date] [varchar](8) NULL,
	[Approved_Date] [varchar](8) NULL,
	[Remark] [varchar](1000) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Reversal_Qty] [int] NULL,
	[Project_Manager] [varchar](15) NULL,
	[Eff_Date] [varchar](8) NULL,
	[Writeoff_Qty] [int] NULL,
	[Signed_Doc_No] [varchar](100) NULL,
	[Project_Name] [varchar](100) NULL,
	[GIFT_TYPE] [varchar](15) NULL,
	[Vendor_Id] [varchar](15) NULL,
 CONSTRAINT [PK_M_Gift_Voucher] PRIMARY KEY CLUSTERED 
(
	[Gift_Voucher_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Gift_Voucher_Location]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gift_Voucher_Location](
	[Gift_Voucher_Location_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Gift_Voucher_Seq] [int] NOT NULL,
	[Location] [nvarchar](50) NULL,
	[Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Gift_Voucher_Location] PRIMARY KEY CLUSTERED 
(
	[Gift_Voucher_Location_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_GRE1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_GRE1](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[MEMBER_NO] [varchar](10) NULL,
	[CHI_NAME] [varchar](20) NULL,
	[ENG_NAME_LAST] [varchar](25) NULL,
	[ENG_NAME_FIRST] [varchar](25) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TEL_NO] [varchar](10) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[ADDR_1] [varchar](30) NULL,
	[ADDR_2] [varchar](30) NULL,
	[ADDR_3] [varchar](30) NULL,
	[ADDR_4] [varchar](30) NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_GRE2]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_GRE2](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_KIND] [varchar](2) NULL,
	[CARD_NO] [varchar](19) NULL,
	[CR_DR] [varchar](1) NULL,
	[MEMBER_NO] [varchar](10) NULL,
	[PASSPORT_NO] [varchar](10) NULL,
	[ID_NO] [varchar](11) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[PRESENT_DATE] [varchar](8) NULL,
	[MILE_CNT] [int] NULL,
	[ENG_NAME] [varchar](25) NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_High_Speed_Rail]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_High_Speed_Rail](
	[High_Speed_Rail_Seq] [int] IDENTITY(1,1) NOT NULL,
	[High_SR_Flag] [varchar](1) NOT NULL,
	[High_SR_Code] [varchar](15) NULL,
	[Start_Date] [varchar](8) NULL,
	[Close_Date] [varchar](8) NULL,
	[Point] [int] NULL,
	[Amount] [int] NULL,
	[Charge_Amt] [int] NULL,
	[Red_Times] [int] NULL,
	[Additional_Times] [int] NULL,
	[Freetimes] [int] NULL,
	[Tran_Group_Code] [varchar](10) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[FULL_FILL_AMOUNT] [int] NULL,
 CONSTRAINT [PK_M_High_Speed_Rail] PRIMARY KEY CLUSTERED 
(
	[High_Speed_Rail_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_High_Speed_Rail_Freetime]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_High_Speed_Rail_Freetime](
	[Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Card_No] [varchar](16) NULL,
	[Ym] [varchar](10) NULL,
	[Total_Times] [int] NULL,
	[Used_Times] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_High_Speed_Rail_Freetime] PRIMARY KEY CLUSTERED 
(
	[Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_High_SR_CardProd]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_High_SR_CardProd](
	[High_Sr_CardProd_Seq] [int] IDENTITY(1,1) NOT NULL,
	[High_Speed_Rail_Seq] [int] NOT NULL,
	[Card_Product_Code] [varchar](15) NOT NULL,
	[Del_Flag] [nchar](10) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_High_SR_CardProd] PRIMARY KEY CLUSTERED 
(
	[High_Sr_CardProd_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLG](
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](18) NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_DATE_SEQ] [int] NULL,
	[CITY] [varchar](10) NULL,
	[COUNTRY] [varchar](10) NULL,
	[USE_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[TERM_NO] [varchar](16) NULL,
	[AMT_FLAG] [varchar](1) NULL,
	[AMT] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLG_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLG_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[USE_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLG_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLG_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[USE_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLG_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLG_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[USE_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLGUL]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLGUL](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[PP_Card_No] [varchar](18) NULL,
	[Lounge_Name] [varchar](55) NULL,
	[Lounge_Code] [varchar](5) NULL,
	[Country] [varchar](20) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Member_Count] [int] NULL,
	[Member_Fee] [decimal](12, 2) NULL,
	[Guest_Count] [int] NULL,
	[Guest_Fee] [decimal](12, 2) NULL,
	[Total_Count] [int] NULL,
	[Total_Fee] [decimal](12, 2) NULL,
	[Invoice_No] [varchar](30) NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](500) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[BILLING_YM] [varchar](6) NULL,
	[Batch_No] [varchar](20) NULL,
 CONSTRAINT [PK_M_ICLGUL] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLP_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLP_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLP_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLP_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ICLP_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ICLP_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_INST_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_INST_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[INSTALLMENT_CNT] [int] NULL,
	[PURCHASE_AMT] [bigint] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_INST_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_INST_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[INSTALLMENT_CNT] [int] NULL,
	[PURCHASE_AMT] [bigint] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_INST_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_INST_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[INSTALLMENT_CNT] [int] NULL,
	[PURCHASE_AMT] [bigint] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Installment]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Installment](
	[Installment_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Installment_Code] [varchar](15) NOT NULL,
	[Installment_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Installment_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Installment] PRIMARY KEY CLUSTERED 
(
	[Installment_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Installment_Period]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Installment_Period](
	[Installment_Period_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Installment_Code] [varchar](15) NOT NULL,
	[Start_Period] [int] NULL,
	[End_Period] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Installment_Period] PRIMARY KEY CLUSTERED 
(
	[Installment_Period_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Installment_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Installment_Trans](
	[Installment_Trans_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Product_Logo] [varchar](3) NULL,
	[Card_No] [varchar](19) NULL,
	[Tran_code] [varchar](15) NULL,
	[Total_Amount] [int] NULL,
	[Installment_Period] [int] NULL,
	[Period_Amount] [int] NULL,
	[First_Period_Amount] [int] NULL,
	[Last_Period_Amount] [int] NULL,
	[Trans_Date] [varchar](8) NULL,
	[Inst_Desc] [varchar](40) NULL,
	[Mcht_Id] [varchar](15) NULL,
	[Order_No] [varchar](20) NULL,
	[Batch_Status] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Installment_Trans] PRIMARY KEY CLUSTERED 
(
	[Installment_Trans_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Ivr003_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Ivr003_Rec](
	[Hseq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Hterm_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Hrtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[TxId] [varchar](6) NULL,
	[Term_Id] [varchar](4) NULL,
	[Seq_No] [varchar](8) NULL,
	[Date] [varchar](8) NULL,
	[Time] [varchar](6) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Foaf1] [varchar](3) NULL,
	[Foaf2] [varchar](11) NULL,
	[Foaf3] [varchar](8) NULL,
	[Foaf4] [varchar](8) NULL,
	[Foaf5] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Ivr003_Rec] PRIMARY KEY CLUSTERED 
(
	[Hseq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Ivr003_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Ivr003_Send](
	[Hseq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Hterm_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Hrtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[TxId] [varchar](6) NULL,
	[Term_Id] [varchar](4) NULL,
	[Seq_No] [varchar](8) NULL,
	[Date] [varchar](8) NULL,
	[Time] [varchar](6) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Foaf1] [varchar](7) NULL,
	[Foaf2] [varchar](7) NULL,
	[Foaf3] [varchar](42) NULL,
	[Foaf4] [varchar](3) NULL,
	[Foaf5] [varchar](11) NULL,
	[Foaf6] [varchar](8) NULL,
	[Foaf7] [varchar](8) NULL,
	[Foaf8] [varchar](1) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Ivr003_Send] PRIMARY KEY CLUSTERED 
(
	[Hseq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Ivr004_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Ivr004_Rec](
	[Hseq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Hterm_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Hrtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[TxId] [varchar](6) NULL,
	[Term_Id] [varchar](4) NULL,
	[Seq_No] [varchar](8) NULL,
	[Date] [varchar](8) NULL,
	[Time] [varchar](6) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Foaf1] [varchar](11) NULL,
	[Foaf2] [varchar](8) NULL,
	[Foaf3] [varchar](8) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Ivr004_Rec] PRIMARY KEY CLUSTERED 
(
	[Hseq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Ivr004_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Ivr004_Send](
	[Hseq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Hterm_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Hrtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[TxId] [varchar](6) NULL,
	[Term_Id] [varchar](4) NULL,
	[Seq_No] [varchar](8) NULL,
	[Date] [varchar](8) NULL,
	[Time] [varchar](6) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Name] [varchar](9) NULL,
	[Record] [int] NULL,
	[Product_Name] [varchar](42) NULL,
	[Count_1] [int] NULL,
	[Ship_Date_1] [varchar](7) NULL,
	[Count_2] [int] NULL,
	[Ship_Date_2] [varchar](7) NULL,
	[Count_3] [int] NULL,
	[Ship_Date_3] [varchar](7) NULL,
	[Count_4] [int] NULL,
	[Ship_Date_4] [varchar](7) NULL,
	[Count_5] [int] NULL,
	[Ship_Date_5] [varchar](7) NULL,
	[Id] [varchar](11) NULL,
	[Birthday] [varchar](8) NULL,
	[Product] [varchar](8) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Ivr004_Send] PRIMARY KEY CLUSTERED 
(
	[Hseq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Ivr018_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Ivr018_Rec](
	[Hseq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Hterm_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Hrtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[TxId] [varchar](6) NULL,
	[Term_Id] [varchar](4) NULL,
	[Seq_No] [varchar](8) NULL,
	[Date] [varchar](8) NULL,
	[Time] [varchar](6) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Type] [varchar](3) NULL,
	[Id] [varchar](11) NULL,
	[Birthday] [varchar](8) NULL,
	[Count] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Ivr018_Rec] PRIMARY KEY CLUSTERED 
(
	[Hseq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Ivr018_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Ivr018_Send](
	[Hseq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Hterm_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Hrtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[TxId] [varchar](6) NULL,
	[Term_Id] [varchar](4) NULL,
	[Seq_No] [varchar](8) NULL,
	[Date] [varchar](8) NULL,
	[Time] [varchar](6) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Balance] [int] NULL,
	[Type] [varchar](3) NULL,
	[Id] [varchar](11) NULL,
	[Birthday] [varchar](8) NULL,
	[Count] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Ivr018_Send] PRIMARY KEY CLUSTERED 
(
	[Hseq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_J053]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_J053](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_J144]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_J144](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_KEY] [varchar](11) NULL,
	[REAL_CARD_NO] [varchar](16) NULL,
	[TRANSACTION_CODE] [varchar](2) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[AUTH] [varchar](6) NULL,
	[SOURCE_AMT_SIGN] [varchar](1) NULL,
	[SOURCE_AMT] [int] NULL,
	[SOURCE_CURRENCY] [varchar](3) NULL,
	[FEEDBACK_AMT_SIGN] [varchar](1) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[FEEDBACK_MARK] [varchar](1) NULL,
	[STATEMENT_CYCLE] [varchar](2) NULL,
	[CYCLE_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Jaam]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Jaam](
	[Member_No] [varchar](10) NOT NULL,
	[Relationship_Id] [varchar](11) NOT NULL,
	[Company_Eng_Name] [varchar](40) NULL,
	[Flight_No] [varchar](6) NULL,
	[Last_Out_Date] [varchar](8) NULL,
	[Password] [varchar](6) NULL,
	[Old_Member_No] [varchar](10) NULL,
	[Eng_Name1] [varchar](25) NULL,
	[Eng_Name2] [varchar](25) NULL,
	[Update_Date] [varchar](8) NULL,
	[Update_Time] [varchar](6) NULL,
	[Updater] [varchar](8) NULL,
	[Eng_Mail_City] [varchar](20) NULL,
	[Eng_Mail_Zip] [varchar](5) NULL,
	[Eng_Mail_Addr1] [varchar](30) NULL,
	[Eng_Mail_Addr2] [varchar](30) NULL,
	[Eng_Mail_Addr3] [varchar](30) NULL,
	[Eng_Mail_Addr4] [varchar](30) NULL,
	[Eng_Comp_City] [varchar](20) NULL,
	[Eng_Comp_Zip] [varchar](5) NULL,
	[Eng_Comp_Addr1] [varchar](30) NULL,
	[Eng_Comp_Addr2] [varchar](30) NULL,
	[Eng_Comp_Addr3] [varchar](30) NULL,
	[Eng_Comp_Addr4] [varchar](30) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](20) NULL,
	[Create_Datetime] [datetime] NULL,
	[LAST_UPDATE_USER] [varchar](20) NULL,
	[LAST_UPDATE_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Jaam] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSD150]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSD150](
	[Batch_Date] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Cust_Pay_No] [varchar](16) NULL,
	[Card_No] [varchar](16) NULL,
	[Service_Level] [varchar](1) NULL,
	[Card_Status] [varchar](1) NULL,
	[Uni_Code] [varchar](8) NULL,
	[Extra_Service_Level_Code] [varchar](3) NULL,
	[Free_Days] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSDOXT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSDOXT](
	[Year] [int] NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Relationship_Id] [varchar](10) NOT NULL,
	[Roadside_Times] [int] NULL,
	[Airport_Shuttle_Times] [int] NULL,
	[Car_Park_Hours] [int] NULL,
	[Car_Park_Airport_Days] [int] NULL,
 CONSTRAINT [PK_M_JCSDOXT] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Card_No] ASC,
	[Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Jcsgre1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Jcsgre1](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Id_No] [varchar](11) NULL,
	[Member_No] [varchar](10) NULL,
	[Member_Name] [varchar](20) NULL,
	[Member_Eng_Name] [varchar](50) NULL,
	[Card_No] [varchar](19) NULL,
	[Tel_No] [varchar](10) NULL,
	[Birthday] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Jcsgre1] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Jcsgre2]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Jcsgre2](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Card_Type] [varchar](2) NULL,
	[Card_No] [varchar](19) NULL,
	[Credit_Type] [varchar](1) NULL,
	[Member_No] [varchar](10) NULL,
	[Visa_No] [varchar](10) NULL,
	[Id_No] [varchar](11) NULL,
	[Birthday] [varchar](8) NULL,
	[Billing_Date] [varchar](8) NULL,
	[Cosumption_Times] [int] NULL,
	[Consumption_Amount] [int] NULL,
	[Mile_Exchange_Times] [int] NULL,
	[Mile_Amount] [int] NULL,
	[Miles] [int] NULL,
	[Member_Eng_Name] [varchar](25) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Jcsgre2] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSMITO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSMITO](
	[Batch_No] [varchar](20) NULL,
	[Col1] [varchar](8) NULL,
	[Col2] [varchar](10) NULL,
	[Create_Date] [varchar](8) NULL,
	[Data_Type] [varchar](1) NULL,
	[Bns] [varchar](3) NULL,
	[Mile_No] [varchar](5) NULL,
	[Seq_No] [int] NULL,
	[Member_No] [varchar](9) NULL,
	[Fix_Value] [varchar](1) NULL,
	[Eng_Name] [varchar](56) NULL,
	[Birth_Date] [varchar](8) NULL,
	[Close_Date] [varchar](8) NULL,
	[Curr_Mile] [int] NULL,
	[Fix_A] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSSTMD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSSTMD](
	[DATE] [varchar](8) NULL,
	[COL1] [varchar](30) NULL,
	[COL2] [varchar](30) NULL,
	[COL3] [varchar](30) NULL,
	[COL4] [varchar](30) NULL,
	[COL5] [varchar](100) NULL,
	[COL6] [varchar](100) NULL,
	[COL7] [varchar](100) NULL,
	[COL8] [varchar](30) NULL,
	[COL9] [varchar](30) NULL,
	[COL10] [varchar](30) NULL,
	[COL11] [varchar](30) NULL,
	[COL12] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSTMT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSTMT](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Msg_Code] [varchar](4) NULL,
	[Msg_1] [varchar](104) NULL,
	[Msg_2] [varchar](104) NULL,
	[Msg_3] [varchar](104) NULL,
	[Msg_4] [varchar](104) NULL,
	[Msg_5] [varchar](104) NULL,
	[Msg_6] [varchar](104) NULL,
	[Del_Flag] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSTMT_Output]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSTMT_Output](
	[Billing_YM] [varchar](8) NULL,
	[Msg_Code] [varchar](4) NULL,
	[Msg_1] [varchar](104) NULL,
	[Msg_2] [varchar](104) NULL,
	[Msg_3] [varchar](104) NULL,
	[Msg_4] [varchar](104) NULL,
	[Msg_5] [varchar](104) NULL,
	[Msg_6] [varchar](104) NULL,
	[Del_Flag] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSXTMS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSXTMS](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[cardholder_id] [varchar](11) NULL,
	[cardholder_Name] [varchar](20) NULL,
	[Car_No] [varchar](8) NULL,
	[Car_Brand] [varchar](2) NULL,
	[Car_Colour] [varchar](2) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Service_Level] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Amount] [int] NULL,
	[Data_Date] [varchar](8) NULL,
	[Bus_Id] [varchar](11) NULL,
	[Card_No] [varchar](16) NULL,
	[Extra_Service_Code] [varchar](3) NULL,
	[City] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_JCSXTMS1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_JCSXTMS1](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[cardholder_id] [varchar](11) NULL,
	[cardholder_Name] [varchar](20) NULL,
	[Car_No] [varchar](8) NULL,
	[Car_Brand] [varchar](2) NULL,
	[Car_Colour] [varchar](2) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Service_Level] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Amount] [int] NULL,
	[Data_Date] [varchar](8) NULL,
	[Bus_Id] [varchar](11) NULL,
	[Card_No] [varchar](16) NULL,
	[Extra_Service_Code] [varchar](3) NULL,
	[City] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_LIST_UPLOAD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_LIST_UPLOAD](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Act_Type] [varchar](10) NULL,
	[Act_Id] [nvarchar](20) NULL,
	[Batch_No] [varchar](20) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Qty] [int] NULL,
	[Msg] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Logo_Group]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Logo_Group](
	[Logo_Group_ID] [varchar](10) NULL,
	[Logo_Group_Name] [varchar](100) NULL,
	[Priority_Seq] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Logo_Report_Group]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Logo_Report_Group](
	[Logo_Group_ID] [varchar](10) NULL,
	[Logo_Group_Name] [varchar](100) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Lookup_Code]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Lookup_Code](
	[Lookup_type] [varchar](15) NOT NULL,
	[Lookup_code] [varchar](15) NOT NULL,
	[Lookup_code_name] [varchar](100) NOT NULL,
	[Seq] [int] NULL,
	[Value] [varchar](30) NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Lookup_Type]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Lookup_Type](
	[Lookup_type] [varchar](15) NOT NULL,
	[Lookup_type_name] [varchar](100) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Lookup_Type] PRIMARY KEY CLUSTERED 
(
	[Lookup_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Loyalty_Project]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Loyalty_Project](
	[Loyalty_Project_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Loyalty_Proj_Code] [varchar](15) NOT NULL,
	[Loyalty_Proj_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Sett_Cycle] [int] NULL,
	[Sett_Cycle_Code] [varchar](15) NULL,
	[Domestic_Tran_Group] [varchar](15) NULL,
	[Foreign_Tran_Group] [varchar](15) NULL,
	[Foreign_Tran_Flag] [varchar](1) NULL,
	[Foreign_Plan_Flag] [varchar](1) NULL,
	[Threshold_Amt] [int] NULL,
	[Threshold_Type] [varchar](1) NULL,
	[eBilling_Flag] [varchar](1) NULL,
	[AutoPay_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[Birth_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_Loyalty_Project] PRIMARY KEY CLUSTERED 
(
	[Loyalty_Project_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Mcc]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Loyalty_Project_Mcc](
	[Loyalty_Project_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Loyalty_Project_Code] [varchar](15) NOT NULL,
	[Tran_Flag] [varchar](1) NOT NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Loyalty_Project_Mcc] PRIMARY KEY CLUSTERED 
(
	[Loyalty_Project_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Loyalty_Project_Mcht](
	[Loyalty_Project_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Loyalty_Project_Code] [varchar](15) NOT NULL,
	[Tran_Flag] [varchar](1) NOT NULL,
	[Mcht_Id] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Loyalty_Project_Mcht] PRIMARY KEY CLUSTERED 
(
	[Loyalty_Project_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Loyalty_Project_Plan](
	[Loyalty_Project_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Loyalty_Project_Code] [varchar](15) NOT NULL,
	[Tran_Flag] [varchar](1) NOT NULL,
	[Begin_Amt] [bigint] NULL,
	[End_Amt] [bigint] NULL,
	[Reward_Code] [varchar](15) NULL,
	[Plan_Method] [varchar](15) NULL,
	[Reward_Percentage] [decimal](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Reward_Limit] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Total_Reward_Limit] [int] NULL,
	[Redeem_Min_Point] [int] NULL,
	[End_Redeem_Days] [int] NULL,
	[Account_Stop_Redeem_Days] [int] NULL,
	[Account_Stop_Zero_Days] [int] NULL,
	[Auto_Redeem_Flag] [varchar](1) NULL,
	[Auto_Redeem_Point] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Gift_Code] [varchar](50) NULL,
 CONSTRAINT [PK_M_Loyalty_Project_Plan] PRIMARY KEY CLUSTERED 
(
	[Loyalty_Project_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Loyalty_Project_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Loyalty_Project_Product](
	[Loyalty_Project_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Loyalty_Project_Code] [varchar](15) NULL,
	[Product_Logo] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Loyalty_Project_Product] PRIMARY KEY CLUSTERED 
(
	[Loyalty_Project_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Macotrn]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Macotrn](
	[Macotrn_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](20) NULL,
	[Unit_No] [varchar](4) NULL,
	[Dfps_No] [varchar](20) NOT NULL,
	[Visa_Name] [varchar](25) NULL,
	[Birthday] [varchar](8) NULL,
	[Id_No] [varchar](10) NULL,
	[Country_Code] [varchar](2) NULL,
	[Unit_Identity_Code] [varchar](12) NULL,
	[Julian_date] [varchar](7) NULL,
	[Complete_Seq] [varchar](2) NULL,
	[Apply_Datetime] [varchar](26) NULL,
	[Miles] [int] NULL,
	[Reject_Type] [varchar](1) NULL,
	[CI_Reject_Code] [varchar](2) NULL,
	[Reject_Msg] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Result] [varchar](1) NULL,
	[Err_Code_] [varchar](2) NULL,
	[Err_Msg] [varchar](50) NULL,
	[Complete_Julian_Date] [varchar](7) NULL,
	[Complete_Seq_No] [varchar](2) NULL,
 CONSTRAINT [PK_M_Macotrn_Upload] PRIMARY KEY CLUSTERED 
(
	[Macotrn_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Marketing]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Marketing](
	[Marketing_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Marketing_Id] [varchar](10) NULL,
	[Marketing_Name] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Qty_Limit] [int] NULL,
	[Msg] [varchar](100) NULL,
	[Feedback_Type] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Marketing] PRIMARY KEY CLUSTERED 
(
	[Marketing_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Marketing_Price_Matching]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Marketing_Price_Matching](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Marketing_Seq] [int] NULL,
	[Price_Matching_Seq] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Marketing_Price_Matching] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Marketing_Promotion]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Marketing_Promotion](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Marketing_Seq] [int] NULL,
	[Promotion_Seq] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Marketing_Promotion] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MCC_CODE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MCC_CODE](
	[Seq] [float] NULL,
	[mcc_Code] [varchar](4) NULL,
	[consume_Type] [varchar](50) NULL,
	[consume_subType] [varchar](50) NULL,
	[description] [nvarchar](255) NULL,
	[remark] [nvarchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MCHT_FEE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MCHT_FEE](
	[SEQ_NO] [int] IDENTITY(1,1) NOT NULL,
	[BANK_ID] [varchar](2) NULL,
	[MCHT_ID] [varchar](10) NULL,
	[MCHT_NAME] [varbinary](22) NULL,
	[OWNER_NAME] [varchar](10) NULL,
	[ADDRESS] [varchar](40) NULL,
	[INTRO_NAME] [varchar](10) NULL,
	[TEL_NO] [varchar](13) NULL,
	[DATA_MONTH] [varchar](5) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[FEE_RATE] [numeric](6, 2) NULL,
	[APPLY_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MCODE_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MCODE_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](4) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MCODE_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MCODE_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](4) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MCODE_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MCODE_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](4) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MDOTS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MDOTS](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[DOTS_SIGN] [varchar](1) NULL,
	[DOTS] [int] NULL,
	[ADJUST_REASON] [varchar](20) NULL,
	[STMT_CYCLE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Member_Airline]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Member_Airline](
	[Member_Airline_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cardholder_Id] [varchar](11) NOT NULL,
	[Vendor_Id] [varchar](15) NULL,
	[Member_Code] [varchar](20) NULL,
	[Passport_Number] [varchar](30) NULL,
	[Red_Times] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Member_Airline] PRIMARY KEY CLUSTERED 
(
	[Member_Airline_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Member_Get_Member]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Member_Get_Member](
	[Mgm_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Mgm_Code] [varchar](15) NOT NULL,
	[Mgm_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Apply_Start_date] [varchar](8) NULL,
	[Apply_End_date] [varchar](8) NULL,
	[Latest_Approve_date] [varchar](8) NULL,
	[New_Cardholder_Flag] [varchar](1) NULL,
	[New_New_Flag] [varchar](1) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Deadline] [varchar](8) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Member_Get_Member] PRIMARY KEY CLUSTERED 
(
	[Mgm_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Member_Zone_Message]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Member_Zone_Message](
	[Member_Message_Code] [varchar](10) NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Card_Type] [varchar](1) NULL,
	[Card_Code] [varchar](10) NULL,
	[Message_Detail_1] [varchar](102) NULL,
	[Message_Detail_2] [varchar](102) NULL,
	[Message_Detail_3] [varchar](102) NULL,
	[Message_Detail_4] [varchar](102) NULL,
	[Message_Detail_5] [varchar](102) NULL,
	[Message_Detail_6] [varchar](102) NULL,
	[Message_Detail_7] [varchar](102) NULL,
	[Message_Detail_8] [varchar](102) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[Del_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_Member_Zone_Message] PRIMARY KEY CLUSTERED 
(
	[Member_Message_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Member_Zone_Message_Detail]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Member_Zone_Message_Detail](
	[Member_Message_Code] [varchar](10) NOT NULL,
	[Seq_Code] [int] IDENTITY(1,1) NOT NULL,
	[Message_Detail] [varchar](104) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Message_Position] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Menu]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Menu](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Menu_Code] [varchar](30) NOT NULL,
	[Menu_Label] [varchar](50) NOT NULL,
	[Menu_Url] [varchar](50) NOT NULL,
	[Upper_Level] [int] NOT NULL,
	[Activated] [varchar](1) NOT NULL,
	[Show_Order] [int] NOT NULL,
	[DEL_FLAG] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Mileage_Bonus]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Mileage_Bonus](
	[Mileage_Bonus_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Plan_Code] [varchar](15) NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Card_No] [varchar](19) NULL,
	[Vendor_Id] [varchar](15) NULL,
	[Member_Code] [varchar](20) NULL,
	[English_Name] [varchar](50) NULL,
	[Mcht_Id] [varchar](20) NULL,
	[Auth_No] [varchar](10) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Trans_Amount] [int] NULL,
	[Flight_No] [varchar](10) NULL,
	[Flight_Date] [varchar](8) NULL,
	[Flight_Time] [varchar](4) NULL,
	[Passenger_Name] [varchar](50) NULL,
	[Class_Type] [varchar](5) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Miles] [int] NULL,
	[Batch_Status] [varchar](1) NULL,
 CONSTRAINT [PK_M_Mileage_Bonus] PRIMARY KEY CLUSTERED 
(
	[Mileage_Bonus_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MILES_EXTRA]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MILES_EXTRA](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_No] [varchar](20) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Amount] [int] NULL,
	[Batch_Status] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MIRH_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MIRH_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[JAA_MILE_001] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MIRH_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MIRH_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[JAA_MILE_001] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MIRH_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MIRH_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[JAA_MILE_001] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MITM]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MITM](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_NO] [varchar](16) NULL,
	[MILE_NO] [varchar](5) NULL,
	[MILES] [int] NULL,
	[SEND_JAA_FLAG] [varchar](1) NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[MEMBER_NO] [varchar](9) NULL,
	[ENG_NAME] [varchar](25) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[ID_NO] [varchar](11) NULL,
	[CHI_NAME] [varchar](10) NULL,
	[BATCH_STATUS] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MMIR]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MMIR](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID] [varchar](11) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[IN_AMT_SIGN] [varchar](1) NULL,
	[IN_AMT] [int] NULL,
	[ALL_AMT_SIGN] [varchar](1) NULL,
	[ALL_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Monthly_Point]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Monthly_Point](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Point_Month] [varchar](6) NOT NULL,
	[Point_Date] [varchar](8) NOT NULL,
	[Point_Type] [varchar](1) NOT NULL,
	[Point] [int] NULL,
	[Used_Point] [int] NULL,
	[Expire_Flag] [varchar](1) NULL,
	[Cancel_Reason] [varchar](50) NULL,
	[Create_Reason] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [nchar](10) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Last_Trans_Date] [varchar](8) NULL,
	[Ref_No] [varchar](1000) NULL,
	[update_Date] [varchar](8) NULL,
 CONSTRAINT [PK_M_Monthly_Point_1] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Movie_Activity]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Movie_Activity](
	[Movie_Activity_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Activity_Code] [varchar](20) NOT NULL,
	[Movie_Activity_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Tran_Group] [varchar](20) NULL,
	[Pre_Month_Amount] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[LIMIT_DATE] [varchar](8) NULL,
 CONSTRAINT [PK_M_Movie_Activity] PRIMARY KEY CLUSTERED 
(
	[Movie_Activity_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Feedback]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Movie_Activity_Feedback](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Movie_Activity_Code] [varchar](20) NULL,
	[Plan_Seq] [int] NULL,
	[Bill_YM] [varchar](6) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Card_No] [varchar](20) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Reward_Amt] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Movie_Activity_Feedback] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Mcc]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Movie_Activity_Mcc](
	[Movie_Activity_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Activity_Code] [varchar](10) NOT NULL,
	[Movie_Activity_Item_Seq] [int] NOT NULL,
	[Mcc_Code] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Movie_Activity_Mcc] PRIMARY KEY CLUSTERED 
(
	[Movie_Activity_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Movie_Activity_Mcht](
	[Movie_Activity_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Activity_Code] [varchar](10) NOT NULL,
	[Movie_Activity_Item_Seq] [int] NOT NULL,
	[Mcht_Id] [varchar](20) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Movie_Activity_Mcht] PRIMARY KEY CLUSTERED 
(
	[Movie_Activity_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Movie_Activity_Plan](
	[Movie_Activity_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Activity_Code] [varchar](10) NOT NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Movie_Activity_Item] PRIMARY KEY CLUSTERED 
(
	[Movie_Activity_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Movie_Activity_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Movie_Activity_Product](
	[Movie_Activity_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Movie_Activity_Code] [varchar](10) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Movie_Activity_Product] PRIMARY KEY CLUSTERED 
(
	[Movie_Activity_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MPRES]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MPRES](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[PRESENT_CODE] [varchar](6) NULL,
	[PRINT_FLAG] [varchar](1) NULL,
	[CLOSE_DATE] [varchar](8) NULL,
	[CLOSE_TIME] [varchar](6) NULL,
	[CLOSE_USER] [varchar](8) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPROVAL_NO] [varchar](6) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[MERCHANT_NO] [varchar](15) NULL,
	[MERCHANT_CATEGORY] [varchar](4) NULL,
	[ORDER_NO] [varchar](14) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net06_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net06_Rec](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[I1] [varchar](11) NULL,
	[I2] [varchar](8) NULL,
	[I3] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net06_Rec] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net06_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net06_Send](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net06_Send] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net07_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net07_Rec](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[I1] [varchar](11) NULL,
	[I2] [varchar](10) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net07_Rec] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net07_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net07_Send](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[O1] [varchar](11) NULL,
	[O2] [varchar](10) NULL,
	[O3] [int] NULL,
	[O4] [varchar](1) NULL,
	[r101] [varchar](8) NULL,
	[r201] [varchar](8) NULL,
	[r301] [varchar](42) NULL,
	[r401] [int] NULL,
	[r501] [varchar](1) NULL,
	[r102] [varchar](8) NULL,
	[r202] [varchar](8) NULL,
	[r302] [varchar](42) NULL,
	[r402] [int] NULL,
	[r502] [varchar](1) NULL,
	[r103] [varchar](8) NULL,
	[r203] [varchar](8) NULL,
	[r303] [varchar](42) NULL,
	[r403] [int] NULL,
	[r503] [varchar](1) NULL,
	[r104] [varchar](8) NULL,
	[r204] [varchar](8) NULL,
	[r304] [varchar](42) NULL,
	[r404] [int] NULL,
	[r504] [varchar](1) NULL,
	[r105] [varchar](8) NULL,
	[r205] [varchar](8) NULL,
	[r305] [varchar](42) NULL,
	[r405] [int] NULL,
	[r505] [varchar](1) NULL,
	[r106] [varchar](8) NULL,
	[r206] [varchar](8) NULL,
	[r306] [varchar](42) NULL,
	[r406] [int] NULL,
	[r506] [varchar](1) NULL,
	[r107] [varchar](8) NULL,
	[r207] [varchar](8) NULL,
	[r307] [varchar](42) NULL,
	[r407] [int] NULL,
	[r507] [varchar](1) NULL,
	[r108] [varchar](8) NULL,
	[r208] [varchar](8) NULL,
	[r308] [varchar](42) NULL,
	[r408] [int] NULL,
	[r508] [varchar](1) NULL,
	[r109] [varchar](8) NULL,
	[r209] [varchar](8) NULL,
	[r309] [varchar](42) NULL,
	[r409] [int] NULL,
	[r509] [varchar](1) NULL,
	[r110] [varchar](8) NULL,
	[r210] [varchar](8) NULL,
	[r310] [varchar](42) NULL,
	[r410] [int] NULL,
	[r510] [varchar](1) NULL,
	[r111] [varchar](8) NULL,
	[r211] [varchar](8) NULL,
	[r311] [varchar](42) NULL,
	[r411] [int] NULL,
	[r511] [varchar](1) NULL,
	[r112] [varchar](8) NULL,
	[r212] [varchar](8) NULL,
	[r312] [varchar](42) NULL,
	[r412] [int] NULL,
	[r512] [varchar](1) NULL,
	[r113] [varchar](8) NULL,
	[r213] [varchar](8) NULL,
	[r313] [varchar](42) NULL,
	[r413] [int] NULL,
	[r513] [varchar](1) NULL,
	[r114] [varchar](8) NULL,
	[r214] [varchar](8) NULL,
	[r314] [varchar](42) NULL,
	[r414] [int] NULL,
	[r514] [varchar](1) NULL,
	[r115] [varchar](8) NULL,
	[r215] [varchar](8) NULL,
	[r315] [varchar](42) NULL,
	[r415] [int] NULL,
	[r515] [varchar](1) NULL,
	[r116] [varchar](8) NULL,
	[r216] [varchar](8) NULL,
	[r316] [varchar](42) NULL,
	[r416] [int] NULL,
	[r516] [varchar](1) NULL,
	[r117] [varchar](8) NULL,
	[r217] [varchar](8) NULL,
	[r317] [varchar](42) NULL,
	[r417] [int] NULL,
	[r517] [varchar](1) NULL,
	[r118] [varchar](8) NULL,
	[r218] [varchar](8) NULL,
	[r318] [varchar](42) NULL,
	[r418] [int] NULL,
	[r518] [varchar](1) NULL,
	[r119] [varchar](8) NULL,
	[r219] [varchar](8) NULL,
	[r319] [varchar](42) NULL,
	[r419] [int] NULL,
	[r519] [varchar](1) NULL,
	[r120] [varchar](8) NULL,
	[r220] [varchar](8) NULL,
	[r320] [varchar](42) NULL,
	[r420] [int] NULL,
	[r520] [varchar](1) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net07_Send] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net19_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net19_Rec](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[I1] [varchar](11) NULL,
	[I2] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net19_Rec] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net19_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net19_Send](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[O1] [varchar](11) NULL,
	[O2] [int] NULL,
	[O3] [int] NULL,
	[O4] [int] NULL,
	[O5] [varchar](10) NULL,
	[O6] [int] NULL,
	[O7] [int] NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net19_Send] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net24_Rec]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net24_Rec](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[Account_Id] [varchar](11) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net24_Rec] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Net24_Send]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Net24_Send](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Txn_Channel] [varchar](2) NULL,
	[Host_Seq_No] [varchar](7) NULL,
	[Stan_No] [varchar](10) NULL,
	[Txn_Date] [varchar](8) NULL,
	[Txn_Time] [varchar](6) NULL,
	[Term_Id] [varchar](8) NULL,
	[Busi_Date] [varchar](8) NULL,
	[Atmp_Mode] [varchar](1) NULL,
	[Fisc_Mode] [varchar](1) NULL,
	[Rtn_Code] [varchar](4) NULL,
	[Send_Bank] [varchar](7) NULL,
	[Recv_Bank] [varchar](7) NULL,
	[Eibrsrce] [varchar](4) NULL,
	[Filler] [varchar](2) NULL,
	[Account_Id] [varchar](11) NULL,
	[Name] [varchar](20) NULL,
	[Card_No] [varchar](16) NULL,
	[Last_Group_Pay] [varchar](8) NULL,
	[Card_Level] [varchar](1) NULL,
	[Check_Code] [varchar](3) NULL,
	[Create_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Net24_Send] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_New_Card_Bonus]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_New_Card_Bonus](
	[New_Card_Bonus_Seq] [int] IDENTITY(1,1) NOT NULL,
	[New_Card_Bonus_Code] [varchar](15) NOT NULL,
	[New_Card_Bonus_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Latest_Approve_date] [varchar](8) NULL,
	[New_Cardholder_Flag] [varchar](1) NULL,
	[New_New_Flag] [varchar](1) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Before_Day] [int] NULL,
	[Promo_Code] [varchar](15) NULL,
	[Before_Trans_Day] [int] NULL,
	[Before_Sett_Day] [int] NULL,
	[Tran_Group] [varchar](15) NULL,
	[All_Flag] [varchar](1) NULL,
	[First_Trans_Amount] [int] NULL,
	[Total_Trans_Amount] [int] NULL,
	[Total_Trans_Count_1] [int] NULL,
	[Total_Trans_Pre_Amount] [int] NULL,
	[Total_Trans_Count_2] [int] NULL,
	[Total_Trans_Amount_2] [int] NULL,
	[Gift_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[Per_Card_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_New_Card_Bonus] PRIMARY KEY CLUSTERED 
(
	[New_Card_Bonus_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_New_Card_Bonus_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_New_Card_Bonus_Trans](
	[Seq_No] [int] NULL,
	[New_Card_Bonus_Code] [varchar](15) NULL,
	[Cardholder_Id] [varchar](20) NULL,
	[Card_No] [varchar](20) NULL,
	[Reward_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Gift_Code] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_New_Card_Channel]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_New_Card_Channel](
	[New_Card_Channel_Seq] [int] IDENTITY(1,1) NOT NULL,
	[New_Card_Bonus_Code] [varchar](15) NOT NULL,
	[Channel_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_New_Card_Channel] PRIMARY KEY CLUSTERED 
(
	[New_Card_Channel_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_New_Card_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_New_Card_Mcht](
	[New_Card_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[New_Card_Bonus_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_New_Card_Mcht] PRIMARY KEY CLUSTERED 
(
	[New_Card_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_New_Card_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_New_Card_Product](
	[New_Card_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[New_Card_Bonus_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_New_Card_Product] PRIMARY KEY CLUSTERED 
(
	[New_Card_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_New_Card_Reward]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_New_Card_Reward](
	[New_Card_Reward_Seq] [int] IDENTITY(1,1) NOT NULL,
	[New_Card_Bonus_Code] [varchar](15) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Qty] [int] NULL,
	[Same_Month_Flag] [varchar](1) NULL,
	[End_Date] [varchar](8) NULL,
	[eBilling_Flag] [varchar](1) NULL,
	[Auto_Pay_Flag] [varchar](1) NULL,
	[Public_Auto_Pay_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Gift_Code] [varchar](50) NULL,
	[Percent_Num] [int] NULL,
	[Qty_Percent_Num_Flag] [varchar](1) NULL,
	[Cycle_Limit] [int] NULL,
	[Event_Limit] [int] NULL,
	[Limit_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_New_Card_Reward] PRIMARY KEY CLUSTERED 
(
	[New_Card_Reward_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Param]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Param](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Param_Name] [varchar](50) NULL,
	[Param_Value] [varchar](50) NULL,
 CONSTRAINT [PK_M_Param] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pay_Tax]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pay_Tax](
	[Pay_Tax_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Tax_Code] [varchar](15) NOT NULL,
	[Pay_Tax_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Sett_Date] [varchar](8) NULL,
	[Tran_Group] [varchar](15) NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Installment_Flag] [varchar](1) NULL,
	[Installment_Code] [varchar](15) NULL,
	[Installment_Remark] [nvarchar](1000) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_Pay_Tax] PRIMARY KEY CLUSTERED 
(
	[Pay_Tax_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pay_Tax_MCC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pay_Tax_MCC](
	[Pay_Tax_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Tax_Code] [varchar](15) NOT NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Pay_Tax_MCC] PRIMARY KEY CLUSTERED 
(
	[Pay_Tax_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pay_Tax_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pay_Tax_Mcht](
	[Pay_Tax_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Tax_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Pay_Tax_Mcht] PRIMARY KEY CLUSTERED 
(
	[Pay_Tax_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pay_Tax_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pay_Tax_Plan](
	[Pay_Tax_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Tax_Code] [varchar](15) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Plan_Method] [varchar](1) NOT NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Double_Amt] [int] NULL,
	[Loyalty_Threshold_Flag] [varchar](1) NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Waive_Percentage] [numeric](18, 2) NULL,
	[Redeem_This_Month] [varchar](1) NULL,
	[Redeem_Date] [varchar](1) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](15) NULL,
	[Reward_Limit] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Pay_Tax_Plan] PRIMARY KEY CLUSTERED 
(
	[Pay_Tax_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pay_Tax_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pay_Tax_Product](
	[Pay_Tax_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Tax_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Pay_Tax_Product] PRIMARY KEY CLUSTERED 
(
	[Pay_Tax_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pay_Tax_VIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pay_Tax_VIP](
	[Pay_Tax_Vip_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Pay_Tax_Code] [varchar](15) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Pay_Tax_VIP] PRIMARY KEY CLUSTERED 
(
	[Pay_Tax_Vip_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Plan_Register]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Plan_Register](
	[Plan_Register_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Plan_Code] [varchar](15) NOT NULL,
	[Plan_Name] [nvarchar](50) NULL,
	[Plan_Desc] [nvarchar](1000) NULL,
	[Plan_Url] [varchar](100) NULL,
	[Plan_Seq] [int] NULL,
	[Plan_Top_Flag] [varchar](1) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Qty] [int] NULL,
	[Reg_Start_Date] [varchar](8) NULL,
	[Reg_End_Date] [varchar](8) NULL,
	[Manual_Start_date] [varchar](8) NULL,
	[Manual_End_date] [varchar](8) NULL,
	[Extend_Qty] [int] NULL,
	[Register_Qty] [int] NULL,
	[Status] [varchar](1) NULL,
	[VIP_List_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[M_Plan_Register] ADD [Act_Type] [varchar](30) NULL
ALTER TABLE [dbo].[M_Plan_Register] ADD [Act_Code] [varchar](20) NULL
ALTER TABLE [dbo].[M_Plan_Register] ADD [Plan_Type] [varchar](20) NULL
 CONSTRAINT [PK_M_Plan_Register] PRIMARY KEY CLUSTERED 
(
	[Plan_Register_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Plan_Register_Lists]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Plan_Register_Lists](
	[Plan_Register_Lists_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Plan_Register_Seq] [int] NOT NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Card_No] [varchar](19) NULL,
	[Register_Channel] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Reg_Rank] [int] NULL,
	[Act_Rank] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Plan_Register_Lists] PRIMARY KEY CLUSTERED 
(
	[Plan_Register_Lists_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Plan_Register_Lists_H]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Plan_Register_Lists_H](
	[Plan_Register_Lists_H_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Plan_Register_Lists_Seq] [int] NOT NULL,
	[Plan_Register_Seq] [int] NOT NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Card_No] [varchar](19) NULL,
	[Register_Channel] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Reg_Rank] [int] NULL,
	[Act_Rank] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Plan_Register_Lists_H_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Plan_Register_Quota]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Plan_Register_Quota](
	[Quota_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Plan_Register_Seq] [int] NOT NULL,
	[Quota] [int] NULL,
	[Extra_Quota] [int] NULL,
	[Quota_Count] [int] NULL,
	[Extra_Quota_Count] [int] NULL,
	[Register_No] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Plan_Register_Quota] PRIMARY KEY CLUSTERED 
(
	[Quota_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Plan_Register_VIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Plan_Register_VIP](
	[Plan_Register_Vip_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Plan_Register_Seq] [int] NOT NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Plan_Register_VIP] PRIMARY KEY CLUSTERED 
(
	[Plan_Register_Vip_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Point_Adjustment]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Point_Adjustment](
	[Point_Adjustment_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Account_No] [varchar](11) NOT NULL,
	[Card_No] [varchar](19) NULL,
	[Reward_Code] [varchar](15) NULL,
	[Adj_Action] [varchar](15) NULL,
	[Qty] [int] NULL,
	[Immediate_Flag] [varchar](1) NULL,
	[Adj_Reason] [varchar](15) NULL,
	[Remark] [nvarchar](1000) NULL,
	[Refer_No] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Batch_Status] [varchar](1) NULL,
	[Msg_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_Point_Adjustment] PRIMARY KEY CLUSTERED 
(
	[Point_Adjustment_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Point_Balance]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Point_Balance](
	[Acct_Id] [varchar](15) NOT NULL,
	[Point_Type] [varchar](1) NOT NULL,
	[Last_Point] [int] NOT NULL,
	[Add_Point] [int] NULL,
	[Man_Adj_Point] [int] NULL,
	[Sys_Adj_Point] [int] NULL,
	[Used_point] [int] NULL,
	[Total_Point] [int] NULL,
	[Expire_Point] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[M_Point_Balance] ADD [Card_No] [varchar](16) NULL
 CONSTRAINT [PK_M_Point_Balance] PRIMARY KEY CLUSTERED 
(
	[Acct_Id] ASC,
	[Point_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Point_Balance_Hist]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Point_Balance_Hist](
	[Acct_Id] [varchar](15) NOT NULL,
	[Point_Type] [varchar](1) NOT NULL,
	[Batch_Date] [varchar](8) NOT NULL,
	[Card_No] [varchar](16) NULL,
	[Last_Point] [int] NOT NULL,
	[Add_Point] [int] NULL,
	[Man_Adj_Point] [int] NULL,
	[Sys_Adj_Point] [int] NULL,
	[Used_point] [int] NULL,
	[Total_Point] [int] NULL,
	[Expire_Point] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Point_Balance_Hist] PRIMARY KEY CLUSTERED 
(
	[Acct_Id] ASC,
	[Point_Type] ASC,
	[Batch_Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Point_Exchange]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Point_Exchange](
	[Point_Exchange_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Point_Exchange_Code] [varchar](15) NOT NULL,
	[Point_Exchange_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Source_Reward_Code] [varchar](15) NULL,
	[Target_Reward_Code] [varchar](15) NULL,
	[Source_Point] [int] NULL,
	[Target_Point] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Point_Exchange] PRIMARY KEY CLUSTERED 
(
	[Point_Exchange_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Point_Exchange_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Point_Exchange_Product](
	[Point_Exchange_Product_seq] [int] IDENTITY(1,1) NOT NULL,
	[Point_Exchange_Seq] [int] NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Point_Exchange_Product] PRIMARY KEY CLUSTERED 
(
	[Point_Exchange_Product_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Point_Trans_History]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Point_Trans_History](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Relationship_Id] [varchar](19) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](8) NULL,
	[Point_Type] [varchar](1) NULL,
	[Card_No] [varchar](19) NULL,
	[Point_Begin] [int] NULL,
	[Point_End] [int] NULL,
	[Add_Point] [int] NOT NULL,
	[Redeem_Point] [int] NULL,
	[Adj_Point] [int] NULL,
	[Cancel_Point] [int] NULL,
	[Adj_Reason] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[Prog_Id] [varchar](50) NULL,
	[Refer_No] [varchar](50) NULL,
	[Create_Datetime] [datetime] NULL,
	[Create_User] [varchar](50) NULL,
 CONSTRAINT [PK_M_Point_Tras_History] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PRBI]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PRBI](
	[Prbi_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Batch_No] [varchar](20) NULL,
	[Order_Date] [varchar](8) NULL,
	[Order_Seq_No] [int] NULL,
	[Touch_Order_No] [varchar](20) NULL,
	[Product_Code] [varchar](6) NULL,
	[Qty] [int] NULL,
	[Request_Date] [varchar](8) NULL,
	[Request_Seq_No] [int] NULL,
	[Status] [varchar](1) NULL,
	[Err_Msg] [varchar](2000) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PREU_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PREU_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PREU_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PREU_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PREU_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PREU_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PREX]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PREX](
	[Prex_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Batch_No] [varchar](20) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Seq] [int] NULL,
	[Order_No] [varchar](10) NULL,
	[Red_Commodity_Code] [varchar](6) NULL,
	[Qty] [int] NULL,
	[Ship_Date] [varchar](8) NULL,
	[Ship_Seq] [int] NULL,
	[Ship_No] [varchar](20) NULL,
	[Status] [varchar](1) NULL,
	[Err_Msg] [varchar](2000) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_PREX] PRIMARY KEY CLUSTERED 
(
	[Prex_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching](
	[Price_Matching_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Price_Matching_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Deadline] [varchar](8) NULL,
	[Per_Card_Flag] [varchar](1) NULL,
	[Tran_Group] [varchar](15) NULL,
	[EDC_Flag] [varchar](1) NULL,
	[EC_Flag] [varchar](1) NULL,
	[Domestic_Trans_Flag] [varchar](1) NULL,
	[Foreign_Trans_Flag] [varchar](1) NULL,
	[Installment_Flag] [varchar](1) NULL,
	[Installment_Code] [varchar](15) NULL,
	[Reward_Type] [varchar](1) NULL,
	[Auto_Redeem_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Data_Source] [varchar](1) NULL,
	[Apple_Pay_Flag] [varchar](1) NULL,
	[Android_Pay_Flag] [varchar](1) NULL,
	[Hce_Flag] [varchar](1) NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[FIRST_APPLY_FLAG] [varchar](1) NULL,
 CONSTRAINT [PK_M_Price_Matching] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Budget]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Budget](
	[Price_Matching_Budget_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Budget_Flag] [varchar](1) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Qty] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Budget] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Budget_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Country]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Country](
	[Price_Matching_Country_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Country] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Country] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Country_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Currency]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Currency](
	[Price_Matching_Currency_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Currency_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Currency] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Currency_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Inst_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Inst_Plan](
	[Price_Matching_Inst_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Trans_Threshold_Flag] [varchar](1) NULL,
	[Trans_Threshold_Amt] [int] NULL,
	[Trans_Accumulation_Flag] [varchar](1) NULL,
	[Trans_Control_Flag] [varchar](1) NULL,
	[Trans_Count] [int] NULL,
	[Trans_Count_Flag] [varchar](1) NULL,
	[Reward_Code] [varchar](15) NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Redeem_This_Month] [varchar](1) NULL,
	[Redeem_Date] [varchar](1) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Reward_limit] [int] NULL,
	[Redeem_period] [varchar](1) NULL,
	[Redeem_Days] [int] NULL,
	[Redeem_TimeType] [varchar](1) NULL,
	[Plan_Code] [varchar](15) NULL,
 CONSTRAINT [PK_M_Price_Matching_Inst_Plan] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Inst_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PRICE_MATCHING_LOUISA]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PRICE_MATCHING_LOUISA](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Billing_YM] [varchar](6) NULL,
	[Point_Type] [varchar](1) NULL,
	[Dest_Amount] [int] NULL,
	[Reward_Amt] [int] NULL,
	[Billing_Flag] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Mcc]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Mcc](
	[Price_Matching_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Mcc] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Mcht](
	[Price_Matching_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Mcht] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Mcht_Louisa]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Mcht_Louisa](
	[Price_Matching_Mcht_Louisa_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Mcht_Id] [varchar](20) NOT NULL,
	[Mcht_Name] [varchar](200) NULL,
	[Mcht_Adress] [varchar](200) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Mcht_Louisa_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Period]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Period](
	[Price_Matching_Period_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Period] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Period_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Plan](
	[Price_Matching_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Begin_Amt] [int] NULL,
	[End_Amt] [int] NULL,
	[Trans_Threshold_Flag] [varchar](1) NULL,
	[Trans_Threshold_Amt] [int] NULL,
	[Trans_Accumulation_Flag] [varchar](1) NULL,
	[Trans_Control_Flag] [varchar](1) NULL,
	[Trans_Count] [int] NULL,
	[Trans_Count_Flag] [varchar](1) NULL,
	[Reward_Code] [varchar](15) NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Redeem_This_Month] [varchar](1) NULL,
	[Redeem_Date] [varchar](1) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](50) NULL,
	[Reward_Limit] [int] NULL,
	[Redeem_Period] [varchar](1) NULL,
	[Redeem_Days] [int] NULL,
	[Redeem_TimeType] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[ACTIVITY_CODE] [varchar](10) NULL,
	[Plan_Code] [varchar](15) NULL,
 CONSTRAINT [PK_M_Price_Matching_Plan] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Product](
	[Price_Matching_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Product] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Redeem_Mcc]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Redeem_Mcc](
	[Price_Matching_Redeem_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Mcc_Redeem_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Redeem_Mcc] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Redeem_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Redeem_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Redeem_Mcht](
	[Price_Matching_Mcht_Redeem_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Mcht_Redeem_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Redeem_Mcht] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Mcht_Redeem_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](10) NULL,
	[Cardholder_Id] [varchar](10) NULL,
	[Card_No] [varchar](20) NULL,
	[Product_Logo] [varchar](10) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Mcht_Id] [varchar](20) NULL,
	[Mcht_Name] [varchar](100) NULL,
	[Source_Amount] [decimal](18, 2) NULL,
	[Dest_Amount] [int] NULL,
	[Installment_No] [varchar](10) NULL,
	[Country] [varchar](10) NULL,
	[Currency] [varchar](10) NULL,
	[Mcc_Code] [varchar](10) NULL,
	[Trans_Code] [varchar](10) NULL,
	[Reg_Date] [varchar](8) NULL,
	[Data_Type] [varchar](1) NULL,
	[Reward_Type] [varchar](20) NULL,
	[Plan_Code] [varchar](10) NULL,
	[Reward_Amt] [int] NULL,
	[Gift_Code] [varchar](20) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_Trans] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Price_Matching_VIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Price_Matching_VIP](
	[Price_Matching_Vip_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Price_Matching_Code] [varchar](15) NOT NULL,
	[Relationship_id] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Price_Matching_VIP] PRIMARY KEY CLUSTERED 
(
	[Price_Matching_Vip_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Priority_Pass]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Priority_Pass](
	[Priority_Pass_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Card_No] [varchar](19) NULL,
	[PP_Card_Type] [varchar](2) NULL,
	[PP_Card_No] [varchar](18) NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Primary_Cardholder_Id] [varchar](19) NULL,
	[Status] [varchar](1) NULL,
	[Expire_Start_YYYYMM] [varchar](6) NULL,
	[Expire_End_YYYYMM] [varchar](6) NULL,
	[Card_Issue_Date] [varchar](8) NULL,
	[Card_Lost_Date] [varchar](8) NULL,
	[Reissue_Flag] [varchar](1) NULL,
	[Reissue_PP_Card_No] [varchar](18) NULL,
	[Renew_Date] [varchar](8) NULL,
	[Emergency_Flag] [varchar](1) NULL,
	[Download_Date] [varchar](8) NULL,
	[Download_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Priority_Pass] PRIMARY KEY CLUSTERED 
(
	[Priority_Pass_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Product_Extra_Service]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Product_Extra_Service](
	[Product_Extra_Service_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Product_Extra_Service] [varchar](15) NOT NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Product_Extra_Service] PRIMARY KEY CLUSTERED 
(
	[Product_Extra_Service_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Product_Extra_Service_Item]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Product_Extra_Service_Item](
	[Product_Extra_Service_Item_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Product_Extra_Service_Seq] [int] NOT NULL,
	[Level_Type] [varchar](1) NULL,
	[Service_Level_Item] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Product _Extra_Service_Item] PRIMARY KEY CLUSTERED 
(
	[Product_Extra_Service_Item_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Product_Extra_Service_Logo]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Product_Extra_Service_Logo](
	[Product_Extra_Service_Logo_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Product_Extra_Service_Seq] [int] NOT NULL,
	[Product_Extra_Service_Item_Seq] [int] NULL,
	[Product_Logo] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Product _Extra_Service_Logo] PRIMARY KEY CLUSTERED 
(
	[Product_Extra_Service_Logo_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Product_Loyalty_Project]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Product_Loyalty_Project](
	[Product_Loyalty_Project_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Product_Logo] [varchar](3) NOT NULL,
	[Loyalty_Project_Code] [varchar](15) NOT NULL,
	[Status] [varchar](1) NOT NULL,
	[Begin_Date] [varchar](8) NOT NULL,
	[End_Date] [varchar](8) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_ Product _Loyalty_Project] PRIMARY KEY CLUSTERED 
(
	[Product_Loyalty_Project_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion](
	[Promotion_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Promotion_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Loyalty_Proj_Code] [varchar](15) NULL,
	[All_Logo_Flag] [varchar](1) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Per_Trans_Flag] [varchar](1) NULL,
	[Per_Card_Flag] [varchar](1) NULL,
	[Tran_Group] [varchar](15) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Times_Flag] [varchar](1) NULL,
	[Sett_Cycle_Flag] [varchar](1) NULL,
	[Sett_Date] [varchar](8) NULL,
	[EDC_Flag] [varchar](1) NULL,
	[EC_Flag] [varchar](1) NULL,
	[Domestic_Tran_Flag] [varchar](1) NULL,
	[Foreign_Tran_Flag] [varchar](1) NULL,
	[All_Flag] [varchar](1) NULL,
	[First_Trans_Amount] [int] NULL,
	[Total_Trans_Amount] [int] NULL,
	[Total_Trans_Count_1] [int] NULL,
	[Total_Trans_Pre_Amount] [int] NULL,
	[Total_Trans_Count_2] [int] NULL,
	[Total_Trans_Amount_2] [int] NULL,
	[Foreign_Plan_Flag] [varchar](1) NULL,
	[All_Flag_1] [varchar](1) NULL,
	[Domestic_Reward_Limit] [int] NULL,
	[Foreign_Reward_Limit] [int] NULL,
	[Sett_Date_Flag] [varchar](1) NULL,
	[Domestic_Reward_Limit_M] [int] NULL,
	[Foreign_Reward_Limit_M] [int] NULL,
	[Loyalty_Limit_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Week1] [varchar](1) NULL,
	[Week2] [varchar](1) NULL,
	[Week3] [varchar](1) NULL,
	[Week4] [varchar](1) NULL,
	[Week5] [varchar](1) NULL,
	[Week6] [varchar](1) NULL,
	[Week7] [varchar](1) NULL,
	[Combine_Limt] [int] NULL,
	[Combine_Limt_M] [int] NULL,
	[Combine_Limit] [int] NULL,
	[Combine_Limit_M] [int] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Apple_Pay_Flag] [varchar](1) NULL,
	[Android_Pay_Flag] [varchar](1) NULL,
	[Hce_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[Per_Trans_Amount] [int] NULL,
 CONSTRAINT [PK_M_Promotion] PRIMARY KEY CLUSTERED 
(
	[Promotion_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_Country]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_Country](
	[Promotion_Country_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Country] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Promotion_Country] PRIMARY KEY CLUSTERED 
(
	[Promotion_Country_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_Currency]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_Currency](
	[Promotion_Currency_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Currency_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Promotion_Currency] PRIMARY KEY CLUSTERED 
(
	[Promotion_Currency_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_MCC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_MCC](
	[Promotion_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Promotion_Plan_Seq] [int] NOT NULL,
	[Tran_Flag] [varchar](1) NOT NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Promotion_MCC] PRIMARY KEY CLUSTERED 
(
	[Promotion_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_Mcht](
	[Promotion_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Promotion_Plan_Seq] [int] NOT NULL,
	[Tran_Flag] [varchar](1) NOT NULL,
	[Mcht_Id] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Promotion_Mcht] PRIMARY KEY CLUSTERED 
(
	[Promotion_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_Plan](
	[Promotion_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Tran_Flag] [varchar](1) NOT NULL,
	[Begin_Amt] [bigint] NULL,
	[End_Amt] [bigint] NULL,
	[Reward_Code] [varchar](15) NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [decimal](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Double_Amt] [decimal](12, 2) NULL,
	[Loyalty_Limit_Flag] [varchar](1) NULL,
	[Qty] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Gift_Code] [varchar](50) NULL,
 CONSTRAINT [PK_M_Promotion_Plan] PRIMARY KEY CLUSTERED 
(
	[Promotion_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_Product](
	[Promotion_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NULL,
	[Product_Logo] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Promotion_Product] PRIMARY KEY CLUSTERED 
(
	[Promotion_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Promotion_Times]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Promotion_Times](
	[Promotion_Times_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Promotion_Code] [varchar](15) NOT NULL,
	[Day] [int] NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Promotion_Times] PRIMARY KEY CLUSTERED 
(
	[Promotion_Times_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PTWH]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PTWH](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ROW_TYPE] [varchar](1) NULL,
	[TYPE] [varchar](1) NULL,
	[TRANS_DATE] [varchar](8) NULL,
	[TRANS_TIME] [varchar](6) NULL,
	[SERIAL_NO] [varchar](14) NULL,
	[ORIG_TWHFS_DATE] [varchar](8) NULL,
	[PAY_CARD_NO] [varchar](16) NULL,
	[AUTH_CODE] [varchar](6) NULL,
	[STATION_ID] [varchar](2) NULL,
	[PNR_NO] [varchar](8) NULL,
	[TICKET_ID] [varchar](13) NULL,
	[AMOUNT] [int] NULL,
	[TRAIN_NO] [varchar](4) NULL,
	[DEPARTURE_STATION_ID] [varchar](2) NULL,
	[ARRIVAL_STATION_ID] [varchar](2) NULL,
	[SEAT_NO] [varchar](3) NULL,
	[DEPART_DATE] [varchar](8) NULL,
	[ORG_SERIAL_NO] [varchar](14) NULL,
	[ISSUE_STATION_ID] [varchar](2) NULL,
	[PLAN_CODE] [varchar](1) NULL,
	[CAR_NO] [varchar](2) NULL,
	[DISCOUNT_VALUE] [int] NULL,
	[TOTAL_TICKET_NO] [int] NULL,
	[TOTAL_AMOUNT] [int] NULL,
	[ACTION_CODE] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PUBL_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PUBL_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[TYPE] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PUBL_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PUBL_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[TYPE] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PUBL_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PUBL_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[TYPE] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment](
	[Public_Auto_Pay_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Public_Auto_Pay_Code] [varchar](15) NOT NULL,
	[Public_Auto_Pay_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Register_Flag] [varchar](1) NULL,
	[Apply_Start_Date] [varchar](8) NULL,
	[Apply_End_Date] [varchar](8) NULL,
	[Start_Date] [varchar](8) NULL,
	[End_Date] [varchar](8) NULL,
	[Deadline] [varchar](8) NULL,
	[Apply_Flag] [varchar](1) NULL,
	[Pay_Success_Flag] [varchar](1) NULL,
	[Tran_Group] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Public_Count] [int] NULL,
	[Logo_Exclude_Flag] [varchar](1) NULL,
	[Billing_Desc] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_Public_Auto_Payment] PRIMARY KEY CLUSTERED 
(
	[Public_Auto_Pay_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Feedback]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment_Feedback](
	[Seq_No] [int] NOT NULL,
	[Public_Auto_Pay_Code] [varchar](10) NULL,
	[Relationship_Id] [varchar](20) NULL,
	[Apply_Id] [varchar](20) NULL,
	[Apply_Date] [varchar](8) NULL,
	[Apply_Type] [varchar](15) NULL,
	[Card_No] [varchar](20) NULL,
	[First_Duduct_Date] [varchar](8) NULL,
	[Reward_Type] [varchar](20) NULL,
	[Reward_Amount] [int] NULL,
	[Reward_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Item]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment_Item](
	[Public_Auto_Pay_Item_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Public_Auto_Pay_Code] [varchar](15) NOT NULL,
	[Public_Type] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Public_Auto_Payment_Item] PRIMARY KEY CLUSTERED 
(
	[Public_Auto_Pay_Item_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Plan]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment_Plan](
	[Public_Auto_Pay_Plan_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Public_Auto_Pay_Code] [varchar](15) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Plan_Method] [varchar](1) NULL,
	[Reward_Percentage] [numeric](18, 2) NULL,
	[Reward_Amt] [int] NULL,
	[Reward_Point] [int] NULL,
	[Qty] [int] NULL,
	[Reward_Amt_Flag] [varchar](1) NULL,
	[Reward_Round_Flag] [varchar](1) NULL,
	[Redeem_This_Month] [varchar](1) NULL,
	[Redeem_Date] [varchar](1) NULL,
	[Redeem_Start_Date] [varchar](8) NULL,
	[Redeem_End_Date] [varchar](8) NULL,
	[Gift_Code] [varchar](50) NULL,
	[Reward_Limit] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Public_Auto_Payment_Plan] PRIMARY KEY CLUSTERED 
(
	[Public_Auto_Pay_Plan_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Product]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment_Product](
	[Public_Auto_Pay_Product_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Public_Auto_Pay_Code] [varchar](15) NOT NULL,
	[Product_Logo] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Public_Auto_Payment_Product] PRIMARY KEY CLUSTERED 
(
	[Public_Auto_Pay_Product_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment_Trans](
	[Cardholder_Id] [varchar](11) NOT NULL,
	[Public_Type] [varchar](15) NOT NULL,
	[User_No] [varchar](16) NOT NULL,
	[Card_No] [varchar](19) NULL,
	[Old_Card_No] [varchar](19) NULL,
	[Old_User_No] [varchar](16) NULL,
	[Remark] [varchar](40) NULL,
	[Apply_Date] [varchar](8) NULL,
	[Create_Date] [varchar](8) NULL,
	[Delete_Mark] [varchar](1) NULL,
	[Resend_Flag] [varchar](1) NULL,
	[Data_Entry_Date] [varchar](8) NULL,
	[Commission_Flag] [varchar](1) NULL,
	[Process_Ok_Flag] [varchar](1) NULL,
	[Business_Card_Date] [varchar](8) NULL,
	[Ach_Source] [varchar](1) NULL,
	[Ach_Flag] [varchar](1) NULL,
	[Ach_Email_Date] [varchar](8) NULL,
	[Ach_Old_Flag] [varchar](1) NULL,
	[Keep_Date] [varchar](8) NULL,
	[Ach_Feedback_Date] [varchar](8) NULL,
	[Other_049] [varchar](1) NULL,
	[Success_Flag] [varchar](1) NULL,
	[Ach_Reason] [varchar](2) NULL,
	[Ach_Trans_Code] [varchar](3) NULL,
	[V_System_Date] [varchar](8) NULL,
	[V_System_Time] [varchar](8) NULL,
	[V_System_User] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Update_Date] [varchar](8) NULL,
	[Update_Time] [varchar](6) NULL,
 CONSTRAINT [PK_M_Public_Auto_Payment_Trans] PRIMARY KEY CLUSTERED 
(
	[Cardholder_Id] ASC,
	[Public_Type] ASC,
	[User_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Public_Auto_Payment_VIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Public_Auto_Payment_VIP](
	[Public_Auto_Pay_Vip_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Public_Auto_Pay_Code] [varchar](15) NOT NULL,
	[Relationship_id] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Public_Auto_Payment_VIP] PRIMARY KEY CLUSTERED 
(
	[Public_Auto_Pay_Vip_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RDOT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RDOT](
	[BATCH_NO] [varchar](20) NULL,
	[HEADER_FLAG] [varchar](1) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[DOTS_SIGN] [varchar](1) NULL,
	[DOTS] [int] NULL,
	[DOTS_C_SIGN] [varchar](1) NULL,
	[DOTS_C] [int] NULL,
	[DOTS_G_SIGN] [varchar](1) NULL,
	[DOTS_G] [int] NULL,
	[JAA_MILE_SIGN] [varchar](1) NULL,
	[JAA_MILE] [int] NULL,
	[DETAIL_FLAG] [varchar](1) NULL,
	[CARD_NO] [varchar](19) NULL,
	[DODO_FLAG] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Red_CashPoints_Order]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Red_CashPoints_Order](
	[Red_CashPoints_Order_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Account_No] [varchar](11) NOT NULL,
	[Account_Name] [varchar](30) NULL,
	[Points] [int] NULL,
	[Current_Points] [int] NULL,
	[Immediate_Flag] [varchar](1) NULL,
	[Remark] [nvarchar](100) NULL,
	[Channel] [varchar](1) NULL,
	[Check_Status] [varchar](1) NULL,
	[Check_Datetime] [datetime] NULL,
	[Order_Status] [varchar](1) NULL,
	[Reject_Reason] [varchar](15) NULL,
	[Reject_Remark] [nvarchar](100) NULL,
	[Batch_Status] [varchar](1) NULL,
	[Batch_Datetime] [datetime] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Red_CashPoints_Order] PRIMARY KEY CLUSTERED 
(
	[Red_CashPoints_Order_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Red_Commodity]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Red_Commodity](
	[Red_Commodity_Code] [varchar](15) NOT NULL,
	[Red_Commodity_Name] [nvarchar](100) NOT NULL,
	[Vendor_Id] [varchar](15) NULL,
	[Eff_Date] [varchar](8) NULL,
	[Cost_Price] [int] NULL,
	[List_Price] [int] NULL,
	[Init_Inv_Qty] [int] NULL,
	[Inv_Qty] [int] NULL,
	[Used_Qty] [int] NULL,
	[Qty_Control] [varchar](1) NULL,
	[Red_Start_Date] [varchar](8) NULL,
	[Red_Close_Date] [varchar](8) NULL,
	[Red_Close_Reason] [varchar](15) NULL,
	[Red_Close_Reason_Desc] [nvarchar](100) NULL,
	[Point_Type] [varchar](15) NULL,
	[Point] [int] NULL,
	[Amount] [int] NULL,
	[First_Threshold] [int] NULL,
	[Manual_Entry_Only_Flag] [varchar](1) NULL,
	[Non_Rd_Flag] [varchar](1) NULL,
	[Birthday_Flag] [varchar](1) NULL,
	[Card_Product_Flag] [varchar](1) NULL,
	[Rd_Qty] [int] NULL,
	[Monthly_Times] [int] NULL,
	[Monthly_Amount] [int] NULL,
	[Vip_Flag] [varchar](1) NULL,
	[Cobrand_Flag] [varchar](4) NULL,
	[Touch_Flag] [varchar](1) NULL,
	[Remark] [nvarchar](100) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Mile_Qty] [int] NULL,
	[Red_Commodity_Seq] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_M_Red_Commdity] PRIMARY KEY CLUSTERED 
(
	[Red_Commodity_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Red_Commodity_CardProd]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Red_Commodity_CardProd](
	[Red_Commodity_CardProd_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Red_Commodity_Code] [varchar](15) NOT NULL,
	[Card_Product_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Red_Commodity_CardProd] PRIMARY KEY CLUSTERED 
(
	[Red_Commodity_CardProd_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Red_Commodity_Order]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Red_Commodity_Order](
	[Red_Commodity_Order_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Account_No] [varchar](11) NULL,
	[Account_Name] [varchar](30) NULL,
	[Order_Date] [varchar](8) NOT NULL,
	[Order_Seq] [int] NULL,
	[Red_Commodity_Code] [varchar](15) NULL,
	[Product_Name] [nvarchar](50) NULL,
	[Product_Point] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Qty] [int] NULL,
	[Pay_Amt] [int] NULL,
	[Ship_Date] [varchar](8) NULL,
	[Ship_No] [varchar](20) NULL,
	[Post_No] [varchar](20) NULL,
	[Billing_Date] [varchar](8) NULL,
	[Billing_No] [varchar](10) NULL,
	[Cancel_Date] [varchar](8) NULL,
	[Remark] [nvarchar](100) NULL,
	[Cancel_Remark] [nvarchar](100) NULL,
	[Ship_Create_Date] [varchar](8) NULL,
	[Billing_Create_Date] [varchar](8) NULL,
	[Pay_Cash_Flag] [varchar](1) NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Cinema_Flag] [varchar](1) NULL,
	[Card_No] [varchar](19) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Touch_Prod_Flag] [varchar](1) NULL,
	[Touch_Platform_Flag] [varchar](1) NULL,
	[Order_No] [varchar](20) NULL,
	[Download_Flag] [varchar](1) NULL,
	[Buss_Cardholder_Id] [varchar](11) NULL,
	[Cancel_Qty] [int] NULL,
	[Red_Channel] [varchar](15) NULL,
	[Address_Flag] [varchar](1) NULL,
	[Zip_Code] [varchar](5) NULL,
	[City] [nvarchar](15) NULL,
	[District] [nvarchar](15) NULL,
	[Address] [nvarchar](100) NULL,
	[Receiver_Name] [varchar](30) NULL,
	[Tel_Area_Code] [varchar](3) NULL,
	[Tel_No] [varchar](50) NULL,
	[Mail_Status] [varchar](1) NULL,
	[Order_Status] [varchar](1) NULL,
	[Batch_Status] [varchar](1) NULL,
	[Batch_Datetime] [datetime] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Channel] [varchar](1) NULL,
 CONSTRAINT [PK_M_Red_Commodity_Order] PRIMARY KEY CLUSTERED 
(
	[Red_Commodity_Order_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Red_Commodity_Upload]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Red_Commodity_Upload](
	[Batch_No] [varchar](20) NOT NULL,
	[Upload_Date] [varchar](8) NOT NULL,
	[Product_Code] [varchar](6) NULL,
	[Vendor_Id] [varchar](2) NULL,
	[Product_Name] [nvarchar](200) NULL,
	[Cost] [int] NULL,
	[Point] [int] NULL,
	[Pay_Amt] [int] NULL,
	[Eff_Date] [varchar](8) NULL,
	[Qty] [int] NULL,
	[Control_Flag] [varchar](1) NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](500) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Relationship]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Relationship](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Acct_Id] [varchar](19) NULL,
	[Status] [varchar](1) NULL,
	[Cycle_Day] [varchar](2) NULL,
	[New_Cycle_Day] [varchar](2) NULL,
	[New_Cycle_Eff_Date] [varchar](8) NULL,
	[JOCS_Aging] [varchar](2) NULL,
	[Aging] [varchar](1) NULL,
	[No_Active_Card_Flag] [varchar](1) NULL,
	[Collection_Flag] [varchar](1) NULL,
	[Over_M3] [varchar](1) NULL,
	[Redeem_Flag] [varchar](1) NULL,
	[Deduct_Type] [varchar](1) NULL,
	[Deduct_Bank] [varchar](15) NULL,
	[Deduct_Create_date] [varchar](8) NULL,
	[Deduct_Cancel_date] [varchar](8) NULL,
	[VIP_Kind] [varchar](1) NULL,
	[VIP_Start_Date] [varchar](8) NULL,
	[VIP_End_Date] [varchar](8) NULL,
	[Waive_Kind] [varchar](1) NULL,
	[Waive_Start_Date] [varchar](8) NULL,
	[Waive_End_Date] [varchar](8) NULL,
	[Waive_Flag] [varchar](1) NULL,
	[Waive_Remark] [varchar](10) NULL,
	[Statement_Code] [varchar](2) NULL,
	[Statement_Code_Start_Date] [varchar](6) NULL,
	[Statement_Code_End_Date] [varchar](6) NULL,
	[Info_Bill_Flag] [varchar](1) NULL,
	[Info_Bill_Date] [varchar](8) NULL,
	[Keep_Send_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[M_Relationship] ADD [Dot_Account_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [Cancel_Dot_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [Ebilling_First_Apply_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [Vip_Room_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [Free_Vip_Start_Date] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [Free_Vip_End_Date] [varchar](8) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[M_Relationship] ADD [Chg_Id_Date] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [Estmt_First_Apply_Date] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [ESTMT_1ST_USAGE_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [GOOGLE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [APPLE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [HCE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [GOOGLE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [APPLE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [HCE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [NO_ACTIVITY_CARD_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[M_Relationship] ADD [RESALE_FLAG] [varchar](1) NULL
 CONSTRAINT [PK_M_Relationship] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RELP_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RELP_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[HIGH_DELQ_JOCS] [varchar](2) NULL,
	[NO_ACTIVE_CARD_FLAG] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RELP_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RELP_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[HIGH_DELQ_JOCS] [varchar](2) NULL,
	[NO_ACTIVE_CARD_FLAG] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RELP_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RELP_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[HIGH_DELQ_JOCS] [varchar](2) NULL,
	[NO_ACTIVE_CARD_FLAG] [varchar](1) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_REP0045_UPLOAD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_REP0045_UPLOAD](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Acct_Id] [varchar](19) NULL,
	[File_Name] [varchar](100) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_REP0045_UPLOAD] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_REP0046_UPLOAD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_REP0046_UPLOAD](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Card_No] [varchar](20) NULL,
	[File_Name] [varchar](100) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_REP0046_UPLOAD] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Report_Param]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Report_Param](
	[Report_Param_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Param_Name] [varchar](50) NULL,
	[Remark] [varchar](500) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](20) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](20) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Logo_Group_id] [varchar](10) NULL,
 CONSTRAINT [PK_M_Report_Param] PRIMARY KEY CLUSTERED 
(
	[Report_Param_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Report_Param_Value]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Report_Param_Value](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Report_Param_Seq] [int] NOT NULL,
	[Value] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](20) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](20) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Report_Param_Value] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Reward]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Reward](
	[Reward_Code] [varchar](15) NOT NULL,
	[Reward_Name] [varchar](100) NOT NULL,
	[Reward_Type] [varchar](15) NOT NULL,
	[Used_Type] [varchar](1) NULL,
	[Tran_Code] [varchar](15) NULL,
	[EDC_Flag] [varchar](1) NULL,
	[EC_Flag] [varchar](1) NULL,
	[Domestic_Trans_Flag] [varchar](1) NULL,
	[Foreign_Trans_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NOT NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[Reward_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Reward_Mcc]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Reward_Mcc](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Reward_Mcc] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Reward_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Reward_Mcht](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Reward_Code] [varchar](15) NOT NULL,
	[Mcht_Id] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Reward_Mcht] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance](
	[Roadside_Assist_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Roadside_Assist_Code] [varchar](15) NOT NULL,
	[Roadside_Assist_Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[Start_date] [varchar](8) NULL,
	[End_date] [varchar](8) NULL,
	[Bill_Amt] [int] NULL,
	[First_Time_Amt] [int] NULL,
	[Reward_Type] [varchar](15) NULL,
	[Roadside_Assist_Flag] [varchar](1) NULL,
	[Per_Time_Amt] [int] NULL,
	[Previous_Qty] [int] NULL,
	[After_Per_Time_Amt] [int] NULL,
	[Extra_Serv_Level_Code] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_1] PRIMARY KEY CLUSTERED 
(
	[Roadside_Assist_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Code]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Code](
	[Roadside_Assist_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Roadside_Assist_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_Code] PRIMARY KEY CLUSTERED 
(
	[Roadside_Assist_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Level]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Level](
	[Roadside_Assist_Level_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Roadside_Assist_Seq] [int] NOT NULL,
	[Card_Service_Level] [varchar](1) NOT NULL,
	[Card_Flag] [varchar](1) NOT NULL,
	[Times_Per_Year] [int] NULL,
	[Times_Per_Month] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_Level] PRIMARY KEY CLUSTERED 
(
	[Roadside_Assist_Level_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Level_Code]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Level_Code](
	[Roadside_Assist_Level_Code_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Roadside_Assist_Level_Seq] [int] NOT NULL,
	[Service_Level_Code] [varchar](4) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_Level_Code] PRIMARY KEY CLUSTERED 
(
	[Roadside_Assist_Level_Code_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Reg]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Reg](
	[Roadside_Assistance_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Cardholder_Id] [varchar](11) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Car_No] [varchar](50) NOT NULL,
	[Car_Logo] [varchar](30) NULL,
	[Car_Colour] [varchar](20) NULL,
	[Fee_Flag] [varchar](1) NULL,
	[Free_Date] [varchar](8) NULL,
	[Apply_Date] [varchar](8) NULL,
	[Cancel_Flag] [varchar](1) NULL,
	[Cancel_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance] PRIMARY KEY CLUSTERED 
(
	[Roadside_Assistance_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Reg_H]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Reg_H](
	[Roadside_Assistance_Reg_H_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Roadside_Assistance_Seq] [int] NOT NULL,
	[Cardholder_Id] [varchar](11) NOT NULL,
	[Card_No] [varchar](19) NULL,
	[Car_No] [varchar](50) NOT NULL,
	[Car_Logo] [varchar](30) NULL,
	[Car_Colour] [varchar](20) NULL,
	[Fee_Flag] [varchar](1) NULL,
	[Free_Date] [varchar](8) NULL,
	[Apply_Date] [varchar](8) NULL,
	[Cancel_Flag] [varchar](1) NULL,
	[Cancel_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_H] PRIMARY KEY CLUSTERED 
(
	[Roadside_Assistance_Reg_H_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Trans]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Trans](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Cardholder_Id] [varchar](16) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Card_No] [varchar](16) NULL,
	[Trans_Date] [varchar](8) NOT NULL,
	[Pay_Amount] [int] NULL,
	[Service_Type] [varchar](1) NULL,
	[City] [varchar](30) NULL,
	[Address] [varchar](40) NULL,
	[Extra_Service_Type] [varchar](1) NULL,
	[Uni_Code] [varchar](15) NULL,
	[Reason] [varchar](16) NULL,
	[Car_No] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[batch_Status] [varchar](1) NULL,
	[Billing_Amount] [int] NULL,
 CONSTRAINT [PK_M_UPXTMR] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Trans_Static_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Trans_Static_Account](
	[Year] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_Trans_Static_Account] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Roadside_Assistance_Trans_Static_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Roadside_Assistance_Trans_Static_Card](
	[Year] [int] NOT NULL,
	[Relationship_Id] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Total_Times_Y] [int] NULL,
	[Used_Times_Y] [int] NULL,
	[Total_Times_M] [int] NULL,
	[Used_Times_M] [int] NULL,
	[Redeem_Point] [int] NULL,
	[Paid_Amt] [int] NULL,
 CONSTRAINT [PK_M_Roadside_Assistance_Trans_Static_Card] PRIMARY KEY CLUSTERED 
(
	[Year] ASC,
	[Relationship_Id] ASC,
	[Card_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Role]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Role](
	[Role_Id] [varchar](30) NOT NULL,
	[Role_Name] [nvarchar](50) NOT NULL,
	[Role_Desc] [nvarchar](200) NOT NULL,
	[Activated] [varchar](1) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Role] PRIMARY KEY CLUSTERED 
(
	[Role_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Role_Employee]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Role_Employee](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Role_id] [varchar](30) NOT NULL,
	[Empl_Id] [varchar](30) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Settlement_File]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Settlement_File](
	[Settlement_File_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Relationship_Id] [varchar](19) NULL,
	[Acct_Id] [varchar](19) NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Product_Logo] [varchar](3) NULL,
	[Card_No] [varchar](19) NULL,
	[Tran_code] [varchar](15) NULL,
	[Dest_Amount] [int] NULL,
	[Source_Amount] [decimal](18, 2) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Posting_Date] [varchar](8) NULL,
	[Source_Currency] [varchar](3) NULL,
	[Dest_Currency] [varchar](3) NULL,
	[Tran_Desc] [varchar](40) NULL,
	[Mcht_Country] [varchar](3) NULL,
	[Mcht_Id] [varchar](15) NULL,
	[POS_Entry_Mode] [varchar](3) NULL,
	[Terminal_Id] [varchar](15) NULL,
	[MCC_Code] [varchar](5) NULL,
	[Actionpay_Flag] [varchar](1) NULL,
	[Tpan_No] [varchar](16) NULL,
	[Lot_No] [varchar](7) NULL,
	[Bill_Type] [varchar](1) NULL,
	[Film_No] [varchar](23) NULL,
	[Tran_Auth_Type] [varchar](2) NULL,
	[Tran_Auth_Code] [varchar](6) NULL,
	[Ec_Ind] [varchar](1) NULL,
	[Ucaf_Ind] [varchar](3) NULL,
	[Eng_Desc] [varchar](40) NULL,
	[Batch_Status] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Settlement_File_1] PRIMARY KEY CLUSTERED 
(
	[Settlement_File_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Settlement_File_Dtl]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Settlement_File_Dtl](
	[Settlement_File_Dtl_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Settlement_File_Seq] [int] NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Relationship_Id] [varchar](19) NULL,
	[Acct_Id] [varchar](19) NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Product_Logo] [varchar](3) NULL,
	[Card_No] [varchar](19) NULL,
	[Tran_code] [varchar](15) NULL,
	[Dest_Amount] [int] NULL,
	[Source_Amount] [numeric](18, 2) NOT NULL,
	[Trans_Date] [varchar](8) NULL,
	[Posting_Date] [varchar](8) NULL,
	[Source_Currency] [varchar](3) NULL,
	[Dest_Currency] [varchar](3) NULL,
	[Tran_Desc] [varchar](40) NULL,
	[Mcht_Country] [varchar](3) NULL,
	[Mcht_Id] [varchar](15) NULL,
	[POS_Entry_Mode] [varchar](3) NULL,
	[Terminal_Id] [varchar](15) NULL,
	[MCC_Code] [varchar](5) NULL,
	[Actionpay_Flag] [varchar](1) NULL,
	[Tpan_No] [varchar](16) NULL,
	[Lot_No] [varchar](7) NULL,
	[Bill_Type] [varchar](1) NULL,
	[Film_No] [varchar](23) NULL,
	[Tran_Auth_Type] [varchar](2) NULL,
	[Tran_Auth_Code] [varchar](6) NULL,
	[Ec_Ind] [varchar](1) NULL,
	[Ucaf_Ind] [varchar](3) NULL,
	[Eng_Desc] [varchar](40) NULL,
	[Batch_Status] [varchar](1) NULL,
	[Plan_Type] [varchar](50) NULL,
	[Plan_Code] [varchar](50) NULL,
	[Point_Type] [varchar](10) NULL,
	[Point_Belong] [varchar](1) NULL,
	[Reward_Code] [varchar](50) NULL,
	[Reward_Amt] [int] NULL,
	[Formula] [varchar](100) NULL,
	[Travel_Flag] [varchar](1) NULL,
	[Point_Expire_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Billing_Desc] [nvarchar](50) NULL,
	[billing_YM] [varchar](6) NULL,
 CONSTRAINT [PK_M_Settlement_File_Dtl] PRIMARY KEY CLUSTERED 
(
	[Settlement_File_Dtl_Seq] ASC,
	[Settlement_File_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_SKSD_RETN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_SKSD_RETN](
	[Batch_No] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](6) NULL,
	[Seq_No] [varchar](14) NULL,
	[Org_Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Channel] [varchar](2) NULL,
	[Booking_No] [varchar](8) NULL,
	[Ticket_No] [varchar](13) NULL,
	[Ticket_Amount] [int] NULL,
	[Tran_No] [varchar](4) NULL,
	[Departure_Station] [varchar](2) NULL,
	[Arrival_Station] [varchar](2) NULL,
	[Seat_No] [varchar](3) NULL,
	[Travel_Date] [varchar](8) NULL,
	[Org_Seq_No] [varchar](14) NULL,
	[Pickup_Station] [varchar](2) NULL,
	[Car_No] [varchar](2) NULL,
	[Ticket_Diff_Amt] [int] NULL,
	[Ticket_Count] [int] NULL,
	[Pay_Amount] [int] NULL,
	[Act_Diff] [varchar](1) NULL,
	[Result] [varchar](2) NULL,
	[Redeem_Point] [int] NULL,
	[Billing_Amount] [int] NULL,
	[Relationship_Id] [varchar](19) NULL,
	[Relationship_Name] [varchar](40) NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Cardholder_Name] [varchar](40) NULL,
	[Card_Product_Name] [varchar](100) NULL,
	[Earse_Flag] [varchar](1) NULL,
	[Feedback_Flag] [varchar](1) NULL,
	[Cycle_Code] [varchar](1) NULL,
	[Act_Id] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_SKUP_FEBK]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_SKUP_FEBK](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_Date] [varchar](8) NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Amount] [int] NULL,
	[Cash_Point] [int] NULL,
	[Loyalty_Point] [int] NULL,
	[Product_Name] [varchar](8) NULL,
	[Close_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Skup_Febk] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_SKUP_RETN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_SKUP_RETN](
	[Batch_No] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](6) NULL,
	[Seq_No] [varchar](14) NULL,
	[Org_Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Channel] [varchar](2) NULL,
	[Booking_No] [varchar](8) NULL,
	[Ticket_No] [varchar](13) NULL,
	[Ticket_Amount] [int] NULL,
	[Tran_No] [varchar](4) NULL,
	[Departure_Station] [varchar](2) NULL,
	[Arrival_Station] [varchar](2) NULL,
	[Seat_No] [varchar](3) NULL,
	[Travel_Date] [varchar](8) NULL,
	[Org_Seq_No] [varchar](14) NULL,
	[Pickup_Station] [varchar](2) NULL,
	[Car_No] [varchar](2) NULL,
	[Ticket_Diff_Amt] [int] NULL,
	[Ticket_Count] [int] NULL,
	[Pay_Amount] [int] NULL,
	[Act_Diff] [varchar](1) NULL,
	[Result] [varchar](2) NULL,
	[Redeem_Point] [int] NULL,
	[Billing_Amount] [int] NULL,
	[Relationship_Id] [varchar](19) NULL,
	[Relationship_Name] [varchar](40) NULL,
	[Cardholder_Id] [varchar](19) NULL,
	[Cardholder_Name] [varchar](40) NULL,
	[Card_Product_Name] [varchar](100) NULL,
	[Earse_Flag] [varchar](1) NULL,
	[Feedback_Flag] [varchar](1) NULL,
	[Cycle_Code] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_SPRES]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_SPRES](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[PRESENT_CODE] [varchar](6) NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[ID_NO_1] [varchar](11) NULL,
	[B030B_FLAG] [varchar](1) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[TOUCH_TYPE] [varchar](1) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_STBO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_STBO](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[ADJUST_REASON] [varchar](20) NULL,
	[ADJUST_REASON_C] [varchar](20) NULL,
	[KEEP_DAYS_SIGN] [varchar](1) NULL,
	[KEEP_DAYS] [int] NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[TICKET_NO] [varchar](8) NULL,
	[CARD_CREATE_DATE] [varchar](8) NULL,
	[REPT_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Table_Definition]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Table_Definition](
	[Table_Name] [varchar](30) NULL,
	[Field_Id] [varchar](30) NULL,
	[Field_Name] [varchar](50) NULL,
	[Field_Order] [int] NULL,
	[Field_Length] [int] NULL,
	[Field_Type] [varchar](1) NULL,
	[Merge_Column] [varchar](1) NULL,
	[File_Name] [varchar](50) NULL,
	[Diff_Flag] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TPAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TPAN](
	[Batch_No] [varchar](20) NULL,
	[Wallet_Id] [varchar](32) NULL,
	[Card_No] [varchar](19) NULL,
	[Tpan_No] [varchar](19) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Expire_Date] [varchar](8) NULL,
	[Card_Status] [varchar](1) NULL,
	[Oppost_Reason] [varchar](2) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Oppost_Time] [varchar](6) NULL,
	[Oppost_User] [varchar](8) NULL,
	[Open_Date] [varchar](8) NULL,
	[Open_Time] [varchar](6) NULL,
	[Open_Flag] [varchar](1) NULL,
	[Update_Reason] [varchar](1) NULL,
	[Sir] [varchar](36) NULL,
	[Tel_Gsm] [varchar](10) NULL,
	[Event_Type] [varchar](2) NULL,
	[Sir_Status] [varchar](2) NULL,
	[Sir_Update_Date] [varchar](8) NULL,
	[Sir_Update_Time] [varchar](6) NULL,
	[Hce_Oppost_Type] [varchar](1) NULL,
	[Hce_Sir_Status] [varchar](2) NULL,
	[Hce_Exestatus] [varchar](30) NULL,
	[Hce_Update_Date] [varchar](8) NULL,
	[Hce_Update_Time] [varchar](6) NULL,
	[Operation] [varchar](3) NULL,
	[Open_Password] [varchar](6) NULL,
	[Create_Date] [varchar](8) NULL,
	[Del_flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TRAN_BILLING]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRAN_BILLING](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[DEST_AMOUNT] [int] NULL,
	[SOURCE_AMOUNT] [decimal](18, 2) NULL,
	[EFF_DATE] [varchar](8) NOT NULL,
	[POSTING_DATE] [varchar](8) NULL,
	[SOURCE_CURRENY_CODE] [varchar](3) NULL,
	[DEST_CURRENY_CODE] [varchar](3) NULL,
	[DESCR] [varchar](40) NULL,
	[MERCHANT_COUNTRY_CODE] [varchar](3) NULL,
	[MERCHANT_ID] [varchar](15) NULL,
	[ENTYR_MODE] [varchar](3) NULL,
	[TERMINAL_ID] [varchar](15) NULL,
	[MCC_CODE] [varchar](5) NULL,
	[ACTIONPAY_FLAG] [varchar](1) NULL,
	[TPAN_NO] [varchar](16) NULL,
	[LOT_NO] [varchar](7) NULL,
	[BILL_TYPE] [varchar](1) NULL,
	[FILM_NO] [varchar](23) NULL,
	[BILLING_DATE] [varchar](8) NULL,
	[TXN_AUTH_CODE] [varchar](2) NULL,
	[Relationship_Id] [varchar](19) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Code]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Code](
	[Tran_code] [varchar](15) NOT NULL,
	[Tran_name] [varchar](100) NOT NULL,
	[Tran_type] [varchar](3) NOT NULL,
	[Del_flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[Reverse_Code] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Code_Reverse]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Code_Reverse](
	[Tran_Code] [varchar](15) NOT NULL,
	[Reverse_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TRAN_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRAN_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[MERCHANT_COUNTRY_CODE] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Group]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Group](
	[Tran_group_code] [varchar](15) NOT NULL,
	[Tran_group_name] [varchar](100) NOT NULL,
	[Exclude_Flag] [varchar](1) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
	[Apple_Pay_Flag] [varchar](1) NULL,
	[Android_Pay_Flag] [varchar](1) NULL,
	[Hce_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_M_Tran_Group] PRIMARY KEY CLUSTERED 
(
	[Tran_group_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Group_Item]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Group_Item](
	[Tran_Group_Item_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Tran_group_code] [varchar](15) NOT NULL,
	[Tran_code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Tran_Group_Item_1] PRIMARY KEY CLUSTERED 
(
	[Tran_Group_Item_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Group_Mcc]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Group_Mcc](
	[Tran_Group_Mcc_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Tran_Group_Code] [varchar](15) NOT NULL,
	[Exclude_Flag] [varchar](1) NULL,
	[Mcc_Code] [varchar](15) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Tran_Group_Mcc] PRIMARY KEY CLUSTERED 
(
	[Tran_Group_Mcc_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Group_Mcht]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Group_Mcht](
	[Tran_Group_Mcht_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Tran_Group_Code] [varchar](15) NOT NULL,
	[Exclude_Flag] [varchar](1) NULL,
	[Mcht_Id] [varchar](15) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Tran_Group_Mcht] PRIMARY KEY CLUSTERED 
(
	[Tran_Group_Mcht_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Tran_Group_Name]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Tran_Group_Name](
	[Tran_Group_Name_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Tran_Group_Code] [varchar](15) NOT NULL,
	[Exclude_Flag] [varchar](1) NULL,
	[Mcht_Name] [varchar](50) NOT NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Tran_Group_Name] PRIMARY KEY CLUSTERED 
(
	[Tran_Group_Name_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TRAN_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRAN_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[MERCHANT_COUNTRY_CODE] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TRAN_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRAN_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[LOGO] [varchar](3) NULL,
	[MERCHANT_COUNTRY_CODE] [varchar](3) NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Travel_Fee]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Travel_Fee](
	[Trave_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Relationship_Id] [varchar](19) NULL,
	[Card_No] [varchar](19) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Amount] [int] NULL,
	[Refer_Auth_No] [varchar](50) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Travel_Fee] PRIMARY KEY CLUSTERED 
(
	[Trave_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_UPDODA]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_UPDODA](
	[Batch_No] [varchar](20) NULL,
	[Company_Id] [varchar](5) NULL,
	[Card_No] [varchar](16) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Days] [int] NULL,
	[Free_Days] [int] NULL,
	[Special_Event] [varchar](4) NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](500) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[car_no] [varchar](7) NULL,
	[BILLING_YM] [varchar](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_UPDODC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[M_UPDODC](
	[Batch_No] [varchar](20) NULL,
	[Card_No] [varchar](16) NULL,
	[Company_Id] [varchar](5) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Hour] [numeric](4, 1) NULL,
	[Free_Hour] [numeric](4, 1) NULL,
	[Park_Fee] [int] NULL,
	[Redeem_Hour] [numeric](5, 1) NULL,
	[Redeem_Point] [int] NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](500) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[M_UPDODC] ADD [BILLING_YM] [varchar](7) NULL
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_UPXTMA]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_UPXTMA](
	[Batch_No] [varchar](20) NULL,
	[Bank_Name] [varchar](30) NULL,
	[Logo_Name] [nvarchar](20) NULL,
	[Pickup_Date] [varchar](8) NULL,
	[Cardholder_Id] [varchar](16) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Pay_Amount] [int] NULL,
	[Pickup_Type] [varchar](1) NULL,
	[City] [varchar](30) NULL,
	[Address] [varchar](40) NULL,
	[Extra_Service_Type] [varchar](1) NULL,
	[Uni_Code] [varchar](15) NULL,
	[Driver_Name] [varchar](8) NULL,
	[Car_No] [varchar](8) NULL,
	[Charge_Amount] [int] NULL,
	[Car_Type] [varchar](1) NULL,
	[Airport_Type] [varchar](1) NULL,
	[Card_No] [varchar](16) NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](500) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[BILLING_YM] [varchar](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_UPXTMR]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_UPXTMR](
	[Batch_No] [varchar](20) NULL,
	[Trans_Date] [varchar](8) NULL,
	[Cardholder_Id] [varchar](16) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Car_No] [varchar](8) NULL,
	[Reason] [varchar](16) NULL,
	[Service_Type] [varchar](1) NULL,
	[Address] [varchar](30) NULL,
	[City] [varchar](20) NULL,
	[Extra_Service_TYpe] [varchar](1) NULL,
	[Pay_Amount] [int] NULL,
	[Uni_Code] [varchar](11) NULL,
	[Card_No] [varchar](16) NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](500) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[BILLING_YM] [varchar](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Vendor]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Vendor](
	[Vendor_Id] [varchar](15) NOT NULL,
	[Vendor_Type] [varchar](15) NOT NULL,
	[Vendor_Name] [nvarchar](100) NOT NULL,
	[Uni_Code] [varchar](8) NULL,
	[Contact_Person] [varchar](30) NULL,
	[Tel_Area_Code] [varchar](3) NULL,
	[Tel_No] [varchar](50) NULL,
	[Fax_Area_Code] [varchar](3) NULL,
	[Fax_No] [varchar](50) NULL,
	[Zip_Code] [varchar](5) NULL,
	[City] [nvarchar](15) NULL,
	[District] [nvarchar](15) NULL,
	[Address] [nvarchar](100) NULL,
	[Rate] [decimal](18, 2) NULL,
	[Stop_Flag] [varchar](1) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Vendor_Contact_Info]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Vendor_Contact_Info](
	[Vendor_Contact_Info_Seq] [int] IDENTITY(1,1) NOT NULL,
	[Vendor_Id] [varchar](15) NOT NULL,
	[Contact_Person] [varchar](30) NULL,
	[Tel_Area_Code] [varchar](3) NULL,
	[Tel_No] [varchar](50) NULL,
	[Fax_Area_Code] [varchar](3) NULL,
	[Fax_No] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Delivery_Flag] [varchar](1) NOT NULL,
	[Del_Flag] [varchar](1) NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Vendor_Email] PRIMARY KEY CLUSTERED 
(
	[Vendor_Contact_Info_Seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMD](
	[ID_NO] [varchar](11) NULL,
	[ACCT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CAR_NO] [varchar](8) NULL,
	[CAR_KIND] [varchar](2) NULL,
	[CAR_COLOR] [varchar](2) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[CHARGE_FLAG] [varchar](1) NULL,
	[MOTOR_FLAG] [varchar](1) NULL,
	[LAST_POST_DATE] [varchar](8) NULL,
	[LAST_POST_AMT] [int] NULL,
	[TMS_NAME] [varchar](6) NULL,
	[TMS_NO] [varchar](5) NULL,
	[TMS_DATE] [varchar](8) NULL,
	[RSS_A_CNT] [int] NULL,
	[RSS_B_CNT] [int] NULL,
	[RSS_C_CNT] [int] NULL,
	[RSS_D_CNT] [int] NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[RSS_CNT_B] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_S_DATE] [varchar](8) NULL,
	[AIRPORT_R_DATE] [varchar](8) NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT_B] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[F_DATE] [varchar](8) NULL,
	[F_FLAG] [varchar](1) NULL,
	[AIRPORT_A_CNT] [int] NULL,
	[AIRPORT_B_CNT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMD_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMD_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMD_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMD_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMD_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMD_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMS](
	[ID_NO] [varchar](11) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[RSS_A_CNT] [int] NULL,
	[RSS_B_CNT] [int] NULL,
	[RSS_C_CNT] [int] NULL,
	[RSS_D_CNT] [int] NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[RSS_CNT_B] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_S_DATE] [varchar](8) NULL,
	[AIRPORT_R_DATE] [varchar](8) NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT_B] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[AIRPORT_A_CNT] [int] NULL,
	[AIRPORT_B_CNT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[LAST_PUR_DATE] [varchar](8) NULL,
	[LAST_CARD_NO] [varchar](16) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMS_DIFF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMS_DIFF](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMS_JOCS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMS_JOCS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_XTMS_MIATC]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_XTMS_MIATC](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[ROWCNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Year_Consumption_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Year_Consumption_Account](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Year] [varchar](4) NOT NULL,
	[This_Year_Amount] [decimal](18, 0) NULL,
	[Last_Year_Amount] [decimal](18, 0) NULL,
	[Jan_Amount] [decimal](18, 0) NULL,
	[Feb_Amount] [decimal](18, 0) NULL,
	[March_Amount] [decimal](18, 0) NULL,
	[April_Amount] [decimal](18, 0) NULL,
	[May_Amount] [decimal](18, 0) NULL,
	[June_Amount] [decimal](18, 0) NULL,
	[July_Amount] [decimal](18, 0) NULL,
	[Aug_Amount] [decimal](18, 0) NULL,
	[Sep_Amount] [decimal](18, 0) NULL,
	[Oct_Amount] [decimal](18, 0) NULL,
	[Nov_Amount] [decimal](18, 0) NULL,
	[Dec_Amount] [decimal](18, 0) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Year_Consumption_Account] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Year_Consumption_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Year_Consumption_Card](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Year] [varchar](4) NOT NULL,
	[This_Year_Amount] [decimal](18, 0) NULL,
	[Last_Year_Amount] [decimal](18, 0) NULL,
	[Jan_Amount] [decimal](18, 0) NULL,
	[Feb_Amount] [decimal](18, 0) NULL,
	[March_Amount] [decimal](18, 0) NULL,
	[April_Amount] [decimal](18, 0) NULL,
	[May_Amount] [decimal](18, 0) NULL,
	[June_Amount] [decimal](18, 0) NULL,
	[July_Amount] [decimal](18, 0) NULL,
	[Aug_Amount] [decimal](18, 0) NULL,
	[Sep_Amount] [decimal](18, 0) NULL,
	[Oct_Amount] [decimal](18, 0) NULL,
	[Nov_Amount] [decimal](18, 0) NULL,
	[Dec_Amount] [decimal](18, 0) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Year_Consumption_Card] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Year_Extra_Service_Level_Account]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Year_Extra_Service_Level_Account](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Year] [varchar](4) NOT NULL,
	[Jan_Level] [varchar](5) NULL,
	[Feb_Level] [varchar](5) NULL,
	[March_Level] [varchar](5) NULL,
	[April_Level] [varchar](5) NULL,
	[May_Level] [varchar](5) NULL,
	[June_Level] [varchar](5) NULL,
	[July_Level] [varchar](5) NULL,
	[Aug_Level] [varchar](5) NULL,
	[Sep_Level] [varchar](5) NULL,
	[Oct_Level] [varchar](5) NULL,
	[Nov_Level] [varchar](5) NULL,
	[Dec_Level] [varchar](5) NULL,
	[Last_Tour_Fee_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Year_Extra_Service_Level_Account] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Year_Extra_Service_Level_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Year_Extra_Service_Level_Card](
	[Relationship_Id] [varchar](19) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Year] [varchar](4) NOT NULL,
	[Jan_Level] [varchar](5) NULL,
	[Feb_Level] [varchar](5) NULL,
	[March_Level] [varchar](5) NULL,
	[April_Level] [varchar](5) NULL,
	[May_Level] [varchar](5) NULL,
	[June_Level] [varchar](5) NULL,
	[July_Level] [varchar](5) NULL,
	[Aug_Level] [varchar](5) NULL,
	[Sep_Level] [varchar](5) NULL,
	[Oct_Level] [varchar](5) NULL,
	[Nov_Level] [varchar](5) NULL,
	[Dec_Level] [varchar](5) NULL,
	[Last_Tour_Fee_Date] [varchar](8) NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_M_Year_Extra_Service_Level] PRIMARY KEY CLUSTERED 
(
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Year_Priority_Pass]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Year_Priority_Pass](
	[Card_No] [varchar](19) NULL,
	[PP_Card_Type] [varchar](2) NULL,
	[PP_Card_No] [varchar](18) NULL,
	[Year] [varchar](4) NULL,
	[Last_Use_Date] [varchar](8) NULL,
	[Last_Country] [varchar](10) NULL,
	[Last_City] [varchar](10) NULL,
	[This_Year_Total_Used] [int] NULL,
	[This_Year_Total_Accompany] [int] NULL,
	[This_Year_Redeem_Point] [int] NULL,
	[This_Year_Paid_Amt] [int] NULL,
	[Last_Year_Total_Used] [int] NULL,
	[Last_Year_Total_Accompany] [int] NULL,
	[Last_Year_Redeem_Point] [int] NULL,
	[Last_Year_Paid_Amt] [int] NULL,
	[This_Year_Self_Paid_Times] [int] NULL,
	[Last_Year_Self_Paid_Times] [int] NULL,
	[Del_Flag] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_ACCT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_ACCT](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[ACCT_ID] [varchar](19) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[LAST_STMT_DATE] [varchar](8) NULL,
	[STATUS] [varchar](1) NULL,
	[BLOCK_CODE_1] [varchar](1) NULL,
	[BLOCK_CODE_2] [varchar](2) NULL,
	[BLOCK_DATE_1] [varchar](8) NULL,
	[BLOCK_DATE_2] [varchar](8) NULL,
	[BILLING_CYCLE] [varchar](2) NULL,
	[HISTORY] [varchar](48) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_APAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_APAN](
	[Batch_No] [varchar](20) NULL,
	[Card_No] [varchar](19) NULL,
	[Applepay_No] [varchar](19) NULL,
	[Card_Status] [varchar](1) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Expire_Date] [varchar](8) NULL,
	[Oppost_Reason] [varchar](2) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Oppost_Time] [varchar](6) NULL,
	[Oppost_User] [varchar](8) NULL,
	[Update_Reason] [varchar](1) NULL,
	[Tel_Gsm] [varchar](10) NULL,
	[Q9_Msg_Rsn_Code] [varchar](4) NULL,
	[Q8_38] [varchar](24) NULL,
	[Q8_Q4] [varchar](11) NULL,
	[Q8_05] [varchar](32) NULL,
	[Card_No_Old] [varchar](16) NULL,
	[Master_Seq] [int] NULL,
	[Master_Seq_Old] [int] NULL,
	[Create_Date] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_ARMX]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_ARMX](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[DESCR] [varchar](40) NULL,
	[DC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_AULG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_AULG](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[TRANS_AMT] [int] NULL,
	[TRANS_DATE] [varchar](8) NULL,
	[TRANS_TIME] [varchar](6) NULL,
	[MERCH_DECS] [varchar](40) NULL,
	[AUTH_DATE] [varchar](8) NULL,
	[AUTH_TIME] [varchar](6) NULL,
	[AUTH_CODE] [varchar](6) NULL,
	[TOT_DOTS] [int] NULL,
	[POINTS_REDEMPTION] [int] NULL,
	[POINTS_AMT_SIGN] [varchar](1) NULL,
	[POINTS_AMT] [int] NULL,
	[MCHT_NO] [varchar](15) NULL,
	[AUTHORIZE_REASON] [varchar](2) NULL,
	[SOURCE_COUNTRY] [varchar](3) NULL,
	[CURRENCY_CODE] [varchar](3) NULL,
	[CURRENCY_RATE] [int] NULL,
	[ENTRY_MODE] [varchar](4) NULL,
	[POS_FLAG] [varchar](1) NULL,
	[ACQUIR_ID] [varchar](7) NULL,
	[MCC_CODE] [varchar](4) NULL,
	[PURCHASE_REGION] [varchar](1) NULL,
	[REVERSAL_FLAG] [varchar](1) NULL,
	[TERM_ID] [varchar](8) NULL,
	[ENTRY_COND] [varchar](2) NULL,
	[TOKEN_EC_FLAG] [varchar](1) NULL,
	[POSTAL_CODE] [varchar](10) NULL,
	[MANUAL_AUTH_CANCEL] [varchar](1) NULL,
	[ECC_FLAG] [varchar](1) NULL,
	[EDC_CNT] [int] NULL,
	[EDC_AMT_1ST] [int] NULL,
	[EDC_AMT] [int] NULL,
	[EDC_FEE] [int] NULL,
	[PROD_NAME] [varchar](20) NULL,
	[PROD_CNT] [int] NULL,
	[PROD_CODE] [varchar](8) NULL,
	[TRAN_LDATE] [varchar](4) NULL,
	[TRAN_LTIME] [varchar](6) NULL,
	[TX_TYPE] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_B162]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_B162](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[APPROVAL_NO] [varchar](6) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_B233A]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_B233A](
	[B233A_DATE] [date] NULL,
	[B233A_DOT_CNT_0] [varchar](7) NULL,
	[B233A_ID_CNT] [varchar](7) NULL,
	[B233A_DOT_CNT_1] [varchar](7) NULL,
	[B233A_DOT_CNT_2] [varchar](7) NULL,
	[B233A_DOT_TOT] [varchar](10) NULL,
	[B233A_DOT_JAA] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_BMSG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_BMSG](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[BILL_DESC] [varchar](40) NULL,
	[ROLLOUT_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[FORCE_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_C147]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_C147](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_NO] [varchar](16) NULL,
	[NCCC_ATFY_CODE] [varchar](4) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[FIRST_PUR_DATE] [varchar](8) NULL,
	[FIRST_PUR_AMT_SIGN] [varchar](1) NULL,
	[FIRST_PUR_AMT] [int] NULL,
	[MERCHANT_NO] [varchar](15) NULL,
	[AUHI_PUR_DATE] [varchar](8) NULL,
	[AUHI_PUR_AMT_SIGN] [varchar](1) NULL,
	[AUHI_PUR_AMT] [int] NULL,
	[AUHI_MERCHANT_NO] [varchar](15) NULL,
	[AUHI_PUR_CNT_SIGN] [varchar](1) NULL,
	[AUHI_PUR_CNT] [int] NULL,
	[FEEDBACK_FLAG] [varchar](1) NULL,
	[AUHI_FEEDBACK_FLAG] [varchar](1) NULL,
	[NEW_FLAG] [varchar](1) NULL,
	[APPLY_NO6] [varchar](6) NULL,
	[FIRST_REWARD_NO] [varchar](4) NULL,
	[FLAG_801] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_CALT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_CALT](
	[BATCH_NO] [varchar](20) NULL,
	[DFPNO] [varchar](9) NULL,
	[ENG_NAME] [varchar](25) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[IDNO] [varchar](10) NULL,
	[ENRLCD] [varchar](2) NULL,
	[MMNO] [varchar](12) NULL,
	[CMPLELE_JULIAN_DATE] [varchar](7) NULL,
	[CMPLELE_SEQ_NO] [varchar](2) NULL,
	[REQUEST_DATA_TIME] [varchar](26) NULL,
	[TRANSLATE_MILE] [int] NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_CARD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_CARD](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[ACCOUNT_ID] [varchar](19) NULL,
	[CUST_ID] [varchar](19) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[STATUS] [varchar](1) NULL,
	[APPLY_DATE] [varchar](8) NULL,
	[ISSUE_DATE] [varchar](8) NULL,
	[EXPIRE_DATE] [varchar](6) NULL,
	[OPEN_DATE] [varchar](8) NULL,
	[REISSUE_DATE] [varchar](8) NULL,
	[CHANGE_DATE] [varchar](8) NULL,
	[FIRST_USE_DATE] [varchar](8) NULL,
	[NEW_CARD_NO] [varchar](19) NULL,
	[OLD_CARD_NO] [varchar](19) NULL,
	[OPPOST_REASON] [varchar](2) NULL,
	[BLOCK_CODE] [varchar](1) NULL,
	[BLOCK_CODE_DATE] [varchar](8) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL,
	[EMBR_NAME_1] [varchar](40) NULL,
	[EMBOSSED_NAME_1] [varchar](26) NULL,
	[PROD_NO] [varchar](4) NULL,
	[NCCC_AFTY_CODE] [varchar](4) NULL,
	[LAST_EASY_CARD] [varchar](16) NULL,
	[DTS_NO] [varchar](8) NULL,
	[LAST_TRAN_DATE] [varchar](8) NULL,
	[INTRO_ID] [varchar](11) NULL,
	[MEMBER_SINCE] [varchar](8) NULL,
	[PROMOTE_DEPT] [varchar](4) NULL,
	[PROMOTE_PRPJ_NO] [varchar](4) NULL,
	[PRPJ_CHI_NAME] [varchar](22) NULL,
	[JCBRC_CHI_NAME] [varchar](22) NULL,
	[APPL_NO] [varchar](12) NULL,
	[OPPOST_DATE] [varchar](8) NULL,
	[DATE_OPENED] [varchar](8) NULL,
	[FIRST_FLAG] [varchar](1) NULL,
	[LAST_TRANS_DATE_1] [varchar](8) NULL,
	[FIRST_FLAG_2] [varchar](1) NULL,
	[SPRD_NO] [varchar](6) NULL,
	[SPRD_CHI_NAME] [varchar](60) NULL,
	[SYSTEM_OPST_FLAG] [varchar](1) NULL,
	[PROMOTE_EMP_NO] [varchar](11) NULL,
	[PROMOTE_CHI_NAME] [varchar](12) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_CODE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_CODE](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](8) NULL,
	[CHI_NAME] [varchar](42) NULL,
	[PROD_MERC_NO] [varchar](4) NULL,
	[PROD_COST] [int] NULL,
	[PROD_CNT] [int] NULL,
	[PROD_DOT] [int] NULL,
	[PROD_CNT_CHECK] [varchar](1) NULL,
	[PROD_REMARK] [varchar](42) NULL,
	[PROD_CASH] [int] NULL,
	[PLAT_FLAG] [varchar](1) NULL,
	[BIRTH_FLAG] [varchar](1) NULL,
	[AFTY_CODE] [varchar](4) NULL,
	[EXPIRE_DATE] [varchar](8) NULL,
	[SKIP_FLAG] [varchar](1) NULL,
	[PROD_MILE] [int] NULL,
	[FIRST_DOT] [int] NULL,
	[OTHER_FLAG] [varchar](1) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[BONUS_AMT] [int] NULL,
	[BONUS_MM_CNT] [int] NULL,
	[BONUS_DOT_LIMIT] [int] NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_CUST]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_CUST](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[NAME_LINE_1] [varchar](40) NULL,
	[NAME_LINE_2] [varchar](40) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[GENDER_CODE] [varchar](1) NULL,
	[TEL_OFFICE] [varchar](20) NULL,
	[TEL_HOME] [varchar](20) NULL,
	[STMT_SEND_TYPE] [varchar](1) NULL,
	[RESIDENT_ZIP_CODE] [varchar](5) NULL,
	[RESIDENT_ADDR_1] [varchar](40) NULL,
	[RESIDENT_ADDR_2] [varchar](40) NULL,
	[RESIDENT_ADDR_3] [varchar](40) NULL,
	[MAIL_ZIP_CODE] [varchar](5) NULL,
	[MAIL_ADDR_1] [varchar](40) NULL,
	[MAIL_ADDR_2] [varchar](40) NULL,
	[MAIL_ADDR_3] [varchar](40) NULL,
	[COMPANY_ZIP_CODE] [varchar](5) NULL,
	[COMPANY_ADDR_1] [varchar](40) NULL,
	[COMPANY_ADDR_2] [varchar](40) NULL,
	[COMPANY_ADDR_3] [varchar](40) NULL,
	[E_MAIL] [varchar](60) NULL,
	[CUST_0031_A_YY] [varchar](2) NULL,
	[CUST_0031_B_YY] [varchar](2) NULL,
	[CUST_0079_BIR_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DOBF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DOBF](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[SEQ] [int] NULL,
	[CARD_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[STATION_NO] [varchar](5) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[DOTS_OVER] [int] NULL,
	[CARD_NAME] [varchar](20) NULL,
	[CARD_LEVEL] [varchar](4) NULL,
	[RESULT] [varchar](2) NULL,
	[SERVICE_NO] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DOBS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DOBS](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[SEQ] [int] NULL,
	[CARD_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[STATION_NO] [varchar](5) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[DOTS_OVER] [int] NULL,
	[CARD_NAME] [varchar](20) NULL,
	[CARD_LEVEL] [varchar](4) NULL,
	[SERVICE_NO] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DODD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DODD](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[ACCT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CAR_NO] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[LAST_IN_DATE] [varchar](8) NULL,
	[LAST_OUT_DATE] [varchar](8) NULL,
	[LAST_USE_DAY] [int] NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[TRAN_AMT] [int] NULL,
	[USE_DAY_B] [int] NULL,
	[USE_CNT_B] [int] NULL,
	[LAST_IN_DATE_C] [varchar](8) NULL,
	[LAST_IN_TIME_C] [varchar](6) NULL,
	[LAST_OUT_DATE_C] [varchar](8) NULL,
	[LAST_OUT_TIME_C] [varchar](6) NULL,
	[LAST_USE_HOUR_C] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[TRAN_AMT_C] [int] NULL,
	[USE_CNT_B_C] [int] NULL,
	[USE_HOUR_B_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DODO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DODO](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[TRAN_AMT] [int] NULL,
	[USE_DAY_B] [int] NULL,
	[USE_CNT_B] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[TRAN_AMT_C] [int] NULL,
	[USE_CNT_B_C] [int] NULL,
	[USE_HOUR_B_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DOLG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DOLG](
	[BATCH_NO] [varchar](20) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ACCOUNT_NO] [varchar](19) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_TIME] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[SEQ_NO] [int] NULL,
	[TYPE] [varchar](1) NULL,
	[CHANGE_DOT_SIGN] [varchar](1) NULL,
	[CHANGE_DOT] [int] NULL,
	[END_DOT_SIGN] [varchar](1) NULL,
	[END_DOT] [int] NULL,
	[CREATE_REASON] [nvarchar](50) NULL,
	[GU_FLAG] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DOTS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DOTS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[SEQ_NO] [int] NULL,
	[BEG_DOT_SIGN] [varchar](1) NULL,
	[BEG_DOT] [int] NULL,
	[END_DOT_SIGN] [varchar](1) NULL,
	[END_DOT] [int] NULL,
	[ADD_DOT] [int] NULL,
	[CANCEL_DOT] [int] NULL,
	[CANCEL_USER] [varchar](8) NULL,
	[CANCEL_REASON] [varchar](22) NULL,
	[CREATE_REASON] [varchar](22) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[CASH_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_DVIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_DVIP](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [nchar](19) NULL,
	[THIS_YY_AMT_SIGN] [varchar](1) NULL,
	[THIS_YY_AMT] [int] NULL,
	[PREV_YY_AMT_SIGN] [varchar](1) NULL,
	[PREV_YY_AMT] [int] NULL,
	[THIS_MM_AMT_SIGN] [varchar](1) NULL,
	[THIS_MM_AMT] [int] NULL,
	[THIS_1M_AMT_SIGN] [varchar](1) NULL,
	[THIS_1M_AMT] [int] NULL,
	[THIS_2M_AMT_SIGN] [varchar](1) NULL,
	[THIS_2M_AMT] [int] NULL,
	[THIS_3M_AMT_SIGN] [varchar](1) NULL,
	[THIS_3M_AMT] [int] NULL,
	[THIS_4M_AMT_SIGN] [varchar](1) NULL,
	[THIS_4M_AMT] [int] NULL,
	[THIS_5M_AMT_SIGN] [varchar](1) NULL,
	[THIS_5M_AMT] [int] NULL,
	[THIS_6M_AMT_SIGN] [varchar](1) NULL,
	[THIS_6M_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_E123]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_E123](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](11) NULL,
	[CARD_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPL_NO] [varchar](12) NULL,
	[ISSUE_DATE] [varchar](8) NULL,
	[END_DATE] [varchar](8) NULL,
	[FLAG] [varchar](1) NULL,
	[FEEDBACK_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_E149]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_E149](
	[BATCH_NO] [varchar](20) NOT NULL,
	[MAJOR_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[CARD_NO] [varchar](16) NULL,
	[EASY_CARD_NO] [varchar](16) NULL,
	[AMT_SIGN] [varchar](1) NULL,
	[AMT] [int] NULL,
	[PYBT_AMT_SIGN] [varchar](1) NULL,
	[PYBT_AMT] [int] NULL,
	[FEEDBACK_AMT_SIGN] [varchar](1) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[PROC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_E151]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_E151](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[YYYYMM] [varchar](6) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL,
	[USE_BEGIN_DATE] [varchar](8) NULL,
	[USE_BEGIN_TIME] [varchar](6) NULL,
	[USE_BEGIN_AMT_SIGN] [varchar](1) NULL,
	[USE_BEGIN_AMT] [int] NULL,
	[PAY_TYPE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_E152]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_E152](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](10) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[PAY_TYPE] [varchar](2) NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_CYCLE] [varchar](2) NULL,
	[ACCOUNT_ID] [varchar](11) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_E167]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_E167](
	[BATCH_NO] [varchar](20) NOT NULL,
	[TYPE] [varchar](1) NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[UPLOAD_DATE] [varchar](8) NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_BEGIN_DATE] [varchar](8) NULL,
	[USE_BEGIN_TIME] [varchar](6) NULL,
	[USE_BEGIN_AMT_SIGN] [varchar](1) NULL,
	[USE_BEGIN_AMT] [int] NULL,
	[USE_BEGIN_AUTH] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[INST_CNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_E168]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_E168](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[DATA_DATE] [varchar](8) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_GRE1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_GRE1](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[MEMBER_NO] [varchar](10) NULL,
	[CHI_NAME] [varchar](20) NULL,
	[ENG_NAME_LAST] [varchar](25) NULL,
	[ENG_NAME_FIRST] [varchar](25) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TEL_NO] [varchar](10) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[ADDR_1] [varchar](30) NULL,
	[ADDR_2] [varchar](30) NULL,
	[ADDR_3] [varchar](30) NULL,
	[ADDR_4] [varchar](30) NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_GRE2]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_GRE2](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_KIND] [varchar](2) NULL,
	[CARD_NO] [varchar](19) NULL,
	[CR_DR] [varchar](1) NULL,
	[MEMBER_NO] [varchar](10) NULL,
	[PASSPORT_NO] [varchar](10) NULL,
	[ID_NO] [varchar](11) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[PRESENT_DATE] [varchar](8) NULL,
	[MILE_CNT] [int] NULL,
	[ENG_NAME] [varchar](25) NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_GREN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_GREN](
	[BATCH_NO] [varchar](20) NULL,
	[Id_No] [varchar](11) NULL,
	[Type] [varchar](3) NULL,
	[Member_No] [varchar](10) NULL,
	[Redeem_Cnt] [int] NULL,
	[Update_Date] [varchar](8) NULL,
	[Update_Time] [varchar](6) NULL,
	[Update_User] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_ICLG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_ICLG](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](18) NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_DATE_SEQ] [int] NULL,
	[CITY] [varchar](10) NULL,
	[COUNTRY] [varchar](10) NULL,
	[USE_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[TERM_NO] [varchar](16) NULL,
	[AMT_FLAG] [varchar](1) NULL,
	[AMT] [int] NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_ICLGUL]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_ICLGUL](
	[Batch_No] [varchar](20) NULL,
	[Card_No] [varchar](19) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Vip_Room_Name] [varchar](55) NULL,
	[Vip_Room_Code] [varchar](5) NULL,
	[Country] [varchar](20) NULL,
	[Use_Date] [varchar](8) NULL,
	[Use_People] [int] NULL,
	[Charge_Fee] [decimal](10, 2) NULL,
	[Carry_People] [int] NULL,
	[Carry_Fee] [decimal](10, 2) NULL,
	[Total_People] [int] NULL,
	[Total_Charge_Fee] [decimal](10, 2) NULL,
	[Invoice_No] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_ICLP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_ICLP](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TYPE] [varchar](2) NULL,
	[NO] [varchar](18) NULL,
	[CUST_ID] [varchar](19) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[EXPIRE_YYMM_BEG] [varchar](6) NULL,
	[EXPIRE_YYMM_END] [varchar](6) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[LOST_DATE] [varchar](8) NULL,
	[REISSUE_FLAG] [varchar](18) NULL,
	[REISSUE_NO] [varchar](18) NULL,
	[RENEW_DATE] [varchar](8) NULL,
	[EMERGENCY_FLAG] [varchar](1) NULL,
	[DOWNLOAD_DATE] [varchar](8) NULL,
	[DOWNLOAD_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_INST]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_INST](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TRAN_CODE] [varchar](4) NULL,
	[PURCHASE_AMT] [int] NULL,
	[INSTALLMENT_CNT] [int] NULL,
	[INSTALLMENT_AMT] [int] NULL,
	[INSTALLMENT_AMT_1ST] [int] NULL,
	[INSTALLMENT_AMT_LAST] [int] NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[DESCR] [varchar](42) NULL,
	[MERCHANT_ID] [varchar](15) NULL,
	[ORDER_NO] [varchar](12) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_J053]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_J053](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_J144]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_J144](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_KEY] [varchar](11) NULL,
	[REAL_CARD_NO] [varchar](16) NULL,
	[TRANSACTION_CODE] [varchar](2) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[AUTH] [varchar](6) NULL,
	[SOURCE_AMT_SIGN] [varchar](1) NULL,
	[SOURCE_AMT] [int] NULL,
	[SOURCE_CURRENCY] [varchar](3) NULL,
	[FEEDBACK_AMT_SIGN] [varchar](1) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[FEEDBACK_MARK] [varchar](1) NULL,
	[STATEMENT_CYCLE] [varchar](2) NULL,
	[CYCLE_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_Jaam]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_Jaam](
	[Batch_No] [varchar](20) NULL,
	[Member_No] [varchar](10) NULL,
	[Relationship_Id] [varchar](11) NULL,
	[Company_Eng_Name] [varchar](40) NULL,
	[Flight_No] [varchar](6) NULL,
	[Last_Out_Date] [varchar](8) NULL,
	[Password] [varchar](6) NULL,
	[Old_Member_No] [varchar](10) NULL,
	[Eng_Name1] [varchar](25) NULL,
	[Eng_Name2] [varchar](25) NULL,
	[Update_Date] [varchar](8) NULL,
	[Update_Time] [varchar](6) NULL,
	[Updater] [varchar](8) NULL,
	[Eng_Mail_City] [varchar](20) NULL,
	[Eng_Mail_Zip] [varchar](5) NULL,
	[Eng_Mail_Addr1] [varchar](30) NULL,
	[Eng_Mail_Addr2] [varchar](30) NULL,
	[Eng_Mail_Addr3] [varchar](30) NULL,
	[Eng_Mail_Addr4] [varchar](30) NULL,
	[Eng_Comp_City] [varchar](20) NULL,
	[Eng_Comp_Zip] [varchar](5) NULL,
	[Eng_Comp_Addr1] [varchar](30) NULL,
	[Eng_Comp_Addr2] [varchar](30) NULL,
	[Eng_Comp_Addr3] [varchar](30) NULL,
	[Eng_Comp_Addr4] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_Jcsgre1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_Jcsgre1](
	[Batch_No] [varchar](20) NULL,
	[Id_No] [varchar](11) NULL,
	[Member_No] [varchar](10) NULL,
	[Chi_Name] [varchar](20) NULL,
	[Eng_Name_Last] [varchar](25) NULL,
	[Eng_Name_First] [varchar](25) NULL,
	[Card_No] [varchar](19) NULL,
	[Tel_No] [varchar](10) NULL,
	[Birth_Date] [varchar](8) NULL,
	[Addr1] [varchar](30) NULL,
	[Addr2] [varchar](30) NULL,
	[Addr3] [varchar](30) NULL,
	[Addr4] [varchar](30) NULL,
	[Preu_Date] [varchar](8) NULL,
	[Preu_No] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_Jcsgre2]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_Jcsgre2](
	[Batch_No] [varchar](20) NULL,
	[Card_Kind] [varchar](2) NULL,
	[Card_No] [varchar](19) NULL,
	[Cr_Dr] [varchar](1) NULL,
	[Member_No] [varchar](10) NULL,
	[Passport_No] [varchar](10) NULL,
	[Id_No] [varchar](11) NULL,
	[Birthday] [varchar](8) NULL,
	[Present_Date] [varchar](8) NULL,
	[Mile_Cnt] [int] NULL,
	[Eng_Name] [varchar](25) NULL,
	[Preu_Date] [varchar](8) NULL,
	[Preu_No] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_LOGO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_LOGO](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[BIN] [varchar](6) NULL,
	[DESCR] [varchar](30) NULL,
	[CARD_TYPE] [varchar](1) NULL,
	[CREDIT_DEBIT_FLAG] [varchar](1) NULL,
	[BUSINESS_FLAG] [varchar](1) NULL,
	[CARD_CODE] [varchar](1) NULL,
	[DUAL_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_Macotrn]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_Macotrn](
	[Batch_No] [varchar](20) NULL,
	[Rec_Type_H] [varchar](2) NULL,
	[Send_Julian_Date] [varchar](7) NULL,
	[Send_Time] [varchar](6) NULL,
	[Source_Code] [varchar](4) NULL,
	[Rec_Type_D] [varchar](2) NULL,
	[Rrgm_Id] [varchar](4) NULL,
	[Pfp_No] [varchar](9) NULL,
	[Eng_Name] [varchar](50) NULL,
	[Birth_Date] [varchar](8) NULL,
	[Id_No] [varchar](10) NULL,
	[Enrlcd] [varchar](2) NULL,
	[Mm_No] [varchar](12) NULL,
	[Cmplete_Julian_Date] [varchar](7) NULL,
	[Cmplete_Seq_No] [int] NULL,
	[Request_Date_Time] [varchar](26) NULL,
	[Translate_Mile] [int] NULL,
	[Pure_Date] [varchar](8) NULL,
	[Pure_No] [varchar](4) NULL,
	[Rec_Type_T] [varchar](2) NULL,
	[Total_Rec_Cnt] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_MCODE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_MCODE](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](4) NULL,
	[CHI_NAME] [varchar](42) NULL,
	[MERC_ZIP] [varchar](5) NULL,
	[MERC_ADDR_1] [varchar](26) NULL,
	[MERC_ADDR_2] [varchar](34) NULL,
	[MERC_ADDR_3] [varchar](22) NULL,
	[MERC_TEL_ZIP] [varchar](4) NULL,
	[MERC_TEL_NO] [varchar](8) NULL,
	[MERC_FAX_ZIP] [varchar](4) NULL,
	[MERC_FAX_NO] [varchar](8) NULL,
	[MERC_ID] [varchar](9) NULL,
	[MERC_CONN_MAN] [varchar](12) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_MDOTS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_MDOTS](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[DOTS_SIGN] [varchar](1) NULL,
	[DOTS] [int] NULL,
	[ADJUST_REASON] [varchar](20) NULL,
	[STMT_CYCLE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_MICLP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_MICLP](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TYPE] [varchar](2) NULL,
	[NO] [varchar](18) NULL,
	[CUST_ID] [varchar](19) NULL,
	[MAJOR_ID] [varchar](19) NOT NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[EXPIRE_YYMM_BEG] [varchar](6) NULL,
	[EXPIRE_YYMM_END] [varchar](6) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[LOST_DATE] [varchar](8) NULL,
	[REISSUE_FLAG] [varchar](1) NULL,
	[REISSUE_NO] [varchar](18) NULL,
	[RENEW_DATE] [varchar](8) NULL,
	[EMERGENCY_FLAG] [varchar](1) NULL,
	[USE_DATE] [varchar](8) NULL,
	[COUNTRY] [varchar](10) NULL,
	[CITY] [varchar](10) NULL,
	[USER_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[USER_DOTS] [int] NULL,
	[PAY_AMT] [int] NULL,
	[USER_CNT_B] [int] NULL,
	[OTHER_P_CNT_B] [int] NULL,
	[USER_DOTS_B] [int] NULL,
	[PAY_AMT_B] [int] NULL,
	[DOWNLOAD_DATE] [varchar](8) NULL,
	[DOWNLOAD_FLAG] [varchar](1) NULL,
	[CHG_USER_CNT] [int] NULL,
	[CHG_USER_CNT_B] [int] NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_MIRH]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_MIRH](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LAST_TOT_DOT_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT] [int] NULL,
	[CURR_DOT_SIGN] [varchar](1) NULL,
	[CURR_DOT] [int] NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[ADJ_DOT_SIGN] [varchar](1) NULL,
	[ADJ_DOT] [int] NULL,
	[THIS_TOT_DOT_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[CANCEL_DOT_SIGN] [varchar](1) NULL,
	[CANCEL_DOT] [int] NULL,
	[LAST_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_C] [int] NULL,
	[CURR_DOT_C_SIGN] [varchar](1) NULL,
	[CURR_DOT_C] [int] NULL,
	[USE_DOT_C_SIGN] [varchar](1) NULL,
	[USE_DOT_C] [int] NULL,
	[THIS_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[ADJ_DOT_C_SIGN] [varchar](1) NULL,
	[ADJ_DOT_C] [int] NULL,
	[CANCEL_DOT_C_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_C] [int] NULL,
	[LAST_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_G] [int] NULL,
	[CURR_DOT_G_SIGN] [varchar](1) NULL,
	[CURR_DOT_G] [int] NULL,
	[USE_DOT_G_SIGN] [varchar](1) NULL,
	[USE_DOT_G] [int] NULL,
	[THIS_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[ADJ_DOT_G_SIGN] [varchar](1) NULL,
	[ADJ_DOT_G] [int] NULL,
	[CANCEL_DOT_G_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_G] [int] NULL,
	[JAA_MILE_001_SIGN] [varchar](1) NULL,
	[JAA_MILE_001] [int] NULL,
	[JAA_MILE_002_SIGN] [varchar](1) NULL,
	[JAA_MILE_002] [int] NULL,
	[JAA_MILE_003_SIGN] [varchar](1) NULL,
	[JAA_MILE_003] [int] NULL,
	[JAA_MILE_999_SIGN] [varchar](1) NULL,
	[JAA_MILE_999] [int] NULL,
	[AUTO_DOTC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_MITM]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_MITM](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_NO] [varchar](16) NULL,
	[MILE_NO] [varchar](5) NULL,
	[MILES] [int] NULL,
	[SEND_JAA_FLAG] [varchar](1) NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[MEMBER_NO] [varchar](9) NULL,
	[ENG_NAME] [varchar](25) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[ID_NO] [varchar](11) NULL,
	[CHI_NAME] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_MMIR]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_MMIR](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID] [varchar](11) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[IN_AMT_SIGN] [varchar](1) NULL,
	[IN_AMT] [int] NULL,
	[ALL_AMT_SIGN] [varchar](1) NULL,
	[ALL_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_PREU]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_PREU](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[DATE_NO] [varchar](8) NULL,
	[SEQ_NO] [int] NULL,
	[PRESENT_CODE] [varchar](8) NULL,
	[KEY_1] [varchar](12) NULL,
	[PRESENT_NAME] [varchar](42) NULL,
	[PRESENT_DOT] [int] NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[PROD_CASH] [int] NULL,
	[EXPORT_DATE] [varchar](8) NULL,
	[EXPORT_NO] [varchar](3) NULL,
	[POST_SER_NO] [varchar](20) NULL,
	[BILL_DATE] [varchar](8) NULL,
	[BILL_NO] [varchar](3) NULL,
	[REVERSAL_DATE] [varchar](8) NULL,
	[REMARK] [varchar](42) NULL,
	[REVERSAL_FLAG] [varchar](1) NULL,
	[EX_ENTER_DATE] [varchar](8) NULL,
	[BI_ENTER_DATE] [varchar](8) NULL,
	[CASH_PAY_FLAG] [varchar](1) NULL,
	[ID_NO_1] [varchar](11) NULL,
	[B030B_FLAG] [varchar](1) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPROVAL_NO] [varchar](6) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[TOUCH_TYPE] [varchar](1) NULL,
	[ORDER_NO] [varchar](14) NULL,
	[DOWNLOAD_FLAG] [varchar](1) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_PTWH]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_PTWH](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ROW_TYPE] [varchar](1) NULL,
	[TYPE] [varchar](1) NULL,
	[TRANS_DATE] [varchar](8) NULL,
	[TRANS_TIME] [varchar](6) NULL,
	[SERIAL_NO] [varchar](14) NULL,
	[ORIG_TWHFS_DATE] [varchar](8) NULL,
	[PAY_CARD_NO] [varchar](16) NULL,
	[AUTH_CODE] [varchar](6) NULL,
	[STATION_ID] [varchar](2) NULL,
	[PNR_NO] [varchar](8) NULL,
	[TICKET_ID] [varchar](13) NULL,
	[AMOUNT] [int] NULL,
	[TRAIN_NO] [varchar](4) NULL,
	[DEPARTURE_STATION_ID] [varchar](2) NULL,
	[ARRIVAL_STATION_ID] [varchar](2) NULL,
	[SEAT_NO] [varchar](3) NULL,
	[DEPART_DATE] [varchar](8) NULL,
	[ORG_SERIAL_NO] [varchar](14) NULL,
	[ISSUE_STATION_ID] [varchar](2) NULL,
	[PLAN_CODE] [varchar](1) NULL,
	[CAR_NO] [varchar](2) NULL,
	[DISCOUNT_VALUE] [int] NULL,
	[TOTAL_TICKET_NO] [int] NULL,
	[TOTAL_AMOUNT] [int] NULL,
	[ACTION_CODE] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_PUBL]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_PUBL](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[TYPE] [varchar](1) NULL,
	[USER_NO] [varchar](16) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CARD_NO_OLD] [varchar](16) NULL,
	[USER_NO_OLD] [varchar](16) NULL,
	[REMARK] [varchar](42) NULL,
	[APPLY_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[DELETE_MARK] [varchar](1) NULL,
	[RESEND_FLAG] [varchar](1) NULL,
	[ENTER_DATE] [varchar](8) NULL,
	[COMMISSION_FLAG] [varchar](1) NULL,
	[PROC_OK_FLAG] [varchar](1) NULL,
	[DOT_DATE] [varchar](8) NULL,
	[ACH_SOURCE] [varchar](1) NULL,
	[ACH_FLAG] [varchar](1) NULL,
	[ACH_EMAIL_DATE] [varchar](8) NULL,
	[OLD_ACH_FLAG] [varchar](1) NULL,
	[KEEP_DATE] [varchar](8) NULL,
	[FEEDBACK_DATE] [varchar](8) NULL,
	[FLAG_049] [varchar](1) NULL,
	[FLAG_151] [varchar](1) NULL,
	[ACH_REASON] [varchar](2) NULL,
	[ACH_TIX] [varchar](3) NULL,
	[SYSTEM_DATE] [varchar](8) NULL,
	[SYSTEM_TIME] [varchar](6) NULL,
	[SYSTEM_USERS] [varchar](8) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_RELP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_RELP](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[PRIMARY_ACCOUNT_ID] [varchar](19) NULL,
	[STATUS] [varchar](1) NULL,
	[CYCLE] [varchar](2) NULL,
	[CHANGE_CYCLE] [varchar](2) NULL,
	[CHANGE_NEXT_CYCLE_DATE] [varchar](8) NULL,
	[HIGH_DELQ_JOCS] [varchar](2) NULL,
	[HIGH_DELQ_VP] [varchar](1) NULL,
	[NO_ACTIVE_CARD_FLAG] [varchar](1) NULL,
	[CC_FLAG] [varchar](1) NULL,
	[DELQ_FLAG] [varchar](1) NULL,
	[OUTN_DOTS_CHANGE_FLAG] [varchar](1) NULL,
	[DEDUCT_TYPE] [varchar](1) NULL,
	[DEDUCT_BANK] [varchar](4) NULL,
	[DEDUCT_OPEN_DATE] [varchar](8) NULL,
	[DEDUCT_STOP_DATE] [varchar](8) NULL,
	[VIP_N_FLAG] [varchar](1) NULL,
	[VIP_N_START_DATE] [varchar](8) NULL,
	[VIP_N_END_DATE] [varchar](8) NULL,
	[VIP_D_FLAG] [varchar](1) NULL,
	[VIP_D_START_DATE] [varchar](8) NULL,
	[VIP_D_END_DATE] [varchar](8) NULL,
	[VIP_DEDUCT_FLAG] [varchar](1) NULL,
	[VIP_D_MARK] [varchar](10) NULL,
	[STAT_CNTL_CODE] [varchar](2) NULL,
	[STAT_CNTL_START_DTAE] [varchar](6) NULL,
	[STAT_CNTL_END_DTAE] [varchar](6) NULL,
	[INFO_BILL_FLAG] [varchar](50) NULL,
	[INFO_BILL_DATE] [varchar](8) NULL,
	[KEEP_SEND_FLAG] [varchar](1) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[MH_RELP] ADD [Dot_Account_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [Cancel_Dot_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [Ebilling_First_Apply_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [Vip_Room_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [Free_Vip_Start_Date] [varchar](8) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [Free_Vip_End_Date] [varchar](8) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[MH_RELP] ADD [ESTMT_1ST_USAGE_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [GOOGLE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [APPLE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [HCE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [GOOGLE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [APPLE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [HCE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [NO_ACTIVITY_CARD_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MH_RELP] ADD [RESALE_FLAG] [varchar](1) NULL
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_SKSD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_SKSD](
	[Batch_No] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](6) NULL,
	[Seq_No] [varchar](14) NULL,
	[Org_Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Channel] [varchar](2) NULL,
	[Booking_No] [varchar](8) NULL,
	[Ticket_No] [varchar](13) NULL,
	[Ticket_Amount] [int] NULL,
	[Tran_No] [varchar](4) NULL,
	[Departure_Station] [varchar](2) NULL,
	[Arrival_Station] [varchar](2) NULL,
	[Seat_No] [varchar](3) NULL,
	[Travel_Date] [varchar](8) NULL,
	[Car_No] [varchar](2) NULL,
	[Ticket_Diff_Amt] [int] NULL,
	[Ticket_Count] [int] NULL,
	[Pay_Amount] [int] NULL,
	[Pickup_Station] [varchar](2) NULL,
	[Org_Seq_No] [varchar](14) NULL,
	[Act_Id] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_SKUP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_SKUP](
	[Batch_No] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](6) NULL,
	[Seq_No] [varchar](14) NULL,
	[Org_Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Channel] [varchar](2) NULL,
	[Booking_No] [varchar](8) NULL,
	[Ticket_No] [varchar](13) NULL,
	[Ticket_Amount] [int] NULL,
	[Tran_No] [varchar](4) NULL,
	[Departure_Station] [varchar](2) NULL,
	[Arrival_Station] [varchar](2) NULL,
	[Seat_No] [varchar](3) NULL,
	[Travel_Date] [varchar](8) NULL,
	[Org_Seq_No] [varchar](14) NULL,
	[Ticket_Unit] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_SPRES]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_SPRES](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[PRESENT_CODE] [varchar](6) NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[ID_NO_1] [varchar](11) NULL,
	[B030B_FLAG] [varchar](1) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[TOUCH_TYPE] [varchar](1) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_STBO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_STBO](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[ADJUST_REASON] [varchar](20) NULL,
	[ADJUST_REASON_C] [varchar](20) NULL,
	[KEEP_DAYS_SIGN] [varchar](1) NULL,
	[KEEP_DAYS] [int] NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[TICKET_NO] [varchar](8) NULL,
	[CARD_CREATE_DATE] [varchar](8) NULL,
	[REPT_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_TPAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_TPAN](
	[Batch_No] [varchar](20) NULL,
	[Wallet_Id] [varchar](32) NULL,
	[Card_No] [varchar](19) NULL,
	[Tpan_No] [varchar](19) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Expire_Date] [varchar](8) NULL,
	[Card_Status] [varchar](1) NULL,
	[Oppost_Reason] [varchar](2) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Oppost_Time] [varchar](6) NULL,
	[Oppost_User] [varchar](8) NULL,
	[Open_Date] [varchar](8) NULL,
	[Open_Time] [varchar](6) NULL,
	[Open_Flag] [varchar](1) NULL,
	[Update_Reason] [varchar](1) NULL,
	[Sir] [varchar](36) NULL,
	[Tel_Gsm] [varchar](10) NULL,
	[Event_Type] [varchar](2) NULL,
	[Sir_Status] [varchar](2) NULL,
	[Sir_Update_Date] [varchar](8) NULL,
	[Sir_Update_Time] [varchar](6) NULL,
	[Hce_Oppost_Type] [varchar](1) NULL,
	[Hce_Sir_Status] [varchar](2) NULL,
	[Hce_Exestatus] [varchar](30) NULL,
	[Hce_Update_Date] [varchar](8) NULL,
	[Hce_Update_Time] [varchar](6) NULL,
	[Operation] [varchar](3) NULL,
	[Open_Password] [varchar](6) NULL,
	[Create_Date] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_TRAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_TRAN](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[DEST_AMOUNT] [int] NULL,
	[SOURCE_AMOUNT] [decimal](18, 2) NULL,
	[EFF_DATE] [varchar](8) NULL,
	[POSTING_DATE] [varchar](8) NULL,
	[SOURCE_CURRENY_CODE] [varchar](3) NULL,
	[DEST_CURRENY_CODE] [varchar](3) NULL,
	[DESCR] [varchar](40) NULL,
	[MERCHANT_COUNTRY_CODE] [varchar](3) NULL,
	[MERCHANT_ID] [varchar](15) NULL,
	[ENTYR_MODE] [varchar](3) NULL,
	[TERMINAL_ID] [varchar](15) NULL,
	[MCC_CODE] [varchar](5) NULL,
	[ACTIONPAY_FLAG] [varchar](1) NULL,
	[TPAN_NO] [varchar](16) NULL,
	[LOT_NO] [varchar](7) NULL,
	[BILL_TYPE] [varchar](1) NULL,
	[FILM_NO] [varchar](23) NULL,
	[TXN_AUTH_TYPE] [varchar](2) NULL,
	[TXN_AUTH_CODE] [varchar](6) NULL,
	[EC_IND] [varchar](1) NULL,
	[UCAF_IND] [varchar](3) NULL,
	[ENG_DESC] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_XTMD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_XTMD](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[ACCT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CAR_NO] [varchar](8) NULL,
	[CAR_KIND] [varchar](2) NULL,
	[CAR_COLOR] [varchar](2) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[CHARGE_FLAG] [varchar](1) NULL,
	[MOTOR_FLAG] [varchar](1) NULL,
	[LAST_POST_DATE] [varchar](8) NULL,
	[LAST_POST_AMT] [int] NULL,
	[TMS_NAME] [varchar](6) NULL,
	[TMS_NO] [varchar](5) NULL,
	[TMS_DATE] [varchar](8) NULL,
	[RSS_A_CNT] [int] NULL,
	[RSS_B_CNT] [int] NULL,
	[RSS_C_CNT] [int] NULL,
	[RSS_D_CNT] [int] NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[RSS_CNT_B] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_S_DATE] [varchar](8) NULL,
	[AIRPORT_R_DATE] [varchar](8) NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT_B] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[F_DATE] [varchar](8) NULL,
	[F_FLAG] [varchar](1) NULL,
	[AIRPORT_A_CNT] [int] NULL,
	[AIRPORT_B_CNT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MH_XTMS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MH_XTMS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[RSS_A_CNT] [int] NULL,
	[RSS_B_CNT] [int] NULL,
	[RSS_C_CNT] [int] NULL,
	[RSS_D_CNT] [int] NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[RSS_CNT_B] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_S_DATE] [varchar](8) NULL,
	[AIRPORT_R_DATE] [varchar](8) NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT_B] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[AIRPORT_A_CNT] [int] NULL,
	[AIRPORT_B_CNT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[LAST_PUR_DATE] [varchar](8) NULL,
	[LAST_CARD_NO] [varchar](16) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_ACCT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_ACCT](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LOGO] [varchar](3) NULL,
	[ACCT_ID] [varchar](19) NULL,
	[SHORT_NAME] [varchar](20) NULL,
	[LAST_STMT_DATE] [varchar](8) NULL,
	[STATUS] [varchar](1) NULL,
	[BLOCK_CODE_1] [varchar](1) NULL,
	[BLOCK_CODE_2] [varchar](2) NULL,
	[BLOCK_DATE_1] [varchar](8) NULL,
	[BLOCK_DATE_2] [varchar](8) NULL,
	[BILLING_CYCLE] [varchar](2) NULL,
	[HISTORY] [varchar](48) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_APAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_APAN](
	[Batch_No] [varchar](20) NULL,
	[Card_No] [varchar](19) NULL,
	[Applepay_No] [varchar](19) NULL,
	[Card_Status] [varchar](1) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Expire_Date] [varchar](8) NULL,
	[Oppost_Reason] [varchar](2) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Oppost_Time] [varchar](6) NULL,
	[Oppost_User] [varchar](8) NULL,
	[Update_Reason] [varchar](1) NULL,
	[Tel_Gsm] [varchar](10) NULL,
	[Q9_Msg_Rsn_Code] [varchar](4) NULL,
	[Q8_38] [varchar](24) NULL,
	[Q8_Q4] [varchar](11) NULL,
	[Q8_05] [varchar](32) NULL,
	[Card_No_Old] [varchar](16) NULL,
	[Master_Seq] [int] NULL,
	[Master_Seq_Old] [int] NULL,
	[Create_Date] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_ARMX]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_ARMX](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[DESCR] [varchar](40) NULL,
	[DC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_AULG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_AULG](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[TRANS_AMT] [int] NULL,
	[TRANS_DATE] [varchar](8) NULL,
	[TRANS_TIME] [varchar](6) NULL,
	[MERCH_DECS] [varchar](40) NULL,
	[AUTH_DATE] [varchar](8) NULL,
	[AUTH_TIME] [varchar](6) NULL,
	[AUTH_CODE] [varchar](6) NULL,
	[TOT_DOTS] [int] NULL,
	[POINTS_REDEMPTION] [int] NULL,
	[POINTS_AMT_SIGN] [varchar](1) NULL,
	[POINTS_AMT] [int] NULL,
	[MCHT_NO] [varchar](15) NULL,
	[AUTHORIZE_REASON] [varchar](2) NULL,
	[SOURCE_COUNTRY] [varchar](3) NULL,
	[CURRENCY_CODE] [varchar](3) NULL,
	[CURRENCY_RATE] [int] NULL,
	[ENTRY_MODE] [varchar](4) NULL,
	[POS_FLAG] [varchar](1) NULL,
	[ACQUIR_ID] [varchar](7) NULL,
	[MCC_CODE] [varchar](4) NULL,
	[PURCHASE_REGION] [varchar](1) NULL,
	[REVERSAL_FLAG] [varchar](1) NULL,
	[TERM_ID] [varchar](8) NULL,
	[ENTRY_COND] [varchar](2) NULL,
	[TOKEN_EC_FLAG] [varchar](1) NULL,
	[POSTAL_CODE] [varchar](10) NULL,
	[MANUAL_AUTH_CANCEL] [varchar](1) NULL,
	[ECC_FLAG] [varchar](1) NULL,
	[EDC_CNT] [int] NULL,
	[EDC_AMT_1ST] [int] NULL,
	[EDC_AMT] [int] NULL,
	[EDC_FEE] [int] NULL,
	[PROD_NAME] [varchar](20) NULL,
	[PROD_CNT] [int] NULL,
	[PROD_CODE] [varchar](8) NULL,
	[TRAN_LDATE] [varchar](4) NULL,
	[TRAN_LTIME] [varchar](6) NULL,
	[TX_TYPE] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_B162]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_B162](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[APPROVAL_NO] [varchar](6) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_B233A]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_B233A](
	[B233A_DATE] [date] NULL,
	[B233A_DOT_CNT_0] [varchar](7) NULL,
	[B233A_ID_CNT] [varchar](7) NULL,
	[B233A_DOT_CNT_1] [varchar](7) NULL,
	[B233A_DOT_CNT_2] [varchar](7) NULL,
	[B233A_DOT_TOT] [varchar](10) NULL,
	[B233A_DOT_JAA] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_BMSG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_BMSG](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[BILL_DESC] [varchar](40) NULL,
	[ROLLOUT_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[FORCE_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_C147]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_C147](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_NO] [varchar](16) NULL,
	[NCCC_ATFY_CODE] [varchar](4) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[FIRST_PUR_DATE] [varchar](8) NULL,
	[FIRST_PUR_AMT_SIGN] [varchar](1) NULL,
	[FIRST_PUR_AMT] [int] NULL,
	[MERCHANT_NO] [varchar](15) NULL,
	[AUHI_PUR_DATE] [varchar](8) NULL,
	[AUHI_PUR_AMT_SIGN] [varchar](1) NULL,
	[AUHI_PUR_AMT] [int] NULL,
	[AUHI_MERCHANT_NO] [varchar](15) NULL,
	[AUHI_PUR_CNT_SIGN] [varchar](1) NULL,
	[AUHI_PUR_CNT] [int] NULL,
	[FEEDBACK_FLAG] [varchar](1) NULL,
	[AUHI_FEEDBACK_FLAG] [varchar](1) NULL,
	[NEW_FLAG] [varchar](1) NULL,
	[APPLY_NO6] [varchar](6) NULL,
	[FIRST_REWARD_NO] [varchar](4) NULL,
	[FLAG_801] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_CALT]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_CALT](
	[BATCH_NO] [varchar](20) NULL,
	[DFPNO] [varchar](9) NULL,
	[ENG_NAME] [varchar](25) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[IDNO] [varchar](10) NULL,
	[ENRLCD] [varchar](2) NULL,
	[MMNO] [varchar](12) NULL,
	[CMPLELE_JULIAN_DATE] [varchar](7) NULL,
	[CMPLELE_SEQ_NO] [varchar](2) NULL,
	[REQUEST_DATA_TIME] [varchar](26) NULL,
	[TRANSLATE_MILE] [int] NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_CARD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_CARD](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[ACCOUNT_ID] [varchar](19) NULL,
	[CUST_ID] [varchar](19) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[STATUS] [varchar](1) NULL,
	[APPLY_DATE] [varchar](8) NULL,
	[ISSUE_DATE] [varchar](8) NULL,
	[EXPIRE_DATE] [varchar](6) NULL,
	[OPEN_DATE] [varchar](8) NULL,
	[REISSUE_DATE] [varchar](8) NULL,
	[CHANGE_DATE] [varchar](8) NULL,
	[FIRST_USE_DATE] [varchar](8) NULL,
	[NEW_CARD_NO] [varchar](19) NULL,
	[OLD_CARD_NO] [varchar](19) NULL,
	[OPPOST_REASON] [varchar](2) NULL,
	[BLOCK_CODE] [varchar](1) NULL,
	[BLOCK_CODE_DATE] [varchar](8) NULL,
	[CARDHOLDER_FLAG] [varchar](1) NULL,
	[EMBR_NAME_1] [varchar](40) NULL,
	[EMBOSSED_NAME_1] [varchar](26) NULL,
	[PROD_NO] [varchar](4) NULL,
	[NCCC_AFTY_CODE] [varchar](4) NULL,
	[LAST_EASY_CARD] [varchar](16) NULL,
	[DTS_NO] [varchar](8) NULL,
	[LAST_TRAN_DATE] [varchar](8) NULL,
	[INTRO_ID] [varchar](11) NULL,
	[MEMBER_SINCE] [varchar](8) NULL,
	[PROMOTE_DEPT] [varchar](4) NULL,
	[PROMOTE_PRPJ_NO] [varchar](4) NULL,
	[PRPJ_CHI_NAME] [varchar](22) NULL,
	[JCBRC_CHI_NAME] [varchar](22) NULL,
	[APPL_NO] [varchar](12) NULL,
	[OPPOST_DATE] [varchar](8) NULL,
	[DATE_OPENED] [varchar](8) NULL,
	[FIRST_FLAG] [varchar](1) NULL,
	[LAST_TRANS_DATE_1] [varchar](8) NULL,
	[FIRST_FLAG_2] [varchar](1) NULL,
	[SPRD_NO] [varchar](6) NULL,
	[SPRD_CHI_NAME] [varchar](60) NULL,
	[SYSTEM_OPST_FLAG] [varchar](1) NULL,
	[PROMOTE_EMP_NO] [varchar](11) NULL,
	[PROMOTE_CHI_NAME] [varchar](12) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_CODE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_CODE](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](8) NULL,
	[CHI_NAME] [varchar](42) NULL,
	[PROD_MERC_NO] [varchar](4) NULL,
	[PROD_COST] [int] NULL,
	[PROD_CNT] [int] NULL,
	[PROD_DOT] [int] NULL,
	[PROD_CNT_CHECK] [varchar](1) NULL,
	[PROD_REMARK] [varchar](42) NULL,
	[PROD_CASH] [int] NULL,
	[PLAT_FLAG] [varchar](1) NULL,
	[BIRTH_FLAG] [varchar](1) NULL,
	[AFTY_CODE] [varchar](4) NULL,
	[EXPIRE_DATE] [varchar](8) NULL,
	[SKIP_FLAG] [varchar](1) NULL,
	[PROD_MILE] [int] NULL,
	[FIRST_DOT] [int] NULL,
	[OTHER_FLAG] [varchar](1) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[BONUS_AMT] [int] NULL,
	[BONUS_MM_CNT] [int] NULL,
	[BONUS_DOT_LIMIT] [int] NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_CUST]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_CUST](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[NAME_LINE_1] [varchar](40) NULL,
	[NAME_LINE_2] [varchar](40) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[GENDER_CODE] [varchar](1) NULL,
	[TEL_OFFICE] [varchar](20) NULL,
	[TEL_HOME] [varchar](20) NULL,
	[STMT_SEND_TYPE] [varchar](1) NULL,
	[RESIDENT_ZIP_CODE] [varchar](5) NULL,
	[RESIDENT_ADDR_1] [varchar](40) NULL,
	[RESIDENT_ADDR_2] [varchar](40) NULL,
	[RESIDENT_ADDR_3] [varchar](40) NULL,
	[MAIL_ZIP_CODE] [varchar](5) NULL,
	[MAIL_ADDR_1] [varchar](40) NULL,
	[MAIL_ADDR_2] [varchar](40) NULL,
	[MAIL_ADDR_3] [varchar](40) NULL,
	[COMPANY_ZIP_CODE] [varchar](5) NULL,
	[COMPANY_ADDR_1] [varchar](40) NULL,
	[COMPANY_ADDR_2] [varchar](40) NULL,
	[COMPANY_ADDR_3] [varchar](40) NULL,
	[E_MAIL] [varchar](60) NULL,
	[CUST_0031_A_YY] [varchar](2) NULL,
	[CUST_0031_B_YY] [varchar](2) NULL,
	[CUST_0079_BIR_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DOBF]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DOBF](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[SEQ] [int] NULL,
	[CARD_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[STATION_NO] [varchar](5) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[DOTS_OVER] [int] NULL,
	[CARD_NAME] [varchar](20) NULL,
	[CARD_LEVEL] [varchar](4) NULL,
	[RESULT] [varchar](2) NULL,
	[SERVICE_NO] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DOBS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DOBS](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[SEQ] [int] NULL,
	[CARD_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[STATION_NO] [varchar](5) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[DOTS_OVER] [int] NULL,
	[CARD_NAME] [varchar](20) NULL,
	[CARD_LEVEL] [varchar](4) NULL,
	[SERVICE_NO] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DODD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DODD](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[ACCT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CAR_NO] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[LAST_IN_DATE] [varchar](8) NULL,
	[LAST_OUT_DATE] [varchar](8) NULL,
	[LAST_USE_DAY] [int] NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[TRAN_AMT] [int] NULL,
	[USE_DAY_B] [int] NULL,
	[USE_CNT_B] [int] NULL,
	[LAST_IN_DATE_C] [varchar](8) NULL,
	[LAST_IN_TIME_C] [varchar](6) NULL,
	[LAST_OUT_DATE_C] [varchar](8) NULL,
	[LAST_OUT_TIME_C] [varchar](6) NULL,
	[LAST_USE_HOUR_C] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[TRAN_AMT_C] [int] NULL,
	[USE_CNT_B_C] [int] NULL,
	[USE_HOUR_B_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DODO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DODO](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[USE_DAY] [int] NULL,
	[USE_CNT] [int] NULL,
	[USE_DOTS] [int] NULL,
	[TRAN_AMT] [int] NULL,
	[USE_DAY_B] [int] NULL,
	[USE_CNT_B] [int] NULL,
	[USE_CNT_C] [int] NULL,
	[USE_HOUR_C] [int] NULL,
	[USE_DOTS_C] [int] NULL,
	[TRAN_AMT_C] [int] NULL,
	[USE_CNT_B_C] [int] NULL,
	[USE_HOUR_B_C] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Dodome]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Dodome](
	[Batch_Type] [varchar](1) NULL,
	[Batch_No] [varchar](20) NULL,
	[Category] [varchar](1) NULL,
	[Station_Id] [varchar](5) NULL,
	[Card_No] [varchar](16) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Hours] [numeric](4, 1) NULL,
	[Free_Hours] [numeric](4, 1) NULL,
	[Park_Fee] [int] NULL,
	[Redeem_Hour] [numeric](4, 1) NULL,
	[Redeem_Point] [int] NULL,
	[Cust_Id] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Dodomf]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Dodomf](
	[Batch_Type] [varchar](1) NULL,
	[Batch_No] [varchar](20) NULL,
	[Acct_Id] [varchar](11) NULL,
	[Card_No] [varchar](16) NULL,
	[Seq_No] [int] NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Billing_Cycle] [varchar](1) NULL,
	[Station_Id] [varchar](5) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Hours] [numeric](4, 1) NULL,
	[Free_Hours] [numeric](4, 1) NULL,
	[Park_Fee] [int] NULL,
	[Redeem_Hour] [numeric](4, 1) NULL,
	[Redeem_Point] [int] NULL,
	[Overdraft_Point] [int] NULL,
	[Card_Name] [varchar](20) NULL,
	[Card_Level] [varchar](4) NULL,
	[Result] [varchar](2) NULL,
	[Auth_Code] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Dodoms]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Dodoms](
	[Batch_Type] [varchar](1) NULL,
	[Batch_No] [varchar](20) NULL,
	[Acct_Id] [varchar](11) NULL,
	[Card_No] [varchar](16) NULL,
	[Seq_No] [int] NULL,
	[Cardholder_Id] [varchar](11) NULL,
	[Billing_Cycle] [varchar](1) NULL,
	[Station_Id] [varchar](5) NULL,
	[In_Time] [varchar](12) NULL,
	[Out_Time] [varchar](12) NULL,
	[Park_Hours] [numeric](4, 1) NULL,
	[Free_Hours] [numeric](4, 1) NULL,
	[Park_Fee] [int] NULL,
	[Redeem_Hour] [numeric](4, 1) NULL,
	[Redeem_Point] [int] NULL,
	[Overdraft_Point] [int] NULL,
	[Card_Name] [varchar](20) NULL,
	[Card_Level] [varchar](4) NULL,
	[Auth_Code] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DOLG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DOLG](
	[BATCH_NO] [varchar](20) NULL,
	[ACCOUNT_TYPE] [varchar](1) NULL,
	[ACCOUNT_NO] [varchar](19) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_TIME] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[SEQ_NO] [int] NULL,
	[TYPE] [varchar](1) NULL,
	[CHANGE_DOT_SIGN] [varchar](1) NULL,
	[CHANGE_DOT] [int] NULL,
	[END_DOT_SIGN] [varchar](1) NULL,
	[END_DOT] [int] NULL,
	[CREATE_REASON] [nvarchar](50) NULL,
	[GU_FLAG] [varchar](5) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DOME]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DOME](
	[BATCH_NO] [varchar](20) NOT NULL,
	[SEQ] [varchar](1) NULL,
	[STATION_NO] [varchar](5) NULL,
	[CARD_NO] [varchar](16) NULL,
	[IN_TIME] [varchar](12) NULL,
	[OUT_TIME] [varchar](12) NULL,
	[STOP_HOUR] [int] NULL,
	[FREE_HOUR] [int] NULL,
	[PURCHASE_AMT] [int] NULL,
	[DOTS_HOUR] [int] NULL,
	[DOTS_USE] [int] NULL,
	[REASON] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DOTS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DOTS](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[SEQ_NO] [int] NULL,
	[BEG_DOT_SIGN] [varchar](1) NULL,
	[BEG_DOT] [int] NULL,
	[END_DOT_SIGN] [varchar](1) NULL,
	[END_DOT] [int] NULL,
	[ADD_DOT] [int] NULL,
	[CANCEL_DOT] [int] NULL,
	[CANCEL_USER] [varchar](8) NULL,
	[CANCEL_REASON] [varchar](22) NULL,
	[CREATE_REASON] [varchar](22) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[CASH_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_DVIP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_DVIP](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [nchar](19) NULL,
	[THIS_YY_AMT_SIGN] [varchar](1) NULL,
	[THIS_YY_AMT] [int] NULL,
	[PREV_YY_AMT_SIGN] [varchar](1) NULL,
	[PREV_YY_AMT] [int] NULL,
	[THIS_MM_AMT_SIGN] [varchar](1) NULL,
	[THIS_MM_AMT] [int] NULL,
	[THIS_1M_AMT_SIGN] [varchar](1) NULL,
	[THIS_1M_AMT] [int] NULL,
	[THIS_2M_AMT_SIGN] [varchar](1) NULL,
	[THIS_2M_AMT] [int] NULL,
	[THIS_3M_AMT_SIGN] [varchar](1) NULL,
	[THIS_3M_AMT] [int] NULL,
	[THIS_4M_AMT_SIGN] [varchar](1) NULL,
	[THIS_4M_AMT] [int] NULL,
	[THIS_5M_AMT_SIGN] [varchar](1) NULL,
	[THIS_5M_AMT] [int] NULL,
	[THIS_6M_AMT_SIGN] [varchar](1) NULL,
	[THIS_6M_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_E123]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_E123](
	[BATCH_NO] [varchar](20) NULL,
	[MAJOR_ID] [varchar](11) NULL,
	[CARD_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPL_NO] [varchar](12) NULL,
	[ISSUE_DATE] [varchar](8) NULL,
	[END_DATE] [varchar](8) NULL,
	[FLAG] [varchar](1) NULL,
	[FEEDBACK_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_E149]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_E149](
	[BATCH_NO] [varchar](20) NOT NULL,
	[MAJOR_ID] [varchar](11) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[CARD_NO] [varchar](16) NULL,
	[EASY_CARD_NO] [varchar](16) NULL,
	[AMT_SIGN] [varchar](1) NULL,
	[AMT] [int] NULL,
	[PYBT_AMT_SIGN] [varchar](1) NULL,
	[PYBT_AMT] [int] NULL,
	[FEEDBACK_AMT_SIGN] [varchar](1) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[PROC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_E151]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_E151](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[YYYYMM] [varchar](6) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL,
	[USE_BEGIN_DATE] [varchar](8) NULL,
	[USE_BEGIN_TIME] [varchar](6) NULL,
	[USE_BEGIN_AMT_SIGN] [varchar](1) NULL,
	[USE_BEGIN_AMT] [int] NULL,
	[PAY_TYPE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_E152]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_E152](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](10) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[PAY_TYPE] [varchar](2) NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_CYCLE] [varchar](2) NULL,
	[ACCOUNT_ID] [varchar](11) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_E167]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_E167](
	[BATCH_NO] [varchar](20) NOT NULL,
	[TYPE] [varchar](1) NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[UPLOAD_DATE] [varchar](8) NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_BEGIN_DATE] [varchar](8) NULL,
	[USE_BEGIN_TIME] [varchar](6) NULL,
	[USE_BEGIN_AMT_SIGN] [varchar](1) NULL,
	[USE_BEGIN_AMT] [int] NULL,
	[USE_BEGIN_AUTH] [varchar](8) NULL,
	[USE_END_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[INST_CNT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_E168]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_E168](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[DATA_DATE] [varchar](8) NULL,
	[STMT_CYCLE] [varchar](2) NULL,
	[REBACK_AMT_SIGN] [varchar](1) NULL,
	[REBACK_AMT] [int] NULL,
	[USE_AMT_SIGN] [varchar](1) NOT NULL,
	[USE_AMT] [int] NULL,
	[USE_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Extra_Service_Special_Lists]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Extra_Service_Special_Lists](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_No] [varchar](20) NOT NULL,
	[Card_No] [varchar](19) NOT NULL,
	[Extra_Service_Item] [varchar](15) NOT NULL,
	[Qty] [int] NOT NULL,
	[Date_Limit] [datetime] NULL,
	[Status] [varchar](1) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
 CONSTRAINT [PK_MT_Extra_Service_Special_Lists] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_GRE1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_GRE1](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[MEMBER_NO] [varchar](10) NULL,
	[CHI_NAME] [varchar](20) NULL,
	[ENG_NAME_LAST] [varchar](25) NULL,
	[ENG_NAME_FIRST] [varchar](25) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TEL_NO] [varchar](10) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[ADDR_1] [varchar](30) NULL,
	[ADDR_2] [varchar](30) NULL,
	[ADDR_3] [varchar](30) NULL,
	[ADDR_4] [varchar](30) NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_GRE2]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_GRE2](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_KIND] [varchar](2) NULL,
	[CARD_NO] [varchar](19) NULL,
	[CR_DR] [varchar](1) NULL,
	[MEMBER_NO] [varchar](10) NULL,
	[PASSPORT_NO] [varchar](10) NULL,
	[ID_NO] [varchar](11) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[PRESENT_DATE] [varchar](8) NULL,
	[MILE_CNT] [int] NULL,
	[ENG_NAME] [varchar](25) NULL,
	[PREU_DATE_NO] [varchar](8) NULL,
	[PREU_SEQ_NO] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_GREN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_GREN](
	[BATCH_NO] [varchar](20) NULL,
	[Id_No] [varchar](11) NULL,
	[Type] [varchar](3) NULL,
	[Member_No] [varchar](10) NULL,
	[Redeem_Cnt] [int] NULL,
	[Update_Date] [varchar](8) NULL,
	[Update_Time] [varchar](6) NULL,
	[Update_User] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_ICLG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_ICLG](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[CARD_NO] [varchar](18) NULL,
	[USE_DATE] [varchar](8) NULL,
	[USE_DATE_SEQ] [int] NULL,
	[CITY] [varchar](10) NULL,
	[COUNTRY] [varchar](10) NULL,
	[USE_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[TERM_NO] [varchar](16) NULL,
	[AMT_FLAG] [varchar](1) NULL,
	[AMT] [int] NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_ICLGUL]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_ICLGUL](
	[Batch_No] [varchar](20) NULL,
	[Card_No] [varchar](19) NULL,
	[Cardholder_Name] [varchar](20) NULL,
	[Vip_Room_Name] [varchar](55) NULL,
	[Vip_Room_Code] [varchar](5) NULL,
	[Country] [varchar](20) NULL,
	[Use_Date] [varchar](8) NULL,
	[Use_People] [int] NULL,
	[Charge_Fee] [decimal](10, 2) NULL,
	[Carry_People] [int] NULL,
	[Carry_Fee] [decimal](10, 2) NULL,
	[Total_People] [int] NULL,
	[Total_Charge_Fee] [decimal](10, 2) NULL,
	[Invoice_No] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_ICLP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_ICLP](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TYPE] [varchar](2) NULL,
	[NO] [varchar](18) NULL,
	[CUST_ID] [varchar](19) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[EXPIRE_YYMM_BEG] [varchar](6) NULL,
	[EXPIRE_YYMM_END] [varchar](6) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[LOST_DATE] [varchar](8) NULL,
	[REISSUE_FLAG] [varchar](1) NULL,
	[REISSUE_NO] [varchar](18) NULL,
	[RENEW_DATE] [varchar](8) NULL,
	[EMERGENCY_FLAG] [varchar](1) NULL,
	[DOWNLOAD_DATE] [varchar](8) NULL,
	[DOWNLOAD_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_INST]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_INST](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TRAN_CODE] [varchar](4) NULL,
	[PURCHASE_AMT] [int] NULL,
	[INSTALLMENT_CNT] [int] NULL,
	[INSTALLMENT_AMT] [int] NULL,
	[INSTALLMENT_AMT_1ST] [int] NULL,
	[INSTALLMENT_AMT_LAST] [int] NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[DESCR] [varchar](42) NULL,
	[MERCHANT_ID] [varchar](15) NULL,
	[ORDER_NO] [varchar](12) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_J053]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_J053](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_J144]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_J144](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_KEY] [varchar](11) NULL,
	[REAL_CARD_NO] [varchar](16) NULL,
	[TRANSACTION_CODE] [varchar](2) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[PURCHASE_AMT_SIGN] [varchar](1) NULL,
	[PURCHASE_AMT] [int] NULL,
	[AUTH] [varchar](6) NULL,
	[SOURCE_AMT_SIGN] [varchar](1) NULL,
	[SOURCE_AMT] [int] NULL,
	[SOURCE_CURRENCY] [varchar](3) NULL,
	[FEEDBACK_AMT_SIGN] [varchar](1) NULL,
	[FEEDBACK_AMT] [int] NULL,
	[FEEDBACK_MARK] [varchar](1) NULL,
	[STATEMENT_CYCLE] [varchar](2) NULL,
	[CYCLE_DATE] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Jaam]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Jaam](
	[Batch_No] [varchar](20) NULL,
	[Member_No] [varchar](10) NULL,
	[Relationship_Id] [varchar](11) NULL,
	[Company_Eng_Name] [varchar](40) NULL,
	[Flight_No] [varchar](6) NULL,
	[Last_Out_Date] [varchar](8) NULL,
	[Password] [varchar](6) NULL,
	[Old_Member_No] [varchar](10) NULL,
	[Eng_Name1] [varchar](25) NULL,
	[Eng_Name2] [varchar](25) NULL,
	[Update_Date] [varchar](8) NULL,
	[Update_Time] [varchar](6) NULL,
	[Updater] [varchar](8) NULL,
	[Eng_Mail_City] [varchar](20) NULL,
	[Eng_Mail_Zip] [varchar](5) NULL,
	[Eng_Mail_Addr1] [varchar](30) NULL,
	[Eng_Mail_Addr2] [varchar](30) NULL,
	[Eng_Mail_Addr3] [varchar](30) NULL,
	[Eng_Mail_Addr4] [varchar](30) NULL,
	[Eng_Comp_City] [varchar](20) NULL,
	[Eng_Comp_Zip] [varchar](5) NULL,
	[Eng_Comp_Addr1] [varchar](30) NULL,
	[Eng_Comp_Addr2] [varchar](30) NULL,
	[Eng_Comp_Addr3] [varchar](30) NULL,
	[Eng_Comp_Addr4] [varchar](30) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Jcsgre1]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Jcsgre1](
	[Batch_No] [varchar](20) NULL,
	[Id_No] [varchar](11) NULL,
	[Member_No] [varchar](10) NULL,
	[Chi_Name] [varchar](20) NULL,
	[Eng_Name_Last] [varchar](25) NULL,
	[Eng_Name_First] [varchar](25) NULL,
	[Card_No] [varchar](19) NULL,
	[Tel_No] [varchar](10) NULL,
	[Birth_Date] [varchar](8) NULL,
	[Addr1] [varchar](30) NULL,
	[Addr2] [varchar](30) NULL,
	[Addr3] [varchar](30) NULL,
	[Addr4] [varchar](30) NULL,
	[Preu_Date] [varchar](8) NULL,
	[Preu_No] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Jcsgre2]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Jcsgre2](
	[Batch_No] [varchar](20) NULL,
	[Card_Kind] [varchar](2) NULL,
	[Card_No] [varchar](19) NULL,
	[Cr_Dr] [varchar](1) NULL,
	[Member_No] [varchar](10) NULL,
	[Passport_No] [varchar](10) NULL,
	[Id_No] [varchar](11) NULL,
	[Birthday] [varchar](8) NULL,
	[Present_Date] [varchar](8) NULL,
	[Mile_Cnt] [int] NULL,
	[Eng_Name] [varchar](25) NULL,
	[Preu_Date] [varchar](8) NULL,
	[Preu_No] [varchar](4) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_LOGO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_LOGO](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[BIN] [varchar](6) NULL,
	[DESCR] [varchar](30) NULL,
	[CARD_TYPE] [varchar](1) NULL,
	[CREDIT_DEBIT_FLAG] [varchar](1) NULL,
	[BUSINESS_FLAG] [varchar](1) NULL,
	[CARD_CODE] [varchar](1) NULL,
	[DUAL_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Macotrn]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Macotrn](
	[Batch_No] [varchar](20) NULL,
	[Rec_Type_H] [varchar](2) NULL,
	[Send_Julian_Date] [varchar](7) NULL,
	[Send_Time] [varchar](6) NULL,
	[Source_Code] [varchar](4) NULL,
	[Rec_Type_D] [varchar](2) NULL,
	[Rrgm_Id] [varchar](4) NULL,
	[Pfp_No] [varchar](9) NULL,
	[Eng_Name] [varchar](50) NULL,
	[Birth_Date] [varchar](8) NULL,
	[Id_No] [varchar](10) NULL,
	[Enrlcd] [varchar](2) NULL,
	[Mm_No] [varchar](12) NULL,
	[Cmplete_Julian_Date] [varchar](7) NULL,
	[Cmplete_Seq_No] [int] NULL,
	[Request_Date_Time] [varchar](26) NULL,
	[Translate_Mile] [int] NULL,
	[Pure_Date] [varchar](8) NULL,
	[Pure_No] [varchar](4) NULL,
	[Rec_Type_T] [varchar](2) NULL,
	[Total_Rec_Cnt] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MCODE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MCODE](
	[BATCH_NO] [varchar](20) NULL,
	[NO] [varchar](4) NULL,
	[CHI_NAME] [varchar](42) NULL,
	[MERC_ZIP] [varchar](5) NULL,
	[MERC_ADDR_1] [varchar](26) NULL,
	[MERC_ADDR_2] [varchar](34) NULL,
	[MERC_ADDR_3] [varchar](22) NULL,
	[MERC_TEL_ZIP] [varchar](4) NULL,
	[MERC_TEL_NO] [varchar](8) NULL,
	[MERC_FAX_ZIP] [varchar](4) NULL,
	[MERC_FAX_NO] [varchar](8) NULL,
	[MERC_ID] [varchar](9) NULL,
	[MERC_CONN_MAN] [varchar](12) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MDOTS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MDOTS](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[DOTS_SIGN] [varchar](1) NULL,
	[DOTS] [int] NULL,
	[ADJUST_REASON] [varchar](20) NULL,
	[STMT_CYCLE] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MICLP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MICLP](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TYPE] [varchar](2) NULL,
	[NO] [varchar](18) NULL,
	[CUST_ID] [varchar](19) NULL,
	[MAJOR_ID] [varchar](19) NULL,
	[CURRENT_CODE] [varchar](1) NULL,
	[EXPIRE_YYMM_BEG] [varchar](6) NULL,
	[EXPIRE_YYMM_END] [varchar](6) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[LOST_DATE] [varchar](8) NULL,
	[REISSUE_FLAG] [varchar](1) NULL,
	[REISSUE_NO] [varchar](18) NULL,
	[RENEW_DATE] [varchar](8) NULL,
	[EMERGENCY_FLAG] [varchar](1) NULL,
	[USE_DATE] [varchar](8) NULL,
	[COUNTRY] [varchar](10) NULL,
	[CITY] [varchar](10) NULL,
	[USER_CNT] [int] NULL,
	[OTHER_P_CNT] [int] NULL,
	[USER_DOTS] [int] NULL,
	[PAY_AMT] [int] NULL,
	[USER_CNT_B] [int] NULL,
	[OTHER_P_CNT_B] [int] NULL,
	[USER_DOTS_B] [int] NULL,
	[PAY_AMT_B] [int] NULL,
	[DOWNLOAD_DATE] [varchar](8) NULL,
	[DOWNLOAD_FLAG] [varchar](1) NULL,
	[CHG_USER_CNT] [int] NULL,
	[CHG_USER_CNT_B] [int] NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MIRH]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MIRH](
	[BATCH_NO] [varchar](20) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[LAST_TOT_DOT_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT] [int] NULL,
	[CURR_DOT_SIGN] [varchar](1) NULL,
	[CURR_DOT] [int] NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[ADJ_DOT_SIGN] [varchar](1) NULL,
	[ADJ_DOT] [int] NULL,
	[THIS_TOT_DOT_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT] [int] NULL,
	[CANCEL_DOT_SIGN] [varchar](1) NULL,
	[CANCEL_DOT] [int] NULL,
	[LAST_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_C] [int] NULL,
	[CURR_DOT_C_SIGN] [varchar](1) NULL,
	[CURR_DOT_C] [int] NULL,
	[USE_DOT_C_SIGN] [varchar](1) NULL,
	[USE_DOT_C] [int] NULL,
	[THIS_TOT_DOT_C_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_C] [int] NULL,
	[ADJ_DOT_C_SIGN] [varchar](1) NULL,
	[ADJ_DOT_C] [int] NULL,
	[CANCEL_DOT_C_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_C] [int] NULL,
	[LAST_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[LAST_TOT_DOT_G] [int] NULL,
	[CURR_DOT_G_SIGN] [varchar](1) NULL,
	[CURR_DOT_G] [int] NULL,
	[USE_DOT_G_SIGN] [varchar](1) NULL,
	[USE_DOT_G] [int] NULL,
	[THIS_TOT_DOT_G_SIGN] [varchar](1) NULL,
	[THIS_TOT_DOT_G] [int] NULL,
	[ADJ_DOT_G_SIGN] [varchar](1) NULL,
	[ADJ_DOT_G] [int] NULL,
	[CANCEL_DOT_G_SIGN] [varchar](1) NULL,
	[CANCEL_DOT_G] [int] NULL,
	[JAA_MILE_001_SIGN] [varchar](1) NULL,
	[JAA_MILE_001] [int] NULL,
	[JAA_MILE_002_SIGN] [varchar](1) NULL,
	[JAA_MILE_002] [int] NULL,
	[JAA_MILE_003_SIGN] [varchar](1) NULL,
	[JAA_MILE_003] [int] NULL,
	[JAA_MILE_999_SIGN] [varchar](1) NULL,
	[JAA_MILE_999] [int] NULL,
	[AUTO_DOTC_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MITM]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MITM](
	[BATCH_NO] [varchar](20) NOT NULL,
	[CARD_NO] [varchar](16) NULL,
	[MILE_NO] [varchar](5) NULL,
	[MILES] [int] NULL,
	[SEND_JAA_FLAG] [varchar](1) NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[MEMBER_NO] [varchar](9) NULL,
	[ENG_NAME] [varchar](25) NULL,
	[BIRTH_DATE] [varchar](8) NULL,
	[ID_NO] [varchar](11) NULL,
	[CHI_NAME] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MMIR]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MMIR](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID] [varchar](11) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[IN_AMT_SIGN] [varchar](1) NULL,
	[IN_AMT] [int] NULL,
	[ALL_AMT_SIGN] [varchar](1) NULL,
	[ALL_AMT] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_MPRES]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_MPRES](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[PRESENT_CODE] [varchar](6) NULL,
	[PRINT_FLAG] [varchar](1) NULL,
	[CLOSE_DATE] [varchar](8) NULL,
	[CLOSE_TIME] [varchar](6) NULL,
	[CLOSE_USER] [varchar](8) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPROVAL_NO] [varchar](6) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[MERCHANT_NO] [varchar](15) NULL,
	[MERCHANT_CATEGORY] [varchar](4) NULL,
	[ORDER_NO] [varchar](14) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_Point_Adjustment]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_Point_Adjustment](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_No] [varchar](20) NOT NULL,
	[Account_No] [varchar](19) NOT NULL,
	[Card_No] [varchar](19) NULL,
	[Reward_Code] [varchar](15) NULL,
	[Adj_Action] [varchar](15) NULL,
	[Qty] [int] NULL,
	[Immediate_Flag] [varchar](1) NULL,
	[Adj_Reason] [varchar](20) NULL,
	[Remark] [varchar](1000) NULL,
	[Upload_Status] [varchar](2) NULL,
	[Batch_Status] [varchar](2) NULL,
	[Confirm_Flag] [varchar](1) NULL,
	[Confirm_User] [varchar](30) NULL,
	[Confirm_Datetime] [datetime] NULL,
	[Reject_Reason] [varchar](200) NULL,
	[Create_User] [varchar](30) NULL,
	[Create_Datetime] [datetime] NULL,
	[Last_Update_User] [varchar](30) NULL,
	[Last_Update_Datetime] [datetime] NULL,
	[Msg_Flag] [varchar](1) NULL,
 CONSTRAINT [PK_MT_Point_Adjustment] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_PREU]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_PREU](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[DATE_NO] [varchar](8) NULL,
	[SEQ_NO] [int] NULL,
	[PRESENT_CODE] [varchar](8) NULL,
	[KEY_1] [varchar](12) NULL,
	[PRESENT_NAME] [varchar](42) NULL,
	[PRESENT_DOT] [int] NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[PROD_CASH] [int] NULL,
	[EXPORT_DATE] [varchar](8) NULL,
	[EXPORT_NO] [varchar](3) NULL,
	[POST_SER_NO] [varchar](20) NULL,
	[BILL_DATE] [varchar](8) NULL,
	[BILL_NO] [varchar](3) NULL,
	[REVERSAL_DATE] [varchar](8) NULL,
	[REMARK] [varchar](42) NULL,
	[REVERSAL_FLAG] [varchar](1) NULL,
	[EX_ENTER_DATE] [varchar](8) NULL,
	[BI_ENTER_DATE] [varchar](8) NULL,
	[CASH_PAY_FLAG] [varchar](1) NULL,
	[ID_NO_1] [varchar](11) NULL,
	[B030B_FLAG] [varchar](1) NULL,
	[CARD_NO] [varchar](16) NULL,
	[APPROVAL_NO] [varchar](6) NULL,
	[PURCHASE_DATE] [varchar](8) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[TOUCH_TYPE] [varchar](1) NULL,
	[ORDER_NO] [varchar](14) NULL,
	[DOWNLOAD_FLAG] [varchar](1) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_PTWH]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_PTWH](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ROW_TYPE] [varchar](1) NULL,
	[TYPE] [varchar](1) NULL,
	[TRANS_DATE] [varchar](8) NULL,
	[TRANS_TIME] [varchar](6) NULL,
	[SERIAL_NO] [varchar](14) NULL,
	[ORIG_TWHFS_DATE] [varchar](8) NULL,
	[PAY_CARD_NO] [varchar](16) NULL,
	[AUTH_CODE] [varchar](6) NULL,
	[STATION_ID] [varchar](2) NULL,
	[PNR_NO] [varchar](8) NULL,
	[TICKET_ID] [varchar](13) NULL,
	[AMOUNT] [int] NULL,
	[TRAIN_NO] [varchar](4) NULL,
	[DEPARTURE_STATION_ID] [varchar](2) NULL,
	[ARRIVAL_STATION_ID] [varchar](2) NULL,
	[SEAT_NO] [varchar](3) NULL,
	[DEPART_DATE] [varchar](8) NULL,
	[ORG_SERIAL_NO] [varchar](14) NULL,
	[ISSUE_STATION_ID] [varchar](2) NULL,
	[PLAN_CODE] [varchar](1) NULL,
	[CAR_NO] [varchar](2) NULL,
	[DISCOUNT_VALUE] [int] NULL,
	[TOTAL_TICKET_NO] [int] NULL,
	[TOTAL_AMOUNT] [int] NULL,
	[ACTION_CODE] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_PUBL]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_PUBL](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[TYPE] [varchar](1) NULL,
	[USER_NO] [varchar](16) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CARD_NO_OLD] [varchar](16) NULL,
	[USER_NO_OLD] [varchar](16) NULL,
	[REMARK] [varchar](42) NULL,
	[APPLY_DATE] [varchar](8) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[DELETE_MARK] [varchar](1) NULL,
	[RESEND_FLAG] [varchar](1) NULL,
	[ENTER_DATE] [varchar](8) NULL,
	[COMMISSION_FLAG] [varchar](1) NULL,
	[PROC_OK_FLAG] [varchar](1) NULL,
	[DOT_DATE] [varchar](8) NULL,
	[ACH_SOURCE] [varchar](1) NULL,
	[ACH_FLAG] [varchar](1) NULL,
	[ACH_EMAIL_DATE] [varchar](8) NULL,
	[OLD_ACH_FLAG] [varchar](1) NULL,
	[KEEP_DATE] [varchar](8) NULL,
	[FEEDBACK_DATE] [varchar](8) NULL,
	[FLAG_049] [varchar](1) NULL,
	[FLAG_151] [varchar](1) NULL,
	[ACH_REASON] [varchar](2) NULL,
	[ACH_TIX] [varchar](3) NULL,
	[SYSTEM_DATE] [varchar](8) NULL,
	[SYSTEM_TIME] [varchar](6) NULL,
	[SYSTEM_USERS] [varchar](8) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_PXMART]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_PXMART](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[Batch_No] [varchar](20) NULL,
	[Eas_Card_No] [varchar](16) NULL,
	[Amt] [int] NULL,
	[Status] [varchar](1) NULL,
	[Remark] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_REGC001]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_REGC001](
	[Prod_No] [varchar](10) NOT NULL,
	[Item_No] [varchar](2) NULL,
	[Prod_Name] [varchar](50) NULL,
	[Prod_Desc] [varchar](1000) NULL,
	[Prod_Date_S] [varchar](8) NULL,
	[Prod_Date_E] [varchar](8) NULL,
	[Reg_Date_S] [varchar](8) NULL,
	[Reg_Date_E] [varchar](8) NULL,
	[CustReg_Date_S] [varchar](8) NULL,
	[CustReg_Date_E] [varchar](8) NULL,
	[Prod_url] [varchar](100) NULL,
	[Active_Mark] [varchar](1) NULL,
	[Shop_No] [varchar](256) NULL,
	[Shop_Name] [varchar](256) NULL,
	[Mcc_Code] [varchar](256) NULL,
	[Assign_Yn] [varchar](1) NULL,
	[Item_Sort_Top] [varchar](1) NULL,
	[Upd_Date] [varchar](8) NULL,
	[Upd_Empno] [varchar](6) NULL,
 CONSTRAINT [PK_MT_REGC001] PRIMARY KEY CLUSTERED 
(
	[Prod_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_REGC002]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_REGC002](
	[Reg_Source] [varchar](1) NOT NULL,
	[Reg_Source_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MT_REGC002] PRIMARY KEY CLUSTERED 
(
	[Reg_Source] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_REGC004]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_REGC004](
	[Item_No] [varchar](2) NOT NULL,
	[Item_Desc] [varchar](100) NULL,
	[Item_Sort] [int] NULL,
 CONSTRAINT [PK_MT_Regc004] PRIMARY KEY CLUSTERED 
(
	[Item_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_REGM001]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_REGM001](
	[Seq_No] [varchar](128) NOT NULL,
	[Prod_No] [varchar](10) NOT NULL,
	[Id_No] [varchar](50) NOT NULL,
	[Card_No] [varchar](50) NULL,
	[Reg_Datetime] [varchar](30) NULL,
	[Reg_Source] [varchar](1) NULL,
	[Email] [varchar](50) NULL,
	[Upd_Empno] [varchar](6) NULL,
	[Reg_Sort] [int] NOT NULL,
 CONSTRAINT [PK_MT_REGM001] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_REGM002]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_REGM002](
	[Prod_No] [varchar](10) NULL,
	[Id_No] [varchar](11) NULL,
	[Upd_Datetime] [varchar](8) NULL,
	[Upd_Empno] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_RELP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_RELP](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[RELATIONSHIP_ID] [varchar](19) NULL,
	[PRIMARY_ACCOUNT_ID] [varchar](19) NULL,
	[STATUS] [varchar](1) NULL,
	[CYCLE] [varchar](2) NULL,
	[CHANGE_CYCLE] [varchar](2) NULL,
	[CHANGE_NEXT_CYCLE_DATE] [varchar](8) NULL,
	[HIGH_DELQ_JOCS] [varchar](2) NULL,
	[HIGH_DELQ_VP] [varchar](1) NULL,
	[NO_ACTIVE_CARD_FLAG] [varchar](1) NULL,
	[CC_FLAG] [varchar](1) NULL,
	[DELQ_FLAG] [varchar](1) NULL,
	[OUTN_DOTS_CHANGE_FLAG] [varchar](1) NULL,
	[DEDUCT_TYPE] [varchar](1) NULL,
	[DEDUCT_BANK] [varchar](4) NULL,
	[DEDUCT_OPEN_DATE] [varchar](8) NULL,
	[DEDUCT_STOP_DATE] [varchar](8) NULL,
	[VIP_N_FLAG] [varchar](1) NULL,
	[VIP_N_START_DATE] [varchar](8) NULL,
	[VIP_N_END_DATE] [varchar](8) NULL,
	[VIP_D_FLAG] [varchar](1) NULL,
	[VIP_D_START_DATE] [varchar](8) NULL,
	[VIP_D_END_DATE] [varchar](8) NULL,
	[VIP_DEDUCT_FLAG] [varchar](1) NULL,
	[VIP_D_MARK] [varchar](10) NULL,
	[STAT_CNTL_CODE] [varchar](2) NULL,
	[STAT_CNTL_START_DTAE] [varchar](6) NULL,
	[STAT_CNTL_END_DTAE] [varchar](6) NULL,
	[INFO_BILL_FLAG] [varchar](50) NULL,
	[INFO_BILL_DATE] [varchar](8) NULL,
	[KEEP_SEND_FLAG] [varchar](1) NULL
) ON [PRIMARY]
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[MT_RELP] ADD [Dot_Account_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [Cancel_Dot_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [Ebilling_First_Apply_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [Vip_Room_Flag] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [Free_Vip_Start_Date] [varchar](8) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [Free_Vip_End_Date] [varchar](8) NULL
SET ANSI_PADDING ON
ALTER TABLE [dbo].[MT_RELP] ADD [ESTMT_1ST_USAGE_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [GOOGLE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [APPLE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [HCE_PAY_FLAG] [varchar](1) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [GOOGLE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [APPLE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [HCE_PAY_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [NO_ACTIVITY_CARD_DATE] [varchar](8) NULL
ALTER TABLE [dbo].[MT_RELP] ADD [RESALE_FLAG] [varchar](1) NULL
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_SKSD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_SKSD](
	[Batch_No] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](6) NULL,
	[Seq_No] [varchar](14) NULL,
	[Org_Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Channel] [varchar](2) NULL,
	[Booking_No] [varchar](8) NULL,
	[Ticket_No] [varchar](13) NULL,
	[Ticket_Amount] [int] NULL,
	[Tran_No] [varchar](4) NULL,
	[Departure_Station] [varchar](2) NULL,
	[Arrival_Station] [varchar](2) NULL,
	[Seat_No] [varchar](3) NULL,
	[Travel_Date] [varchar](8) NULL,
	[Car_No] [varchar](2) NULL,
	[Ticket_Diff_Amt] [int] NULL,
	[Ticket_Count] [int] NULL,
	[Pay_Amount] [int] NULL,
	[Pickup_Station] [varchar](2) NULL,
	[Org_Seq_No] [varchar](14) NULL,
	[Act_Id] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_SKUP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_SKUP](
	[Batch_No] [varchar](20) NULL,
	[Data_Type] [varchar](1) NULL,
	[Tran_Type] [varchar](1) NULL,
	[Tran_Date] [varchar](8) NULL,
	[Tran_Time] [varchar](6) NULL,
	[Seq_No] [varchar](14) NULL,
	[Org_Tran_Date] [varchar](8) NULL,
	[Card_No] [varchar](16) NULL,
	[Auth_Code] [varchar](6) NULL,
	[Channel] [varchar](2) NULL,
	[Booking_No] [varchar](8) NULL,
	[Ticket_No] [varchar](13) NULL,
	[Ticket_Amount] [int] NULL,
	[Tran_No] [varchar](4) NULL,
	[Departure_Station] [varchar](2) NULL,
	[Arrival_Station] [varchar](2) NULL,
	[Seat_No] [varchar](3) NULL,
	[Travel_Date] [varchar](8) NULL,
	[Org_Seq_No] [varchar](14) NULL,
	[Ticket_Unit] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_SPRES]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_SPRES](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ID_NO] [varchar](11) NULL,
	[PRESENT_CODE] [varchar](6) NULL,
	[USE_DOT_SIGN] [varchar](1) NULL,
	[USE_DOT] [int] NULL,
	[PRESENT_CNT] [int] NULL,
	[ID_NO_1] [varchar](11) NULL,
	[B030B_FLAG] [varchar](1) NULL,
	[TOUCH_FLAG] [varchar](1) NULL,
	[TOUCH_TYPE] [varchar](1) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_STBO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_STBO](
	[BATCH_NO] [varchar](20) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NULL,
	[ADJUST_REASON] [varchar](20) NULL,
	[ADJUST_REASON_C] [varchar](20) NULL,
	[KEEP_DAYS_SIGN] [varchar](1) NULL,
	[KEEP_DAYS] [int] NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CREATE_USER] [varchar](8) NULL,
	[TICKET_NO] [varchar](8) NULL,
	[CARD_CREATE_DATE] [varchar](8) NULL,
	[REPT_FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_TPAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_TPAN](
	[Batch_No] [varchar](20) NULL,
	[Wallet_Id] [varchar](32) NULL,
	[Card_No] [varchar](19) NULL,
	[Tpan_No] [varchar](19) NULL,
	[Issue_Date] [varchar](8) NULL,
	[Expire_Date] [varchar](8) NULL,
	[Card_Status] [varchar](1) NULL,
	[Oppost_Reason] [varchar](2) NULL,
	[Oppost_Date] [varchar](8) NULL,
	[Oppost_Time] [varchar](6) NULL,
	[Oppost_User] [varchar](8) NULL,
	[Open_Date] [varchar](8) NULL,
	[Open_Time] [varchar](6) NULL,
	[Open_Flag] [varchar](1) NULL,
	[Update_Reason] [varchar](1) NULL,
	[Sir] [varchar](36) NULL,
	[Tel_Gsm] [varchar](10) NULL,
	[Event_Type] [varchar](2) NULL,
	[Sir_Status] [varchar](2) NULL,
	[Sir_Update_Date] [varchar](8) NULL,
	[Sir_Update_Time] [varchar](6) NULL,
	[Hce_Oppost_Type] [varchar](1) NULL,
	[Hce_Sir_Status] [varchar](2) NULL,
	[Hce_Exestatus] [varchar](30) NULL,
	[Hce_Update_Date] [varchar](8) NULL,
	[Hce_Update_Time] [varchar](6) NULL,
	[Operation] [varchar](3) NULL,
	[Open_Password] [varchar](6) NULL,
	[Create_Date] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_TRAN]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_TRAN](
	[BATCH_NO] [varchar](20) NULL,
	[ORG] [varchar](3) NULL,
	[LOGO] [varchar](3) NULL,
	[CARD_NO] [varchar](19) NULL,
	[TXN_CODE] [varchar](4) NULL,
	[DEST_AMOUNT] [int] NULL,
	[SOURCE_AMOUNT] [decimal](18, 2) NULL,
	[EFF_DATE] [varchar](8) NOT NULL,
	[POSTING_DATE] [varchar](8) NULL,
	[SOURCE_CURRENY_CODE] [varchar](3) NULL,
	[DEST_CURRENY_CODE] [varchar](3) NULL,
	[DESCR] [varchar](40) NULL,
	[MERCHANT_COUNTRY_CODE] [varchar](3) NULL,
	[MERCHANT_ID] [varchar](15) NULL,
	[ENTYR_MODE] [varchar](3) NULL,
	[TERMINAL_ID] [varchar](15) NULL,
	[MCC_CODE] [varchar](5) NULL,
	[ACTIONPAY_FLAG] [varchar](1) NULL,
	[TPAN_NO] [varchar](16) NULL,
	[LOT_NO] [varchar](7) NULL,
	[BILL_TYPE] [varchar](1) NULL,
	[FILM_NO] [varchar](23) NULL,
	[TXN_AUTH_TYPE] [varchar](2) NULL,
	[TXN_AUTH_CODE] [varchar](6) NULL,
	[EC_IND] [varchar](1) NULL,
	[UCAF_IND] [varchar](3) NULL,
	[ENG_DESC] [varchar](40) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_XTMD]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_XTMD](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[ACCT_ID] [varchar](11) NULL,
	[CARD_NO] [varchar](16) NULL,
	[CAR_NO] [varchar](8) NULL,
	[CAR_KIND] [varchar](2) NULL,
	[CAR_COLOR] [varchar](2) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[CHARGE_FLAG] [varchar](1) NULL,
	[MOTOR_FLAG] [varchar](1) NULL,
	[LAST_POST_DATE] [varchar](8) NULL,
	[LAST_POST_AMT] [int] NULL,
	[TMS_NAME] [varchar](6) NULL,
	[TMS_NO] [varchar](5) NULL,
	[TMS_DATE] [varchar](8) NULL,
	[RSS_A_CNT] [int] NULL,
	[RSS_B_CNT] [int] NULL,
	[RSS_C_CNT] [int] NULL,
	[RSS_D_CNT] [int] NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[RSS_CNT_B] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_S_DATE] [varchar](8) NULL,
	[AIRPORT_R_DATE] [varchar](8) NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT_B] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[F_DATE] [varchar](8) NULL,
	[F_FLAG] [varchar](1) NULL,
	[AIRPORT_A_CNT] [int] NULL,
	[AIRPORT_B_CNT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MT_XTMS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MT_XTMS](
	[BATCH_NO] [varchar](20) NULL,
	[ID_NO] [varchar](11) NULL,
	[CREATE_DATE] [varchar](8) NULL,
	[CANCEL_DATE] [varchar](8) NULL,
	[MOTOR_TYPE] [varchar](1) NULL,
	[RSS_A_CNT] [int] NULL,
	[RSS_B_CNT] [int] NULL,
	[RSS_C_CNT] [int] NULL,
	[RSS_D_CNT] [int] NULL,
	[RSS_DOTS] [int] NULL,
	[RSS_TRAN_AMT] [int] NULL,
	[RSS_CNT_B] [int] NULL,
	[AIRPORT_CNT] [int] NULL,
	[AIRPORT_S_DATE] [varchar](8) NULL,
	[AIRPORT_R_DATE] [varchar](8) NULL,
	[AIRPORT_DOTS] [int] NULL,
	[AIRPORT_TRAN_AMT] [int] NULL,
	[AIRPORT_CNT_B] [int] NULL,
	[MON_1_TOT_AMT] [int] NULL,
	[MON_2_TOT_AMT] [int] NULL,
	[MON_3_TOT_AMT] [int] NULL,
	[MON_4_TOT_AMT] [int] NULL,
	[MON_5_TOT_AMT] [int] NULL,
	[AIRPORT_A_CNT] [int] NULL,
	[AIRPORT_B_CNT] [int] NULL,
	[MARK_FLAG_1] [varchar](3) NULL,
	[MARK_FLAG_2] [varchar](3) NULL,
	[MARK_FLAG_3] [varchar](3) NULL,
	[MARK_FLAG_4] [varchar](3) NULL,
	[MARK_FLAG_5] [varchar](3) NULL,
	[LAST_PUR_DATE] [varchar](8) NULL,
	[LAST_CARD_NO] [varchar](16) NULL,
	[UPDATE_DATE] [varchar](8) NULL,
	[UPDATE_TIME] [varchar](6) NULL,
	[UPDATE_USER] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[opsm001]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[opsm001](
	[upd_date] [varchar](8) NOT NULL,
	[idno] [varchar](10) NOT NULL,
	[seq] [char](1) NOT NULL,
	[ch_name] [nvarchar](10) NOT NULL,
	[en_name] [varchar](25) NOT NULL,
	[sex] [char](1) NOT NULL,
	[brith_date] [varchar](8) NOT NULL,
	[education] [char](1) NOT NULL,
	[marriage] [char](1) NOT NULL,
	[resident_type] [char](1) NOT NULL,
	[child_cnt] [varchar](2) NOT NULL,
	[position] [char](1) NOT NULL,
	[income] [int] NOT NULL,
	[income_other] [int] NOT NULL,
	[estate] [nvarchar](40) NOT NULL,
	[stmt_type_old] [char](1) NOT NULL,
	[tel_h] [varchar](12) NOT NULL,
	[resident_zip] [varchar](5) NOT NULL,
	[resident_addr1] [nvarchar](24) NOT NULL,
	[resident_addr2] [nvarchar](32) NOT NULL,
	[resident_addr3] [nvarchar](20) NOT NULL,
	[mail_zip] [varchar](5) NOT NULL,
	[mail_addr1] [nvarchar](24) NOT NULL,
	[mail_addr2] [nvarchar](32) NOT NULL,
	[mail_addr3] [nvarchar](20) NOT NULL,
	[office_zip] [varchar](5) NOT NULL,
	[office_addr1] [nvarchar](24) NOT NULL,
	[office_addr2] [nvarchar](32) NOT NULL,
	[office_addr3] [nvarchar](20) NOT NULL,
	[relative_name] [nvarchar](10) NOT NULL,
	[relative_tel] [varchar](12) NOT NULL,
	[friend_name] [nvarchar](10) NOT NULL,
	[friend_tel] [varchar](12) NOT NULL,
	[spouse_id] [varchar](11) NOT NULL,
	[spouse_name] [nvarchar](10) NOT NULL,
	[spouse_tel] [varchar](17) NOT NULL,
	[spouse_income] [int] NOT NULL,
	[office_tel] [varchar](17) NOT NULL,
	[gsm_tel] [varchar](10) NOT NULL,
	[business_code] [varchar](2) NOT NULL,
	[class_code] [char](1) NOT NULL,
	[dm_type] [char](1) NOT NULL,
	[remark] [nvarchar](40) NOT NULL,
	[company] [nvarchar](24) NOT NULL,
	[title] [nvarchar](16) NOT NULL,
	[position_1] [nvarchar](14) NOT NULL,
	[email] [varchar](40) NOT NULL,
	[Payment_Acct_No] [char](16) NOT NULL,
	[Sales_Mark] [char](1) NOT NULL,
	[CIF_Update_Date] [char](8) NOT NULL,
	[NATIONALITY] [char](2) NOT NULL,
	[revolve_amt] [int] NOT NULL,
	[autopay_rate] [smallint] NOT NULL,
	[computer_rate] [char](1) NOT NULL,
	[manual_rate] [char](1) NOT NULL,
	[ytd_payment] [bigint] NOT NULL,
	[itd_payment] [bigint] NOT NULL,
	[stop_date] [varchar](8) NOT NULL,
	[payment_type] [char](1) NOT NULL,
	[deduct_bank] [varchar](4) NOT NULL,
	[deduct_account] [varchar](20) NOT NULL,
	[stmt_cycle] [char](1) NOT NULL,
	[class] [char](1) NOT NULL,
	[jrnl_bal] [bigint] NOT NULL,
	[payment_rate] [varchar](24) NOT NULL,
	[lst_pay_date] [varchar](8) NOT NULL,
	[lst_pay_amt] [int] NOT NULL,
	[lst_tot_dot] [int] NOT NULL,
	[curr_dot] [int] NOT NULL,
	[use_dot] [int] NOT NULL,
	[tot_dot] [int] NOT NULL,
	[promote_depty] [varchar](4) NOT NULL,
	[promote_empno] [varchar](4) NOT NULL,
	[cycle] [char](1) NOT NULL,
	[msg] [char](1) NOT NULL,
	[insu] [char](1) NOT NULL,
	[Sbt_amt] [bigint] NOT NULL,
	[Sub_amt] [bigint] NOT NULL,
	[Abs_amt] [bigint] NOT NULL,
	[S_amt] [bigint] NOT NULL,
	[y_amt] [bigint] NOT NULL,
	[now_amt] [money] NOT NULL,
	[Warning_Rate] [varchar](48) NOT NULL,
	[Trust_Mark] [varchar](2) NOT NULL,
	[Revolve_Rate] [char](4) NOT NULL,
	[Warning_Revolve] [varchar](4) NOT NULL,
	[Class_Auth] [varchar](1) NOT NULL,
	[Year_Pur_Amt] [bigint] NOT NULL,
	[Year_Cash_Amt] [bigint] NOT NULL,
	[Cash_Revolve_Amt] [bigint] NOT NULL,
	[Control_Warn] [varchar](20) NOT NULL,
	[Code_Warn] [varchar](20) NOT NULL,
	[Note] [varchar](40) NOT NULL,
	[Auth_Not_Deposit] [bigint] NOT NULL,
	[Current_Bal] [bigint] NOT NULL,
	[Inla_Amt] [bigint] NOT NULL,
	[stmt_type] [char](1) NOT NULL,
	[Print_Code] [varchar](2) NOT NULL,
	[Cash_Percent] [int] NOT NULL,
	[Menu_Cli_Date] [char](8) NOT NULL,
	[Before_Menu_Revamt] [bigint] NOT NULL,
	[Major_ID_Status] [char](1) NOT NULL,
	[Old_Flag] [char](1) NOT NULL,
	[Differ] [char](1) NOT NULL,
	[System_Cli_date] [char](8) NOT NULL,
	[Before_Cli_Revamt] [bigint] NOT NULL,
	[Revolve_Warning2] [varchar](4) NOT NULL,
	[Cash_Revolve] [bigint] NOT NULL,
	[Fbgov_Flag] [char](1) NOT NULL,
	[Loan_Flag] [char](1) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[opsm002]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[opsm002](
	[upd_date] [varchar](8) NOT NULL,
	[idno] [varchar](10) NOT NULL,
	[card_no] [varchar](19) NOT NULL,
	[card_type] [char](1) NOT NULL,
	[afty_code] [varchar](4) NOT NULL,
	[prod_no] [varchar](4) NOT NULL,
	[fee_code] [varchar](4) NOT NULL,
	[fee_code_1] [char](1) NOT NULL,
	[issue_date] [varchar](8) NOT NULL,
	[beg_date_new] [varchar](6) NOT NULL,
	[end_date_new] [varchar](6) NOT NULL,
	[oppost_date] [varchar](8) NOT NULL,
	[reissue_date] [varchar](8) NOT NULL,
	[lst_trans_date] [varchar](8) NOT NULL,
	[appl_no] [varchar](12) NOT NULL,
	[curr_code] [char](1) NOT NULL,
	[major_id] [varchar](10) NOT NULL,
	[major_card_no] [varchar](19) NOT NULL,
	[promote_dept] [varchar](4) NOT NULL,
	[promote_empno] [varchar](11) NOT NULL,
	[class] [char](1) NOT NULL,
	[total_amt] [bigint] NOT NULL,
	[total_cnt] [int] NOT NULL,
	[beg_date_old] [varchar](6) NOT NULL,
	[end_date_old] [varchar](6) NOT NULL,
	[change_date] [varchar](8) NOT NULL,
	[old_card_no] [varchar](19) NOT NULL,
	[open_date] [varchar](8) NOT NULL,
	[cardsw] [char](1) NOT NULL,
	[trust1] [varchar](4) NOT NULL,
	[trust2] [varchar](4) NOT NULL,
	[trust3] [varchar](4) NOT NULL,
	[cycle] [char](1) NOT NULL,
	[reason] [varchar](2) NOT NULL,
	[Sprd_No] [varchar](6) NOT NULL,
	[Create_Date] [varchar](8) NOT NULL,
	[Open_Status] [char](1) NOT NULL,
	[Reissue_Flag] [char](1) NOT NULL,
	[InterBlackList] [char](1) NOT NULL,
	[BlackList] [char](1) NOT NULL,
	[Cardtop8] [char](8) NOT NULL,
	[CommerceID] [varchar](9) NOT NULL,
	[Oppost_Reason] [varchar](2) NOT NULL,
	[Data_Router] [char](4) NOT NULL,
	[Year_Trans_Times] [int] NOT NULL,
	[Year_Trans_Amt] [bigint] NOT NULL,
	[New_Card_Mark] [char](1) NOT NULL,
	[Promote_Prpj_No] [varchar](3) NOT NULL,
	[Update_User_Id] [varchar](8) NOT NULL,
	[Prod_No_Trans] [varchar](4) NOT NULL,
	[Forth_Line] [varchar](20) NOT NULL,
	[First_Use_Date] [varchar](8) NOT NULL,
	[Prod_No_New] [varchar](4) NOT NULL,
	[Afty_Code_New] [varchar](4) NOT NULL,
	[Last_Trans_Date] [varchar](8) NOT NULL,
	[DIFFER] [varchar](2) NOT NULL,
	[New_Card_Mark_2] [char](1) NOT NULL,
	[Table_No] [varchar](10) NOT NULL,
	[SKMC_Branch] [varchar](2) NOT NULL,
	[QR_Code] [varchar](2) NOT NULL,
	[Promote_Sir_No] [varchar](11) NOT NULL,
	[Intro_ID] [varchar](11) NOT NULL,
	[Easy_Card_No] [varchar](16) NOT NULL,
	[appl_no_y100] [varchar](13) NULL,
	[Minor_New_Flag] [varchar](2) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Q_POINTS_DAILY_STATUS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Q_POINTS_DAILY_STATUS](
	[Points_Status_Date] [varchar](8) NOT NULL,
	[Reward_Type] [nvarchar](15) NOT NULL,
	[Last_Day_Qty] [int] NOT NULL,
	[Add_Qty] [int] NOT NULL,
	[Redeem_Qty] [int] NOT NULL,
	[Stop_Qty] [int] NOT NULL,
	[Adj_Qty] [int] NOT NULL,
	[Expire_Qty] [int] NOT NULL,
	[Total_Qty] [int] NOT NULL,
	[Create_User] [varchar](30) NULL,
	[Create_datetime] [datetime] NULL,
	[Last_Update_user] [varchar](30) NULL,
	[Last_Update_datetime] [datetime] NULL,
 CONSTRAINT [PK_Q_POINTS_DAILY_STATUS] PRIMARY KEY CLUSTERED 
(
	[Points_Status_Date] ASC,
	[Reward_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QRTZ_BLOB_TRIGGERS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QRTZ_BLOB_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[BLOB_DATA] [varbinary](max) NULL,
 CONSTRAINT [PK_QRTZ_BLOB_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QRTZ_CALENDARS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QRTZ_CALENDARS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[CALENDAR_NAME] [nvarchar](200) NOT NULL,
	[CALENDAR] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_QRTZ_CALENDARS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[CALENDAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QRTZ_CRON_TRIGGERS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_CRON_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[CRON_EXPRESSION] [nvarchar](120) NOT NULL,
	[TIME_ZONE_ID] [nvarchar](80) NULL,
 CONSTRAINT [PK_QRTZ_CRON_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_FIRED_TRIGGERS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_FIRED_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[ENTRY_ID] [nvarchar](140) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[FIRED_TIME] [bigint] NOT NULL,
	[SCHED_TIME] [bigint] NOT NULL,
	[PRIORITY] [int] NOT NULL,
	[STATE] [nvarchar](16) NOT NULL,
	[JOB_NAME] [nvarchar](150) NULL,
	[JOB_GROUP] [nvarchar](150) NULL,
	[IS_NONCONCURRENT] [bit] NULL,
	[REQUESTS_RECOVERY] [bit] NULL,
 CONSTRAINT [PK_QRTZ_FIRED_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[ENTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_JOB_DETAILS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QRTZ_JOB_DETAILS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[JOB_NAME] [nvarchar](150) NOT NULL,
	[JOB_GROUP] [nvarchar](150) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[JOB_CLASS_NAME] [nvarchar](250) NOT NULL,
	[IS_DURABLE] [bit] NOT NULL,
	[IS_NONCONCURRENT] [bit] NOT NULL,
	[IS_UPDATE_DATA] [bit] NOT NULL,
	[REQUESTS_RECOVERY] [bit] NOT NULL,
	[JOB_DATA] [varbinary](max) NULL,
 CONSTRAINT [PK_QRTZ_JOB_DETAILS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QRTZ_LOCKS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_LOCKS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[LOCK_NAME] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_QRTZ_LOCKS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[LOCK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_QRTZ_PAUSED_TRIGGER_GRPS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_SCHEDULER_STATE]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_SCHEDULER_STATE](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[INSTANCE_NAME] [nvarchar](200) NOT NULL,
	[LAST_CHECKIN_TIME] [bigint] NOT NULL,
	[CHECKIN_INTERVAL] [bigint] NOT NULL,
 CONSTRAINT [PK_QRTZ_SCHEDULER_STATE] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_SIMPLE_TRIGGERS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[REPEAT_COUNT] [int] NOT NULL,
	[REPEAT_INTERVAL] [bigint] NOT NULL,
	[TIMES_TRIGGERED] [int] NOT NULL,
 CONSTRAINT [PK_QRTZ_SIMPLE_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_SIMPROP_TRIGGERS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[STR_PROP_1] [nvarchar](512) NULL,
	[STR_PROP_2] [nvarchar](512) NULL,
	[STR_PROP_3] [nvarchar](512) NULL,
	[INT_PROP_1] [int] NULL,
	[INT_PROP_2] [int] NULL,
	[LONG_PROP_1] [bigint] NULL,
	[LONG_PROP_2] [bigint] NULL,
	[DEC_PROP_1] [numeric](13, 4) NULL,
	[DEC_PROP_2] [numeric](13, 4) NULL,
	[BOOL_PROP_1] [bit] NULL,
	[BOOL_PROP_2] [bit] NULL,
	[TIME_ZONE_ID] [nvarchar](80) NULL,
 CONSTRAINT [PK_QRTZ_SIMPROP_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QRTZ_TRIGGERS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QRTZ_TRIGGERS](
	[SCHED_NAME] [nvarchar](120) NOT NULL,
	[TRIGGER_NAME] [nvarchar](150) NOT NULL,
	[TRIGGER_GROUP] [nvarchar](150) NOT NULL,
	[JOB_NAME] [nvarchar](150) NOT NULL,
	[JOB_GROUP] [nvarchar](150) NOT NULL,
	[DESCRIPTION] [nvarchar](250) NULL,
	[NEXT_FIRE_TIME] [bigint] NULL,
	[PREV_FIRE_TIME] [bigint] NULL,
	[PRIORITY] [int] NULL,
	[TRIGGER_STATE] [nvarchar](16) NOT NULL,
	[TRIGGER_TYPE] [nvarchar](8) NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[END_TIME] [bigint] NULL,
	[CALENDAR_NAME] [nvarchar](200) NULL,
	[MISFIRE_INSTR] [int] NULL,
	[JOB_DATA] [varbinary](max) NULL,
 CONSTRAINT [PK_QRTZ_TRIGGERS] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0001]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0001](
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[CREDIT_CARD_NO] [varchar](16) NOT NULL,
	[EXCHANGE_DATE] [varchar](8) NOT NULL,
	[EXCHANGE_QTY] [int] NOT NULL,
	[EXCHANGE_COUNT] [int] NOT NULL,
	[REVISION_MONEY] [int] NOT NULL,
	[PROCESS_RESULT] [varchar](4) NOT NULL,
 CONSTRAINT [PK_Rep0001] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0002]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0002](
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[NO_WITHHOLDING_AMT] [int] NOT NULL,
	[CREDIT_CARD_NO] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Rep0002] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0004]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0004](
	[ID_NO] [varchar](11) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[NO_WITHHOLDING_AMT] [int] NOT NULL,
	[COMPANY_TAX_ID] [varchar](8) NOT NULL,
	[CREDIT_CARD_NO] [varchar](16) NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0004] PRIMARY KEY CLUSTERED 
(
	[ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0005]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0005](
	[ID_NO] [varchar](11) NOT NULL,
	[POSTING_DATE] [varchar](8) NOT NULL,
	[ACC_CONSUMPTION_AMT] [int] NOT NULL,
	[NO_WITHHOLDING_AMT] [int] NOT NULL,
	[EXCHANGE_MOVIE] [int] NOT NULL,
	[EXCHANGE_FERRIS_WHEEL] [int] NOT NULL,
	[ACCESS_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0005] PRIMARY KEY CLUSTERED 
(
	[ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0006]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0006](
	[ID_NO] [varchar](11) NOT NULL,
	[UNSUCCESSFUL] [varchar](30) NOT NULL,
	[AMT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0006] PRIMARY KEY CLUSTERED 
(
	[ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0007]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0007](
	[ID_NO] [varchar](11) NOT NULL,
	[POSTING_DATE] [varchar](8) NOT NULL,
	[ACC_CONSUMPTION_AMT] [int] NOT NULL,
	[NO_WITHHOLDING_AMT] [int] NOT NULL,
	[EXCHANGE_MOVIE] [int] NOT NULL,
	[EXCHANGE_FERRIS_WHEEL] [int] NOT NULL,
	[ACCESS_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0007] PRIMARY KEY CLUSTERED 
(
	[ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0008]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0008](
	[JAL_ID_NO] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[LOYAL_CODE] [varchar](7) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[ITEMS] [int] NOT NULL,
	[BASIC_MILEAGE] [int] NOT NULL,
	[ACTIVITY_MILEAGE] [int] NOT NULL,
	[SPREAD_ACTIVITY_CODE] [int] NOT NULL,
	[OVERWEIGHT_MILEAGE] [int] NOT NULL,
	[NO_JAL] [varchar](2) NOT NULL,
	[JAL_CARD_CODE] [varchar](16) NOT NULL,
	[CLEAR_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0008] PRIMARY KEY CLUSTERED 
(
	[JAL_ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0009]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0009](
	[JAL_MEMBER_NO] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[PROJECT_CODE] [varchar](7) NOT NULL,
	[CONSUMPTION_FUNDS] [int] NOT NULL,
	[MILE] [varchar](13) NOT NULL,
	[COUNT] [int] NOT NULL,
	[NO_JAL] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep0009] PRIMARY KEY CLUSTERED 
(
	[JAL_MEMBER_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0010]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0010](
	[BILLING_CYCLE] [varchar](10) NOT NULL,
	[BILLING_MONTH] [varchar](10) NOT NULL,
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[CHINESS_NAME] [varchar](100) NOT NULL,
	[CONSUMER_CARD_NO] [varchar](16) NOT NULL,
	[TRADING_SYMBOL] [varchar](7) NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[FEEDBACK_GOLD] [int] NOT NULL,
 CONSTRAINT [PK_Rep0010] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0011]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0011](
	[START_DATE] [varchar](8) NOT NULL,
	[END_DATE] [varchar](8) NOT NULL,
	[TYPE] [varchar](10) NOT NULL,
	[IN_GRADE_1] [int] NOT NULL,
	[IN_GRADE_2] [int] NOT NULL,
	[IN_GRADE_3] [int] NOT NULL,
	[IN_GRADE_4] [int] NOT NULL,
	[IN_GRADE_5] [int] NOT NULL,
	[IN_GRADE_6] [int] NOT NULL,
	[OUT_GRADE_1] [int] NOT NULL,
	[OUT_GRADE_2] [int] NOT NULL,
	[OUT_GRADE_3] [int] NOT NULL,
	[OUT_GRADE_4] [int] NOT NULL,
	[OUT_GRADE_5] [int] NOT NULL,
	[OUT_GRADE_6] [int] NOT NULL,
	[OUT_FEEDBACK] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0013]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0013](
	[YYMM] [varchar](6) NOT NULL,
	[UNIT_NAME] [varchar](100) NOT NULL,
	[ISSUER_QTY] [int] NOT NULL,
	[VALID_QTY] [int] NOT NULL,
	[CIRCULATE] [int] NOT NULL,
	[ACCUMULATION_SEP_SHOP] [int] NOT NULL,
	[SGIN_BILL_AMT] [int] NOT NULL,
	[SEP_FEE] [int] NOT NULL,
	[CLUB_FEEDBACK_1] [int] NOT NULL,
	[CLUB_FEEDBACK_2] [int] NOT NULL,
	[SPREAD_PATH] [varchar](100) NOT NULL,
	[UNIT_NAME_1] [varchar](100) NOT NULL,
	[ACCUMULATION_CIRCULATE_CARD] [int] NOT NULL,
	[SGIN_BILL_AMT_1] [int] NOT NULL,
	[MASTER_OF_AMT] [int] NOT NULL,
	[FEEDBACK_AMT] [int] NOT NULL,
	[ACCUMULATION_SEP_SHOP_1] [int] NOT NULL,
	[ACCUMULATION_SEP_SHOP_FEE] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0014]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0014](
	[INFORMATION_DATE] [varchar](8) NOT NULL,
	[FEEDBACK_SHOULD_AMT] [int] NOT NULL,
	[HAS_RESERVED_AMT] [int] NOT NULL,
	[NOT_FEEDBACK_AMT] [int] NOT NULL,
	[MEETS_ITEMS] [int] NOT NULL,
	[MEETS_AMT] [int] NOT NULL,
	[MEETS_PEOPLE] [int] NOT NULL,
	[START_DATE] [varchar](8) NOT NULL,
	[END_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0014] PRIMARY KEY CLUSTERED 
(
	[INFORMATION_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0015]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0015](
	[INFORMATION_DATE] [varchar](8) NOT NULL,
	[FEEDBACK_SHOULD_AMT] [int] NOT NULL,
	[HAS_RESERVED_AMT] [int] NOT NULL,
	[NOT_FEEDBACK_AMT] [int] NOT NULL,
	[MEETS_ITEMS] [int] NOT NULL,
	[MEETS_AMT] [int] NOT NULL,
	[MEETS_PEOPLE] [int] NOT NULL,
	[START_DATE] [varchar](8) NOT NULL,
	[END_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0015] PRIMARY KEY CLUSTERED 
(
	[INFORMATION_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0016]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0016](
	[INFORMATION_DATE] [varchar](8) NOT NULL,
	[WRITE_NO] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[CHECK_CRAD_DATE] [varchar](8) NOT NULL,
	[SPREAD_UNIT] [varchar](100) NOT NULL,
	[PROMOTER_NO] [varchar](16) NOT NULL,
	[PROMOTER_NAME] [varchar](100) NOT NULL,
	[FIRST_BRUSH_DATE] [varchar](16) NOT NULL,
	[FIRST_BRUSH_AMT] [numeric](13, 0) NOT NULL,
 CONSTRAINT [PK_Rep0016] PRIMARY KEY CLUSTERED 
(
	[WRITE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0017]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0017](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[GRADE] [varchar](2) NOT NULL,
	[ITEMS] [int] NOT NULL,
	[DATE] [varchar](8) NOT NULL,
	[TYPE] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep0017] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0018]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0018](
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[HOLDCARDER_ID] [varchar](11) NOT NULL,
	[CREDIT_CARD_ID] [varchar](16) NOT NULL,
	[IN_TIME] [datetime] NOT NULL,
	[OUT_TIME] [datetime] NOT NULL,
	[PARKING_TIME] [numeric](3, 0) NOT NULL,
	[FREE_TIME] [numeric](3, 0) NOT NULL,
	[PARKING_AMT] [numeric](10, 0) NOT NULL,
	[REDEEMED_HOURS] [numeric](3, 0) NOT NULL,
	[POINT] [numeric](10, 0) NOT NULL,
	[RESULT] [varchar](2) NOT NULL,
	[STATION_NO] [varchar](5) NOT NULL,
	[AUTHORIZE_NO] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Rep0018] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0019]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0019](
	[STATION_NO] [varchar](5) NOT NULL,
	[HOLDCARDER_ID] [varchar](16) NOT NULL,
	[IN_TIME] [datetime] NOT NULL,
	[OUT_TIME] [datetime] NOT NULL,
	[PARKING_TIME] [numeric](3, 0) NOT NULL,
	[FREE_TIME] [numeric](3, 0) NOT NULL,
	[PARKING_AMT] [numeric](10, 0) NOT NULL,
	[REDEEMED_HOURS] [numeric](3, 0) NOT NULL,
	[REDEEMED_POINT] [numeric](10, 0) NOT NULL,
	[RESULT] [varchar](5) NOT NULL,
 CONSTRAINT [PK_Rep0019] PRIMARY KEY CLUSTERED 
(
	[HOLDCARDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0020]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0020](
	[ACCOUNT_ID] [varchar](11) NOT NULL,
	[HOLDCARDER_ID] [varchar](11) NOT NULL,
	[CREDIT_CARD_ID] [varchar](16) NOT NULL,
	[IN_TIME] [datetime] NOT NULL,
	[OUT_TIME] [datetime] NOT NULL,
	[PARKING_TIME] [numeric](3, 0) NOT NULL,
	[FREE_TIME] [numeric](3, 0) NOT NULL,
	[PARKING_AMT] [numeric](10, 0) NOT NULL,
	[REDEEMED_HOURS] [numeric](3, 0) NOT NULL,
	[REDEEMED_POINT] [numeric](10, 0) NOT NULL,
	[RESULT] [varchar](2) NOT NULL,
	[STATION_NO] [varchar](5) NOT NULL,
	[AUTHORIZE_NO] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Rep0020] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0021]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0021](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[CHINESE_NAME] [varchar](100) NOT NULL,
	[TRANS_CODE] [varchar](16) NOT NULL,
	[IN_CONSUMPTION_AMT] [numeric](13, 0) NOT NULL,
	[IN_CONSUMPTION_ITEMS] [numeric](13, 0) NOT NULL,
	[TRANS_CODE_2] [varchar](16) NOT NULL,
	[OUT_CONSUMPTION_AMT] [numeric](13, 0) NOT NULL,
	[OUT_CONSUMPTION_ITEMS] [numeric](13, 0) NOT NULL,
	[IN_FEEDBACK] [numeric](13, 0) NOT NULL,
	[OUT_FEEDBACK] [numeric](13, 0) NOT NULL,
 CONSTRAINT [PK_Rep0021] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0022]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0022](
	[SPREAD_UNIT] [varchar](100) NOT NULL,
	[PROMOTER_NO] [varchar](16) NOT NULL,
	[PROMOTER_NAME] [varchar](100) NOT NULL,
	[CARD_ID] [varchar](16) NOT NULL,
	[CHINESS_NAME] [varchar](100) NOT NULL,
	[ISSUER_DATE] [datetime] NOT NULL,
	[PROJECT_CODE] [varchar](16) NOT NULL,
	[CARDS_TYPE] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Rep0022] PRIMARY KEY CLUSTERED 
(
	[CARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0023]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0023](
	[SPREAD_UNIT] [varchar](100) NOT NULL,
	[PROMOTER_NO] [varchar](16) NOT NULL,
	[PROMOTER_NAME] [varchar](100) NOT NULL,
	[CARD_ID] [varchar](16) NOT NULL,
	[CHINESS_NAME] [varchar](100) NOT NULL,
	[ISSUER_DATE] [datetime] NOT NULL,
	[PROJECT_CODE] [varchar](16) NOT NULL,
	[CARDS_TYPE] [varchar](16) NOT NULL,
	[FIRST_BRUSH_DATE] [datetime] NOT NULL,
 CONSTRAINT [PK_Rep0023] PRIMARY KEY CLUSTERED 
(
	[CARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0026]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0026](
	[YEAR] [varchar](3) NOT NULL,
	[GRADE] [varchar](2) NOT NULL,
	[CARDHOLDER_ID] [varchar](11) NOT NULL,
	[CREDIT_CARD_NUMBER] [varchar](16) NOT NULL,
	[MONTH] [varchar](2) NOT NULL,
	[ITEM] [int] NOT NULL,
 CONSTRAINT [PK_Rep0026] PRIMARY KEY CLUSTERED 
(
	[CARDHOLDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0027]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0027](
	[YEAR] [varchar](3) NOT NULL,
	[GRADE] [varchar](1) NOT NULL,
	[CARDHOLDER_ID] [varchar](11) NOT NULL,
	[CREDIT_CARD_NUMBER] [varchar](16) NOT NULL,
	[MONTH] [varchar](2) NOT NULL,
	[ITEM] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0028]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0028](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[YEAR] [varchar](3) NOT NULL,
	[MONTH_TERMINI] [varchar](2) NOT NULL,
	[AREA] [varchar](8) NOT NULL,
	[AIRPORT] [varchar](4) NOT NULL,
	[SHUTTLE] [numeric](6, 0) NOT NULL,
 CONSTRAINT [PK_Rep0028] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0029]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0029](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[YEAR] [varchar](3) NOT NULL,
	[MONTH_TERMINI] [varchar](2) NOT NULL,
	[MONTH] [varchar](4) NOT NULL,
	[CARD_PRODUCT] [varchar](6) NOT NULL,
	[PEOPLE] [numeric](6, 0) NOT NULL,
	[LAPS] [numeric](6, 0) NOT NULL,
 CONSTRAINT [PK_Rep0029] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0030]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0030](
	[ACTIVITY_CODE] [varchar](16) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[CARDHOLDER_ID] [varchar](16) NOT NULL,
	[NUCLEAR_DAY] [varchar](8) NOT NULL,
	[CARDHOLDER_NAME] [varchar](100) NOT NULL,
	[BILLING_ADDRESS] [varchar](100) NOT NULL,
	[DOWNTOWN_PHONE] [varchar](10) NOT NULL,
	[MOBLIE_PHONE] [varchar](10) NOT NULL,
	[ACCOUNTING_DATE] [varchar](8) NOT NULL,
	[PROMOTE_ACCESS_CODES] [varchar](16) NOT NULL,
	[PROMOTE_ACCESS_NAME] [varchar](100) NOT NULL,
	[PROMOTE_ACCESS_PERSONNEL] [varchar](16) NOT NULL,
	[FEEDBACK_CONTENT] [varchar](100) NOT NULL,
	[Account_id] [varchar](100) NOT NULL,
	[Account_name] [varchar](100) NOT NULL,
	[card_type] [varchar](10) NOT NULL,
	[PROJECT_CODE] [varchar](100) NOT NULL,
	[AUDIT_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0030] PRIMARY KEY CLUSTERED 
(
	[CARDHOLDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0032]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0032](
	[ACTIVITY_CODE] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[APPLICATION_DATE] [varchar](8) NOT NULL,
	[FIRST_CONSUMPTION_DATE] [varchar](50) NOT NULL,
	[FEEDBACK_CONTENT] [varchar](100) NOT NULL,
	[FEEDBACK_DATE] [varchar](50) NOT NULL,
	[FEEDBACK_ITEMS] [int] NOT NULL,
	[SOURCES_INTO_PIECES] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rep0032] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0033]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0033](
	[ACTIVITY_CODE] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[APPLICATION_ID] [varchar](16) NOT NULL,
	[APPLICATION_DATE] [varchar](8) NOT NULL,
	[APPLICATION_ITEMS] [varchar](16) NOT NULL,
	[USER_NO] [varchar](16) NOT NULL,
	[WITHHOLDING_CODE] [varchar](16) NOT NULL,
	[FIRST_WITHHOLDING_DATE] [varchar](50) NOT NULL,
	[FEEDBACK_CONTENT] [varchar](100) NOT NULL,
	[FEEDBACK_DATE] [varchar](8) NOT NULL,
	[FEEDBACK_ITEMS] [int] NOT NULL,
 CONSTRAINT [PK_Rep0033] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0034]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0034](
	[ACTIVITY_CODE] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[APPLICATION_DATE] [varchar](8) NOT NULL,
	[FIRST_WITHHOLDING_DATE] [varchar](8) NOT NULL,
	[FEEDBACK_CONTENT] [varchar](100) NOT NULL,
	[FEEDBACK_DATE] [varchar](8) NOT NULL,
	[FEEDBACK_ITMES] [int] NOT NULL,
	[SINCE_BUCKLE_WAREROOM] [varchar](16) NOT NULL,
	[SINCE_BUCKLE_1] [varchar](16) NOT NULL,
	[SINCE_BUCKLE_2] [varchar](16) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0036]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0036](
	[JAL_ID_NO] [varchar](16) NOT NULL,
	[ENGLISH_NAME] [varchar](100) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[LOYAL_CODE] [varchar](16) NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[ITEMS] [int] NOT NULL,
	[BASIC_MILEAGE] [int] NOT NULL,
	[ACTIVITY_MILEAGE] [int] NOT NULL,
	[SPREAD_ACTIVITY_CODE] [varchar](13) NOT NULL,
	[OVERWEIGHT_MILEAGE] [int] NOT NULL,
	[NO_JAL] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Rep0036] PRIMARY KEY CLUSTERED 
(
	[JAL_ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0037]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0037](
	[POSITIVE_CARD_ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[CARD_TYPE] [varchar](16) NOT NULL,
	[CARD_GRADE] [varchar](16) NOT NULL,
	[GENDER] [varchar](2) NOT NULL,
	[AGE] [varchar](3) NOT NULL,
	[AGE_LEVEL] [int] NOT NULL,
	[BILLING_AREA] [varchar](100) NOT NULL,
	[CONSUMPTION_DATE] [datetime] NOT NULL,
	[CONSUMPTION_MONTH] [datetime] NOT NULL,
	[CONSUMPTION_WEEK] [datetime] NOT NULL,
	[SEP_CODE] [varchar](16) NOT NULL,
	[SHOP_NAME] [varchar](100) NOT NULL,
	[SEP_TYPE] [varchar](16) NOT NULL,
	[TRANS_TYPE] [varchar](16) NOT NULL,
	[ORIGINAL_CCY] [int] NOT NULL,
	[NT_CCY] [int] NOT NULL,
	[AMT_LEVEL] [int] NOT NULL,
	[CONSUMPTION_COUNTRY] [varchar](2) NOT NULL,
	[CONSUMPTION_CCY] [varchar](3) NOT NULL,
	[MCC_CODE] [varchar](16) NOT NULL,
	[STAGING] [varchar](3) NOT NULL,
	[promoter_Code] [varchar](16) NOT NULL,
	[entry_Mode] [varchar](16) NOT NULL,
	[trans_Code] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Rep0037] PRIMARY KEY CLUSTERED 
(
	[POSITIVE_CARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0038]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0038](
	[POSITIVE_CARD_ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[CARD_TYPE] [varchar](16) NOT NULL,
	[CARD_GRADE] [varchar](16) NOT NULL,
	[GENDER] [varchar](2) NOT NULL,
	[AGE] [varchar](3) NOT NULL,
	[AGE_LEVEL] [int] NOT NULL,
	[BILLING_ARAE] [varchar](100) NOT NULL,
	[MARITAL_STATUS] [varchar](2) NOT NULL,
	[COMPANY_NAME] [varchar](100) NOT NULL,
	[JOB_TITLE] [varchar](100) NOT NULL,
	[OPEN_CARD_DATE] [varchar](8) NOT NULL,
	[CREDIT] [int] NOT NULL,
	[SURPLUS_CREDIT] [int] NOT NULL,
	[YEAR_CONSUMPTION_AMT] [int] NOT NULL,
	[NY_UNLIMITED] [varchar](1) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[POSTAL_ZONE] [varchar](3) NOT NULL,
	[BILLING_ADDRESS] [varchar](100) NOT NULL,
	[BIRTHDAY] [varchar](8) NOT NULL,
	[NY_STOP_CARD] [varchar](1) NOT NULL,
	[NY_CONTROL] [varchar](1) NOT NULL,
	[NY_SELL] [varchar](1) NOT NULL,
	[NY_B_CARD] [varchar](1) NOT NULL,
	[NY_WORLD] [varchar](1) NOT NULL,
	[PROJECT_CODE] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0038] PRIMARY KEY CLUSTERED 
(
	[POSITIVE_CARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0040]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0040](
	[ID] [varchar](16) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[AGE] [varchar](2) NOT NULL,
	[GENDER_MARK] [varchar](1) NOT NULL,
	[MARK_1] [varchar](1) NOT NULL,
	[MARK_2] [varchar](1) NOT NULL,
	[MARK_3] [varchar](1) NOT NULL,
	[MARK_4] [varchar](1) NOT NULL,
	[MARK_5] [varchar](1) NOT NULL,
	[BILL_ADDRESS] [varchar](100) NOT NULL,
	[COMSUMPTION_AMT] [int] NOT NULL,
	[YEAR_COMSUMPTION_AMT_1] [int] NOT NULL,
	[BEFORE_COMSUMPTION_AMT_1] [int] NOT NULL,
	[YEAR_COMSUMPTION_AMT_2] [int] NOT NULL,
	[BEFORE_COMSUMPTION_AMT_2] [int] NOT NULL,
	[CONSUMPTION_MARK_1] [varchar](1) NOT NULL,
	[CONSUMPTION_MARK_2] [varchar](1) NOT NULL,
	[CONSUMPTION_MARK_3] [varchar](1) NOT NULL,
	[CONSUMPTION_MARK_4] [varchar](1) NOT NULL,
	[CONSUMPTION_MARK_5] [varchar](1) NOT NULL,
	[CONSUMPTION_MARK_6] [varchar](1) NOT NULL,
	[CONSUMPTION_MARK_7] [varchar](1) NOT NULL,
	[DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0040] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0041]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0041](
	[ID] [nvarchar](16) NULL,
	[GENDER] [nvarchar](1) NULL,
	[NAME] [nvarchar](100) NULL,
	[HIGH_CARD] [nvarchar](16) NULL,
	[DIVIDEND_POINT] [numeric](13, 0) NULL,
	[SETTLEMENTS] [nvarchar](100) NULL,
	[POSTTAL_ZONE] [nvarchar](3) NULL,
	[BILLING_ADDRESS] [nvarchar](100) NULL,
	[BIRTHDAY_MONTH] [nvarchar](2) NULL,
	[YEARS] [nvarchar](2) NULL,
	[BEFORE_CONSUMPTION_POINT] [numeric](13, 0) NULL,
	[BEFORE_CONSUMPTION_DIVIDEND] [nvarchar](1) NULL,
	[STAFF_NOTES] [nvarchar](1) NULL,
	[COMPANY_EMPLOYEES] [nvarchar](100) NULL,
	[Date] [varchar](8) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0042]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0042](
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[AIRPORT_MEMBER_NO] [varchar](16) NOT NULL,
	[ONCE_MILEAGE_QTY] [int] NOT NULL,
	[UPDATE_DIVIDEND_POINT] [int] NOT NULL,
	[WILL_OVERDUE_DIVIDEND_POINT] [int] NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[ACCUMULATION_CONSUMPTION] [varchar](13) NOT NULL,
	[OVERDUE_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0042] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0043]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0043](
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[CARD_MARK] [varchar](1) NOT NULL,
	[HIGH_CARD_MARK] [varchar](3) NOT NULL,
	[ADDRESS_EARE] [varchar](100) NOT NULL,
	[TOTAL_CONSUMPTION_AMT] [int] NOT NULL,
	[ONE_HIGH_CARD_AMT] [int] NOT NULL,
	[TWO_HIGH_CARD_AMT] [int] NOT NULL,
	[AIRPORT_PARKING_MARK] [varchar](1) NOT NULL,
	[BEFORE_AIRPORT_PARKING_MARK] [varchar](1) NOT NULL,
	[AIRPORT_SHUTTLE_MARK] [varchar](1) NOT NULL,
	[BEFORE_AIRPORT_SHUTTLE_MARK] [varchar](1) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0043] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0045]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0045](
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[NY_CONTROL] [varchar](1) NOT NULL,
	[NOT_SELL_MARK] [varchar](1) NOT NULL,
	[NY_BANK_CARD] [varchar](1) NOT NULL,
	[GRAND_TOTAL_AMT] [int] NOT NULL,
	[GRAND_TOTAL_ITEMS] [int] NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[CONSUMPTION_ITEMS] [int] NOT NULL,
	[MASTER_OF_AMT] [int] NOT NULL,
	[MASTER_OF_ITEMS] [int] NOT NULL,
	[HOLDCARD_QTY] [int] NOT NULL,
	[PREMIUMS_AMT] [int] NOT NULL,
	[PREMIUMS_ITEMS] [int] NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
	[MESSAGE] [varchar](100) NOT NULL,
	[MP] [varchar](100) NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[EMAIL] [varchar](100) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0045] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0046]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0046](
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[NY_CONTROL] [varchar](1) NOT NULL,
	[NOT_SELL_MARK] [varchar](1) NOT NULL,
	[NY_BANK_CARD] [varchar](1) NOT NULL,
	[GRAND_TOTAL_AMT] [int] NOT NULL,
	[GRAND_TOTAL_ITEMS] [int] NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[CONSUMPTION_ITEMS] [int] NOT NULL,
	[MASTER_OF_AMT] [int] NOT NULL,
	[MASTER_OF_ITEMS] [int] NOT NULL,
	[PREMIUMS_AMT] [int] NOT NULL,
	[PREMIUMS_ITEMS] [int] NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[MP] [varchar](10) NOT NULL,
	[Card_Type] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Rep0046] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0047]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0047](
	[CARD_NO] [varchar](16) NOT NULL,
	[CARD_TYPE] [varchar](16) NOT NULL,
	[POSITIVE_CARD_MARK] [varchar](1) NOT NULL,
	[HOLDCARD_ID] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[CONSUMPTION_DATE] [datetime] NOT NULL,
	[NY_CONTROL] [varchar](1) NOT NULL,
	[NOT_SELL_MARK] [varchar](1) NOT NULL,
	[CIRCULATE_CARD_MARK] [varchar](1) NOT NULL,
	[POSITIVE_CARD_QTY] [int] NOT NULL,
	[MP] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Rep0047] PRIMARY KEY CLUSTERED 
(
	[CARD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0048]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0048](
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[NY_COMTROL_CARD] [varchar](1) NOT NULL,
	[NOT_SELL_MARK] [varchar](1) NOT NULL,
	[NY_BANK_CARD] [varchar](1) NOT NULL,
	[NY_BANK_CREDIT] [varchar](1) NOT NULL,
	[NY_BANK_CYCLE] [varchar](1) NOT NULL,
	[NY_BANK_LOAN] [varchar](1) NOT NULL,
	[VIP_MARK] [varchar](1) NOT NULL,
	[MESSAGE] [varchar](100) NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
	[BIRTHDAY] [datetime] NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[GUARANTOR_MARK] [varchar](1) NOT NULL,
	[WARNING_GRAND] [varchar](13) NOT NULL,
	[PAY_RATING] [varchar](13) NOT NULL,
	[MP] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Rep0048] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0049]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0049](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[UNIT_CODE] [varchar](13) NOT NULL,
	[UNIT_NAME] [varchar](100) NOT NULL,
	[TOTAL_ISSUER_QTY] [int] NOT NULL,
	[CIRCULATE_CARD_QTY] [int] NOT NULL,
	[GRAND_TOTAL_SHOP_QTY] [int] NOT NULL,
	[BILLING_AMT] [int] NOT NULL,
	[SEP_SHOP_FEE] [int] NOT NULL,
	[CLUB_FEEDBACK_AMT_1] [int] NOT NULL,
	[CLUB_FEEDBACK_AMT_2] [int] NOT NULL,
	[SUM_FEEDBACK_AMT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0049] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0052]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep0052](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[DOCTOR] [int] NOT NULL,
	[MASTER] [int] NOT NULL,
	[UNIVERSITY] [int] NOT NULL,
	[COLLEGE] [int] NOT NULL,
	[SENIOR] [int] NOT NULL,
	[HIGH] [int] NOT NULL,
 CONSTRAINT [PK_Rep0052] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep0053]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep0053](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[GRADE_1] [int] NOT NULL,
	[GRADE_2] [int] NOT NULL,
	[GRADE_3] [int] NOT NULL,
	[GRADE_4] [int] NOT NULL,
 CONSTRAINT [PK_Rep0053] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep0056]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0056](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[SHOP_NAME] [varchar](100) NOT NULL,
	[CONSUMPTION_GRAND] [numeric](13, 0) NOT NULL,
	[TOTAL_POSITIVE_PEOPLE] [int] NOT NULL,
	[TOTAL_CONSUMPTION_AMT] [int] NOT NULL,
	[POSITIVE_CARD_PEOPLE] [int] NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[CONSUMPTION_ITEMS] [int] NOT NULL,
	[PERCENT_POSITIVE_CARD_PEOPLE] [numeric](13, 0) NOT NULL,
	[PERCENT_CONSUMPTION_AMT] [numeric](13, 0) NOT NULL,
	[AVG_CONSUMPTION_AMT] [numeric](13, 0) NOT NULL,
	[AVG_CONSUMPTION_ITEMS] [numeric](13, 0) NOT NULL,
 CONSTRAINT [PK_Rep0056] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0057]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0057](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[SHOP_TYPE] [varchar](16) NOT NULL,
	[HIHG_GRAND_CARD] [varchar](30) NOT NULL,
	[CONSUMPTION_PEOPLE] [int] NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[OTHER_CONSUMPTION_PEOPLE] [int] NOT NULL,
	[OTHER_CONSUMPTION_AMT] [int] NOT NULL,
	[DEPARTMENT_CONSUMPTION_PEOPLE] [int] NOT NULL,
	[DEPARTMENT_CONSUMPTION_AMT] [int] NOT NULL,
	[NOT_DEPARTMENT_CONSUMPTION_PEOPLE] [int] NOT NULL,
	[NOT_DEPARTMENT_CONSUMPTION_AMT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0057] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0059]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep0059](
	[YYMM] [datetime] NOT NULL,
	[DIVIDEND_POINT_ITEM] [int] NOT NULL,
	[CONSUNPTION_AMT] [int] NOT NULL,
	[DIVIDEND_POINT_AMT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0059] PRIMARY KEY CLUSTERED 
(
	[YYMM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep0061]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0061](
	[YEAR] [datetime] NOT NULL,
	[MONTH] [datetime] NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[CARDHOLDER_ID] [varchar](16) NOT NULL,
	[BILLING_ADDRESS] [varchar](100) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[CONTROL_CARD] [varchar](1) NOT NULL,
	[DENY_MARK] [varchar](1) NOT NULL,
	[VALID_SHEETS] [int] NOT NULL,
	[GRAND_TOTAL_AMT] [int] NOT NULL,
	[GRAND_TOTAL_ITEMS] [int] NOT NULL,
 CONSTRAINT [PK_Rep0061] PRIMARY KEY CLUSTERED 
(
	[CARDHOLDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0062]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0062](
	[POSITIVE_ID] [varchar](16) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[CARD_TYPE] [varchar](16) NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[SPE_CODE] [varchar](16) NOT NULL,
	[SHOP_NAME] [varchar](100) NOT NULL,
	[ORIGINAL_CCY_AMT] [numeric](18, 6) NOT NULL,
	[NT_CCY_AMT] [int] NOT NULL,
	[TOTAL_STAGING] [int] NOT NULL,
	[CONSUMPTION_COUNTRY] [varchar](2) NOT NULL,
	[CONSUMPTION_CCY] [varchar](3) NOT NULL,
	[MCC_CODE] [varchar](13) NOT NULL,
	[TRANS_CODE] [varchar](13) NOT NULL,
	[LOGIN_TIME] [varchar](1) NOT NULL,
	[ACTIVITY_CODE] [varchar](16) NOT NULL,
	[SIGN_SOURCE] [varchar](100) NOT NULL,
	[POS_ENTRY_MODE] [varchar](13) NOT NULL,
 CONSTRAINT [PK_Rep0062] PRIMARY KEY CLUSTERED 
(
	[POSITIVE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0078]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0078](
	[ID_NO] [varchar](10) NOT NULL,
	[UNSUCCESSFUL_REASON] [varchar](30) NOT NULL,
	[AMT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0078] PRIMARY KEY CLUSTERED 
(
	[ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0087]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0087](
	[MEMBER_NO] [varchar](16) NOT NULL,
	[ID] [varchar](16) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[AREA] [varchar](16) NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[HOME_PHONE] [varchar](10) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[AGE] [varchar](2) NOT NULL,
	[BIRTHDAY] [datetime] NOT NULL,
	[MARITAL_STATUS] [varchar](1) NOT NULL,
	[GENDAR] [varchar](1) NOT NULL,
	[EDUCATIONAL_BACKGROUND] [varchar](1) NOT NULL,
	[OCCUPATION] [varchar](30) NOT NULL,
	[ANNUAL_INCOME] [int] NOT NULL,
	[CARD_GRADE] [varchar](16) NOT NULL,
	[NY_SELL] [varchar](1) NOT NULL,
	[TWO_INSIDE_CONSUMPTION] [int] NOT NULL,
	[TWO_OUTSIDE_CONSUMPTION] [int] NOT NULL,
	[TWO_CONSUMPTION_SUM] [int] NOT NULL,
	[TWO_INSIDE_CONSUMPTION_LEVEL] [numeric](13, 2) NOT NULL,
	[TWO_OUTSIDE_CONSUMPTION_LEVEL] [numeric](13, 2) NOT NULL,
	[ONE_INSIDE_CONSUMPTION] [int] NOT NULL,
	[ONE_OUTSIDE_CONSUMPTION] [int] NOT NULL,
	[ONE_CONSUMPTION_SUM] [int] NOT NULL,
	[ONE_INSIDE_CONSUMPTION_LEVEL] [numeric](13, 2) NOT NULL,
	[ONE_OUTSIDE_CONSUMPTION_LEVEL] [numeric](13, 2) NOT NULL,
	[INSIDE_CONSUMPTION] [int] NOT NULL,
	[OUTSIDE_CONSUMPTION] [int] NOT NULL,
	[CONSUMPTION_SUM] [int] NOT NULL,
	[HOLD_CARD_TYPE] [varchar](16) NOT NULL,
	[INSIDE_CONSUMPTION_LEVEL] [numeric](13, 0) NOT NULL,
	[OUTSIDE_CONSUMPTION_LEVEL] [numeric](13, 0) NOT NULL,
	[MCC_TYPE] [varchar](16) NOT NULL,
	[STATING_ITEMS] [int] NOT NULL,
	[STATING_AMT] [int] NOT NULL,
	[DIVIDEND_DISCOUNT_ITEM] [int] NOT NULL,
	[DIVIDEND_DISCOUNT_AMT] [int] NOT NULL,
	[JP_MEMBER_NO] [varchar](16) NOT NULL,
	[ENGLISH_NAME] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Rep0087] PRIMARY KEY CLUSTERED 
(
	[MEMBER_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0089]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0089](
	[GRAND_TOTAL_ITEM] [int] NOT NULL,
	[GRAND_TOTAL_AMT] [int] NOT NULL,
	[CONSUMPTION] [int] NOT NULL,
	[MORE_THAN] [int] NOT NULL,
	[GRAND_TOTAL_MORE_THAN] [int] NOT NULL,
	[STAGING_ITEMS] [int] NOT NULL,
	[TOTAL_STAGING_AMT] [int] NOT NULL,
	[SHOP_IN_OUT] [varchar](10) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0089] PRIMARY KEY CLUSTERED 
(
	[CONSUMPTION_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0090]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0090](
	[RECOMMEND_ID] [varchar](16) NOT NULL,
	[RECOMMEND_NAME] [varchar](100) NOT NULL,
	[RECOMMENDED_ID] [varchar](16) NOT NULL,
	[RECOMMENDED_NAME] [varchar](100) NOT NULL,
	[RECOMMENDED_NO] [varchar](16) NOT NULL,
	[NY_RECOMMENDED] [varchar](1) NOT NULL,
	[RECONNEND_POINT] [int] NOT NULL,
	[ACCUMULATION_POINT] [int] NOT NULL,
	[EXCHANGE_POINT] [int] NOT NULL,
	[EXCHANGE_COMMODITY] [varchar](30) NOT NULL,
	[IDENTITY_TYPE] [varchar](1) NOT NULL,
	[WRITE_NO] [varchar](16) NOT NULL,
	[ACCUMULATION_POINT_1] [int] NOT NULL,
	[EXCHANGE_POINT_1] [int] NOT NULL,
	[EXCHANGE_COMMODITY_1] [varchar](30) NOT NULL,
	[IDENTITY_TYPE_1] [varchar](1) NOT NULL,
	[WRITE_NO_1] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Rep0090] PRIMARY KEY CLUSTERED 
(
	[WRITE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0091]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0091](
	[PATH] [varchar](30) NOT NULL,
	[UNIT_TYPE] [varchar](100) NOT NULL,
	[AIRPORT_NAME] [varchar](100) NOT NULL,
	[UNIT_NAME] [varchar](100) NOT NULL,
	[HOLDCARD_ID] [varchar](16) NOT NULL,
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[APPLICATION_NO] [varchar](16) NOT NULL,
	[SPREAD_PERSONNEL] [varchar](100) NOT NULL,
	[SPREAD_PERSONNEL_NAME] [varchar](100) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[NUCLEAR_CARD_DATE] [varchar](8) NOT NULL,
	[FIRST_BRUSH_DATE] [varchar](8) NOT NULL,
	[FIRST_BRUSH_MARK] [varchar](1) NOT NULL,
	[NY_ADDITIONAL] [varchar](1) NOT NULL,
	[FEEDBACK_BONUS] [int] NOT NULL,
	[FEEDBACK_DATE] [varchar](8) NOT NULL,
	[MARK] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0091] PRIMARY KEY CLUSTERED 
(
	[HOLDCARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0103]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0103](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[ALTER_DATE] [varchar](8) NOT NULL,
	[PREMIUMS_NAME] [varchar](100) NOT NULL,
	[DEPOSIT_QTY] [int] NOT NULL,
	[SHIPMENT_QTY] [int] NOT NULL,
	[STOCK_FIRM] [varchar](100) NOT NULL,
	[ACTIVITY_HANDLING] [varchar](100) NOT NULL,
	[RESERVE_OTY] [int] NOT NULL,
	[DEFECT_QTY] [int] NOT NULL,
 CONSTRAINT [PK_Rep0103] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0104]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0104](
	[PREMIUMS_NO] [varchar](16) NOT NULL,
	[RREMIUMS_NAME] [varchar](100) NOT NULL,
	[BEGIN_STOCK_QTY] [int] NOT NULL,
	[MONTH_CONSUMING_QTY] [int] NOT NULL,
	[ACTUAL_QTY] [int] NOT NULL,
	[PREMIUMS_VALIDITY_PERIOD] [varchar](8) NOT NULL,
	[UNIT_PRICE] [int] NOT NULL,
	[STORE_QTY] [int] NOT NULL,
	[STORE_FIRM_QTY_1] [int] NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0104] PRIMARY KEY CLUSTERED 
(
	[PREMIUMS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0105]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0105](
	[PREMIUMS_TYPE] [varchar](100) NOT NULL,
	[PREMIUMS_NO] [varchar](16) NOT NULL,
	[PREMIUMS_NAME] [varchar](100) NOT NULL,
	[BEGIN_STOCK_QTY] [numeric](13, 0) NOT NULL,
	[MONTH_CONSUMING_QTY] [numeric](13, 0) NOT NULL,
	[ACTUAL_QTY] [numeric](13, 0) NOT NULL,
	[RESERVATION_QTY] [numeric](13, 0) NOT NULL,
	[AVAILABLE_QTY] [numeric](13, 0) NOT NULL,
 CONSTRAINT [PK_Rep0105] PRIMARY KEY CLUSTERED 
(
	[PREMIUMS_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0106]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0106](
	[PREMIUMS_NO] [varchar](16) NOT NULL,
	[PREMIUMS_NAME] [varchar](100) NOT NULL,
	[BEGIN_STOCK_QTY] [int] NOT NULL,
	[MONTH_CONSUMING_QTY] [int] NOT NULL,
	[ACTUAL_QTY] [int] NOT NULL,
	[PREMIUMS_VALIDITY_PERIOD] [varchar](50) NOT NULL,
	[UNIT_PRICE] [int] NOT NULL,
 CONSTRAINT [PK_Rep0106] PRIMARY KEY CLUSTERED 
(
	[PREMIUMS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0107]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0107](
	[PREMIUMS_NO] [varchar](16) NOT NULL,
	[PREMIUMS_NAME] [varchar](100) NOT NULL,
	[BEGIN_STOCK_QTY] [int] NOT NULL,
	[MONTH_CONSUMING_QTY] [int] NOT NULL,
	[ACTUAL_QTY] [int] NOT NULL,
	[PREMIUMS_VALIDITY_PERIOD] [varchar](50) NOT NULL,
	[UNIT_PRICE] [int] NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0107] PRIMARY KEY CLUSTERED 
(
	[PREMIUMS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0108]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0108](
	[ORDER_NO] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[POSTAL_CODE] [varchar](5) NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[CONTACT_PHONE] [varchar](10) NOT NULL,
	[PREMIUMS_CODE] [varchar](16) NOT NULL,
	[PREMIUMS_NAME] [varchar](100) NOT NULL,
	[QTY] [int] NOT NULL,
	[ACTIVITY_HANDLING] [varchar](100) NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
	[SHIPMENT_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0108] PRIMARY KEY CLUSTERED 
(
	[ORDER_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0109]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0109](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[PICKUP_PEOPLE] [varchar](100) NOT NULL,
	[PICKUP_ADDRESS] [varchar](100) NOT NULL,
	[PHONE] [varchar](10) NOT NULL,
	[NIGHT_PHONE] [varchar](10) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[PREMIUMS_NAME] [varchar](100) NOT NULL,
	[QTY] [int] NOT NULL,
	[RETRIEVE_ADDRESS] [varchar](100) NOT NULL,
	[ACTIVITY_HANDLING] [varchar](100) NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
	[PICKUP_DATE] [varchar](8) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0111]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0111](
	[FAIL_DATE] [varchar](8) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[PRODUCT_CODE] [varchar](16) NOT NULL,
	[EXCHANGE_POINT] [int] NOT NULL,
	[EXCHANGE_ITEMS] [int] NOT NULL,
	[EXAMINE_STATUS] [varchar](3) NOT NULL,
	[EXCHANGE_SOURCE] [varchar](100) NOT NULL,
	[USE_EXCHANGE_POINT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0111] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0112]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0112](
	[DATE] [varchar](8) NOT NULL,
	[ADD] [int] NOT NULL,
	[EXCHANGE_CASH_POINT] [int] NOT NULL,
	[ADJUSTMENT_CASH_POINT] [int] NOT NULL,
	[STOP_CASH_POINT] [int] NOT NULL,
	[TODAY_BALANCE] [int] NOT NULL,
	[OVERDUE_CASH_POINT] [int] NOT NULL,
	[SUPERVISOR] [varchar](100) NOT NULL,
	[HANDLING] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rep0112] PRIMARY KEY CLUSTERED 
(
	[DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0113]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0113](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[DIVIDEND_CARD_NO] [varchar](16) NOT NULL,
	[BEFORE_CHANGE_POINT] [int] NOT NULL,
	[AFTER_CHANGE_POINT] [int] NOT NULL,
	[POINT_CHANGE_CODE] [varchar](16) NOT NULL,
	[POINT_CHANGE_NAME] [varchar](16) NOT NULL,
	[CHANGE_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0113] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0114]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0114](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[ADJUSTMENT_BEFORE_POINT] [int] NOT NULL,
	[ADJUSTMENT_AMT] [int] NOT NULL,
	[ADJUSTMENT_POINT] [int] NOT NULL,
	[ADJUSTMENT_AFTER_POINT] [int] NOT NULL,
	[ADJUSTMENT_DATE] [varchar](50) NOT NULL,
	[ADJUSTMENT_TIME] [datetime] NOT NULL,
	[ADJUSTMENT_STAFF] [varchar](100) NOT NULL,
	[EXAMINE_STATUS] [varchar](30) NOT NULL,
	[ADJUSTMENT_SOURCE] [varchar](100) NOT NULL,
	[ADJUSTMENT_SUCCESS_ITEMS] [int] NOT NULL,
	[ADJUSTMENT_SUCCESS_POINT] [int] NOT NULL,
	[ADJUSTMENT_FAIL_ITEMS] [int] NOT NULL,
	[ADJUSTMENT_FAIL_POINT] [int] NOT NULL,
	[SUPERVISOR] [varchar](100) NOT NULL,
	[HANDLING] [varchar](100) NOT NULL,
	[point_type] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0114] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0115]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0115](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[EXCHANGE_DATE] [varchar](8) NOT NULL,
	[QTY] [int] NOT NULL,
	[EXCHANGE_MILEAGE] [int] NOT NULL,
	[SUM_POINT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0115] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0116]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0116](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[APPLICATION_EXCHANGE_DATE] [varchar](50) NOT NULL,
	[AMT] [int] NOT NULL,
	[EXCHANGE_SOURCE] [varchar](30) NOT NULL,
	[EXAMINE_STATUS] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0116] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0117]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0117](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[ALTER_DATE] [varchar](50) NOT NULL,
	[ALTER_AMT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0117] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0118]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0118](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[FIRM_CODE] [varchar](16) NOT NULL,
	[FIRM_NAME] [varchar](100) NOT NULL,
	[TRANS_CODE] [varchar](2) NOT NULL,
	[ITEMS] [int] NOT NULL,
	[AMT] [int] NOT NULL,
	[MAKE_MONEY_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0118] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0119]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0119](
	[DFPS_NO] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[APPLICATION_DATE_TIME] [varchar](8) NOT NULL,
	[DIVIDEND_POINT] [int] NOT NULL,
	[EXCHANGE_MILEAGE] [int] NOT NULL,
	[COST] [int] NOT NULL,
	[CAL_REPLY_MESSAGE] [varchar](30) NOT NULL,
	[SUCCESS_ITEMS] [int] NOT NULL,
	[FAILURE_ITEMS] [int] NOT NULL,
 CONSTRAINT [PK_Rep0119] PRIMARY KEY CLUSTERED 
(
	[DFPS_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0121]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0121](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[YEARS_INTERVAL] [varchar](10) NOT NULL,
	[STOCK_POINT] [int] NOT NULL,
	[POINT1_1] [int] NOT NULL,
	[POINT1_2] [int] NOT NULL,
	[POINT1_3] [int] NOT NULL,
	[POINT1_4] [int] NOT NULL,
	[POINT1_5] [int] NOT NULL,
	[POINT1_6] [int] NOT NULL,
	[POINT2_1] [int] NOT NULL,
	[POINT2_2] [int] NOT NULL,
	[POINT2_3] [int] NOT NULL,
	[POINT2_4] [int] NOT NULL,
	[POINT2_5] [int] NOT NULL,
	[POINT2_6] [int] NOT NULL,
	[POINT2_7] [int] NOT NULL,
	[POINT2_8] [int] NOT NULL,
	[POINT2_9] [int] NOT NULL,
	[POINT2_10] [int] NOT NULL,
	[POINT2_11] [int] NOT NULL,
	[ZERO_POINT_PEOPLE] [int] NOT NULL,
	[BUSINESS_CARD] [varchar](1) NOT NULL,
	[PROPORTION_POINT1] [numeric](6, 2) NOT NULL,
	[PROPORTION_POINT2] [numeric](6, 2) NOT NULL,
 CONSTRAINT [PK_Rep0121] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0122]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0122](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[YEARS_INTERVAL] [varchar](10) NOT NULL,
	[STOCK_POINT] [int] NOT NULL,
	[POINT1_1] [int] NOT NULL,
	[POINT1_2] [int] NOT NULL,
	[POINT1_3] [int] NOT NULL,
	[POINT1_4] [int] NOT NULL,
	[POINT1_5] [int] NOT NULL,
	[POINT1_6] [int] NOT NULL,
	[POINT2_1] [int] NOT NULL,
	[POINT2_2] [int] NOT NULL,
	[POINT2_3] [int] NOT NULL,
	[POINT2_4] [int] NOT NULL,
	[POINT2_5] [int] NOT NULL,
	[POINT2_6] [int] NOT NULL,
	[POINT2_7] [int] NOT NULL,
	[POINT2_8] [int] NOT NULL,
	[POINT2_9] [int] NOT NULL,
	[POINT2_10] [int] NOT NULL,
	[POINT2_11] [int] NOT NULL,
	[ZERO_POINT_PEOPLE] [int] NOT NULL,
	[BUSINESS_CARD] [varchar](1) NOT NULL,
	[PROPORTION_POINT1] [numeric](6, 2) NOT NULL,
	[PROPORTION_POINT2] [numeric](6, 2) NOT NULL,
 CONSTRAINT [PK_Rep0122] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0123]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0123](
	[PRODUCT_NO] [varchar](16) NOT NULL,
	[PRODUCT_NAME] [varchar](100) NOT NULL,
	[FIRM_NAME] [varchar](100) NOT NULL,
	[MONTH_EXCHANGE_COUNT] [int] NOT NULL,
	[ACCUMULATION_EXCHANGE_COUNT] [int] NOT NULL,
	[COST] [int] NOT NULL,
	[ACCUMULATION_SALE_AMT] [int] NOT NULL,
	[SURPLUS_EXCHANGE_COUNT] [int] NOT NULL,
	[FIRM_SHIPMENT_COUNT] [int] NOT NULL,
	[FIRM_INVOICE_COUNT] [int] NOT NULL,
	[ACCUMULATION_FIRM_INVOICE_COUNT] [int] NOT NULL,
	[CONSUMPTION_POINT] [int] NOT NULL,
	[SUPERVISOR] [varchar](100) NOT NULL,
	[HANDLING] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rep0123] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0124]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0124](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[PRODUCT_NO] [varchar](16) NOT NULL,
	[PRODUCT_NAME] [varchar](100) NOT NULL,
	[INTERVAL_1] [int] NOT NULL,
	[INTERVAL_2] [int] NOT NULL,
	[INTERVAL_3] [int] NOT NULL,
	[INTERVAL_4] [int] NOT NULL,
	[INTERVAL_5] [int] NOT NULL,
	[INTERVAL_6] [int] NOT NULL,
	[INTERVAL_7] [int] NOT NULL,
	[INTERVAL_8] [int] NOT NULL,
	[EXCHANGE_MONTH] [int] NOT NULL,
	[ACCUMULATION_TOTAL_QTY] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0125]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0125](
	[DATE] [varchar](8) NOT NULL,
	[ADD] [int] NOT NULL,
	[EXCHANG_TODAY] [int] NOT NULL,
	[ADJUSTMENT_POINT] [int] NOT NULL,
	[STOP_CARD_POINT] [int] NOT NULL,
	[TODAY_BABALNCE] [int] NOT NULL,
	[OVERDUE_POINT] [int] NOT NULL,
	[SUPERVISOR] [varchar](100) NOT NULL,
	[HANDLING] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rep0125] PRIMARY KEY CLUSTERED 
(
	[DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0126]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0126](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[DIVIDEND_POINT] [int] NOT NULL,
	[CASH_POINT] [int] NOT NULL,
	[REASON] [varchar](30) NOT NULL,
	[CANCEL_TOTAL_DIVIDEND_POINT] [int] NOT NULL,
	[CANCEL_TOTAL_CASH_POINT] [int] NOT NULL,
	[CANCEL_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0126] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0129]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0129](
	[FIRM_NAME] [varchar](100) NOT NULL,
	[EXCHANGE_DATE] [varchar](8) NOT NULL,
	[EXCHANGE_NO] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[PRODUCT_NO] [varchar](16) NOT NULL,
	[EXCHANGE_QTY] [int] NOT NULL,
	[SHIPMENT_DATE] [varchar](8) NOT NULL,
	[SHIPMENT_NO] [varchar](16) NOT NULL,
	[MAKE_MONEY_DATE] [varchar](8) NOT NULL,
	[MAKE_MONEY_NO] [varchar](16) NOT NULL,
	[WRONG_REASON] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0129] PRIMARY KEY CLUSTERED 
(
	[EXCHANGE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0130]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0130](
	[EXCHANGE_DATE] [varchar](8) NOT NULL,
	[EXCHANGE_NO] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[PRODUCT_CODE] [varchar](16) NOT NULL,
	[EXCHANGE_QTY] [int] NOT NULL,
	[RETURE_POINT] [int] NOT NULL,
	[RETURE_SINCE_PAYMENT] [int] NOT NULL,
	[POINT_KIND] [varchar](16) NOT NULL,
 CONSTRAINT [PK_Rep0130] PRIMARY KEY CLUSTERED 
(
	[EXCHANGE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0131]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0131](
	[FIRM_NO] [varchar](16) NOT NULL,
	[FIRM_NAME] [varchar](100) NOT NULL,
	[EXCHANGE_DATE] [varchar](8) NOT NULL,
	[EXCHANGE_NO] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[PRODUCT_NO] [varchar](16) NOT NULL,
	[EXCHANGE_QTY] [int] NOT NULL,
	[MAKE_MONEY_DATE] [varchar](8) NOT NULL,
	[MAKE_MONEY_NO] [varchar](16) NOT NULL,
	[EXCHANGE_POINT] [int] NOT NULL,
	[SINCE_PAYMENT] [int] NOT NULL,
	[COST] [int] NOT NULL,
 CONSTRAINT [PK_Rep0131] PRIMARY KEY CLUSTERED 
(
	[EXCHANGE_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0132]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0132](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_NO] [varchar](16) NOT NULL,
	[PRODUCT_NAME] [varchar](100) NOT NULL,
	[QTY] [int] NOT NULL,
	[UNIT_PRICE] [int] NOT NULL,
	[TOTAL_PRICE] [int] NOT NULL,
	[DEDUCTIBLE] [int] NOT NULL,
	[INVOICE_AMOUNT] [int] NOT NULL,
	[FEE] [int] NOT NULL,
	[ACTUAL_PAYMENT_AMOUNT] [int] NOT NULL,
	[FIRM_NAME] [varchar](16) NOT NULL,
	[MAKE_MONEY_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0132] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0133]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0133](
	[AUTHORIZATION_CODE] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[NO] [varchar](16) NOT NULL,
	[TRANS_CODE] [varchar](2) NOT NULL,
	[AMT] [int] NOT NULL,
	[BILLING_CARD_NO] [varchar](16) NOT NULL,
	[POSITIVE_CARD_NO] [varchar](16) NOT NULL,
	[BILL_TYPE] [varchar](16) NOT NULL,
	[SHEET_NO] [varchar](16) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[CLEAR_DATE] [varchar](8) NOT NULL,
	[FILING_DATE] [varchar](8) NOT NULL,
	[RECORDED_DATE] [varchar](8) NOT NULL,
	[TRANS_CODE_1] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep0133] PRIMARY KEY CLUSTERED 
(
	[NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0134]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0134](
	[APPLICATION_EXCHANGE_DATE] [varchar](8) NOT NULL,
	[SUCCESS_EXCHANGE_SHEET] [int] NOT NULL,
	[SUCCESS_EXCHANGE_POINT] [int] NOT NULL,
	[BOUNCE_SHEET] [int] NOT NULL,
	[BOUNCE_POINT] [int] NOT NULL,
	[CANCEL_EXCHANGE_SHEET] [int] NOT NULL,
	[CANCEL_EXCHANGE_POINT] [int] NOT NULL,
 CONSTRAINT [PK_Rep0134] PRIMARY KEY CLUSTERED 
(
	[APPLICATION_EXCHANGE_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0135]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0135](
	[STUDIOS_NAME] [varchar](100) NOT NULL,
	[SUCCESS_EXCHANGE_SHEET] [int] NOT NULL,
	[SUCCESS_EXCHANGE_POINT] [int] NOT NULL,
	[BOUNCE_SHEET] [int] NOT NULL,
	[BOUNCE_POINT] [int] NOT NULL,
	[CANCEL_EXCHANGE_SHEET] [int] NOT NULL,
	[CANCEL_EXCHANGE_POINT] [int] NOT NULL,
	[APPLICATION_Exchange_DATE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0135] PRIMARY KEY CLUSTERED 
(
	[APPLICATION_Exchange_DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0136]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0136](
	[ACTIVITY_CODE_KIND] [varchar](50) NOT NULL,
	[DATA_TYPE] [varchar](16) NOT NULL,
	[TRANS_TYPE] [varchar](2) NOT NULL,
	[TRANS_DATE] [varchar](8) NOT NULL,
	[TRANS_TIME] [varchar](10) NOT NULL,
	[NO] [varchar](16) NOT NULL,
	[ORIGINAL_TRANS_DATE] [varchar](50) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[AUTHORIZE_NO] [varchar](16) NOT NULL,
	[PIPELINE_NO] [varchar](16) NOT NULL,
	[BOOK_NO] [varchar](16) NOT NULL,
	[TICKET_NO] [varchar](16) NOT NULL,
	[TICKET_AMT] [int] NOT NULL,
	[TRAIN_NO] [varchar](16) NOT NULL,
	[SET_STATION_CODE] [varchar](16) NOT NULL,
	[ARRIVAL_STATION_CODE] [varchar](16) NOT NULL,
	[SEAT_CODE] [varchar](16) NOT NULL,
	[TRAIN_DATE] [datetime] NOT NULL,
	[SERIAL_NO] [varchar](16) NOT NULL,
	[GAIN_STATION_CODE] [varchar](16) NOT NULL,
	[CAR_NO] [varchar](16) NOT NULL,
	[TICKET_REEOR_AMT] [int] NOT NULL,
	[TICKET_QTY] [int] NOT NULL,
	[TOTAL_AMT] [int] NOT NULL,
	[PROCESS_RESULT] [varchar](30) NOT NULL,
	[DEDUCT_DIVIDEND_POIN] [int] NOT NULL,
	[ACCOUNTS] [int] NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[ACCOUNT_NAME] [varchar](100) NOT NULL,
	[HOLDCARD_ID] [varchar](16) NOT NULL,
	[HOLDCARD_NAME] [varchar](100) NOT NULL,
	[CARD_NAME] [varchar](100) NOT NULL,
	[DELETE_MARK] [varchar](1) NOT NULL,
	[FEEDBACK_MARK] [varchar](1) NOT NULL,
	[CYCLE_DETE] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep0136] PRIMARY KEY CLUSTERED 
(
	[NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0137]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0137](
	[ORDER_NO] [varchar](16) NOT NULL,
	[CLIENT_NAME] [varchar](100) NOT NULL,
	[PRODUCT_NO] [varchar](16) NOT NULL,
	[PRODUCT_NAME] [varchar](100) NOT NULL,
	[QTY] [int] NOT NULL,
	[DEDUCTIBLE] [int] NOT NULL,
	[ACCOUNT_NAME] [varchar](16) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[CLIENT_ADDRESS] [varchar](100) NOT NULL,
	[HOME_PHONE] [varchar](10) NOT NULL,
	[COMPANY_PHONE] [varchar](20) NOT NULL,
	[FIRM_CODE] [varchar](16) NOT NULL,
	[FIRM_NAME] [varchar](100) NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[CARD_DEDUCTIBLE] [int] NOT NULL,
	[CLIENT_REMARK] [varchar](30) NOT NULL,
	[FIRM_ORDER_NO] [varchar](16) NOT NULL,
	[ADDRESSEE] [varchar](16) NOT NULL,
	[ADDRESSEE_ADDRESS] [varchar](100) NOT NULL,
	[ADDRESSEE_PHONE] [varchar](10) NOT NULL,
	[SUPERVISOR] [varchar](30) NOT NULL,
	[HANDLING] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep0137] PRIMARY KEY CLUSTERED 
(
	[ORDER_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0140]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0140](
	[ACTIVITY_CODE] [varchar](16) NOT NULL,
	[APPLICATION_DATE] [varchar](8) NOT NULL,
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[APPLICATION_ID] [varchar](16) NOT NULL,
	[FEEDBACK_ITEMS] [varchar](30) NOT NULL,
	[FEEDBACK_DATE] [varchar](8) NOT NULL,
	[REACH_ACTIVITY] [varchar](1) NOT NULL,
	[TOTAL_TRANS_ITEMS] [int] NOT NULL,
	[TOTAL_ACTIVITY_AMT] [int] NOT NULL,
	[DEPARTMENT_CHARG] [varchar](100) NOT NULL,
	[DIVISION_CHARGE] [varchar](100) NOT NULL,
	[HANDELING] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rep0140] PRIMARY KEY CLUSTERED 
(
	[APPLICATION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0141]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep0141](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[SHOP_INSIDE] [int] NOT NULL,
	[SHOP_INSIDE_TOTAL_AMT] [int] NOT NULL,
	[INSIDE_GRADE_1] [int] NOT NULL,
	[INSIDE_GRADE_2] [int] NOT NULL,
	[INSIDE_GRADE_3] [int] NOT NULL,
	[INSIDE_GRADE_4] [int] NOT NULL,
	[INSIDE_GRADE_5] [int] NOT NULL,
	[INSIDE_GRADE_6] [int] NOT NULL,
	[SHOP_OUTSIDE] [int] NOT NULL,
	[SHOP_OUTSIDE_TOTAL_AMT] [int] NOT NULL,
	[OUTSIDE_GRADE_1] [int] NOT NULL,
	[OUTSIDE_GRADE_2] [int] NOT NULL,
	[OUTSIDE_GRADE_3] [int] NOT NULL,
	[OUTSIDE_GRADE_4] [int] NOT NULL,
	[OUTSIDE_GRADE_5] [int] NOT NULL,
	[OUTSIDE_GRADE_6] [int] NOT NULL,
 CONSTRAINT [PK_Rep0141] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep0142]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0142](
	[ITEM] [int] NOT NULL,
	[ID] [varchar](16) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[SHOP_IN_CONSUMPTION] [int] NOT NULL,
	[SHOP_OUT_CONSUMPTION] [int] NOT NULL,
	[SHOP_OTHER_COUSUMPTION] [int] NOT NULL,
	[IN_FEEDBACK] [int] NOT NULL,
	[OUT_FEEDBACK] [int] NOT NULL,
 CONSTRAINT [PK_Rep0142] PRIMARY KEY CLUSTERED 
(
	[ITEM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0143]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0143](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[DEPARTMENT_STORE_NAME] [varchar](100) NOT NULL,
	[RESPONSIBLE_HANDLING] [varchar](100) NOT NULL,
	[CONSUMPTION_YYMM] [varchar](8) NOT NULL,
	[SUM_CONSUMPTION_AMT] [int] NOT NULL,
	[SUM_CONSUMPTION_SCALE] [int] NOT NULL,
	[BEFORE_YEAR] [int] NOT NULL,
	[COMPARE_YEAR_AMOUNT] [int] NOT NULL,
	[COMPARE_YEAR_WIDTH] [int] NOT NULL,
 CONSTRAINT [PK_Rep0143] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep0144]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep0144](
	[DATE] [varchar](8) NOT NULL,
	[ITEMS] [int] NOT NULL,
	[AMT] [int] NOT NULL,
	[REMARK] [varchar](30) NOT NULL,
	[AIMS] [int] NOT NULL,
	[BILL_AMT] [int] NOT NULL,
	[Reach_rate] [int] NOT NULL,
	[BEFORE_DATE] [varchar](8) NOT NULL,
	[BEFORE_ITEMS] [int] NOT NULL,
	[BEFORE_AMT] [int] NOT NULL,
	[BEFORE_REMARK] [varchar](30) NOT NULL,
	[BEFORE_AIMS] [int] NOT NULL,
	[BEFORE_BILL_AMT] [int] NOT NULL,
	[BEFORE_Reach_rate] [int] NOT NULL,
	[COMPARE] [int] NOT NULL,
	[PROPORTION] [int] NOT NULL,
	[CLEAR_DATE] [varchar](8) NOT NULL,
	[Dep] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rep0144] PRIMARY KEY CLUSTERED 
(
	[DATE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9001]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9001](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[INSIDE_SUM_ITEMS] [int] NOT NULL,
	[INSIDE_SUM_AMT] [int] NOT NULL,
	[INSIDE_SUM_CARD_ITEMS] [int] NOT NULL,
	[INSIDE_THAN_ITEMS] [int] NOT NULL,
	[INSIDE_THAN_SUM_AMT] [int] NOT NULL,
	[INSIDE_STAGING_ITEMS] [int] NOT NULL,
	[INSIDE_STAGING_SUM_AMT] [int] NOT NULL,
	[OUTSIDE_SUM_ITEMS] [int] NOT NULL,
	[OUTSIDE_SUM_AMT] [int] NOT NULL,
	[TOTAL_SUM_ITEM] [int] NOT NULL,
	[TOTAL_SUM_AMT] [int] NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[HOLD_CARD_TYPE] [varchar](10) NOT NULL,
	[YEAR_INCOME] [int] NOT NULL,
	[AREA] [varchar](30) NOT NULL,
	[KIND] [varchar](2) NOT NULL,
	[Date] [varchar](8) NOT NULL,
 CONSTRAINT [PK_Rep9001] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9002]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9002](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[DATEDATE] [varchar](8) NOT NULL,
	[PROMOTER_NO] [varchar](16) NOT NULL,
	[PROMOTER_NAME] [varchar](100) NOT NULL,
	[INTO_PIECES_COUNT] [int] NOT NULL,
	[CHECKING_COUNT] [int] NOT NULL,
	[BOUNCED_COUNT] [int] NOT NULL,
	[AUDIT_CARD_COUNT] [int] NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9002] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9003]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9003](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[MALE_NUMBER] [int] NOT NULL,
	[MALE_AMT] [int] NOT NULL,
	[FEMALE_NUMBER] [int] NOT NULL,
	[FEMALE_AMT] [int] NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9003] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9004]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep9004](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[GRADE_NUMBER_1] [int] NOT NULL,
	[GRADE_AMT_1] [int] NOT NULL,
	[GRADE_NUMBER_2] [int] NOT NULL,
	[GRADE_AMT_2] [int] NOT NULL,
	[GRADE_NUMBER_3] [int] NOT NULL,
	[GRADE_AMT_3] [int] NOT NULL,
	[GRADE_NUMBER_4] [int] NOT NULL,
	[GRADE_AMT_4] [int] NOT NULL,
	[GRADE_NUMBER_5] [int] NOT NULL,
	[GRADE_AMT_5] [int] NOT NULL,
	[KIND] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9004] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep9005]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rep9005](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[MCC_KIND] [nvarchar](16) NOT NULL,
	[TOTAL_CONSUMPTION_CARD] [int] NOT NULL,
	[TOTALCONSUMPTION_AMT] [int] NOT NULL,
	[TOTAL_CONSUMPTION_COUNT] [int] NOT NULL,
	[KIND] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9005] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rep9006]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9006](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[NORTH] [int] NOT NULL,
	[WESTERN] [int] NOT NULL,
	[SOUTH] [int] NOT NULL,
	[EAST] [int] NOT NULL,
	[OTHER] [int] NOT NULL,
	[KIND] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rep9006] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9007]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9007](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[MARRIED] [int] NOT NULL,
	[UNMARRIED] [int] NOT NULL,
	[OTHER] [int] NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9007] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9008]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9008](
	[ID] [varchar](16) NOT NULL,
	[CARD_NO] [varchar](11) NOT NULL,
	[Card_Flag] [varchar](1) NOT NULL,
	[NAME] [varchar](40) NOT NULL,
	[AREA] [varchar](100) NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[HOME_PHONE] [varchar](10) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[AGE] [varchar](2) NOT NULL,
	[BIRTHDAY] [varchar](8) NOT NULL,
	[MARITAL_STATUS] [varchar](1) NOT NULL,
	[GENDAR] [varchar](1) NOT NULL,
	[EDUCATIONAL_BACKGROUND] [varchar](2) NOT NULL,
	[OCCUPATION] [varchar](30) NOT NULL,
	[ANNUAL_INCOME] [int] NOT NULL,
	[CARD_GRADE] [varchar](10) NOT NULL,
	[NY_SELL] [varchar](1) NOT NULL,
	[Ny_Hold] [varchar](1) NOT NULL,
	[Ny_Financial] [varchar](1) NOT NULL,
	[Ny_Branches] [varchar](1) NOT NULL,
	[Ny_Life] [varchar](1) NOT NULL,
	[One_Inside_Consumption] [int] NOT NULL,
	[One_Outside_Consumption] [int] NOT NULL,
	[One_Outside_Not_Consumption] [int] NOT NULL,
	[One_Consumption_Sum] [int] NOT NULL,
	[Inside_Consumption] [int] NOT NULL,
	[Outside_Consumption] [int] NOT NULL,
	[Outside_Dep_Consumption] [int] NOT NULL,
	[Outside_N_Dep_Consumption] [int] NOT NULL,
	[Consumption_Sum] [int] NOT NULL,
	[Jp_Member_No] [varchar](11) NOT NULL,
	[English_Name] [varchar](30) NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9008] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9009]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9009](
	[ID_NO] [varchar](16) NOT NULL,
	[NAME] [varchar](40) NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[YEARS] [varchar](2) NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[COMPANY] [varchar](100) NOT NULL,
	[JOB_TITLE] [varchar](100) NOT NULL,
	[AREA] [varchar](100) NOT NULL,
	[BILL_ADDRESS] [varchar](100) NOT NULL,
	[MOBILE_PHONE] [varchar](10) NOT NULL,
	[NY_FINANCIAL] [varchar](1) NOT NULL,
	[NY_BRANCHES] [varchar](1) NOT NULL,
	[NY_LIFE] [varchar](1) NOT NULL,
	[NY_COMMON] [varchar](1) NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9009] PRIMARY KEY CLUSTERED 
(
	[ID_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9010]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9010](
	[CARD_NO] [varchar](16) NOT NULL,
	[PLATNUM] [varchar](1) NOT NULL,
	[HOLDCARDER_ID] [varchar](16) NOT NULL,
	[HOLDCARDER_NAME] [varchar](100) NOT NULL,
	[HOLDCARDER_BIRTHDAY] [varchar](8) NOT NULL,
	[MOVIE_SHEETS] [int] NOT NULL,
	[MOVIE_AMT] [int] NOT NULL,
	[FERRIS_WHEEL_SHEETS] [int] NOT NULL,
	[FERRIS_WHEEL_AMT] [int] NOT NULL,
	[INSIDE_CONSUMPTION_AMT] [int] NOT NULL,
	[CONSUMPTION_AMT] [int] NOT NULL,
	[ACCOUNT_REASON] [varchar](30) NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9010] PRIMARY KEY CLUSTERED 
(
	[CARD_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9011]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9011](
	[CARD_ID] [varchar](16) NOT NULL,
	[CARD_CODE] [varchar](16) NOT NULL,
	[CARD_TYPE] [varchar](16) NOT NULL,
	[GENDER] [varchar](1) NOT NULL,
	[CONSUMPTION_DATE] [varchar](8) NOT NULL,
	[SPE_CODE] [varchar](16) NOT NULL,
	[SHOP_NAME] [varchar](100) NOT NULL,
	[ORIGINAL_CCY_AMT] [int] NOT NULL,
	[NT_CCY_AMT] [int] NOT NULL,
	[TOTAL_STAGING] [int] NOT NULL,
	[CONSUMNPTION_COUNTRY] [varchar](2) NOT NULL,
	[CONSUMNPTION_CCY] [varchar](3) NOT NULL,
	[MCC_CODE] [varchar](16) NOT NULL,
	[TRANS_CODE] [varchar](16) NOT NULL,
	[LOGIN] [varchar](8) NOT NULL,
	[Activity_Code] [varchar](30) NOT NULL,
	[Feedback_Item] [varchar](30) NOT NULL,
	[EC] [varchar](30) NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9011] PRIMARY KEY CLUSTERED 
(
	[CARD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9012]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9012](
	[ACCOUNT_ID] [varchar](16) NOT NULL,
	[CARD_NO] [varchar](16) NOT NULL,
	[CARD_TYPE] [varchar](16) NOT NULL,
	[MEET_ITEMS] [int] NOT NULL,
	[MEET_AMT] [int] NOT NULL,
	[NY_LOGIN] [varchar](1) NOT NULL,
	[LOGIN_TIME] [varchar](8) NOT NULL,
	[FEEDBACK_PREMIUMS_ITEMS] [varchar](100) NOT NULL,
	[FEEDBACK_CREDIT_AMT] [int] NOT NULL,
	[NY_CASH_POINT] [varchar](1) NOT NULL,
	[Activity_Code] [varchar](16) NOT NULL,
	[FEEDBACK_PREMIUMS_QTY] [int] NOT NULL,
	[NAME] [varchar](16) NOT NULL,
	[PHONE] [varchar](10) NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9012] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9014]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9014](
	[YYMM] [varchar](8) NOT NULL,
	[INSTALLMENTS] [varchar](1) NOT NULL,
	[INSTALLMENTS_COUNT] [int] NOT NULL,
	[INSTALLMENTS_AMT] [int] NOT NULL,
	[KIND] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Rep9014] PRIMARY KEY CLUSTERED 
(
	[YYMM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rep9015]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rep9015](
	[Seq_No] [int] IDENTITY(1,1) NOT NULL,
	[SUPERVISOR] [varchar](30) NOT NULL,
	[CHECK] [varchar](30) NOT NULL,
	[SUPERVISOR_1] [varchar](30) NOT NULL,
	[ASSISTANT_SUPERVISOR] [varchar](30) NOT NULL,
	[ACCEPTING] [varchar](30) NOT NULL,
	[HANDLING] [varchar](30) NOT NULL,
	[ACCOUNTING] [varchar](30) NOT NULL,
	[DETAILS] [varchar](100) NOT NULL,
	[AMT] [int] NOT NULL,
	[UNIT] [varchar](30) NOT NULL,
	[PAYMENT_METHOD] [varchar](10) NOT NULL,
	[ABSTRACT] [varchar](100) NOT NULL,
	[ACCOUNT] [varchar](30) NOT NULL,
	[ACCOUNT_NAME] [varchar](100) NOT NULL,
	[REVIEW] [varchar](30) NOT NULL,
	[BOOKKEEPER] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Rep9015] PRIMARY KEY CLUSTERED 
(
	[Seq_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_DUP]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_DUP](
	[TX_SEQ] [varchar](20) NOT NULL,
	[SYS_CODE] [varchar](20) NOT NULL,
	[TRN_CODE] [varchar](20) NOT NULL,
	[BUS_DATE] [varchar](8) NULL,
	[ERR_CODE] [varchar](10) NULL,
	[CREATE_DATE] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_LOG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_LOG](
	[TM_LOG_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SYS_TYPE] [varchar](20) NOT NULL,
	[CON_TYPE] [varchar](20) NOT NULL,
	[SYS_CODE] [varchar](20) NOT NULL,
	[HEADER_NAME] [varchar](100) NULL,
	[REMOTE_IP] [varchar](100) NULL,
	[LOCAL_IP] [varchar](100) NULL,
	[INVOKE_WS] [varchar](500) NULL,
	[SEND_MSG_SESSION] [varchar](500) NULL,
	[RECE_MSG_SESSION] [varchar](500) NULL,
	[TRN_CODE] [varchar](50) NULL,
	[TRN_USER] [varchar](10) NULL,
	[START_TIME] [varchar](50) NULL,
	[FORWARD_TIME] [varchar](50) NULL,
	[END_TIME] [varchar](50) NULL,
	[ERR_CODE] [varchar](50) NULL,
	[SEND_RECE_MSG_CONTENT] [varchar](max) NULL,
	[REPLY_MSG_CONTENT] [varchar](max) NULL,
	[BUZ_DATE] [varchar](8) NULL,
	[TX_SEQ] [varchar](100) NULL,
	[BUZ_ERR_CODE] [varchar](50) NULL,
	[BUZ_ERR_MSG] [varchar](max) NULL,
	[RETURN_CLASSES] [varchar](max) NULL,
	[stationid] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TM_LOG_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_MSG_BODY]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_MSG_BODY](
	[TM_MESSAGE_BODY_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TM_MESSAGE_HEADER_SEQ] [numeric](18, 0) NULL,
	[FIELD_NAME] [varchar](30) NULL,
	[FIELD_TYPE] [varchar](30) NULL,
	[FIELD_SIZE] [numeric](5, 0) NULL,
	[FIELD_PRECISION] [numeric](5, 0) NULL,
	[FIELD_FORMAT] [varchar](30) NULL,
	[FIELD_DEFAULT_VALUE] [varchar](30) NULL,
	[FIELD_COMMENTS] [varchar](100) NULL,
	[FIELD_ORDERBY] [numeric](2, 0) NOT NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[AMEND_DATE] [datetime] NOT NULL,
	[FIELD_ISSQL] [numeric](1, 0) NULL,
	[FIELD_ISSP] [numeric](1, 0) NULL,
	[FIELD_ARGU_TYPE] [varchar](50) NULL,
	[FIELD_ALIAS_NAME] [varchar](50) NULL,
	[FIELD_SQL_ARGU_TYPE] [varchar](50) NULL,
	[FIELD_SP_ORDERBY] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[TM_MESSAGE_BODY_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_MSG_HEADER]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_MSG_HEADER](
	[TM_MESSAGE_HEADER_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SERVER_SYSCODE] [varchar](20) NULL,
	[SERVER_TYPE] [varchar](10) NULL,
	[TRN_CODE] [varchar](50) NULL,
	[MSG_TYPE] [varchar](50) NULL,
	[PAGE] [varchar](50) NULL,
	[USER_ID] [varchar](50) NULL,
	[MSG_NO] [varchar](50) NULL,
	[MSG_SYSTEM] [varchar](50) NULL,
	[OUTPUT_FILE] [varchar](50) NULL,
	[MSG_FROM] [varchar](50) NULL,
	[MSG_TO] [varchar](50) NULL,
	[MSG_LEN] [numeric](5, 0) NULL,
	[MSG_HEADER_TYPE] [varchar](50) NULL,
	[MSG_HEADER_NAME] [varchar](50) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[AMEND_DATE] [datetime] NOT NULL,
	[MSG_QUERY_SQL] [varchar](4000) NULL,
	[MSG_SP_NAME] [varchar](4000) NULL,
	[MSG_PROCESS_MODEL] [varchar](50) NULL,
	[SOURCE_DS] [varchar](50) NULL,
	[TARGET_DS] [varchar](20) NULL,
	[FTP_SERVER] [varchar](50) NULL,
	[FTP_PORT] [numeric](4, 0) NULL,
	[APP_CODE] [varchar](10) NULL,
	[RES_CODE] [varchar](10) NULL,
	[REMOTE_PATH] [varchar](100) NULL,
	[UPLOAD_PATH] [varchar](50) NULL,
	[DOWNLOAD_PATH] [varchar](50) NULL,
	[OUTPUT_FILENAME] [varchar](50) NULL,
	[FTP_PARSE_TYPE] [varchar](50) NULL,
	[DELIMITER] [varchar](2) NULL,
	[FTP_INCLUDE_HEADER] [numeric](2, 0) NULL,
	[CHARSET] [varchar](10) NULL,
	[DS_NAME] [varchar](50) NULL,
	[FTP_PROFILE] [varchar](100) NULL,
	[FTP_TYPE] [varchar](100) NULL,
	[MSG_PLSQL_TEMPLATE] [varchar](1000) NULL,
	[TX_OPTION] [varchar](100) NULL,
	[TX_PROGRAM] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[TM_MESSAGE_HEADER_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_MSG_INFO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_MSG_INFO](
	[TM_MSG_INFO_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TM_SERVER_INFO_SEQ] [numeric](18, 0) NULL,
	[TRN_CODE] [varchar](50) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[AMEND_DATE] [datetime] NOT NULL,
	[RESP_BOCLASS] [varchar](100) NULL,
	[REQU_BOCLASS] [varchar](100) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[ENDPOINT_URL] [varchar](300) NULL,
	[TIME_VALID_TYPE] [varchar](20) NULL,
	[SUB_TRN_CODE] [varchar](50) NULL,
 CONSTRAINT [PK_TM_MSG_INFO] PRIMARY KEY CLUSTERED 
(
	[TM_MSG_INFO_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_MSG_USER]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_MSG_USER](
	[TM_MSG_USER_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[USER_ID] [varchar](20) NULL,
	[CHIEF_ID] [varchar](20) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[AMEND_DATE] [datetime] NOT NULL,
	[TM_MSG_INFO_SEQ] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[TM_MSG_USER_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TM_SERVER_INFO]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TM_SERVER_INFO](
	[TM_SERVER_INFO_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SERVER_SYSCODE] [varchar](20) NULL,
	[SERVER_TYPE] [varchar](10) NULL,
	[SERVER_IP] [varchar](15) NULL,
	[SERVER_PORT] [numeric](10, 0) NULL,
	[SERVER_TIMEOUT] [numeric](10, 0) NULL,
	[SERVER_INCOMING_FILTER] [varchar](50) NULL,
	[SERVER_MAXCONNECTIONS] [numeric](10, 0) NULL,
	[SERVER_ISENABLE] [numeric](1, 0) NULL,
	[SERVER_HEADER] [varchar](50) NULL,
	[OUTSYS_ENCODETYPE] [varchar](10) NULL,
	[OUTSYS_IP] [varchar](15) NULL,
	[OUTSYS_PORT] [numeric](10, 0) NULL,
	[CONN_TYPE] [varchar](20) NULL,
	[START_TIME] [datetime] NULL,
	[END_TIME] [datetime] NULL,
	[TIME_VALID_TYPE] [varchar](20) NULL,
	[SERVER_ASYN] [varchar](1) NULL,
	[SERVER_ALWAYSCONNECT] [varchar](1) NULL,
	[MAIL_ADDR_TO] [varchar](150) NULL,
	[LISTENER_TYPE] [varchar](50) NULL,
	[USE_PREFIX_FLAG] [varchar](10) NULL,
	[HEARTBEAT_TIMEOUT] [numeric](10, 0) NULL,
	[OUTSYS_LOCALPORT] [numeric](10, 0) NULL,
	[VALID_HOSTIP] [nvarchar](50) NULL,
	[channel_ID] [nvarchar](50) NULL,
	[LOG_LEVEL] [nvarchar](50) NULL,
	[channel_usage] [nvarchar](50) NULL,
 CONSTRAINT [PK_TM_SERVER_INFO] PRIMARY KEY CLUSTERED 
(
	[TM_SERVER_INFO_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMS_SCHEDULE_BATCH_LOG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMS_SCHEDULE_BATCH_LOG](
	[TMS_SCHEDULE_BATCH_LOG_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DATA_DATE] [nvarchar](100) NOT NULL,
	[JOB_CODE] [nvarchar](100) NOT NULL,
	[JOB_NAME] [nvarchar](100) NOT NULL,
	[START_TIME] [datetime] NOT NULL,
	[END_TIME] [datetime] NOT NULL,
	[ROW_COUNT] [numeric](10, 0) NOT NULL,
	[RUN_RESULT] [nvarchar](2000) NULL,
	[ERR_CODE] [nvarchar](100) NULL,
	[AGENT_ID] [nvarchar](10) NOT NULL,
	[SCHEDULE_EXEC_STATUS_SEQ] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_TMS_SCHEDULE_BATCH_LOG] UNIQUE NONCLUSTERED 
(
	[TMS_SCHEDULE_BATCH_LOG_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMS_SCHEDULE_CONFIG]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TMS_SCHEDULE_CONFIG](
	[TMS_SCHEDULE_CONFIG_SEQ] [numeric](18, 0) NOT NULL,
	[NAME] [nvarchar](100) NOT NULL,
	[GROUPNAME] [nvarchar](100) NOT NULL,
	[ENABLE] [nvarchar](1) NOT NULL,
	[CRON] [nvarchar](100) NULL,
	[JOBCLASS] [nvarchar](100) NULL,
	[BOCLASS] [nvarchar](100) NULL,
	[BOID] [numeric](18, 0) NULL,
	[DESCR] [nvarchar](100) NULL,
	[PARAM0] [nvarchar](100) NULL,
	[PARAM1] [nvarchar](100) NULL,
	[PARAM2] [nvarchar](100) NULL,
	[PARAM3] [nvarchar](100) NULL,
	[PARAM4] [nvarchar](100) NULL,
	[DEPLOYED] [nvarchar](1) NULL,
	[JOBDATA] [varbinary](max) NULL,
	[FUNCTIONCODE] [nvarchar](100) NULL,
	[CRONCHANGEABLE] [nvarchar](1) NULL,
	[CREATEAT] [nvarchar](18) NULL,
	[UPDATEAT] [nvarchar](18) NULL,
 CONSTRAINT [PK_TMS_SCHEDULE_CONFIG] UNIQUE NONCLUSTERED 
(
	[TMS_SCHEDULE_CONFIG_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TMS_SCHEDULE_EXECSTATUS]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMS_SCHEDULE_EXECSTATUS](
	[SCHEDULE_EXEC_STATUS_SEQ] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SCHEDULE_ID] [nvarchar](100) NOT NULL,
	[SCHEDULE_STATUS] [nvarchar](100) NOT NULL,
	[SESSION_DATE] [nvarchar](20) NOT NULL,
	[CREATE_DATE] [datetime] NULL,
	[AMEND_DATE] [datetime] NULL,
	[AGENT_ID] [nvarchar](10) NOT NULL,
	[STATUS] [nchar](1) NULL,
	[IS_AUTO_PAUSE] [nvarchar](1) NULL,
 CONSTRAINT [PK_TMS_SCHEDULE_EXECSTATUS] UNIQUE NONCLUSTERED 
(
	[SCHEDULE_EXEC_STATUS_SEQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_Extra_SErvice_Rank]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_Extra_SErvice_Rank] AS
select Product_Extra_Service,Level_Type, Service_Level_Item,SEQ VALUE,Product_Logo  
from M_Product_Extra_Service A, M_Product_Extra_Service_Item B,M_Product_Extra_Service_Logo  C, M_Lookup_Code D
where A.Product_Extra_Service_Seq = B.Product_Extra_Service_Seq 
  and B.Product_Extra_Service_Item_Seq = C.Product_Extra_Service_Item_Seq
  and B.Service_Level_Item = D.Lookup_code 
  AND A.Start_Date <= GETDATE() AND A.End_Date >= GETDATE() 
  and D.Lookup_type = 'CARDSERVR'
  and Product_Extra_Service NOT IN ('3')
  AND A.Del_Flag = 'N'
  AND B.Del_Flag = 'N'
  AND C.Del_Flag = 'N'



GO
/****** Object:  View [dbo].[V_Car_Airport_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[V_Car_Airport_Card] AS
select CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, Card_Service_Level, Day_Per_Year, Block_Code,Service_Level_Item
from M_CARD A, V_Extra_SErvice_Rank B, M_Car_Park_Airport_Level C
   WHERE A.Product_Logo = B.Product_Logo
    and B.Service_Level_Item = C.Card_Service_Level
	and B.Product_Extra_Service = '2'
	and A.Cardholder_Flag = '0'
	and B.Level_Type = 'P'
	AND C.Del_Flag = 'N'
	UNION
	select CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, Card_Service_Level, Day_Per_Year, Block_Code ,Service_Level_Item
	  from M_CARD A, V_Extra_SErvice_Rank B, M_Car_Park_Airport_Level C
   WHERE A.Product_Logo = B.Product_Logo
    and B.Service_Level_Item = C.Card_Service_Level
	and B.Product_Extra_Service = '2'
	and A.Cardholder_Flag = '1'
	and B.Level_Type = 'S'
	AND C.Del_Flag = 'N'


GO
/****** Object:  View [dbo].[V_Car_Park_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[V_Car_Park_Card] AS
select CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, Card_Service_Level, Day_Per_Year, Hour_Per_Times, Times_Per_Day, Times_Per_Month ,Block_Code,Service_Level_Item
from M_CARD A, V_Extra_SErvice_Rank B, M_Car_Park_Service_Level C
   WHERE A.Product_Logo = B.Product_Logo
    and B.Service_Level_Item = C.Card_Service_Level
	and B.Product_Extra_Service = '1'
	and A.Cardholder_Flag = '0'
	and B.Level_Type = 'P'
	AND C.Del_Flag = 'N'
	UNION
	select CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, Card_Service_Level, Day_Per_Year, Hour_Per_Times, Times_Per_Day, Times_Per_Month ,Block_Code,Service_Level_Item
	  from M_CARD A, V_Extra_SErvice_Rank B, M_Car_Park_Service_Level C
   WHERE A.Product_Logo = B.Product_Logo
    and B.Service_Level_Item = C.Card_Service_Level
	and B.Product_Extra_Service = '1'
	and A.Cardholder_Flag = '1'
	and B.Level_Type = 'S'
	AND C.Del_Flag = 'N'



GO
/****** Object:  View [dbo].[V_Lounge_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Lounge_Card]
AS
SELECT          CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, 
                            Card_Service_Level, Times_Per_Year, Times_Per_Month, Block_Code, Service_Level_Item
FROM              M_CARD A, V_Extra_SErvice_Rank B, M_Airport_Lounge_Level C
WHERE          A.Product_Logo = B.Product_Logo AND B.Service_Level_Item = C.Card_Service_Level AND 
                            B.Product_Extra_Service = '5' AND A.Cardholder_Flag = '0' AND B.Level_Type = 'P' AND C.Del_Flag = 'N'
UNION
SELECT          CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, 
                            Card_Service_Level, Times_Per_Year, Times_Per_Month, Block_Code, Service_Level_Item
FROM              M_CARD A, V_Extra_SErvice_Rank B, M_Airport_Lounge_Level C
WHERE          A.Product_Logo = B.Product_Logo AND B.Service_Level_Item = C.Card_Service_Level AND 
                            B.Product_Extra_Service = '5' AND A.Cardholder_Flag = '1' AND B.Level_Type = 'S' AND C.Del_Flag = 'N' 

GO
/****** Object:  View [dbo].[V_Extra_SErvice_Rank_R]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Extra_SErvice_Rank_R] AS
select Product_Extra_Service,Level_Type, Service_Level_Item,VALUE,Product_Logo  
from M_Product_Extra_Service A, M_Product_Extra_Service_Item B,M_Product_Extra_Service_Logo  C, M_Lookup_Code D
where A.Product_Extra_Service_Seq = B.Product_Extra_Service_Seq 
  and B.Product_Extra_Service_Item_Seq = C.Product_Extra_Service_Item_Seq
  and B.Service_Level_Item = D.Lookup_code 
  AND A.Start_Date <= GETDATE() AND A.End_Date >= GETDATE() 
  and D.Lookup_type = 'CARDSERVR'
  and Product_Extra_Service = '3'
  AND A.Del_Flag = 'N'
  AND B.Del_Flag = 'N'
  AND C.Del_Flag = 'N'


GO
/****** Object:  View [dbo].[V_Roadside_Assistance_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Roadside_Assistance_Card]
AS
SELECT          CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, 
                            Card_Service_Level, Times_Per_Year, Times_Per_Month, Block_Code, Service_Level_Item
FROM              M_CARD A, V_Extra_SErvice_Rank_R B, M_Roadside_Assistance_Level C
WHERE          A.Product_Logo = B.Product_Logo AND B.Service_Level_Item = C.Card_Service_Level AND 
                            B.Product_Extra_Service = '3' AND A.Cardholder_Flag = '0' AND B.Level_Type = 'P' AND C.Del_Flag = 'N' AND B.Service_Level_Item != 'A'
UNION
SELECT          CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, 
                            Card_Service_Level, Times_Per_Year, Times_Per_Month, Block_Code, Service_Level_Item
FROM              M_CARD A, V_Extra_SErvice_Rank_R B, M_Roadside_Assistance_Level C 
WHERE          A.Product_Logo = B.Product_Logo AND B.Service_Level_Item = C.Card_Service_Level AND 
                            B.Product_Extra_Service = '3' AND A.Cardholder_Flag = '1' AND B.Level_Type = 'S' AND C.Del_Flag = 'N' AND B.Service_Level_Item != 'A'
UNION
SELECT          A.CARD_NO, A.CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, 
                            Card_Service_Level, Times_Per_Year, Times_Per_Month, Block_Code, Service_Level_Item
FROM              M_CARD A, V_Extra_SErvice_Rank_R B, M_Roadside_Assistance_Level C, M_Roadside_Assistance_Reg D
WHERE          A.Product_Logo = B.Product_Logo AND B.Service_Level_Item = C.Card_Service_Level AND 
                            B.Product_Extra_Service = '3' AND A.Cardholder_Flag = '0' AND B.Level_Type = 'P' AND C.Del_Flag = 'N' AND B.Service_Level_Item = 'A'
							AND A.Card_No = D.Card_No AND D.Del_Flag = 'N' AND D.Cancel_Flag = 'N'
UNION           
SELECT          A.CARD_NO, A.CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, 
                            Card_Service_Level, Times_Per_Year, Times_Per_Month, Block_Code, Service_Level_Item
FROM              M_CARD A, V_Extra_SErvice_Rank_R B, M_Roadside_Assistance_Level C , M_Roadside_Assistance_Reg D
WHERE          A.Product_Logo = B.Product_Logo AND B.Service_Level_Item = C.Card_Service_Level AND 
                            B.Product_Extra_Service = '3' AND A.Cardholder_Flag = '1' AND B.Level_Type = 'S' AND C.Del_Flag = 'N' AND B.Service_Level_Item = 'A'
							AND A.Card_No = D.Card_No AND D.Del_Flag = 'N' AND D.Cancel_Flag = 'N'
GO
/****** Object:  View [dbo].[V_Shttle_Card]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[V_Shttle_Card] AS
select CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, Card_Service_Level, Times_Per_Year, Times_Per_Month ,Block_Code,Service_Level_Item
from M_CARD A, V_Extra_SErvice_Rank B, M_Airport_Shuttle_Level C
   WHERE A.Product_Logo = B.Product_Logo
    and B.Service_Level_Item = C.Card_Service_Level
	and B.Product_Extra_Service = '4'
	and A.Cardholder_Flag = '0'
	and B.Level_Type = 'P'
	AND C.Del_Flag = 'N'
	UNION
	select CARD_NO, CARDHOLDER_ID, PRIMARY_CARDHOLDER_ID, A.Product_Logo, STATUS, VALUE, Cardholder_Flag, Card_Service_Level, Times_Per_Year , Times_Per_Month ,Block_Code,Service_Level_Item
	  from M_CARD A, V_Extra_SErvice_Rank B, M_Airport_Shuttle_Level C
   WHERE A.Product_Logo = B.Product_Logo
    and B.Service_Level_Item = C.Card_Service_Level
	and B.Product_Extra_Service = '4'
	and A.Cardholder_Flag = '1'
	and B.Level_Type = 'S'
	AND C.Del_Flag = 'N'



GO
/****** Object:  View [dbo].[V_ACTIVITY]    Script Date: 2020/12/22 上午 11:22:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ACTIVITY] AS
SELECT 'PROMOTION' AS ACT_TYPE, '推廣計畫' as TYPE_NAME, PROMOTION_CODE AS ACT_CODE, PROMOTION_NAME as ACT_NAME
 FROM M_PROMOTION WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE()
 UNION ALL
 SELECT 'PRICEMATCH' AS ACT_TYPE, '滿額禮' as TYPE_NAME, PRICE_MATCHING_CODE AS ACT_CODE, PRICE_MATCHING_NAME as ACT_NAME
 FROM M_PRICE_MATCHING WHERE PRICE_MATCHING_CODE IN (SELECT PRICE_MATCHING_CODE FROM M_PRICE_MATCHING_PERIOD WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE())
 UNION ALL
 SELECT 'EBILLING' AS ACT_TYPE, '電子帳單' as TYPE_NAME, EBILLING_CODE AS ACT_CODE, EBILLING_NAME as ACT_NAME
 FROM M_EBILLING WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE()
 UNION ALL
 SELECT 'CASHBACK' AS ACT_TYPE, '刷卡金' as TYPE_NAME, CASH_BACK_CODE AS ACT_CODE, CASH_BACK_NAME as ACT_NAME
 FROM M_CASH_BACK WHERE CASH_BACK_CODE IN (SELECT CASH_BACK_CODE FROM M_CASH_BACK_PERIOD WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE())
 UNION ALL
 SELECT 'AUTOPAY' AS ACT_TYPE, '自動扣繳' as TYPE_NAME, AUTO_PAY_CODE AS ACT_CODE,AUTO_PAY_NAME as ACT_NAME
 FROM M_AUTO_PAY WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE()
 UNION ALL
 SELECT 'PUBLICAUTOPAY' AS ACT_TYPE, '公營事業代扣' as TYPE_NAME, PUBLIC_AUTO_PAY_CODE AS ACT_CODE, PUBLIC_AUTO_PAY_NAME as ACT_NAME
 FROM M_PUBLIC_AUTO_PAYMENT WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE()
 UNION ALL
 SELECT 'PAYTAX' AS ACT_TYPE, '繳交各項稅款規費' as TYPE_NAME, PAY_TAX_CODE AS ACT_CODE, PAY_TAX_NAME as ACT_NAME
 FROM M_PAY_TAX WHERE START_DATE <= GETDATE() AND END_DATE >= GETDATE()
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BILLING_MONTH_EVENT_STATIC]    Script Date: 2020/12/22 上午 11:22:15 ******/
CREATE NONCLUSTERED INDEX [IX_BILLING_MONTH_EVENT_STATIC] ON [dbo].[M_Billing_Month_Event_Static]
(
	[RelationshipId] ASC,
	[CardNo] ASC,
	[Billing_YM] ASC,
	[Event] ASC,
	[Event_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_cardholder_1]    Script Date: 2020/12/22 上午 11:22:15 ******/
CREATE NONCLUSTERED INDEX [ix_cardholder_1] ON [dbo].[M_Cardholder]
(
	[Cardholder_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [I_Lookup_Code]    Script Date: 2020/12/22 上午 11:22:15 ******/
CREATE NONCLUSTERED INDEX [I_Lookup_Code] ON [dbo].[M_Lookup_Code]
(
	[Lookup_type] ASC,
	[Lookup_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IN_M_Member_Zone_Message]    Script Date: 2020/12/22 上午 11:22:15 ******/
CREATE NONCLUSTERED INDEX [IN_M_Member_Zone_Message] ON [dbo].[M_Member_Zone_Message]
(
	[Card_Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [I_Vendor]    Script Date: 2020/12/22 上午 11:22:15 ******/
CREATE NONCLUSTERED INDEX [I_Vendor] ON [dbo].[M_Vendor]
(
	[Vendor_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [I_EXTRA_SERVICE_CARD]    Script Date: 2020/12/22 上午 11:22:15 ******/
CREATE NONCLUSTERED INDEX [I_EXTRA_SERVICE_CARD] ON [dbo].[M_Year_Extra_Service_Level_Card]
(
	[Relationship_Id] ASC,
	[Card_No] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[M_AuditTrail] ADD  DEFAULT (NULL) FOR [USERIP]
GO
ALTER TABLE [dbo].[M_AuditTrail] ADD  DEFAULT (NULL) FOR [FUNCTIONURL]
GO
ALTER TABLE [dbo].[M_AuditTrail] ADD  DEFAULT (NULL) FOR [METHODNAME]
GO
ALTER TABLE [dbo].[M_AuditTrail] ADD  DEFAULT (NULL) FOR [QUERYPARAMETER]
GO
ALTER TABLE [dbo].[M_AuditTrail] ADD  DEFAULT (NULL) FOR [SQLREPORT]
GO
ALTER TABLE [dbo].[TM_DUP] ADD  DEFAULT (getdate()) FOR [CREATE_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_BODY] ADD  DEFAULT (getdate()) FOR [CREATE_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_BODY] ADD  DEFAULT (getdate()) FOR [AMEND_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_HEADER] ADD  DEFAULT (getdate()) FOR [CREATE_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_HEADER] ADD  DEFAULT (getdate()) FOR [AMEND_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_INFO] ADD  CONSTRAINT [DF__TM_MSG_IN__CREAT__49C3F6B7]  DEFAULT (getdate()) FOR [CREATE_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_INFO] ADD  CONSTRAINT [DF__TM_MSG_IN__AMEND__4AB81AF0]  DEFAULT (getdate()) FOR [AMEND_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_USER] ADD  DEFAULT (getdate()) FOR [CREATE_DATE]
GO
ALTER TABLE [dbo].[TM_MSG_USER] ADD  DEFAULT (getdate()) FOR [AMEND_DATE]
GO
ALTER TABLE [dbo].[TMS_SCHEDULE_BATCH_LOG] ADD  DEFAULT (getdate()) FOR [START_TIME]
GO
ALTER TABLE [dbo].[TMS_SCHEDULE_BATCH_LOG] ADD  DEFAULT (getdate()) FOR [END_TIME]
GO
ALTER TABLE [dbo].[TMS_SCHEDULE_EXECSTATUS] ADD  DEFAULT ('1') FOR [STATUS]
GO
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_CRON_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_CRON_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_SIMPLE_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_SIMPLE_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_SIMPROP_TRIGGERS_QRTZ_TRIGGERS] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_SIMPROP_TRIGGERS_QRTZ_TRIGGERS]
GO
ALTER TABLE [dbo].[QRTZ_TRIGGERS]  WITH CHECK ADD  CONSTRAINT [FK_QRTZ_TRIGGERS_QRTZ_JOB_DETAILS] FOREIGN KEY([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
REFERENCES [dbo].[QRTZ_JOB_DETAILS] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
GO
ALTER TABLE [dbo].[QRTZ_TRIGGERS] CHECK CONSTRAINT [FK_QRTZ_TRIGGERS_QRTZ_JOB_DETAILS]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Lounge_Card'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Lounge_Card'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Roadside_Assistance_Card'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Roadside_Assistance_Card'
GO
