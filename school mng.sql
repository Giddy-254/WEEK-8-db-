

CREATE DATABASE school_db;
USE school_db;


CREATE TABLE students (
  admission_number VARCHAR(30) NOT NULL PRIMARY KEY,
  full_name VARCHAR(200) NOT NULL,
  year_joined YEAR NOT NULL,
  class VARCHAR(50) NOT NULL,
  parent_name VARCHAR(50) NOT NULL,
  parent_phone VARCHAR(15) NOT NULL,
  email VARCHAR(100) DEFAULT NULL,
  date_of_birth DATE DEFAULT NULL,
  created_at ,
  


CREATE TABLE student_finances (
  admission_number VARCHAR(30) NOT NULL,
  amount_paid DECIMAL(12,2) NOT NULL CHECK (amount_paid >= 0),
  balance DECIMAL(12,2) NOT NULL CHECK (balance >= 0),
  transaction_id VARCHAR(50) unique NOT NULL,
  payment_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  payment_method VARCHAR(50) DEFAULT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,)
 FOREIGN KEY (admission_number) REFERENCES students(admission_number)


 CREATE TABLE ExamPerformance (
    admission_number INT NOT NULL, 
    exam_term VARCHAR(20) NOT NULL, 
    exam_year YEAR NOT NULL,
    grade VARCHAR(2),
    FOREIGN KEY (admission_number) REFERENCES students(admission_number)
);

 

