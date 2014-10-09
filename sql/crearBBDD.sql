DROP DATABASE IF EXISTS School; 
CREATE DATABASE School;
USE School; 

CREATE TABLE Student (
name varchar(40) NOT NULL PRIMARY KEY
)ENGINE=InnoDB;  

CREATE TABLE Class (
numclass INTEGER (40) NOT NULL PRIMARY KEY,
prof varchar(40) 
)ENGINE=InnoDB;  

CREATE TABLE RelacionStudentClass(
renumclass INTEGER(20) NOT NULL,
relname varchar(40) NOT NULL,
FOREIGN KEY (renumclass) REFERENCES Class(numclass) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (relname) REFERENCES Student(name) ON DELETE CASCADE ON UPDATE CASCADE
)ENGINE=InnoDB;

INSERT INTO Student VALUES("Alfredo");
INSERT INTO Student VALUES("Victor");
INSERT INTO Student VALUES("Jesus");
INSERT INTO Class VALUES(1,"Roc");
INSERT INTO Class VALUES(2,"Machado");
INSERT INTO Class VALUES(3,"Dolors");
INSERT INTO RelacionStudentClass VALUES(3,"Victor");
INSERT INTO RelacionStudentClass VALUES(2,"Alfredo");
INSERT INTO RelacionStudentClass VALUES(1,"Jesus");