--- Creating table for students and the courses theya re registered to
CREATE TABLE Students (
    SID INT PRIMARY KEY,
    First VARCHAR(50) NOT NULL,
    Last VARCHAR(50) NOT NULL,
    Birth DATE NOT NULL,
    Sex VARCHAR(10) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100)
);

CREATE TABLE StudentCourses (
    SID INT,
    CourseID INT,
    CONSTRAINT PK_StudentCourses PRIMARY KEY (SID, CourseID),
    CONSTRAINT FK_StudentCourses_Students FOREIGN KEY (SID) REFERENCES Students(SID),
    CONSTRAINT FK_StudentCourses_Courses FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


--- Adding data to courses,student and studentcourses table

INSERT INTO Students (SID, First, Last, Birth, Sex, Email, Phone)
VALUES
    (1, 'John', 'Doe', '1995-03-15', 'Male', 'john.doe@example.com', '123-456-7890'),
	(22, 'Jane', 'Smith', '1998-06-22', 'Female', 'jane.smith@example.com', '987-654-3210'),
    (333, 'Sam', 'Smith', '1997-09-10', 'Male', 'michael.johnson@example.com', '555-123-4567');

INSERT INTO Courses (CourseID, CourseName)
VALUES
    (101, 'Mathematics'),
    (201, 'History'),
    (301, 'Science');

INSERT INTO StudentCourses (SID, CourseID)
VALUES
    (1, 101),
    (1, 102),
	(1,301),
	(22,301),
	(22,101),
	(333,301),
	(333,201);

