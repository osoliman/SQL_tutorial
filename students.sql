CREATE DATABASE YOYO;
CREATE TABLE YOYO.MAJOR (major_id INT AUTO_INCREMENT PRIMARY KEY, major_chair VARCHAR(20),major_name VARCHAR(20));

CREATE TABLE YOYO.STUDENTS (student_id INT AUTO_INCREMENT PRIMARY KEY, student_name VARCHAR(20),
student_city VARCHAR(20),major_id INT, FOREIGN KEY (major_id) REFERENCES YOYO.MAJOR(major_id));

INSERT INTO YOYO.MAJOR (`major_id`, `major_chair`,`major_name`) VALUES
(1, 'Katie','Biology'),
(2, 'Praveen','Computer Science');

INSERT INTO YOYO.STUDENTS (`student_id`, `student_name`, `student_city`, `major_id`) VALUES
(1, 'John', 'Boston', '1'),
(2, 'Lee', 'Boston', '2'),
(3, 'Anum', 'Medford', '1'),
(4, 'Adam', 'Cambridge', '1'),
(5, 'Sara', 'Allston', '2');

SELECT STUDENTS.student_name,MAJOR.major_chair FROM YOYO.STUDENTS JOIN YOYO.MAJOR
WHERE MAJOR.major_id = STUDENTS.major_id;
