# **Employee Attendance & Performance Analysis (SQL + Power BI)**

This project focuses mainly on **SQL-based data cleaning, transformation, and attendance analysis**, with a simple **Power BI dashboard** built on top of the processed SQL output.

---

## **📌 Project Summary**
- Cleaned and standardized attendance data using **SQL**
- Removed duplicates, fixed invalid values, and validated dates
- Joined **employee, department, shift, and attendance** tables
- Created an SQL attendance summary view: **`v_emp_attendance`**
- Imported SQL output into Power BI for visualization
- Built **DAX measures** for KPIs and % calculations

---

## **🗄 SQL Work (Main Focus)**

### **Key SQL Tasks**
- Attendance aggregation (**Present, Absent, Late, WFH**)
- Shift-based time validation
- Data correction & update queries
- Creation of a consolidated summary view
- Join operations between all related tables

### **Tables Used**
- `attendance_system.attendance`
- `attendance_system.employees`
- `attendance_system.departments`
- `attendance_system.shifts`
- `attendance_system v_emp_attendance`

---

## **📊 Power BI Dashboard**

Dashboard built using essential visuals for clarity:

- **Latecomer Ranking** (Bar Chart)
- **Attendance Summary Table**
- **Attendance % by Employee** (Bar Chart)
- **Status Distribution** (Donut Chart)
- **KPI Cards:** Avg Attendance %, Present Days, Late Days, WFH Days

### **Slicers**
- Employee Name  
- Department

---

## **🛠 Tech Stack**
- **SQL** (Primary Focus)
- **Power BI**
- **DAX Measures**

