DROP DATABASE IF EXISTS dbprin_group_08;
CREATE DATABASE dbprin_group_08;
\c dbprin_group_08

-- Note:
-- if any changes differ from the ERD,
-- Make a note within the table.

-- Owen
CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50),
    description TEXT
);

-- Owen
CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    dept_id INT NOT NULL,
    course_name VARCHAR(50),
    course_description TEXT,
    course_cost DECIMAL(7, 2),

    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- Bradley
CREATE TABLE subject (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(50),
    subject_level SMALLINT,
    subject_description TEXT
);

-- Bradley
CREATE TABLE course_subject (
    course_id INT NOT NULL,
    subject_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),

    PRIMARY KEY (course_id, subject_id)
);

-- Steph
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

-- Steph
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

-- Bradley
CREATE TABLE course_staff (
    course_id INT NOT NULL,
    staff_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),

    PRIMARY KEY (course_id, staff_id)
);

-- Steph
CREATE TABLE role (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50),
    role_description TEXT
);

-- Steph
CREATE TABLE staff_role (
    course_id INT NOT NULL,
    staff_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),

    PRIMARY KEY (course_id, staff_id)
);

-- Steph
CREATE TABLE staff_availability (

);

-- Steph
CREATE TABLE branch (

);

-- Steph
CREATE TABLE room (

);

-- Steph
CREATE TABLE facility (

);

-- Steph
CREATE TABLE room_facility (

);

-- Owen
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

-- Owen
CREATE TABLE emergency_contact (

);

-- Owen
CREATE TABLE health_condition (

);

-- Owen
CREATE TABLE student_health_condition (

);

-- Bradley
CREATE TABLE evaluation_session (

);

-- Bradley
CREATE TABLE assignment (

);

-- Bradley
CREATE TABLE student_assignment (

);

-- Bradley
CREATE TABLE session (

);

-- Bradley
CREATE TABLE session_student (

);

-- Bradley
CREATE TABLE session_staff (

);

-- Owen
CREATE TABLE enrolment (

);

-- Owen
CREATE TABLE student_payment (

);
