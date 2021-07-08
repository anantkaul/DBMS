{\rtf1\ansi\ansicpg1252\cocoartf2512
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Roman;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14160\viewh17480\viewkind0
\deftab720
\pard\pardeftab720\ri-340\sl259\slmult1\sa160\partightenfactor0

\f0\fs24 \cf0 DROP TRIGGER IF EXISTS `BMU_Learning`.`Student_AFTER_INSERT`;\
\
DELIMITER $$\
USE `BMU_Learning`$$\
CREATE DEFINER = CURRENT_USER TRIGGER `BMU_Learning`.`Student_AFTER_INSERT` AFTER INSERT ON `Student` FOR EACH ROW\
BEGIN\
UPDATE Department SET Number_Of_Students = Number_Of_Students + 1 \
WHERE Department_ID = NEW.Department_ID;\
END$$\
DELIMITER ;\
\
DROP TRIGGER IF EXISTS `BMU_Learning`.`Student_AFTER_DELETE`;\
\
DELIMITER $$\
USE `BMU_Learning`$$\
CREATE DEFINER = CURRENT_USER TRIGGER `BMU_Learning`.`Student_AFTER_ DELETE ` AFTER DELETE ON `Student` FOR EACH ROW\
BEGIN\
UPDATE Department SET Number_Of_Students = Number_Of_Students - 1 \
WHERE Department_ID = OLD.Department_ID;\
END$$\
DELIMITER ;\
}