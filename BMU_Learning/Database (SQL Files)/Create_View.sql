{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14160\viewh17480\viewkind0
\deftab720
\pard\pardeftab720\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\fs24 \cf0 CREATE VIEW `Students_Enrolled` AS\
    SELECT \
        S.Student_ID AS Student_ID,\
        S.Student_Name AS Name,\
        C.Name AS Course_Name,\
        C.Course_ID AS Course_ID\
    FROM\
        (Student S JOIN Courses C);\
}