School Database Management System
This project is a MySQL database schema designed to manage student profiles, their financial records, and exam performance.
It provides a structured way for schools to store, track, and update student details in an efficient manner.

📌 Features

**Student Profiles**
Stores admission details, personal information, and parent/guardian contact info.
**
**Student Finances****
Tracks payments, balances, and payment methods with unique transaction IDs.

**Exam Performance**
Records exam results for each student with term, year, and grade.

**Relational Structure**
Uses foreign keys to ensure data consistency across tables.

🛠️** Database Schema
1. **Students Table**

Stores all student profile details.

2. **Student Finances Table**
Tracks student payments and balances.

3. **Exam Performance Table**
Keeps records of exam grades for each student.


⚡ Example Queries
Insert a New Student
INSERT INTO students
(admission_number, full_name, year_joined, class, parent_name, parent_phone, email, date_of_birth)
VALUES('335', 'Ekwe', '2021', 'Form 1', 'Samson', '0728259826', 'samson@gmail.com', '1999-07-01');

Record a Payment
INSERT INTO student_finances
(admission_number, amount_paid, balance, transaction_id, payment_date, payment_method, created_at)
VALUES('335', 4304, 0, 'FAMO1235', CURRENT_TIMESTAMP(), 'Bank', CURRENT_TIMESTAMP());

Record Exam Performance
INSERT INTO ExamPerformance
(admission_number, exam_term, exam_year, grade)
VALUES('335', 'One', '2020', 'B-');

Update Student Information
UPDATE students
SET full_name='Dorcah Omwange',
    year_joined='2021',
    class='Form 2',
    parent_name='Omwange',
    parent_phone='0712213753',
    email='margaret@gmail.com',
    date_of_birth='2000-07-20'
WHERE admission_number='334';

📂 How to Run This Project

Open your MySQL client or phpMyAdmin.

Create a new database:

CREATE DATABASE school_db;
USE school_db;


Copy and paste the table creation queries.

Insert sample data using the provided INSERT queries.

Run SELECT queries to view the data.

🚀 Future Enhancements

Add a teachers table for class assignments.

Include subjects and marks instead of just grades.

Create views for quick reporting.

Add stored procedures for automated fee balance calculations.

👨‍💻 Author

Gideon Omwange
