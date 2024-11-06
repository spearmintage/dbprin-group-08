DROP DATABASE IF EXISTS dbprin_group_08;
CREATE DATABASE dbprin_group_08;
\c dbprin_group_08

-- TODO: go through every attribute and consider:
-- CHECK (between a value, fits regex)
-- NOT NULL
-- UNIQUE

CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50),
    description TEXT
);

CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    dept_id INT NOT NULL,
    course_name VARCHAR(50),
    course_description TEXT,
    course_cost DECIMAL(7, 2),

    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE subject (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(50),
    subject_level SMALLINT,
    subject_description TEXT
);

CREATE TABLE course_subject (
    course_id INT NOT NULL,
    subject_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),

    PRIMARY KEY (course_id, subject_id)
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    dept_id INT NOT NULL,
    branch_id INT NOT NULL,
    is_branch_manager BOOLEAN,
    staff_email VARCHAR(50),
    staff_mobile_code VARCHAR(4),
    staff_mobile_number VARCHAR(15),
    staff_first_name VARCHAR(30),
    staff_middle_name VARCHAR(30),
    staff_last_name VARCHAR(30),
    staff_title VARCHAR(4),
    staff_addr1 VARCHAR(50),
    staff_addr2 VARCHAR(50),
    staff_city VARCHAR(30),
    staff_postcode VARCHAR(12),
    staff_country_code CHAR(2),

    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id)
);

CREATE TABLE staff_assignment (
    staff_assignment_id SERIAL PRIMARY KEY,
    branch_manager_id INT NOT NULL,
    staff_id INT NOT NULL,
    assignment_title VARCHAR(30),
    assignment_description TEXT,
    assignment_deadline TIMESTAMP,
    is_urgent BOOLEAN,

    FOREIGN KEY (branch_manager_id) REFERENCES staff(staff_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
);

CREATE TABLE course_staff (
    course_id INT NOT NULL,
    staff_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),

    PRIMARY KEY (course_id, staff_id)
);

CREATE TABLE role (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50),
    role_description TEXT
);

CREATE TABLE staff_role (
    course_id INT NOT NULL,
    staff_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),

    PRIMARY KEY (course_id, staff_id)
);

CREATE TABLE staff_availability (

);

CREATE TABLE branch (

);

CREATE TABLE room (

);

CREATE TABLE facility (

);

CREATE TABLE room_facility (

);

CREATE TABLE student(
student_id SERIAL PRIMARY KEY,
student_email VARCHAR(50),
student_mobile VARCHAR(15),
student_first_name VARCHAR(30),
student_middle_name VARCHAR(30),
student_last_name VARCHAR(30),
student_title VARCHAR(4),
student_country_code VARCHAR(3),
student_landline VARCHAR(15),
student_addr1 VARCHAR(50),
student_addr2 VARCHAR(50),
student_city VARCHAR(30),
student_postcode VARCHAR(12),
student_date_of_birth DATE
);

CREATE TABLE emergency_contact (

);

CREATE TABLE health_condition (

);

CREATE TABLE student_health_condition (

);

CREATE TABLE evaluation_session (

);

CREATE TABLE assignment (

);

CREATE TABLE student_assignment (

);

CREATE TABLE session (

);

CREATE TABLE session_student (

);

CREATE TABLE session_staff (

);

CREATE TABLE enrolment (

);

CREATE TABLE student_payment (

);
