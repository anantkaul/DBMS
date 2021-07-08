{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14160\viewh17480\viewkind0
\deftab720
\pard\pardeftab720\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\fs24 \cf0 INSERT into Department values('CS','Computer Science',11);\
INSERT into Department values('EC','Electronics and Communication',1);\
INSERT into Department values('EEE','Electrical Engineering',1);\
INSERT into Department values('ME','Mechanical Engineering',2);\
\
INSERT into Student values('1800201C200','Sunil Kumar','M','1999/01/12','sunilkumar@gmail.com',1,2 ,'CS');\
INSERT into Student values('1800202C200','Aman Gupta','M','1999/11/30','amangupta@gmail.com',1,3 ,'CS');\
INSERT into Student values('1800203C200','Tulika Saxena','F','2000/02/29','tulikasaxena@gmail.com',1,1 ,'EC');\
INSERT into Student values('1800204C200','Abhishek Tiwari','M','1999/09/18','abhiskek@gmail.com',1,0 ,'CS');\
INSERT into Student values('1800205C200','Ankitha Anand','F','1999/03/23','ankitha@gmail.com',1,1 ,'CS');\
INSERT into Student values('1800206C200','Granth Kohli','M','1999/05/07','granthkohli@gmail.com',1,0 ,'CS');\
INSERT into Student values('1800207C200','Aditya Verma','M','2000/04/08','adityaverma@gmail.com',1,4 ,'CS');\
INSERT into Student values('1800208C200','Surabhi Jain','F','1999/06/18','surabhijain@gmail.com',1,0 ,'EEE');\
INSERT into Student values('1800209C200','Nikitha Bhatiya','F','1999/06/15','nikitha@gmail.com',1,2 ,'CS');\
INSERT into Student values('1800210C200','Monika Agarwal','F','1999/09/10','monikaagarwal@gmail.com',1,0 ,'CS');\
INSERT into Student values('1800211C200','Rahul Mishra','M','1999/07/21','rahulmishra@gmail.com',1,0 ,'CS');\
INSERT into Student values('1800212C200','Gaurav Kumar','M','1999/11/29','gauravkumar@gmail.com',1,0 ,'CS');\
INSERT into Student values('1800213C200','Aman Sharma','M','1999/12/31','amansharma@gmail.com',1,0 ,'ME');\
INSERT into Student values('1800214C200','Shikar Mishra','M','1999/08/25','shikar@gmail.com',1,3 ,'ME');\
INSERT into Student values('1800215C200','Isha Verma','F','1999/01/12','ishaverma@gmail.com',1,4 ,'CS');\
\
INSERT into Courses values('CSPY000001','Python','CS',4,1,'None');\
INSERT into Courses values('CSCP000002','C Programming','CS',4,2,'None');\
INSERT into Courses values('CSDS000003','Data Structures','CS',4,3,'CSCP000002');\
INSERT into Courses values('CSAL000004','Algorithms','CS',4,4,'CSDS000003');\
INSERT into Courses values('ECVL000001','VLSI','EC',4,5,'None');\
INSERT into Courses values('ECSS000002','Signal and system','EC',4,4,'None');\
INSERT into Courses values('MEFM000001','Fluid Mechanics','ME',4,3,'None');\
INSERT into Courses values('EETS000001','Transmission System','EEE',4,6,'None');\
\
INSERT into Faculty values('LSEM500','Savitha Sood','F','savithasood@gmail.com','Lecturer','CS');\
INSERT into Faculty values('LSEM100','Anand Kumar','M','anandkumar@gmail.com','Professor','CS');\
INSERT into Faculty values('LSEM800','Poonam Bisht','F','poonambisht@gmail.com','Professor','EC');\
INSERT into Faculty values('LSEM200','Anu Banerjee','F','anubanerjee@gmail.com','Professor','EEE');\
INSERT into Faculty values('LSEM300','Hari Chidella','M','harichindella@gmail.com','Lecturer','ME');\
INSERT into Faculty values('LSEM900','Sunitha A','F','sunitha@gmail.com','Lecturer','EEE');\
INSERT into Faculty values('LSEM050','Deepak Ahuja','M','deepakahuja@gmail.com','Associate Professor','CS');\
INSERT into Faculty values('LSEM600','Gauri Govind','F','gaurigovind@gmail.com','Lecturer','EC');\
INSERT into Faculty values('LSEM700','Vishal Kandpal','M','viahalkandpal@gmail.com','Assistant Professor','EC');\
INSERT into Faculty values('LSEM400','Chandrashekhar B V','M','chandrashekar@gmail.com','Professor','ME');\
\
INSERT into Notes values('1010101010','Trees','CSDS000003',0,'LSEM100','https://drive.google.com/open?id=0B8F7Frp3Od9maV8yUVFDcWVMbDQ');\
INSERT into Notes values('2020202020','Graphs','CSDS000003',0,'LSEM050','https://drive.google.com/open?id=0B8F7Frp3Od9mRGRyejlMSV81WDg');\
INSERT into Notes values('3030303030','DataTypes','CSCP000002',0,'LSEM500','https://drive.google.com/open?id=0B8F7Frp3Od9ma0d0SU03akJqM2M');\
INSERT into Notes values('5050505050','Structures','CSCP000002',0,'LSEM500','https://drive.google.com/open?id=0B8F7Frp3Od9mbkpIa2lqUmw2SU0');\
INSERT into Notes values('4040404040','Fluid Mechanics','MEFM000001',0,'LSEM300','https://drive.google.com/open?id=0B8F7Frp3Od9mV1JXRlJHY09IOWc');\
\
INSERT into Test values(1,'data types in C',10,10,0,'CSCP000002','LSEM500','https://www.geeksforgeeks.org/c-language-2-gq/data-types-gq/');\
INSERT into Test values(2,'List Tuples and Dictionary in Python',20,30,0,'CSPY000001','LSEM600','https://www.techbeamers.com/python-programming-questions-list-tuple-dictionary/');\
INSERT into Test values(3,'Queue',15,10,0,'CSDS000003','LSEM100','https://www.geeksforgeeks.org/data-structure-gq/queue-gq/');\
INSERT into Test values(4,'Stack',10,10,0,'CSDS000003','LSEM100','https://www.geeksforgeeks.org/data-structure-gq/stack-gq/');\
INSERT into Test values(5,'Fluid Mechanics',30,20,0,'MEFM000001','LSEM400','https://examtimequiz.com/multiple-choice-questions-fluid-mechanics/');\
INSERT into Test values(6,'Vlsi Design and technology',25,30,0,'ECVL000001','LSEM800','https://electronicspost.com/multiple-choice-questions-and-answers-on-vlsi-design-technology/');\
INSERT into Test values(7,'Transmission System',15,30,0,'EETS000001','LSEM200','https://scholarexpress.com/multiple-choice-questions-mcq-on-transmission-system/');\
INSERT into Test values(8,'data types in python',10,10,0,'CSPY000001','LSEM500','https://www.geeksforgeeks.org/c-language-2-gq/data-types-gq/');\
\
INSERT into Test_Details values(6,'Vlsi Design and technology','1800203C200',15);\
INSERT into Test_Details values(1,'data types in C','1800201C200',10);\
INSERT into Test_Details values(1,'data types in C','1800202C200',9);\
INSERT into Test_Details values(1,'data types in C','1800205C200',7);\
INSERT into Test_Details values(1,'data types in C','1800207C200',10);\
INSERT into Test_Details values(1,'data types in C','1800215C200',10);\
INSERT into Test_Details values(1,'data types in C','1800209C200',10);\
INSERT into Test_Details values(2,'List Tuples and Dictionary in Python','1800209C200',25);\
INSERT into Test_Details values(2,'List Tuples and Dictionary in Python','1800201C200',25);\
INSERT into Test_Details values(2,'List Tuples and Dictionary in Python','1800215C200',28);\
INSERT into Test_Details values(2,'List Tuples and Dictionary in Python','1800214C200',28);\
INSERT into Test_Details values(2,'List Tuples and Dictionary in Python','1800202C200',28);\
INSERT into Test_Details values(2,'List Tuples and Dictionary in Python','1800207C200',30);\
INSERT into Test_Details values(3,'Queue','1800215C200',8);\
INSERT into Test_Details values(3,'Queue','1800214C200',5);\
INSERT into Test_Details values(3,'Queue','1800202C200',8);\
INSERT into Test_Details values(3,'Queue','1800212C200',8);\
INSERT into Test_Details values(3,'Queue','1800207C200',8);\
INSERT into Test_Details values(8,'data types in python','1800201C200',5);\
INSERT into Test_Details values(8,'data types in python','1800210C200',7);\
INSERT into Test_Details values(8,'data types in python','1800207C200',9);\
INSERT into Test_Details values(8,'data types in python','1800215C200',9);\
INSERT into Test_Details values(8,'data types in python','1800214C200',7);\
\
INSERT INTO Notes_Details values('1800201C200','1010101010',1);\
INSERT INTO Notes_Details values('1800202C200','1010101010',1);\
INSERT INTO Notes_Details values('1800215C200','1010101010',1);\
INSERT INTO Notes_Details values('1800212C200','1010101010',1);\
INSERT INTO Notes_Details values('1800210C200','1010101010',1);\
INSERT INTO Notes_Details values('1800204C200','1010101010',1);\
INSERT INTO Notes_Details values('1800201C200','2020202020',1);\
INSERT INTO Notes_Details values('1800210C200','2020202020',0);\
INSERT INTO Notes_Details values('1800213C200','4040404040',1);\
INSERT INTO Notes_Details values('1800214C200','4040404040',0);\
}