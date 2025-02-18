/****** Object:  Table [dbo].[Teacher] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[Teacher_ID] [int] NOT NULL IDENTITY(1,1),
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Gender] [nvarchar](10) NULL,
	[ContractDate] [date] NULL, /*Maybe it won't work*/
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[Teacher_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Course_ID] [int] NOT NULL IDENTITY(1,1),
	[Name] [nvarchar](100) NULL,
	[Teacher_ID] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[Course_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [int] NOT NULL IDENTITY(1,1),
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[StudentIdNumber] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Assignment] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assignment](
	[Assignment_ID] [int] NOT NULL IDENTITY(1,1),
	[Deadline] [datetime] NULL,
	[Course_ID] [int] NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[Assignment_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Submission] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submission](
	[Submission_ID] [int] NOT NULL IDENTITY(1,1),
	[Assignment_ID] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[SubmissionTime] [datetime] NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_Submission] PRIMARY KEY CLUSTERED 
(
	[Submission_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  ForeignKey [FK_Course_Teacher] ******/
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Teacher]
GO

/****** Object:  ForeignKey [FK_Assignment_Course] ******/
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Course] FOREIGN KEY([Course_ID])
REFERENCES [dbo].[Course] ([Course_ID])
GO
ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Course]
GO

/****** Object:  ForeignKey [FK_Submission_Assignment] ******/
ALTER TABLE [dbo].[Submission]  WITH CHECK ADD CONSTRAINT [FK_Submission_Assignment] FOREIGN KEY([Assignment_ID])
REFERENCES [dbo].[Assignment] ([Assignment_ID])
GO
ALTER TABLE [dbo].[Submission] CHECK CONSTRAINT [FK_Submission_Assignment]
GO

/****** Object:  ForeignKey [FK_Submission_Student] ******/
ALTER TABLE [dbo].[Submission]  WITH CHECK ADD  CONSTRAINT [FK_Submission_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[Submission] CHECK CONSTRAINT [FK_Submission_Student]
GO

/*************************************************************************************/

/** STUDENT **/
SET IDENTITY_INSERT student ON
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('1', 'Zug', 'Hansson','Male', 'zh12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('2', 'Zolnowski', 'Paterson','Male', 'zp67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('3', 'Zoellers', 'Andreassen','Male', 'za12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('4', 'Yule', 'Eriksen','Female', 'ye67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('5', 'Zurbriggen', 'Paterson','Male', 'zp12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('6', 'Young', 'Bengtsson','Male', 'yb23456');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('7', 'Zachary', 'Carlsson','Male', 'zc78901');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('8', 'Zalmers', 'Williams','Male', 'zw34567');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('9', 'Zobel', 'Anderson','Male', 'za89012');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('10', 'Zuczek', 'Robinson','Male', 'zr90123');
/**********************************************************/
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('11', 'Zeliff', 'Gustafsson','Male', 'zg45678');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('12', 'Yakley', 'Halvorsen','Male', 'yh56789');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('13', 'Zahn', 'Andersen','Male', 'za01234');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('14', 'Zirkle', 'Campbell','Male', 'zc56789');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('15', 'Zepp', 'Eriksen','Male', 'ze78901');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('16', 'Zurbuch', 'Olsen','Male', 'zo23456');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('17', 'Zabriskie', 'Brown','Male', 'zb34567');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('18', 'Zobel', 'Davies','Male', 'zd45678');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('19', 'Yancey', 'White','Male', 'yw56789'); 
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('20', 'Yolland', 'Anderson','Male', 'ya12345');
/**********************************************************/
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('31', 'Gregory', 'Brennan','Male', 'gb67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('32', 'Helen', 'Cawthorne','Male', 'hc12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('33', 'Maile', 'Doyle','Male', 'md67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('34', 'Pam', 'Tetu','Female', 'pt12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('35', 'Sidney', 'Shorter','Female', 'ss67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('36', 'Young', 'Dawkins','Male', 'yd12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('37', 'Alexander', 'Markham','Male', 'am67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('38', 'Cathie', 'Ely','Male', 'ce12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('39', 'Dan', 'Rhone','Male', 'dr67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('40', 'Guy', 'Crider','Male', 'gc12345');
/**********************************************************/
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('41', 'Ione', 'Westover','Male', 'iw67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('42', 'Martin', 'Nagel','Male', 'mn12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('43', 'Patrick', 'Karlsson','Male', 'pk67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('44', 'Stacey', 'Doughty','Male', 'sd12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('45', 'Alfred', 'Schroeder','Male', 'as67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('46', 'Celeste', 'Paquette','Male', 'cp12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('47', 'Elmo', 'Hardy','Male', 'eh67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('48', 'Guy', 'Dunbar','Male', 'gd12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('49', 'Louis', 'Sidoti','Male', 'ls67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('50', 'Mary', 'Lemanski','Female', 'ml12345');
/**********************************************************/
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('51', 'Tim', 'Whisler','Male', 'tw67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('52', 'Alice', 'Gilbreath','Male', 'ag12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('53', 'Charlotte', 'Bergeron','Male', 'cb67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('54', 'Gillian', 'Symons','Male', 'gs12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('55', 'Hannah', 'Bassham','Male', 'hb67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('56', 'Luke', 'Choi','Male', 'lc12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('57', 'Miranda', 'Bollinger','Male', 'mb67890');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('58', 'Roy', 'Tamashiro','Male', 'rt12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('59', 'Todd', 'Platts','Male', 'tp12345');
INSERT INTO student (StudentId, name, surname, gender, StudentIdNumber) VALUES ('60', 'Arthur', 'Morgan','Male', 'am67890');
SET IDENTITY_INSERT student OFF
go

/** TEACHER **/
SET IDENTITY_INSERT teacher ON
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('1', 'John', 'Kennedy','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('2', 'George', 'Clinton','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('3', 'Paul', 'Collins','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('4', 'Michael', 'Howard','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('5', 'Tony', 'Abbott','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('6', 'David', 'Lodge','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('7', 'Alexander', 'Macomb','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('8', 'Allan', 'Hanbury','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('9', 'Edward', 'Fox','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('10', 'Andrew', 'Powell','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('11', 'Donna', 'Harman', 'Female', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('12', 'Gregory', 'Crane','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('13', 'Jane', 'Hunter','Female', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('14', 'Paul', 'Clough','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('15', 'Anita', 'Coleman','Female', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('16', 'Thomas', 'Baker','Male', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('17', 'Christine', 'Borgman','Female', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('18', 'Abby', 'Watkins','Female', '2022-06-16');
INSERT INTO teacher (Teacher_ID, name, surname, gender, ContractDate) VALUES ('19', 'Armando', 'Valencia','Female', '2022-06-16');
SET IDENTITY_INSERT teacher OFF
go

/** COURSE **/
SET IDENTITY_INSERT course ON
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('1', 'Introduction to Computer Science and Programming', '1');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('2', 'Structure and Interpretation of Computer Programs', '2');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('3', 'Circuits and Electronics', '3');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('4', 'Signals and Systems', '4');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('5', 'Computation Structures', '5');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('6', 'Introduction to Algorithms', '6');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('7', 'Introduction to Communication, Control, and Signal Processing', '6');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('8', 'Microelectronic Devices and Circuits', '7');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('9', 'Feedback Systems', '8');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('10', 'Electromagnetics and Applications', '9');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('11', 'Analysis and Design of Digital Integrated Circuits', '10');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('12', 'Quantitative Physiology: Cells and Tissues', '11');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('13', 'Quantitative Physiology: Organ Transport Systems', '11');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('14', 'Fields, Forces and Flows in Biological Systems', '12');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('15', 'Molecular, Cellular, and Tissue Biomechanics', '12');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('16', 'Introduction to Bioengineering (BE.010J)', '12');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('17', 'Computer System Engineering (SMA 5501)', '9');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('18', 'Artificial Intelligence', '13');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('19', 'Solid-State Circuits', '13');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('20', 'Computer Language Engineering (SMA 5502)', '7');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('21', 'Automatic Speech Recognition', '13');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('22', 'Probabilistic Systems Analysis and Applied Probability', '9');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('23', 'Mathematics for Computer Science (SMA 5512)', '14');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('24', 'Discrete-Time Signal Processing', '16');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('25', 'Mathematics for Computer Science', '14');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('26', 'Automata, Computability, and Complexity', '16');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('27', 'Introduction to Algorithms (SMA 5503)', '2');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('28', 'Information and Entropy', '16');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('29', 'The Art of Approximation in Science and Engineering', '6');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('30', 'Introduction to Electric Power Systems', '5');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('31', 'Introduction to Numerical Methods', '1');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('32', 'Projects in Microscale Engineering for the Life Sciences', '2');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('33', 'Great Ideas in Theoretical Computer Science', '4');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('34', 'Numerical Methods for Partial Differential Equations', '3');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('35', 'Building Programming Experience: A Lead-In to 6.001', '2');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('36', 'Hands-On Introduction to Electrical Engineering Lab Skills', '17');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('37', 'Bioinformatics and Proteomics', '19');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('38', 'Java Preparation for 6.170', '18');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('39', 'Introduction to Software Engineering in Java', '1');
INSERT INTO course (course_id, name, Teacher_ID) VALUES ('40', 'Computational Biology: Genomes, Networks, Evolution', '19');
SET IDENTITY_INSERT course OFF
go


/** ASSIGNMENT **/
SET IDENTITY_INSERT assignment ON
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('1', '2024-07-15 15:30:00', '1', 'Testing knowledge of the subject - Computer Science and Programming');
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('2', '2024-07-22 23:59:00', '1', 'First Homework');
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('3', '2024-07-29 16:30:00', '1', 'Essay on the topic "Computer Science in our life"');
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('4', '2024-06-02 12:00:00', '38', 'Essay - What is Java?');
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('5', '2024-08-09 15:30:00', '38', 'Simple Code using Java');
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('6', '2024-08-01 18:00:00', '6', 'Introduction to Algorithms');
INSERT INTO assignment (assignment_id, deadline, course_id, description) VALUES ('7', '2024-09-01 20:00:00', '19', 'Difference in Circuits');
SET IDENTITY_INSERT assignment OFF
go



/** SUBMISSION **/
SET IDENTITY_INSERT submission ON
INSERT INTO submission (submission_id, assignment_id, StudentId, SubmissionTime, score) VALUES ('1', '1', '1', '2024-07-14 19:36:00', 8);
INSERT INTO submission (submission_id, assignment_id, StudentId, SubmissionTime, score) VALUES ('2', '2', '1', '2024-07-20 15:21:00', 7);
INSERT INTO submission (submission_id, assignment_id, StudentId, SubmissionTime, score) VALUES ('3', '3', '2', '2024-07-29 14:19:00', 4);
SET IDENTITY_INSERT submission OFF
go



