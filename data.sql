
CREATE TABLE [dbo].[tblDepartment](
	[depNum] [int] NOT NULL,
	[depName] [nvarchar](50) NULL,
	[mgrSSN] [decimal](18, 0) NULL,
	[mgrAssDate] [datetime] NULL,
 CONSTRAINT [PK_tblDepartment] PRIMARY KEY CLUSTERED 
(
	[depNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDependent]    Script Date: 04/02/2021 8:06:26 SA ******/

CREATE TABLE [dbo].[tblDependent](
	[depName] [nvarchar](50) NOT NULL,
	[empSSN] [decimal](18, 0) NOT NULL,
	[depSex] [char](1) NULL,
	[depBirthdate] [datetime] NULL,
	[depRelationship] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDependent] PRIMARY KEY CLUSTERED 
(
	[depName] ASC,
	[empSSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDepLocation]    Script Date: 04/02/2021 8:06:26 SA ******/

CREATE TABLE [dbo].[tblDepLocation](
	[depNum] [int] NOT NULL,
	[locNum] [int] NOT NULL,
 CONSTRAINT [PK_tblDepLocation] PRIMARY KEY CLUSTERED 
(
	[depNum] ASC,
	[locNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEmployee]    Script Date: 04/02/2021 8:06:26 SA ******/

CREATE TABLE [dbo].[tblEmployee](
	[empSSN] [decimal](18, 0) NOT NULL,
	[empName] [nvarchar](50) NULL,
	[empAddress] [nvarchar](50) NULL,
	[empSalary] [decimal](18, 0) NULL,
	[empSex] [char](1) NULL,
	[empBirthdate] [datetime] NULL,
	[depNum] [int] NULL,
	[supervisorSSN] [decimal](18, 0) NULL,
	[empStartdate] [datetime] NULL,
 CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
(
	[empSSN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLocation]    Script Date: 04/02/2021 8:06:26 SA ******/

CREATE TABLE [dbo].[tblLocation](
	[locNum] [int] IDENTITY(1,1) NOT NULL,
	[locName] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLocation] PRIMARY KEY CLUSTERED 
(
	[locNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProject]    Script Date: 04/02/2021 8:06:26 SA ******/

CREATE TABLE [dbo].[tblProject](
	[proNum] [int] NOT NULL,
	[proName] [nvarchar](50) NULL,
	[locNum] [int] NULL,
	[depNum] [int] NULL,
 CONSTRAINT [PK_tblProject] PRIMARY KEY CLUSTERED 
(
	[proNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWorksOn]    Script Date: 04/02/2021 8:06:26 SA ******/

CREATE TABLE [dbo].[tblWorksOn](
	[empSSN] [decimal](18, 0) NOT NULL,
	[proNum] [int] NOT NULL,
	[workHours] [int] NULL,
 CONSTRAINT [PK_tblWorksOn] PRIMARY KEY CLUSTERED 
(
	[empSSN] ASC,
	[proNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblDepartment] ([depNum], [depName], [mgrSSN], [mgrAssDate]) VALUES (1, N'Phòng Phần mềm trong nước', CAST(30121050037 AS Decimal(18, 0)), CAST(N'2003-01-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment] ([depNum], [depName], [mgrSSN], [mgrAssDate]) VALUES (2, N'Phòng Phần mềm nước ngoài', CAST(30121050142 AS Decimal(18, 0)), CAST(N'2005-01-06T00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment] ([depNum], [depName], [mgrSSN], [mgrAssDate]) VALUES (3, N'Phòng Giải pháp mạng truyền thông', CAST(30121050254 AS Decimal(18, 0)), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment] ([depNum], [depName], [mgrSSN], [mgrAssDate]) VALUES (4, N'Phòng Dịch vụ chăm sóc khách hàng', CAST(30121050295 AS Decimal(18, 0)), CAST(N'2008-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[tblDepartment] ([depNum], [depName], [mgrSSN], [mgrAssDate]) VALUES (5, N'Phòng Nghiên cứu và phát triển', CAST(30121050184 AS Decimal(18, 0)), CAST(N'2006-01-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Bùi Phương Ngọc', CAST(30121050180 AS Decimal(18, 0)), N'M', CAST(N'1967-03-30T00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Đoàn Minh Đạo', CAST(30121050038 AS Decimal(18, 0)), N'M', CAST(N'1962-10-04T00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Hà Mỹ Duyên', CAST(30121050037 AS Decimal(18, 0)), N'F', CAST(N'1980-06-15T00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Hồ Đức Trung Hữu', CAST(30121050158 AS Decimal(18, 0)), N'M', CAST(N'1960-04-16T00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Huỳnh Thị Ngọc Điệp', CAST(30121050049 AS Decimal(18, 0)), N'F', CAST(N'1970-06-13T00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Nguyễn Thạc Hải', CAST(30121050254 AS Decimal(18, 0)), N'M', CAST(N'1970-09-17T00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Nguyễn Thị Minh Hà', CAST(30121050184 AS Decimal(18, 0)), N'F', CAST(N'1980-03-06T00:00:00.000' AS DateTime), N'Em')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Nguyễn Thị Minh Hằng', CAST(30121050060 AS Decimal(18, 0)), N'F', CAST(N'1965-01-04T00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Nguyễn Thị Thu Hằng', CAST(30121050142 AS Decimal(18, 0)), N'F', CAST(N'1969-03-30T00:00:00.000' AS DateTime), N'Vợ')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Nguyễn Thị Thùy Dung', CAST(30121050027 AS Decimal(18, 0)), N'F', CAST(N'1953-10-01T00:00:00.000' AS DateTime), N'Mẹ')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Phạm Nguyên Dũng', CAST(30121050015 AS Decimal(18, 0)), N'M', CAST(N'1965-04-16T00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Phan Thành Đăng', CAST(30121050035 AS Decimal(18, 0)), N'M', CAST(N'1970-02-24T00:00:00.000' AS DateTime), N'Chồng')
INSERT [dbo].[tblDependent] ([depName], [empSSN], [depSex], [depBirthdate], [depRelationship]) VALUES (N'Vương Thị Kim Cúc', CAST(30121050004 AS Decimal(18, 0)), N'F', CAST(N'1978-03-20T00:00:00.000' AS DateTime), N'Em')
GO
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (1, 1)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (1, 2)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (1, 3)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (1, 5)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (2, 1)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (2, 2)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (2, 4)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (3, 1)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (3, 4)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (4, 1)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (4, 3)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (4, 5)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (5, 1)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (5, 2)
INSERT [dbo].[tblDepLocation] ([depNum], [locNum]) VALUES (5, 4)
GO
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050004 AS Decimal(18, 0)), N'Mai Duy An', N'Long An', CAST(30000 AS Decimal(18, 0)), N'F', CAST(N'1968-02-17T00:00:00.000' AS DateTime), 1, CAST(30121050037 AS Decimal(18, 0)), CAST(N'2000-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050015 AS Decimal(18, 0)), N'Huỳnh Mai Anh', N'TP. Hồ Chí Minh', CAST(58000 AS Decimal(18, 0)), N'F', CAST(N'1963-05-04T00:00:00.000' AS DateTime), 1, CAST(30121050004 AS Decimal(18, 0)), CAST(N'2005-01-14T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050027 AS Decimal(18, 0)), N'Nguyễn Thúy Quỳnh Anh', N'Nam Định', CAST(91000 AS Decimal(18, 0)), N'F', CAST(N'1977-04-10T00:00:00.000' AS DateTime), 1, CAST(30121050004 AS Decimal(18, 0)), CAST(N'2005-02-25T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050035 AS Decimal(18, 0)), N'Tống Thị Lan Anh', N'Vũng Tàu', CAST(78000 AS Decimal(18, 0)), N'F', CAST(N'1978-10-28T00:00:00.000' AS DateTime), 1, CAST(30121050037 AS Decimal(18, 0)), CAST(N'2004-04-15T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050037 AS Decimal(18, 0)), N'Võ Việt Anh', N'Khánh Hòa', CAST(110000 AS Decimal(18, 0)), N'M', CAST(N'1974-11-11T00:00:00.000' AS DateTime), 1, NULL, CAST(N'2000-05-23T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050038 AS Decimal(18, 0)), N'Vũ Thuỵ Hồng Anh', N'TP. Hồ Chí Minh', CAST(104000 AS Decimal(18, 0)), N'F', CAST(N'1966-06-13T00:00:00.000' AS DateTime), 2, CAST(30121050142 AS Decimal(18, 0)), CAST(N'2000-05-24T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050049 AS Decimal(18, 0)), N'Trần Nguyễn Phương Bình', N'TP. Hồ Chí Minh', CAST(83000 AS Decimal(18, 0)), N'M', CAST(N'1959-05-17T00:00:00.000' AS DateTime), 2, CAST(30121050038 AS Decimal(18, 0)), CAST(N'2005-05-12T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050060 AS Decimal(18, 0)), N'Trần Thiện Bảo', N'TP. Hồ Chí Minh', CAST(75000 AS Decimal(18, 0)), N'M', CAST(N'1955-12-26T00:00:00.000' AS DateTime), 2, CAST(30121050038 AS Decimal(18, 0)), CAST(N'2008-10-20T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050142 AS Decimal(18, 0)), N'Nguyễn Hoàng Dũng', N'TP. Hồ Chí Minh', CAST(114000 AS Decimal(18, 0)), N'M', CAST(N'1956-02-26T00:00:00.000' AS DateTime), 2, NULL, CAST(N'2006-12-15T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050158 AS Decimal(18, 0)), N'Lê Hoàng Linh Giang', N'Huế', CAST(98000 AS Decimal(18, 0)), N'F', CAST(N'1957-07-16T00:00:00.000' AS DateTime), 2, CAST(30121050142 AS Decimal(18, 0)), CAST(N'2006-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050180 AS Decimal(18, 0)), N'Trần Ngọc Như Hằng', N'TP. Hồ Chí Minh', CAST(59000 AS Decimal(18, 0)), N'F', CAST(N'1970-05-29T00:00:00.000' AS DateTime), 5, CAST(30121050184 AS Decimal(18, 0)), CAST(N'2007-01-15T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050184 AS Decimal(18, 0)), N'Nguyễn Thị Minh Hưng', N'Thanh Hóa ', CAST(92000 AS Decimal(18, 0)), N'F', CAST(N'1976-12-23T00:00:00.000' AS DateTime), 5, NULL, CAST(N'2007-03-18T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050254 AS Decimal(18, 0)), N'Bùi Thị Thu Hương', N'TP. Hà Nội', CAST(117000 AS Decimal(18, 0)), N'F', CAST(N'1970-01-06T00:00:00.000' AS DateTime), 3, NULL, CAST(N'2008-06-24T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050265 AS Decimal(18, 0)), N'Phạm Thị Ngọc Hảo', N'Gia Lai', CAST(35000 AS Decimal(18, 0)), N'F', CAST(N'1975-02-04T00:00:00.000' AS DateTime), 3, CAST(30121050254 AS Decimal(18, 0)), CAST(N'2008-08-10T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050294 AS Decimal(18, 0)), N'Trịnh Hạnh', N'TP. Đà Nẵng', CAST(94000 AS Decimal(18, 0)), N'F', CAST(N'1977-02-12T00:00:00.000' AS DateTime), 4, CAST(30121050295 AS Decimal(18, 0)), CAST(N'2005-05-05T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050295 AS Decimal(18, 0)), N'Huỳnh Thị Như Hồng', N'TP. Cần Thơ', CAST(110000 AS Decimal(18, 0)), N'F', CAST(N'1970-08-14T00:00:00.000' AS DateTime), 4, NULL, CAST(N'2008-12-17T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050322 AS Decimal(18, 0)), N'Đỗ Thị Thúy Hùng', N'Sông Bé', CAST(76000 AS Decimal(18, 0)), N'M', CAST(N'1963-01-22T00:00:00.000' AS DateTime), 3, CAST(30121050254 AS Decimal(18, 0)), CAST(N'2002-11-11T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050336 AS Decimal(18, 0)), N'Trương Thanh Hiền', N'TP. Hải Phòng', CAST(102000 AS Decimal(18, 0)), N'F', CAST(N'1963-05-16T00:00:00.000' AS DateTime), 4, CAST(30121050295 AS Decimal(18, 0)), CAST(N'2003-04-27T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050341 AS Decimal(18, 0)), N'Nguyễn Đặng Hiếu', N'TP. Hồ Chí Minh', CAST(46000 AS Decimal(18, 0)), N'F', CAST(N'1970-08-30T00:00:00.000' AS DateTime), 4, CAST(30121050295 AS Decimal(18, 0)), CAST(N'2008-08-09T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050418 AS Decimal(18, 0)), N'Vũ Phạm Minh Hương', N'TP. Hà Nội', CAST(30000 AS Decimal(18, 0)), N'F', CAST(N'1971-08-17T00:00:00.000' AS DateTime), 5, CAST(30121050184 AS Decimal(18, 0)), CAST(N'2009-07-25T00:00:00.000' AS DateTime))
INSERT [dbo].[tblEmployee] ([empSSN], [empName], [empAddress], [empSalary], [empSex], [empBirthdate], [depNum], [supervisorSSN], [empStartdate]) VALUES (CAST(30121050982 AS Decimal(18, 0)), N'Hồ Việt Hoà', N'Đồng Nai', CAST(95000 AS Decimal(18, 0)), N'M', CAST(N'1970-02-03T00:00:00.000' AS DateTime), 3, CAST(30121050254 AS Decimal(18, 0)), CAST(N'2005-11-24T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblLocation] ON 

INSERT [dbo].[tblLocation] ([locNum], [locName]) VALUES (1, N'TP Hà Nội')
INSERT [dbo].[tblLocation] ([locNum], [locName]) VALUES (2, N'TP Hải Phòng')
INSERT [dbo].[tblLocation] ([locNum], [locName]) VALUES (3, N'TP Đà Nẵng')
INSERT [dbo].[tblLocation] ([locNum], [locName]) VALUES (4, N'TP Huế')
INSERT [dbo].[tblLocation] ([locNum], [locName]) VALUES (5, N'TP Hồ Chí Minh')
INSERT [dbo].[tblLocation] ([locNum], [locName]) VALUES (6, N'TP Cần Thơ')
SET IDENTITY_INSERT [dbo].[tblLocation] OFF
GO
INSERT [dbo].[tblProject] ([proNum], [proName], [locNum], [depNum]) VALUES (1, N'ProjectA', 1, 3)
INSERT [dbo].[tblProject] ([proNum], [proName], [locNum], [depNum]) VALUES (2, N'ProjectB', 1, 2)
INSERT [dbo].[tblProject] ([proNum], [proName], [locNum], [depNum]) VALUES (3, N'ProjectC', 3, 2)
INSERT [dbo].[tblProject] ([proNum], [proName], [locNum], [depNum]) VALUES (4, N'ProjectD', 2, 1)
INSERT [dbo].[tblProject] ([proNum], [proName], [locNum], [depNum]) VALUES (5, N'ProjectE', 5, 4)
GO
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050027 AS Decimal(18, 0)), 1, 7)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050027 AS Decimal(18, 0)), 2, 5)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050027 AS Decimal(18, 0)), 4, 18)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050035 AS Decimal(18, 0)), 4, 15)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050037 AS Decimal(18, 0)), 1, 10)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050037 AS Decimal(18, 0)), 2, 10)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050037 AS Decimal(18, 0)), 4, 15)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050037 AS Decimal(18, 0)), 5, 5)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050038 AS Decimal(18, 0)), 2, 33)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050038 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050049 AS Decimal(18, 0)), 2, 24)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050049 AS Decimal(18, 0)), 3, 6)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050060 AS Decimal(18, 0)), 2, 21)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050060 AS Decimal(18, 0)), 3, 27)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050142 AS Decimal(18, 0)), 2, 9)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050142 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050158 AS Decimal(18, 0)), 2, 21)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050158 AS Decimal(18, 0)), 3, 12)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050254 AS Decimal(18, 0)), 1, 24)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050265 AS Decimal(18, 0)), 1, 40)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050294 AS Decimal(18, 0)), 3, 5)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050294 AS Decimal(18, 0)), 5, 15)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050295 AS Decimal(18, 0)), 5, 15)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050322 AS Decimal(18, 0)), 1, 30)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050336 AS Decimal(18, 0)), 5, 15)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050982 AS Decimal(18, 0)), 1, 33)
INSERT [dbo].[tblWorksOn] ([empSSN], [proNum], [workHours]) VALUES (CAST(30121050982 AS Decimal(18, 0)), 2, 10)
GO
ALTER TABLE [dbo].[tblDependent]  WITH CHECK ADD  CONSTRAINT [FK_tblDependent_tblEmployee] FOREIGN KEY([empSSN])
REFERENCES [dbo].[tblEmployee] ([empSSN])
GO
ALTER TABLE [dbo].[tblDependent] CHECK CONSTRAINT [FK_tblDependent_tblEmployee]
GO
ALTER TABLE [dbo].[tblDepLocation]  WITH CHECK ADD  CONSTRAINT [FK_tblDepLocation_tblDepartment] FOREIGN KEY([depNum])
REFERENCES [dbo].[tblDepartment] ([depNum])
GO
ALTER TABLE [dbo].[tblDepLocation] CHECK CONSTRAINT [FK_tblDepLocation_tblDepartment]
GO
ALTER TABLE [dbo].[tblDepLocation]  WITH CHECK ADD  CONSTRAINT [FK_tblDepLocation_tblLocation] FOREIGN KEY([locNum])
REFERENCES [dbo].[tblLocation] ([locNum])
GO
ALTER TABLE [dbo].[tblDepLocation] CHECK CONSTRAINT [FK_tblDepLocation_tblLocation]
GO
ALTER TABLE [dbo].[tblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_tblEmployee_tblDepartment] FOREIGN KEY([depNum])
REFERENCES [dbo].[tblDepartment] ([depNum])
GO
ALTER TABLE [dbo].[tblEmployee] CHECK CONSTRAINT [FK_tblEmployee_tblDepartment]
GO
ALTER TABLE [dbo].[tblProject]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_tblDepartment] FOREIGN KEY([depNum])
REFERENCES [dbo].[tblDepartment] ([depNum])
GO
ALTER TABLE [dbo].[tblProject] CHECK CONSTRAINT [FK_tblProject_tblDepartment]
GO
ALTER TABLE [dbo].[tblProject]  WITH CHECK ADD  CONSTRAINT [FK_tblProject_tblLocation] FOREIGN KEY([locNum])
REFERENCES [dbo].[tblLocation] ([locNum])
GO
ALTER TABLE [dbo].[tblProject] CHECK CONSTRAINT [FK_tblProject_tblLocation]
GO
ALTER TABLE [dbo].[tblWorksOn]  WITH CHECK ADD  CONSTRAINT [FK_tblWorksOn_tblProject] FOREIGN KEY([proNum])
REFERENCES [dbo].[tblProject] ([proNum])
GO
ALTER TABLE [dbo].[tblWorksOn] CHECK CONSTRAINT [FK_tblWorksOn_tblProject]
GO
USE [master]
GO
ALTER DATABASE [FUH_COMPANY] SET  READ_WRITE 
GO

