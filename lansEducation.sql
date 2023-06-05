CREATE DATABASE lanseducation;

USE lanseducation;

CREATE TABLE lanseducation(
    instituitionId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    instituitionLocation varchar(255) NOT NULL,
    instituitionStatus varchar(255) DEFAULT 'open',
    numberOfMembers INT
);

CREATE TABLE staff(
    staffId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    staffFirstName varchar(255) NOT NULL,
    staffLastName varchar(255) NOT NULL,
    instituitionId INT,
    staffJob VARCHAR(255) NOT NULL,
    FOREIGN KEY (instituitionId) REFERENCES lanseducation(instituitionId)
);


CREATE TABLE salaryPayment(
    staffpayed VARCHAR(255) NOT NULL DEFAULT 'No',
    staffId INT,
    FOREIGN KEY (staffId) REFERENCES staff(staffId)
);


CREATE TABLE students(
    studentId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    studentFirstName VARCHAR(255) NOT NULL,
    studentLastName VARCHAR(255) NOT NULL,
    instituitionId INT,
    studentEmail VARCHAR(255) NOT NULL,
    FOREIGN KEY (instituitionId) REFERENCES lanseducation(instituitionId)
);

CREATE TABLE feePayment(
    studentId INT,
    feePayed varchar(255) NOT NULL DEFAULT 'No',
    FOREIGN KEY (studentId) REFERENCES students(studentId)
);

CREATE TABLE subjects(
    subjectId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    subjectName VARCHAR(255) NOT NULL
);


CREATE TABLE subjectStudy(
    studentId int,
    subjectId int,
    FOREIGN KEY (studentId) REFERENCES students(studentId),
    FOREIGN KEY (subjectId) REFERENCES subjects(subjectId)
);

CREATE TABLE subjectTeach(
    staffId int,
    subjectId int,
    FOREIGN KEY (staffId) REFERENCES staff(staffId),
    FOREIGN KEY (subjectId) REFERENCES subjects(subjectId)
);



