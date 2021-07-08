{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Bold;\f1\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh18000\viewkind0
\deftab720
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b\fs32 \cf0 /*To select all the students who have taken maximum number of test*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT Student_ID, Name FROM Student \
WHERE Student_ID IN\
\pard\pardeftab720\li360\fi360\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0 (SELECT Student_ID FROM Test_Details \
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0 GROUP BY Student_ID\
HAVING COUNT(Student_ID) = \
	(SELECT MAX(Marks) FROM\
		(SELECT COUNT(Student_ID) AS Marks \
\pard\pardeftab720\li1080\fi360\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0 FROM Test_Details GROUP BY Student_ID));\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0 \
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /*To select all the subjects in which students have taken maximum number of test*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT Test_Name FROM Test_Details \
GROUP BY Test_Name \
HAVING COUNT(Test_Name) = \
	(SELECT MAX(Marks) FROM\
		(SELECT COUNT(Test_Name) AS Marks FROM Test_Details GROUP BY Test_Name));\
\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /* To find average marks of students in a course which is uploaded by a particular faculty*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT AVG(Marks) FROM Test_Details\
WHERE Test_Name IN\
	(SELECT Test_Name FROM Test WHERE Faculty_ID = \
'LSEM500')group by Test_Name;\
\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /* How many courses a particular student has taken*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT COUNT(*) FROM Course_Details \
WHERE Student_ID = '1800201C200';\
\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /* To select total number of students from each department*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT Department_ID, COUNT(*) FROM student \
GROUP BY Department_ID;\
\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /* How many credits a student has taken */\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT Student_ID, SUM(Courses.Number_Of_Credits) \
FROM Courses, Students_Enrolled\
WHERE Students_Enrolled.Course_ID = Courses.Course_ID\
GROUP BY Student_ID;\
\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /*To find average of all the subjects*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT Test_Name, AVG(Marks) FROM Test_Details\
GROUP BY Test_Name;\
\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\b \cf0 /* Select notes names where likes = 1 or if it belongs to a CS Department*/\
\pard\pardeftab720\li360\ri-340\sl259\slmult1\sa160\partightenfactor0

\f1\b0 \cf0 SELECT DISTINCT  Notes.Name \
FROM Notes, Courses, Department\
WHERE Number_Of_Likes = 1 OR \
\pard\pardeftab720\li720\ri-340\sl259\slmult1\sa160\partightenfactor0
\cf0 Department.Department_ID = Courses.Department_ID and Department.Department_ID = 'CS' and Courses.Course_ID = Notes.Course_ID;\
}