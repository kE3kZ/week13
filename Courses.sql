USE [master]
GO
/****** Object:  Database [Courses]    Script Date: 3/30/2023 8:02:20 PM ******/
CREATE DATABASE [Courses]
GO
USE [Courses]
GO
/****** Object:  Table [dbo].[Advisor]    Script Date: 3/30/2023 8:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advisor](
	[AdvisorID] [varchar](50) NOT NULL,
	[AdvisorFirstName] [varchar](50) NOT NULL,
	[AdvisorLastName] [varchar](50) NOT NULL,
	[AdvisorPhone] [varchar](50) NOT NULL,
	[AdvisorEmail] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Advisor] PRIMARY KEY CLUSTERED 
(
	[AdvisorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvisorStudent]    Script Date: 3/30/2023 8:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvisorStudent](
	[AdvisorID] [varchar](50) NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AdvisorStudent] PRIMARY KEY CLUSTERED 
(
	[AdvisorID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 3/30/2023 8:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [varchar](50) NOT NULL,
	[CourseName] [varchar](50) NOT NULL,
	[CourseCredits] [int] NOT NULL,
	[InstructorID] [varchar](50) NOT NULL,
	[CourseRoom] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseStudent]    Script Date: 3/30/2023 8:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseStudent](
	[CourseID] [varchar](50) NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
	[Grade] [char](1) NOT NULL,
 CONSTRAINT [PK_CourseStudent] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 3/30/2023 8:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorID] [varchar](50) NOT NULL,
	[InstructorFirstName] [varchar](50) NOT NULL,
	[InstructorLastName] [varchar](50) NOT NULL,
	[InstructorPhone] [varchar](8) NOT NULL,
	[InstructorEmail] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/30/2023 8:02:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentID] [varchar](50) NOT NULL,
	[StudentFirstName] [varchar](50) NOT NULL,
	[StudentLastName] [varchar](50) NOT NULL,
	[StudentEmail] [varchar](100) NOT NULL,
	[StudentPhone] [varchar](8) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Advisor] ([AdvisorID], [AdvisorFirstName], [AdvisorLastName], [AdvisorPhone], [AdvisorEmail]) VALUES (N'A001', N'Walt', N'Jones', N'457-8989', N'w.jones@uni.com')
GO
INSERT [dbo].[Advisor] ([AdvisorID], [AdvisorFirstName], [AdvisorLastName], [AdvisorPhone], [AdvisorEmail]) VALUES (N'A002', N'Faith', N'Elliot', N'546-7898', N'f.elliot@uni.com')
GO
INSERT [dbo].[Advisor] ([AdvisorID], [AdvisorFirstName], [AdvisorLastName], [AdvisorPhone], [AdvisorEmail]) VALUES (N'A003', N'Emilie', N'Morgan', N'123-4864', N'e.morgan@uni.com')
GO
INSERT [dbo].[Advisor] ([AdvisorID], [AdvisorFirstName], [AdvisorLastName], [AdvisorPhone], [AdvisorEmail]) VALUES (N'A004', N'George', N'Martin', N'456-7878', N'g.martin@uni.com')
GO
INSERT [dbo].[Advisor] ([AdvisorID], [AdvisorFirstName], [AdvisorLastName], [AdvisorPhone], [AdvisorEmail]) VALUES (N'A005', N'Jed', N'Hull', N'448-3178', N'j.hull@uni.com')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A001', N'S001')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A001', N'S002')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A002', N'S003')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A003', N'S004')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A003', N'S005')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A004', N'S006')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A004', N'S007')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A004', N'S008')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A005', N'S009')
GO
INSERT [dbo].[AdvisorStudent] ([AdvisorID], [StudentID]) VALUES (N'A005', N'S010')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C001', N'Accounting Principles', 3, N'I001', N'125')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C002', N'Managerial Accounting', 4, N'I001', N'444')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C003', N'Introduction to Studio Art', 3, N'I003', N'245')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C004', N'Nutrition', 3, N'I002', N'143')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C005', N'Microbiology', 3, N'I002', N'312')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C006', N'Structured Programming Logic', 4, N'I006', N'215')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C007', N'Database Modeling', 3, N'I006', N'203')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C008', N'Analytical Writing', 3, N'I005', N'341')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C009', N'American History', 3, N'I004', N'129')
GO
INSERT [dbo].[Course] ([CourseID], [CourseName], [CourseCredits], [InstructorID], [CourseRoom]) VALUES (N'C010', N'World History', 3, N'I004', N'412')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C001', N'S001', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C001', N'S002', N'C')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C002', N'S001', N'A')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C002', N'S004', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C002', N'S010', N'C')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C003', N'S002', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C004', N'S003', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C004', N'S004', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C004', N'S008', N'A')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C005', N'S002', N'A')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C005', N'S005', N'A')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C006', N'S003', N'A')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C006', N'S007', N'C')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C007', N'S003', N'C')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C008', N'S005', N'A')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C008', N'S009', N'D')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C009', N'S006', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C009', N'S009', N'C')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C010', N'S008', N'B')
GO
INSERT [dbo].[CourseStudent] ([CourseID], [StudentID], [Grade]) VALUES (N'C010', N'S010', N'A')
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstructorFirstName], [InstructorLastName], [InstructorPhone], [InstructorEmail]) VALUES (N'I001', N'Xander', N'Garza', N'777-1258', N'x.garza@uni.com')
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstructorFirstName], [InstructorLastName], [InstructorPhone], [InstructorEmail]) VALUES (N'I002', N'Rosa', N'Bray', N'789-7788', N'r.bray@uni.com')
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstructorFirstName], [InstructorLastName], [InstructorPhone], [InstructorEmail]) VALUES (N'I003', N'Subhaan', N'Sparks', N'789-5569', N's.sparks@uni.com')
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstructorFirstName], [InstructorLastName], [InstructorPhone], [InstructorEmail]) VALUES (N'I004', N'Katy', N'Nash', N'789-7778', N'k.nash@uni.com')
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstructorFirstName], [InstructorLastName], [InstructorPhone], [InstructorEmail]) VALUES (N'I005', N'Jude', N'Rocha', N'358-7898', N'j.rocha@uni.com')
GO
INSERT [dbo].[Instructor] ([InstructorID], [InstructorFirstName], [InstructorLastName], [InstructorPhone], [InstructorEmail]) VALUES (N'I006', N'Antony', N'Boyer', N'678-4444', N'a.boyer@uni.com')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S001', N'Trinity', N'Lowe', N't.lowe@uni.com', N'333-5555')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S002', N'Helen', N'Snyder', N'h.snyder@uni.com', N'888-7878')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S003', N'Amanda', N'Allen', N'a.allen@uni.com', N'222-2344')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S004', N'Ellie', N'Gates', N'e.gates@uni.com', N'483-2918')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S005', N'Kain', N'Cantu', N'k.cantu@uni.com', N'234-4564')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S006', N'Austin', N'Sloan', N'a.sload@uni.com', N'589-5468')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S007', N'Lori', N'Campbell', N'l.campbell@uni.com', N'898-1234')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S008', N'Daniyal', N'Cook', N'd.cook@uni.com', N'787-6894')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S009', N'Poppy', N'Craig', N'p.craig@uni.com', N'789-5468')
GO
INSERT [dbo].[Student] ([StudentID], [StudentFirstName], [StudentLastName], [StudentEmail], [StudentPhone]) VALUES (N'S010', N'Carrie', N'Jackson', N'c.jackson@uni.com', N'125-4894')
GO
ALTER TABLE [dbo].[AdvisorStudent]  WITH CHECK ADD  CONSTRAINT [FK_AdvisorStudent_Advisor] FOREIGN KEY([AdvisorID])
REFERENCES [dbo].[Advisor] ([AdvisorID])
GO
ALTER TABLE [dbo].[AdvisorStudent] CHECK CONSTRAINT [FK_AdvisorStudent_Advisor]
GO
ALTER TABLE [dbo].[AdvisorStudent]  WITH CHECK ADD  CONSTRAINT [FK_AdvisorStudent_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[AdvisorStudent] CHECK CONSTRAINT [FK_AdvisorStudent_Student]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Instructor] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructor] ([InstructorID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Instructor]
GO
ALTER TABLE [dbo].[CourseStudent]  WITH CHECK ADD  CONSTRAINT [FK_CourseStudent_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[CourseStudent] CHECK CONSTRAINT [FK_CourseStudent_Course]
GO
ALTER TABLE [dbo].[CourseStudent]  WITH CHECK ADD  CONSTRAINT [FK_CourseStudent_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO
ALTER TABLE [dbo].[CourseStudent] CHECK CONSTRAINT [FK_CourseStudent_Student]
GO
ALTER TABLE [dbo].[Advisor]  WITH CHECK ADD  CONSTRAINT [CK_Advisor] CHECK  (([AdvisorPhone] like '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Advisor] CHECK CONSTRAINT [CK_Advisor]
GO
ALTER TABLE [dbo].[Advisor]  WITH CHECK ADD  CONSTRAINT [CK_Advisor_1] CHECK  (([AdvisorID] like 'A%'))
GO
ALTER TABLE [dbo].[Advisor] CHECK CONSTRAINT [CK_Advisor_1]
GO
ALTER TABLE [dbo].[AdvisorStudent]  WITH CHECK ADD  CONSTRAINT [CK_AdvisorStudent] CHECK  (([AdvisorID] like 'A%'))
GO
ALTER TABLE [dbo].[AdvisorStudent] CHECK CONSTRAINT [CK_AdvisorStudent]
GO
ALTER TABLE [dbo].[AdvisorStudent]  WITH CHECK ADD  CONSTRAINT [CK_AdvisorStudent_1] CHECK  (([StudentID] like 'S%'))
GO
ALTER TABLE [dbo].[AdvisorStudent] CHECK CONSTRAINT [CK_AdvisorStudent_1]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [CK_Course] CHECK  (([CourseID] like 'C%'))
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [CK_Course]
GO
ALTER TABLE [dbo].[CourseStudent]  WITH CHECK ADD  CONSTRAINT [CK_CourseStudent] CHECK  (([CourseID] like 'C%'))
GO
ALTER TABLE [dbo].[CourseStudent] CHECK CONSTRAINT [CK_CourseStudent]
GO
ALTER TABLE [dbo].[CourseStudent]  WITH CHECK ADD  CONSTRAINT [CK_CourseStudent_1] CHECK  (([StudentID] like 'S%'))
GO
ALTER TABLE [dbo].[CourseStudent] CHECK CONSTRAINT [CK_CourseStudent_1]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [CK_Instructor] CHECK  (([InstructorPhone] like '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [CK_Instructor]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [CK_Instructor_1] CHECK  (([InstructorID] like 'I%'))
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [CK_Instructor_1]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student] CHECK  (([StudentPhone] like '[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [CK_Student_1] CHECK  (([StudentID] like 'S%'))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [CK_Student_1]
GO
USE [master]
GO
ALTER DATABASE [Courses] SET  READ_WRITE 
GO
