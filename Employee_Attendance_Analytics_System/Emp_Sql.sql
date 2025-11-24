show databases;
CREATE DATABASE attendance_system;
use attendance_system;
show tables;
CREATE TABLE departments(dept_id INT PRIMARY KEY AUTO_INCREMENT, department_name VARCHAR(100));
CREATE TABLE shifts(shift_id INT PRIMARY KEY AUTO_INCREMENT, shift_name VARCHAR(50), start_time TIME, end_time TIME);
CREATE TABLE employees(emp_id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50), dept_id INT, shift_id INT, designation VARCHAR(50), joining_date DATE, FOREIGN KEY(dept_id) REFERENCES departments(dept_id), FOREIGN KEY(shift_id) REFERENCES shifts(shift_id));
CREATE TABLE attendance(att_id INT PRIMARY KEY AUTO_INCREMENT, emp_id INT, date DATE, status ENUM('Present','Absent','Late','WFH'), check_in TIME, check_out TIME, FOREIGN KEY(emp_id) REFERENCES employees(emp_id));
CREATE TABLE leave_requests(leave_id INT PRIMARY KEY AUTO_INCREMENT, emp_id INT, start_date DATE, end_date DATE, leave_type ENUM('Sick','Casual','Earned'), status ENUM('Pending','Approved','Rejected'), FOREIGN KEY(emp_id) REFERENCES employees(emp_id));

ALTER TABLE shifts MODIFY start_time VARCHAR(20), MODIFY end_time VARCHAR(20);

INSERT INTO departments(department_name) VALUES('IT'),('HR'),('Finance'),('Ops'),('Support');

INSERT INTO shifts(shift_name,start_time,end_time) VALUES('Morning','09:00 AM','05:00 PM'),('Evening','01:00 PM','09:00 PM'),('Night','09:00 PM','05:00 AM');

INSERT INTO employees(name,dept_id,shift_id,designation,joining_date) VALUES
('Aarav Kumar',1,1,'Developer','2023-01-10'),
('Meera Nair',2,1,'HR Executive','2023-03-12'),
('John Mathew',3,2,'Accountant','2022-11-05'),
('Sneha Raj',1,2,'QA Engineer','2023-06-18'),
('Rahul Menon',4,1,'Operations Exec','2022-09-25'),
('Priya Thomas',5,1,'Support Agent','2024-02-01'),
('Vishal R',1,3,'Backend Dev','2021-12-11'),
('Anjana P',2,2,'HR Assistant','2024-04-20'),
('Kiran Joseph',3,1,'Finance Analyst','2023-05-30'),
('Divya S',4,3,'Operations Lead','2022-08-14'),
('Arjun M',5,2,'Support Lead','2023-10-08'),
('Riya Varghese',1,1,'UI Designer','2024-01-15'),
('Manoj Pillai',3,3,'Senior Accountant','2021-07-22'),
('Neha S',2,1,'Recruiter','2023-11-01'),
('Abin Paul',5,1,'Support Trainee','2024-06-10');

ALTER TABLE attendance MODIFY check_in VARCHAR(10), MODIFY check_out VARCHAR(10);

#1
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (1,'2025-11-20','Present','09:05 AM','05:10 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (1,'2025-11-21','Late','09:45 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (1,'2025-11-22','WFH',NULL,NULL);
#2
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (2,'2025-11-20','Present','09:00 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (2,'2025-11-21','Present','09:10 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (2,'2025-11-22','Absent',NULL,NULL);
#3
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (3,'2025-11-20','Late','01:20 PM','09:10 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (3,'2025-11-21','Present','01:00 PM','09:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (3,'2025-11-22','Present','01:05 PM','09:00 PM');
#4
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (4,'2025-11-20','Absent',NULL,NULL);
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (4,'2025-11-21','Present','01:10 PM','09:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (4,'2025-11-22','Late','01:40 PM','09:10 PM');
#5
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (5,'2025-11-20','Present','09:00 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (5,'2025-11-21','Present','09:15 AM','05:05 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (5,'2025-11-22','WFH',NULL,NULL);
#6
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (6,'2025-11-20','Late','09:40 AM','05:05 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (6,'2025-11-21','Absent',NULL,NULL);
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (6,'2025-11-22','Present','09:05 AM','05:00 PM');
#7
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (7,'2025-11-20','Present','09:00 PM','05:00 AM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (7,'2025-11-21','Present','09:10 PM','05:05 AM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (7,'2025-11-22','Absent',NULL,NULL);
#8
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (8,'2025-11-20','Present','01:00 PM','09:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (8,'2025-11-21','Late','01:35 PM','09:05 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (8,'2025-11-22','Present','01:10 PM','09:00 PM');
#9
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (9,'2025-11-20','Present','09:05 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (9,'2025-11-21','Present','09:00 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (9,'2025-11-22','Present','09:20 AM','05:00 PM');
#10
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (10,'2025-11-20','Absent',NULL,NULL);
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (10,'2025-11-21','Present','09:00 PM','05:00 AM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (10,'2025-11-22','Present','09:10 PM','05:00 AM');
#11
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (11,'2025-11-20','Late','01:40 PM','09:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (11,'2025-11-21','Present','01:00 PM','09:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (11,'2025-11-22','Absent',NULL,NULL);
#12
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (12,'2025-11-20','Present','09:10 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (12,'2025-11-21','Present','09:05 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (12,'2025-11-22','WFH',NULL,NULL);
#13
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (13,'2025-11-20','Late','09:45 PM','05:00 AM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (13,'2025-11-21','Present','09:05 PM','05:00 AM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (13,'2025-11-22','Present','09:10 PM','05:00 AM');
#14
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (14,'2025-11-20','Present','09:00 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (14,'2025-11-21','Late','09:35 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (14,'2025-11-22','Present','09:05 AM','05:00 PM');
#15
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (15,'2025-11-20','Late','09:45 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (15,'2025-11-21','Present','09:05 AM','05:00 PM');
INSERT INTO attendance(emp_id,date,status,check_in,check_out) VALUES (15,'2025-11-22','Absent',NULL,NULL);

INSERT INTO leave_requests(emp_id,start_date,end_date,leave_type,status) VALUES
(1,'2025-10-10','2025-10-12','Casual','Approved'),
(2,'2025-11-01','2025-11-03','Sick','Pending'),
(3,'2025-09-15','2025-09-15','Casual','Rejected'),
(4,'2025-08-05','2025-08-06','Earned','Approved'),
(5,'2025-07-20','2025-07-22','Casual','Approved'),
(6,'2025-11-18','2025-11-20','Sick','Pending'),
(7,'2025-06-12','2025-06-14','Casual','Approved');

show tables;
select * from attendance;
select * from shifts;
select * from employees;
select* from departments;
select * from leave_requests;

# Advanced SQL Operations Implementation

# For each employee, calculate total Present, Absent, Late, WFH days and Attendance Percentage, along with their department
SELECT e.emp_id, e.name, d.department_name,
SUM(a.status='Present') AS present, SUM(a.status='Absent') AS absent,
SUM(a.status='Late') AS late, SUM(a.status='WFH') AS wfh,
ROUND((SUM(a.status='Present')/COUNT(*))*100,2) AS attendance_pct
FROM attendance a JOIN employees e ON a.emp_id=e.emp_id
JOIN departments d ON e.dept_id=d.dept_id
GROUP BY e.emp_id;

# List employees ranked by total number of Late days, showing Employee ID, Name, and Department.
SELECT e.emp_id, e.name, d.department_name,
SUM(a.status='Late') AS total_late
FROM attendance a 
JOIN employees e ON a.emp_id=e.emp_id
JOIN departments d ON e.dept_id=d.dept_id
GROUP BY e.emp_id
ORDER BY total_late DESC;

# For each department, calculate total Present, Absent, Late, WFH days and average attendance percentage of employees.
SELECT d.department_name,
SUM(a.status='Present') AS total_present, SUM(a.status='Absent') AS total_absent,
SUM(a.status='Late') AS total_late, SUM(a.status='WFH') AS total_wfh,
ROUND(SUM(a.status='Present')/COUNT(*)*100,2) AS avg_attendance_pct
FROM attendance a
JOIN employees e ON a.emp_id=e.emp_id
JOIN departments d ON e.dept_id=d.dept_id
GROUP BY d.department_name;

# For each employee, show total leaves taken, grouped by leave type and status.
SELECT e.emp_id, e.name, lr.leave_type, lr.status, COUNT(*) AS total_leaves
FROM leave_requests lr
JOIN employees e ON lr.emp_id = e.emp_id
GROUP BY e.emp_id, lr.leave_type, lr.status
ORDER BY e.emp_id;

# Find out how many leaves of each type have been taken across all employees, grouped by status.
SELECT lr.leave_type, lr.status, COUNT(*) AS total
FROM leave_requests lr
GROUP BY lr.leave_type, lr.status
ORDER BY lr.leave_type;

# For each department, find the total number of leaves taken by employees, grouped by leave type and status.
SELECT d.department_name, lr.leave_type, lr.status, COUNT(*) AS total_leaves
FROM leave_requests lr
JOIN employees e ON lr.emp_id = e.emp_id
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY d.department_name, lr.leave_type, lr.status
ORDER BY d.department_name;

# Analyze daily attendance trends to see how many employees were Present, Absent, Late, or WFH on each date
SELECT a.date, SUM(a.status='Present') AS total_present,SUM(a.status='Absent') AS total_absent,
SUM(a.status='Late') AS total_late,SUM(a.status='WFH') AS total_wfh
FROM attendance a
GROUP BY a.date
ORDER BY a.date;

# Identify employees who are frequently late, showing total late days and sorting from most to least.
SELECT e.emp_id, e.name, d.department_name, SUM(a.status='Late') AS total_late
FROM attendance a
JOIN employees e ON a.emp_id = e.emp_id
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY e.emp_id, e.name, d.department_name
HAVING total_late > 0
ORDER BY total_late DESC;

# Analyze how many WFH days employees or departments have, and see trends over time.
SELECT e.emp_id, e.name, d.department_name, SUM(a.status='WFH') AS total_wfh
FROM attendance a
JOIN employees e ON a.emp_id = e.emp_id
JOIN departments d ON e.dept_id = d.dept_id
GROUP BY e.emp_id, e.name, d.department_name
ORDER BY total_wfh DESC;

# What is the purpose of the trigger trg_late_insert and when does it insert a record into trigger_log?
CREATE TABLE trigger_log(id INT AUTO_INCREMENT PRIMARY KEY,emp_id INT,message VARCHAR(100),log_date DATE);

DELIMITER $$
CREATE TRIGGER trg_late_insert
AFTER INSERT ON attendance
FOR EACH ROW
BEGIN
  IF NEW.status='Late' THEN
    INSERT INTO trigger_log(emp_id, message, log_date) 
    VALUES (NEW.emp_id, 'Late today', NEW.date);
  END IF;
END$$
DELIMITER ;

INSERT INTO attendance(emp_id, date, status, check_in, check_out) VALUES (2, '2025-11-21', 'Late', '09:15 AM', '05:10 PM');
INSERT INTO attendance(emp_id, date, status, check_in, check_out) VALUES (3, '2025-11-21', 'Present', '09:00 AM', '05:00 PM');

SELECT * FROM trigger_log;

# How does the procedure get_emp_present calculate the number of days an employee was present?
DELIMITER $$
CREATE PROCEDURE get_emp_present(IN emp INT)
BEGIN
  SELECT e.emp_id, e.name, SUM(a.status='Present') AS present_days
  FROM attendance a
  JOIN employees e ON a.emp_id = e.emp_id
  WHERE e.emp_id = emp
  GROUP BY e.emp_id, e.name;
END$$
DELIMITER ;

CALL get_emp_present(1);
CALL get_emp_present(3);
CALL get_emp_present(4);


# Why is a view like v_emp_attendance useful for reporting attendance data?
CREATE VIEW v_emp_attendance AS
SELECT e.emp_id, e.name,
       SUM(a.status='Present') AS present_days,
       SUM(a.status='Absent') AS absent_days,
       SUM(a.status='Late') AS late_days,
       SUM(a.status='WFH') AS wfh_days
FROM attendance a
JOIN employees e ON a.emp_id = e.emp_id
GROUP BY e.emp_id, e.name;

SELECT * FROM v_emp_attendance;


# What does the function calc_work_hours return, and how is it calculated?
DELIMITER $$
CREATE FUNCTION calc_work_hours(in_checkin TIME, in_checkout TIME) 
RETURNS DECIMAL(4,2)
DETERMINISTIC
BEGIN
  RETURN TIME_TO_SEC(TIMEDIFF(in_checkout, in_checkin))/3600;
END$$
DELIMITER ;

ALTER TABLE attendance ADD check_in_time TIME, ADD check_out_time TIME;

UPDATE attendance
SET check_in_time = STR_TO_DATE(check_in, '%h:%i %p'),
    check_out_time = STR_TO_DATE(check_out, '%h:%i %p')
WHERE emp_id IS NOT NULL;

ALTER TABLE attendance DROP COLUMN check_in, DROP COLUMN check_out;

ALTER TABLE attendance CHANGE check_in_time check_in TIME, CHANGE check_out_time check_out TIME;

SELECT e.emp_id, e.name, 
       a.check_in, a.check_out,
       calc_work_hours(a.check_in, a.check_out) AS hours_worked
FROM attendance a
JOIN employees e ON a.emp_id = e.emp_id;

# How does creating the index idx_emp_date improve the performance of queries on the attendance table
CREATE INDEX idx_emp_date ON attendance(emp_id, date);
EXPLAIN SELECT * FROM attendance WHERE emp_id = 1 AND date = '2025-11-20';

# Why is a transaction used when inserting multiple attendance records?

START TRANSACTION;
INSERT INTO attendance(emp_id, date, status, check_in, check_out) 
VALUES (5, '2025-11-21', 'Present', '09:00:00', '05:00:00');
INSERT INTO attendance(emp_id, date, status, check_in, check_out) 
VALUES (6, '2025-11-21', 'Late', '09:15:00', '05:10:00');
COMMIT;

SELECT * FROM attendance WHERE date = '2025-11-21' ORDER BY emp_id;

# What does the derived table late_count represent, and why is it used?
SELECT *
FROM (
    SELECT e.emp_id, e.name, SUM(a.status='Late') AS total_late
    FROM attendance a
    JOIN employees e ON a.emp_id = e.emp_id
    GROUP BY e.emp_id, e.name
) AS late_count
WHERE total_late > 0
ORDER BY total_late DESC;

# Add NOT NULL Constraints (safe)
ALTER TABLE employees 
MODIFY name VARCHAR(50) NOT NULL;

ALTER TABLE attendance 
MODIFY status VARCHAR(20) NOT NULL;

# Add Foreign Key Constraints
ALTER TABLE employees 
ADD CONSTRAINT fk_emp_dept 
FOREIGN KEY (dept_id) REFERENCES departments(dept_id);

ALTER TABLE employees 
ADD CONSTRAINT fk_emp_shift 
FOREIGN KEY (shift_id) REFERENCES shifts(shift_id);

ALTER TABLE attendance 
ADD CONSTRAINT fk_att_emp 
FOREIGN KEY (emp_id) REFERENCES employees(emp_id);

# Add CHECK Constraints
ALTER TABLE attendance
ADD CONSTRAINT chk_status 
CHECK (status IN ('Present', 'Absent', 'Late', 'WFH'));

# Add this trigger to prevent future joining dates on INSERT And Update
DELIMITER $$
CREATE TRIGGER trg_joining_date_check
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
  IF NEW.joining_date > CURDATE() THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Joining date cannot be in the future';
  END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER trg_joining_date_update
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
  IF NEW.joining_date > CURDATE() THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'Joining date cannot be in the future';
  END IF;
END$$
DELIMITER ;

## Data Cleaning & Validation ##

# Identify Duplicate Employee Names And Check for missing or invalid status values in attendance:
SELECT name, COUNT(*) AS count FROM employees GROUP BY name HAVING COUNT(*) > 1;

SELECT *FROM attendance WHERE status NOT IN ('Present','Absent','Late','WFH') OR status IS NULL;

SET SQL_SAFE_UPDATES = 0;

# Fix inconsistent status text so all values are standardized (Present, Absent, Late, WFH):
UPDATE attendance SET status = 'Late' WHERE LOWER(status) = 'late';
UPDATE attendance SET status = 'Present' WHERE LOWER(status) = 'present';
UPDATE attendance SET status = 'Absent' WHERE LOWER(status) = 'absent';
UPDATE attendance SET status = 'WFH' WHERE LOWER(status) = 'wfh';


# Query to update missing check-in/check-out times And Convert shift times to 24-hour format using STR_TO_DATE
UPDATE attendance a
JOIN employees e ON a.emp_id = e.emp_id
JOIN shifts s ON e.shift_id = s.shift_id
SET a.check_in = STR_TO_DATE(s.start_time, '%h:%i %p'),
    a.check_out = STR_TO_DATE(s.end_time, '%h:%i %p')
WHERE a.check_in IS NULL OR a.check_out IS NULL;


SELECT * FROM employees ORDER BY emp_id;
SELECT * FROM attendance ORDER BY emp_id, date;

# Quick summary per employee
SELECT e.emp_id, e.name,
       COUNT(*) AS total_days,
       SUM(a.status='Present') AS total_present,
       SUM(a.status='Late') AS total_late,
       SUM(a.status='WFH') AS total_wfh
FROM employees e
LEFT JOIN attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id, e.name;


# Categorize employees based on attendance %
SELECT e.emp_id, e.name,
       ROUND((SUM(a.status='Present')/COUNT(*))*100,2) AS attendance_pct,
       CASE
         WHEN (SUM(a.status='Present')/COUNT(*))*100 >= 90 THEN 'Excellent'
         WHEN (SUM(a.status='Present')/COUNT(*))*100 >= 75 THEN 'Good'
         ELSE 'Needs Improvement'
       END AS performance_category
FROM employees e
LEFT JOIN attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id, e.name;

# Categorize employees as “Regular Latecomer” or “On Time”
SELECT e.emp_id, e.name,
       SUM(a.status='Late') AS total_late,
       CASE
         WHEN SUM(a.status='Late') >= 2 THEN 'Regular Latecomer'
         ELSE 'On Time'
       END AS punctuality
FROM employees e
LEFT JOIN attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id, e.name;

# Categorize work hours
SELECT e.emp_id, e.name,
       SUM(TIME_TO_SEC(TIMEDIFF(a.check_out, a.check_in))/3600) AS total_hours_worked,
       CASE
         WHEN SUM(TIME_TO_SEC(TIMEDIFF(a.check_out, a.check_in))/3600) >= 24 THEN 'Full-time'
         ELSE 'Part-time'
       END AS work_category
FROM employees e
LEFT JOIN attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id, e.name;
