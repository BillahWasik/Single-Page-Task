USE [SinglePageTaskDB]
GO
/****** Object:  Table [dbo].[Corporate_Customer_Tbl]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corporate_Customer_Tbl](
	[CorporateCustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CorporateCustomerName] [nvarchar](255) NOT NULL,
	[CorporateCustomerEmail] [nvarchar](255) NULL,
	[CorporateCustomerPhone] [nvarchar](50) NULL,
	[CorporateCustomerAddress] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CorporateCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Individual_Customer_Tbl]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual_Customer_Tbl](
	[IndividualCustomerID] [int] IDENTITY(1,1) NOT NULL,
	[IndividualCustomerName] [nvarchar](255) NOT NULL,
	[IndividualCustomerEmail] [nvarchar](255) NULL,
	[IndividualCustomerPhone] [nvarchar](50) NULL,
	[IndividualCustomerAddress] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IndividualCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meeting_Minutes_Details_Tbl]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting_Minutes_Details_Tbl](
	[MeetingMinutesDetailID] [int] IDENTITY(1,1) NOT NULL,
	[MeetingMinutesMasterID] [int] NOT NULL,
	[ProductServiceID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MeetingMinutesDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meeting_Minutes_Master_Tbl]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting_Minutes_Master_Tbl](
	[MeetingMinutesMasterID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerType] [nvarchar](50) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[MeetingDate] [date] NOT NULL,
	[MeetingTime] [time](0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MeetingMinutesMasterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Service_Tbl]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Service_Tbl](
	[ProductServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ProductServiceName] [nvarchar](255) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] ON 

INSERT [dbo].[Corporate_Customer_Tbl] ([CorporateCustomerID], [CorporateCustomerName], [CorporateCustomerEmail], [CorporateCustomerPhone], [CorporateCustomerAddress]) VALUES (1, N'A', NULL, NULL, NULL)
INSERT [dbo].[Corporate_Customer_Tbl] ([CorporateCustomerID], [CorporateCustomerName], [CorporateCustomerEmail], [CorporateCustomerPhone], [CorporateCustomerAddress]) VALUES (2, N'B', NULL, NULL, NULL)
INSERT [dbo].[Corporate_Customer_Tbl] ([CorporateCustomerID], [CorporateCustomerName], [CorporateCustomerEmail], [CorporateCustomerPhone], [CorporateCustomerAddress]) VALUES (3, N'C', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] ON 

INSERT [dbo].[Individual_Customer_Tbl] ([IndividualCustomerID], [IndividualCustomerName], [IndividualCustomerEmail], [IndividualCustomerPhone], [IndividualCustomerAddress]) VALUES (1, N'X', NULL, NULL, NULL)
INSERT [dbo].[Individual_Customer_Tbl] ([IndividualCustomerID], [IndividualCustomerName], [IndividualCustomerEmail], [IndividualCustomerPhone], [IndividualCustomerAddress]) VALUES (2, N'Y', NULL, NULL, NULL)
INSERT [dbo].[Individual_Customer_Tbl] ([IndividualCustomerID], [IndividualCustomerName], [IndividualCustomerEmail], [IndividualCustomerPhone], [IndividualCustomerAddress]) VALUES (3, N'Z', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Details_Tbl] ON 

INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([MeetingMinutesDetailID], [MeetingMinutesMasterID], [ProductServiceID], [Quantity]) VALUES (1, 5, 2, 333)
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([MeetingMinutesDetailID], [MeetingMinutesMasterID], [ProductServiceID], [Quantity]) VALUES (2, 5, 2, 333)
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Details_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Master_Tbl] ON 

INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([MeetingMinutesMasterID], [CustomerType], [CustomerID], [MeetingDate], [MeetingTime]) VALUES (1, N'Corporate', 3, CAST(N'2024-06-08' AS Date), CAST(N'03:33:00' AS Time))
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([MeetingMinutesMasterID], [CustomerType], [CustomerID], [MeetingDate], [MeetingTime]) VALUES (2, N'Corporate', 3, CAST(N'2024-06-22' AS Date), CAST(N'03:38:00' AS Time))
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([MeetingMinutesMasterID], [CustomerType], [CustomerID], [MeetingDate], [MeetingTime]) VALUES (3, N'Corporate', 3, CAST(N'2024-06-22' AS Date), CAST(N'03:38:00' AS Time))
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([MeetingMinutesMasterID], [CustomerType], [CustomerID], [MeetingDate], [MeetingTime]) VALUES (4, N'Corporate', 1, CAST(N'2024-06-08' AS Date), CAST(N'03:36:00' AS Time))
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([MeetingMinutesMasterID], [CustomerType], [CustomerID], [MeetingDate], [MeetingTime]) VALUES (5, N'Corporate', 3, CAST(N'2024-06-08' AS Date), CAST(N'15:47:00' AS Time))
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Master_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_Service_Tbl] ON 

INSERT [dbo].[Products_Service_Tbl] ([ProductServiceID], [ProductServiceName], [Unit]) VALUES (2, N'demo1', N'kg')
INSERT [dbo].[Products_Service_Tbl] ([ProductServiceID], [ProductServiceName], [Unit]) VALUES (3, N'demo2', N'litre')
SET IDENTITY_INSERT [dbo].[Products_Service_Tbl] OFF
GO
ALTER TABLE [dbo].[Meeting_Minutes_Details_Tbl]  WITH CHECK ADD FOREIGN KEY([MeetingMinutesMasterID])
REFERENCES [dbo].[Meeting_Minutes_Master_Tbl] ([MeetingMinutesMasterID])
GO
ALTER TABLE [dbo].[Meeting_Minutes_Details_Tbl]  WITH CHECK ADD FOREIGN KEY([ProductServiceID])
REFERENCES [dbo].[Products_Service_Tbl] ([ProductServiceID])
GO
ALTER TABLE [dbo].[Meeting_Minutes_Master_Tbl]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Corporate_Customer_Tbl] ([CorporateCustomerID])
GO
ALTER TABLE [dbo].[Meeting_Minutes_Master_Tbl]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Individual_Customer_Tbl] ([IndividualCustomerID])
GO
ALTER TABLE [dbo].[Meeting_Minutes_Master_Tbl]  WITH CHECK ADD CHECK  (([CustomerType]='Individual' OR [CustomerType]='Corporate'))
GO
/****** Object:  StoredProcedure [dbo].[Meeting_Minutes_Details_Save_SP]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Meeting_Minutes_Details_Save_SP]
    @MeetingMinutesMasterID INT,
    @ProductServiceID INT,
    @Quantity INT
AS
BEGIN
    INSERT INTO Meeting_Minutes_Details_Tbl (MeetingMinutesMasterID, ProductServiceID, Quantity)
    VALUES (@MeetingMinutesMasterID, @ProductServiceID, @Quantity);
END
GO
/****** Object:  StoredProcedure [dbo].[Meeting_Minutes_Master_Save_SP]    Script Date: 6/8/2024 4:23:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Meeting_Minutes_Master_Save_SP]
    @CustomerType NVARCHAR(50),
    @CustomerID INT,
    @MeetingDate DATE,
    @MeetingTime TIME(0),
    @GeneratedID INT OUTPUT
AS
BEGIN
    INSERT INTO Meeting_Minutes_Master_Tbl (CustomerType, CustomerID, MeetingDate, MeetingTime)
    VALUES (@CustomerType, @CustomerID, @MeetingDate, @MeetingTime);

    SET @GeneratedID = SCOPE_IDENTITY();
END
GO
