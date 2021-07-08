{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14160\viewh17480\viewkind0
\deftab720
\pard\pardeftab720\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\fs24 \cf0 DROP DATABASE BMU_Learning;\
CREATE DATABASE BMU_Learning;\
\
DROP TABLE Student;\
DROP TABLE Department;\
DROP TABLE Courses;\
DROP TABLE Faculty;\
DROP TABLE Notes;\
DROP TABLE Test;\
DROP TABLE Test_Details;\
DROP TABLE Course_Details;\
DROP TABLE Notes_Details;\
\
CREATE TABLE Department\
            (\
                Department_ID VARCHAR(10) PRIMARY KEY,\
                Department_Name VARCHAR(60) NOT NULL,\
                Number_Of_Students INTEGER\
            );\
\
CREATE TABLE Student\
            (\
                Student_ID VARCHAR(15) PRIMARY KEY,\
                Name VARCHAR(60) NOT NULL,\
                Sex VARCHAR(1) NOT NULL,\
\pard\pardeftab720\fi720\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0     DOB DATE, \
\pard\pardeftab720\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0                 Email VARCHAR(60) UNIQUE,\
	    Stars INTEGER,\
	    Number_Of_Tests INTEGER,\
	    Department_ID VARCHAR(10) NOT NULL,\
	    FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID)\
            );\
\
CREATE TABLE Courses\
            (\
                Course_ID VARCHAR(10) PRIMARY KEY,\
                Name VARCHAR(60) NOT NULL UNIQUE,\
	    Department_ID VARCHAR(10),\
	    FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID),\
	    Number_Of_Credits INTEGER NOT NULL,\
	    Semester INTEGER NOT NULL,\
	    Prerequisites VARCHAR (10) \
            );\
\
CREATE TABLE Faculty\
            (\
                Faculty_ID VARCHAR(15) PRIMARY KEY,\
                Name VARCHAR(60) NOT NULL,\
	    Sex CHAR(1),\
                Email VARCHAR(60) NOT NULL UNIQUE,\
	    Designation VARCHAR(30) NOT NULL,\
	    Department_ID VARCHAR(10) NOT NULL,\
	    FOREIGN KEY(Department_ID) REFERENCES Department(Department_ID)\
            );\
\
CREATE TABLE Notes\
            (\
                Notes_ID varchar(10) PRIMARY KEY,\
                Name VARCHAR(60) NOT NULL UNIQUE,\
                Course_ID VARCHAR(10) NOT NULL, \
	    Number_Of_Likes INTEGER,\
	    Faculty_ID VARCHAR(10) NOT NULL,\
	    Link VARCHAR(100) NOT NULL UNIQUE,\
	    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID),\
	    FOREIGN KEY(Faculty_ID) REFERENCES Faculty(Faculty_ID)\
            );\
\
CREATE TABLE Test\
            (\
                Test_ID VARCHAR(10) PRIMARY KEY,\
	    Test_Name VARCHAR(50) NOT NULL UNIQUE,\
	    Duration_min INTEGER NOT NULL,\
	    Max_Marks_Allotted INTEGER NOT NULL,\
	    Avg_Score INTEGER ,\
	    Course_ID VARCHAR(10),\
	    Faculty_ID VARCHAR(15) ,\
	    Link VARCHAR(100) NOT NULL,\
	    FOREIGN KEY(Course_ID) REFERENCES Courses(Course_ID),\
	    FOREIGN KEY(Faculty_ID) REFERENCES Faculty(Faculty_ID)\
            );\
\
CREATE TABLE Test_Details\
            (\
                Test_ID VARCHAR(10) NOT NULL,\
	    FOREIGN KEY(Test_ID) REFERENCES Test(Test_ID),\
	    Test_Name VARCHAR(50) NOT NULL ,\
	    FOREIGN KEY(Test_name) REFERENCES Test(Test_name),\
	    Student_ID VARCHAR(15) NOT NULL ,\
	    FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID),\
	    Marks INTEGER\
            );\
\
CREATE TABLE Notes_Details\
	   (\
		Student_ID VARCHAR(15) NOT NULL ,\
		Notes_ID varchar(10) NOT NULL,\
		FOREIGN KEY (Notes_ID) REFERENCES Notes(Notes_ID),\
		FOREIGN KEY(Student_ID) REFERENCES Student(Student_ID),\
		Likes INTEGER\
	   );\
\
}