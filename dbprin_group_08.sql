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

CREATE TABLE teacher();

CREATE TABLE session();

CREATE TABLE student_session();