CREATE TABLE college (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(255),
    city VARCHAR(50),
    age INT,
    email_id VARCHAR(100)
);

INSERT INTO college (name, last_name, address, city, age, email_id)
VALUES ('John', 'Doe', '123 Main St', 'New York', 21, 'john.doe@example.com');

select * from college;

COPY college(id, name, last_name, address, city, age, email_id)
FROM 'd:/DA/sql_queries/Day_4/college_data.csv'
DELIMITER ','
CSV HEADER;

select * from college;

CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50),
    building VARCHAR(50),
    budget NUMERIC(12,2),
    num_faculty INT,
    phone_number VARCHAR(15)
);

INSERT INTO department (dept_name, building, budget, num_faculty, phone_number)
VALUES ('Computer Science', 'Engineering Block', 1500000.00, 25, '123-456-7890');

select * from department;

COPY department(dept_name, building, budget, num_faculty, phone_number)
FROM 'd:/DA/sql_queries/Day_4/department_data.csv'
DELIMITER ','
CSV HEADER;

select * from department;

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    enrollment_year INT,
    gpa NUMERIC(3,2),
    major VARCHAR(50)
);

INSERT INTO student (student_id,first_name, last_name, enrollment_year, gpa, major)
VALUES (1, 'Alice', 'Smith', 2020, 3.75, 'Computer Science');

COPY student(first_name, last_name, enrollment_year, gpa, major)
FROM 'd:/DA/sql_queries/Day_4/student_data.csv'
DELIMITER ','
CSV HEADER;

select * from student;

CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT,
    department_id INT,
    max_enrollment INT,
    semester VARCHAR(20)
);

INSERT INTO course (course_id, course_name, credits, department_id, max_enrollment, semester)
VALUES (1, 'Database Systems', 3, 1, 30, 'Fall 2023');

select * from course;

COPY course(course_id, course_name, credits, department_id, max_enrollment, semester)
FROM 'd:/DA/sql_queries/Day_4/course_data.csv'
DELIMITER ','
CSV HEADER;

select * from course;

CREATE TABLE faculty (
    faculty_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary NUMERIC(10,2),
    years_experience INT,
    email VARCHAR(100)
);

INSERT INTO faculty (faculty_id, first_name, last_name, salary, years_experience, email)
VALUES (1,'Robert', 'Johnson', 85000.50, 12, 'robert.johnson@college.edu');

select * from faculty;

COPY faculty(faculty_id, first_name, last_name, salary, years_experience, email)
FROM 'd:/DA/sql_queries/Day_4/faculty_data.csv'
DELIMITER ','
CSV HEADER;

select * from faculty;