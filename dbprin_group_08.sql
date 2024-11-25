CREATE TYPE session_types AS ENUM ('Lecture', '1-to-1', 'Practical');
CREATE TYPE title_types AS ENUM ('Mr', 'Mrs', 'Miss', 'Ms', 'Mx', 'Dr', 'Lord', 'Lady');
CREATE TYPE room_types AS ENUM ('Computer Lab', 'Science Lab', 'Classroom', 'Lecture Hall');
CREATE TYPE enrolment_status_type AS ENUM ('Enrolling', 'Complete', 'Dropped Out');
CREATE TYPE absence_types AS ENUM ('Holiday', 'Personal', 'Sickness');

CREATE OR REPLACE FUNCTION PHONE_CODE_REGEX()
RETURNS TEXT AS 
$$
DECLARE REGEX TEXT;
    BEGIN
        REGEX := '\+[0-9]{1,3}';
    RETURN REGEX;
END;
$$
LANGUAGE plpgsql;

CREATE TABLE department (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE course (
    course_id SERIAL PRIMARY KEY,
    dept_id INT NOT NULL,
    course_name VARCHAR(50) UNIQUE NOT NULL,
    course_description TEXT NOT NULL,
    course_cost DECIMAL(7, 2) NOT NULL,

    FOREIGN KEY (dept_id) REFERENCES department(dept_id),

    CHECK (course_cost >= 0)
);

CREATE TABLE subject (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL,
    subject_level SMALLINT NOT NULL,
    subject_description TEXT NOT NULL,

    CHECK (subject_level BETWEEN 4 AND 7),

    UNIQUE(subject_name, subject_level)
);

CREATE TABLE course_subject (
    course_id INT NOT NULL,
    subject_id INT NOT NULL,

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    
    PRIMARY KEY (course_id, subject_id)
);

CREATE TABLE branch (
    branch_id SERIAL PRIMARY KEY,
    branch_name VARCHAR(30) UNIQUE NOT NULL,
    branch_addr1 VARCHAR(50) NOT NULL,
    branch_addr2 VARCHAR(50),
    branch_city VARCHAR(30) NOT NULL,
    branch_postcode VARCHAR(20),
    branch_country_code CHAR(2) NOT NULL,
    branch_email VARCHAR(50) UNIQUE NOT NULL,
    branch_phone_country_code VARCHAR(4) NOT NULL,
    branch_phone_number VARCHAR(15) UNIQUE NOT NULL,

    CHECK (branch_phone_country_code SIMILAR TO PHONE_CODE_REGEX())
);

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    dept_id INT NOT NULL,
    branch_id INT NOT NULL,
    is_branch_manager BOOLEAN NOT NULL,
    staff_email VARCHAR(50) UNIQUE NOT NULL,
    staff_mobile_code VARCHAR(4) NOT NULL,
    staff_mobile_number VARCHAR(15) UNIQUE NOT NULL,
    staff_first_name VARCHAR(30) NOT NULL,
    staff_middle_name VARCHAR(30),
    staff_last_name VARCHAR(30) NOT NULL,
    staff_title title_types NOT NULL,
    staff_addr1 VARCHAR(50) NOT NULL,
    staff_addr2 VARCHAR(50),
    staff_city VARCHAR(30) NOT NULL,
    staff_postcode VARCHAR(20),
    staff_country_code CHAR(2) NOT NULL,

    FOREIGN KEY (dept_id) REFERENCES department(dept_id),
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id),

    CHECK (staff_mobile_code SIMILAR TO PHONE_CODE_REGEX())
);

CREATE TABLE staff_assignment (
    staff_assignment_id SERIAL PRIMARY KEY,
    branch_manager_id INT NOT NULL,
    staff_id INT NOT NULL,
    assignment_title VARCHAR(100) NOT NULL,
    assignment_description TEXT NOT NULL,
    assignment_deadline TIMESTAMP,
    assignment_complete BOOLEAN NOT NULL,
    is_urgent BOOLEAN NOT NULL,

    FOREIGN KEY (branch_manager_id) REFERENCES staff(staff_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
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
    role_name VARCHAR(50) UNIQUE NOT NULL,
    role_description TEXT NOT NULL
);

CREATE TABLE staff_role (
    staff_id INT NOT NULL,
    role_id INT NOT NULL,

    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (role_id) REFERENCES role(role_id),

    PRIMARY KEY (staff_id, role_id)
);

CREATE TABLE staff_availability (
    staff_id INT NOT NULL,
    day_of_week SMALLINT NOT NULL,

    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),

    CHECK (day_of_week BETWEEN 1 AND 7),

    PRIMARY KEY (staff_id, day_of_week)
);

CREATE TABLE staff_absence (
    staff_id INT NOT NULL,
    absence_start TIMESTAMP NOT NULL,
    absence_end TIMESTAMP NOT NULL,
    absence_type absence_types NOT NULL,

    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),

    PRIMARY KEY (staff_id, absence_start, absence_end)
);

CREATE TABLE room (
    room_id SERIAL PRIMARY KEY,
    branch_id INT NOT NULL,
    room_name VARCHAR(20) NOT NULL,
    room_type room_types NOT NULL,
    capacity SMALLINT NOT NULL,

    FOREIGN KEY (branch_id) REFERENCES branch(branch_id),

    CHECK (capacity > 0)
);

CREATE TABLE facility (
    facility_id SERIAL PRIMARY KEY,
    facility_name VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE ROOM_FACILITY (
    room_id INT NOT NULL,
    facility_id INT NOT NULL,
    quantity SMALLINT NOT NULL,

    FOREIGN KEY (room_id) REFERENCES room(room_id),
    FOREIGN KEY (facility_id) REFERENCES facility(facility_id),

    CHECK (quantity > 0),

    PRIMARY KEY (room_id, facility_id)
);

CREATE TABLE student(
    student_id SERIAL PRIMARY KEY,
    student_email VARCHAR(50) UNIQUE NOT NULL,
    student_first_name VARCHAR(30) NOT NULL,
    student_middle_name VARCHAR(30),
    student_last_name VARCHAR(30) NOT NULL,
    student_title title_types NOT NULL,
    student_mobile_code VARCHAR(4) NOT NULL,
    student_mobile VARCHAR(15) UNIQUE NOT NULL,
    student_addr1 VARCHAR(50) NOT NULL,
    student_addr2 VARCHAR(50),
    student_city VARCHAR(30) NOT NULL,
    student_postcode VARCHAR(20),
    student_country_code CHAR(2) NOT NULL,
    student_date_of_birth DATE NOT NULL,

    CHECK (student_mobile_code SIMILAR TO PHONE_CODE_REGEX())
);

CREATE TABLE emergency_contact (
    student_emergency_contact_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    student_emergency_contact_first_name VARCHAR(30) NOT NULL,
    student_emergency_contact_last_name VARCHAR(30) NOT NULL,
    student_emergency_contact_relationship VARCHAR(20) NOT NULL,
    student_emergency_phone_country_code VARCHAR(4) NOT NULL,
    student_emergency_contact_number VARCHAR(15) UNIQUE NOT NULL,
    student_emergency_contact_alt_number VARCHAR(15),
    student_emergency_contact_email VARCHAR(50) UNIQUE NOT NULL,
    student_emergency_other_details TEXT,
    emergency_shares_student_address BOOLEAN NOT NULL,

    FOREIGN KEY (student_id) REFERENCES student(student_id),

    CHECK (student_emergency_phone_country_code SIMILAR TO PHONE_CODE_REGEX())
);

CREATE TABLE health_condition (
    health_condition_id SERIAL PRIMARY KEY,
    health_condition_name VARCHAR(30) UNIQUE NOT NULL,
    health_condition_notes TEXT
);

CREATE TABLE student_health_condition (
    student_id INT NOT NULL,
    health_condition_id INT NOT NULL,
    severity SMALLINT NOT NULL, 
    student_health_notes TEXT,

    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (health_condition_id) REFERENCES health_condition(health_condition_id),

    CHECK (severity BETWEEN 1 AND 5),

    PRIMARY KEY (student_id, health_condition_id)
);

CREATE TABLE evaluation_session (
    tutor_id INT NOT NULL,
    student_id INT NOT NULL,
    session_datetime TIMESTAMP NOT NULL,
    room_id INT,
    session_notes TEXT,
    is_online BOOLEAN NOT NULL,

    FOREIGN KEY (tutor_id) REFERENCES staff(staff_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id),

    CHECK ((NOT is_online AND room_id IS NOT NULL) OR (is_online AND room_id IS NULL)),

    PRIMARY KEY (tutor_id, student_id, session_datetime)
);

CREATE TABLE assignment (
    assignment_id SERIAL PRIMARY KEY,
    staff_id INT NOT NULL,
    subject_id INT NOT NULL,
    set_date TIMESTAMP NOT NULL,
    due_date TIMESTAMP,
    assignment_description TEXT,
    is_assignment_assessed BOOLEAN NOT NULL,
    assignment_weight DECIMAL(5, 2),

    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),

    CHECK (due_date >= set_date OR due_date IS NULL),
    CHECK (assignment_weight BETWEEN 0 AND 100 OR assignment_weight IS NULL)
);

CREATE TABLE student_assignment (
    student_id INT NOT NULL,
    assignment_id INT NOT NULL,
    submission_datetime TIMESTAMP NOT NULL,
    assignment_percentage DECIMAL(5, 2),

    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (assignment_id) REFERENCES assignment(assignment_id),

    CHECK (assignment_percentage BETWEEN 0 AND 100 OR assignment_percentage IS NULL),

    PRIMARY KEY (student_id, assignment_id, submission_datetime)
);

CREATE TABLE session (
    session_id SERIAL PRIMARY KEY,
    subject_id INT NOT NULL,
    room_id INT,
    session_type session_types NOT NULL,
    session_status VARCHAR(15) NOT NULL,
    session_name VARCHAR(100) NOT NULL,
    session_start TIMESTAMP NOT NULL,
    session_end TIMESTAMP NOT NULL,
    is_online BOOLEAN NOT NULL,

    FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id),

    CHECK (session_end >= session_start),
    CHECK ((NOT is_online AND room_id IS NOT NULL) OR (is_online AND room_id IS NULL))
);

CREATE TABLE session_student (
    session_id INT NOT NULL,
    student_id INT NOT NULL,
    attendance_status VARCHAR(15) NOT NULL,
    feedback_general_rating SMALLINT,
    feedback_online_connection_quality SMALLINT,
    feedback_concept_understood_rating SMALLINT,
    feedback_extra_notes TEXT,

    FOREIGN KEY (session_id) REFERENCES session(session_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),

    CHECK (feedback_general_rating BETWEEN 0 AND 10),
    CHECK (feedback_online_connection_quality BETWEEN 0 AND 10),
    CHECK (feedback_concept_understood_rating BETWEEN 0 AND 10),

    PRIMARY KEY (session_id, student_id)
);

CREATE TABLE session_staff (
    session_id INT NOT NULL,
    staff_id INT NOT NULL,

    FOREIGN KEY (session_id) REFERENCES session(session_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    
    PRIMARY KEY (session_id, staff_id)
);

CREATE TABLE enrolment (
    enrolment_id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    student_id INT NOT NULL,
    enrolment_status VARCHAR(15) NOT NULL,
    enrolment_start_date DATE NOT NULL,
    enrolment_end_date DATE NOT NULL,
    final_grade_percentage DECIMAL(5, 2),

    FOREIGN KEY (course_id) REFERENCES course(course_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id),

    CHECK (enrolment_end_date > enrolment_start_date),
    CHECK (final_grade_percentage BETWEEN 0 AND 100 OR final_grade_percentage IS NULL)
);

CREATE TABLE student_payment (
    payment_id SERIAL PRIMARY KEY,
    enrolment_id INT NOT NULL,
    payment_status VARCHAR(15) NOT NULL,
    payment_amount DECIMAL(7,2) NOT NULL,
    payment_datetime TIMESTAMP NOT NULL,

    FOREIGN KEY (enrolment_id) REFERENCES enrolment(enrolment_id),

    CHECK (payment_amount >= 0)
);