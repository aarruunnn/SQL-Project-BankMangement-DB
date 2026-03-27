create database Bank_info;

use bank_info;

create table Employee_table(
Employee_id varchar(10) primary key,
First_name varchar(20),
Middle_name varchar(20),
Last_name varchar(20),
Designation varchar(20),
Branch_id varchar(10),
Nationality varchar(20),
Email_id varchar(30),
Contact varchar(12),
Adhar_no varchar(25),
PAN varchar(20),
Manager_id varchar(20),
DOB date,
DOJ DATE,
Gender varchar(6),
marital_status varchar(10));


INSERT INTO Employee_table 
(Employee_id, First_name, Middle_name, Last_name, Designation, Branch_id, Nationality, Email_id, Contact, Adhar_no, PAN, Manager_id, DOB, DOJ, Gender, Marital_status)
VALUES
('E001', 'Rahul', 'Kumar', 'Sharma', 'Manager', 'B001', 'Indian', 'rahul.sharma@company.com', '9876543210', '123456789012', 'ABCDE1234F', NULL, '1985-03-15', '2012-07-10', 'Male', 'Married'),
('E002', 'Priya', 'Rani', 'Verma', 'HR Executive', 'B001', 'Indian', 'priya.verma@company.com', '9876501234', '234567890123', 'BCDEF2345G', 'E001', '1990-05-22', '2015-08-01', 'Female', 'Married'),
('E003', 'Amit', 'Raj', 'Gupta', 'Sales Executive', 'B002', 'Indian', 'amit.gupta@company.com', '9876123450', '345678901234', 'CDEFG3456H', 'E001', '1992-09-10', '2017-03-15', 'Male', 'Single'),
('E004', 'Neha', 'Singh', 'Patel', 'Software Engineer', 'B003', 'Indian', 'neha.patel@company.com', '9876234512', '456789012345', 'DEFGH4567I', 'E005', '1995-02-08', '2020-01-10', 'Female', 'Single'),
('E005', 'Rohit', 'Kumar', 'Yadav', 'Team Lead', 'B003', 'Indian', 'rohit.yadav@company.com', '9876345120', '567890123456', 'EFGHI5678J', 'E001', '1988-07-20', '2014-09-05', 'Male', 'Married'),
('E006', 'Sneha', 'Lata', 'Mehta', 'Accountant', 'B002', 'Indian', 'sneha.mehta@company.com', '9876451230', '678901234567', 'FGHIJ6789K', 'E001', '1991-12-12', '2016-05-12', 'Female', 'Married'),
('E007', 'Vikas', 'Anand', 'Rao', 'Clerk', 'B001', 'Indian', 'vikas.rao@company.com', '9876567890', '789012345678', 'GHIJK7890L', 'E002', '1993-04-18', '2019-06-20', 'Male', 'Single'),
('E008', 'Kavita', 'S.', 'Pillai', 'Designer', 'B004', 'Indian', 'kavita.pillai@company.com', '9876678901', '890123456789', 'HIJKL8901M', 'E005', '1994-09-25', '2018-10-12', 'Female', 'Single'),
('E009', 'Arjun', 'Dev', 'Reddy', 'Technician', 'B004', 'Indian', 'arjun.reddy@company.com', '9876789012', '901234567890', 'IJKLM9012N', 'E005', '1996-11-02', '2021-02-15', 'Male', 'Single'),
('E010', 'Pooja', 'N.', 'Thakur', 'Receptionist', 'B001', 'Indian', 'pooja.thakur@company.com', '9876890123', '012345678901', 'JKLMN0123O', 'E002', '1997-06-10', '2022-04-05', 'Female', 'Single');

SELECT * FROM Employee_table;

DESC EMPLOYEE_TABLE;

create table Employee_address(
Address_id varchar(10) primary key,
Home_Number varchar(10),
Address_Line1 varchar(20),
Address_Line2 varchar(20),
City varchar(20),
Post varchar(20),
State varchar(10),
Pin varchar(10),
Country varchar(20),
Landmark varchar(12),
Employee_id varchar(10), foreign key(Employee_id) references Employee_table(Employee_id) );

INSERT INTO Employee_address 
(Address_id, Home_Number, Address_Line1, Address_Line2, City, Post, State, Pin, Country, Landmark, Employee_id)
VALUES
('A001', '12A', 'Green Park', 'Sector 45', 'Delhi', 'South Delhi', 'DL', '110017', 'India', 'Near Metro', 'E001'),
('A002', '56B', 'MG Road', 'Andheri East', 'Mumbai', 'Andheri', 'MH', '400069', 'India', 'Opp Mall', 'E002'),
('A003', '34C', 'Park Street', 'Central Area', 'Kolkata', 'Kolkata', 'WB', '700016', 'India', 'Near CCD', 'E003'),
('A004', '78D', 'Electronic City', 'Phase 2', 'Bengaluru', 'Electronic', 'KA', '560100', 'India', 'Tech Park', 'E004'),
('A005', '22E', 'Sector 18', 'Noida', 'Noida', 'GautamBudh', 'UP', '201301', 'India', 'City Mall', 'E005'),
('A006', '10F', 'Anna Nagar', 'West Extension', 'Chennai', 'Anna Nagar', 'TN', '600040', 'India', 'Bus Depot', 'E006'),
('A007', '15G', 'Rajaji Nagar', 'Block 2', 'Bengaluru', 'Rajaji', 'KA', '560010', 'India', 'Near Temple', 'E007'),
('A008', '48H', 'Viman Nagar', 'North Road', 'Pune', 'VimanNagar', 'MH', '411014', 'India', 'Phoenix Mall', 'E008'),
('A009', '19I', 'Banjara Hills', 'Road No 12', 'Hyderabad', 'Banjara', 'TS', '500034', 'India', 'Near Lake', 'E009'),
('A010', '60J', 'Laxmi Nagar', 'Main Street', 'Delhi', 'East Delhi', 'DL', '110092', 'India', 'Metro Gate', 'E010');


select * from Employee_address;

DESC EMPLOYEE_ADDRESS;


create table Employee_Salary(
Salary_id varchar(10) primary key,
Basic_sal int,
TA int,
DA int,
HRA int,
PF int,
Commision int ,
Gratuity int,
Total_sal int ,
Employee_id varchar(10),foreign key(Employee_id)
references Employee_table(Employee_id));

INSERT INTO Employee_Salary 
(Salary_id, Basic_sal, TA, DA, HRA, PF, Commision, Gratuity, Total_sal, Employee_id)
VALUES
('S001', 65000, 5000, 8000, 10000, 4000, 0, 2000, 95000, 'E001'),
('S002', 40000, 3000, 5000, 8000, 3000, 1000, 1500, 55500, 'E002'),
('S003', 35000, 2500, 4500, 7000, 2500, 2000, 1200, 52200, 'E003'),
('S004', 50000, 4000, 6000, 9000, 3500, 0, 1800, 71300, 'E004'),
('S005', 55000, 4500, 7000, 9500, 3800, 0, 2000, 74800, 'E005'),
('S006', 38000, 3000, 5000, 7500, 3000, 500, 1500, 55500, 'E006'),
('S007', 25000, 2000, 3500, 6000, 2000, 0, 1000, 39500, 'E007'),
('S008', 42000, 3500, 5500, 8500, 3200, 800, 1600, 62600, 'E008'),
('S009', 30000, 2500, 4000, 6500, 2500, 0, 1200, 46700, 'E009'),
('S010', 28000, 2000, 3500, 6000, 2000, 0, 1000, 42500, 'E010');


SELECT * FROM EMPLOYEE_SALARY;

DESC EMPLOYEE_SALARY;



create table customer_personal_info(
customer_id varchar(10) primary key,
first_name varchar(20),
second_name varchar(20),
Last_name varchar(20),
date_of_birth date ,
guardian_name varchar(20),
contact varchar(10),
email varchar(30),
gender varchar(1),
marital_status varchar(10),
id_doc_type varchar(20),
doc_id varchar(25),
citizenship varchar(10),
Employee_id varchar(10), foreign key(Employee_id)
references Employee_table(Employee_id));

INSERT INTO customer_personal_info
(customer_id, first_name, second_name, last_name, date_of_birth, guardian_name, contact, email, gender, marital_status, id_doc_type, doc_id, citizenship, Employee_id)
VALUES
('C001', 'Aman', 'Raj', 'Singh', '1992-05-12', 'Ramesh Singh', '9876500011', 'aman.singh@gmail.com', 'M', 'Single', 'Aadhar', '123456789012', 'Indian', 'E002'),
('C002', 'Sneha', 'Kumari', 'Patel', '1995-07-25', 'Mahesh Patel', '9876500022', 'sneha.patel@gmail.com', 'F', 'Single', 'PAN', 'ABCDE1234F', 'Indian', 'E003'),
('C003', 'Rohit', 'Anand', 'Gupta', '1988-03-15', 'Suresh Gupta', '9876500033', 'rohit.gupta@yahoo.com', 'M', 'Married', 'Aadhar', '234567890123', 'Indian', 'E004'),
('C004', 'Priya', 'Rani', 'Mehra', '1993-10-05', 'Rajesh Mehra', '9876500044', 'priya.mehra@gmail.com', 'F', 'Single', 'Voter ID', 'DL1234567', 'Indian', 'E005'),
('C005', 'Vikas', 'Kumar', 'Yadav', '1989-01-20', 'Mohan Yadav', '9876500055', 'vikas.yadav@gmail.com', 'M', 'Married', 'Aadhar', '345678901234', 'Indian', 'E006'),
('C006', 'Kavita', 'S.', 'Menon', '1994-11-12', 'Subram Menon', '9876500066', 'kavita.menon@gmail.com', 'F', 'Single', 'Passport', 'L1234567', 'Indian', 'E007'),
('C007', 'Arjun', 'Dev', 'Nair', '1990-09-30', 'S. Nair', '9876500077', 'arjun.nair@gmail.com', 'M', 'Married', 'Aadhar', '456789012345', 'Indian', 'E008'),
('C008', 'Pooja', 'N.', 'Sharma', '1997-02-18', 'Ravi Sharma', '9876500088', 'pooja.sharma@gmail.com', 'F', 'Single', 'PAN', 'FGHIJ6789K', 'Indian', 'E009'),
('C009', 'Neeraj', 'Kumar', 'Rao', '1991-04-22', 'Om Rao', '9876500099', 'neeraj.rao@gmail.com', 'M', 'Married', 'Aadhar', '567890123456', 'Indian', 'E010'),
('C010', 'Anita', 'Lata', 'Verma', '1987-08-09', 'Rajiv Verma', '9876500100', 'anita.verma@gmail.com', 'F', 'Married', 'Aadhar', '678901234567', 'Indian', 'E001');


SELECT * FROM CUSTOMER_PERSONAL_INFO;
DESC CUSTOMER_PERSONAL_INFO;



create table bank_info(
ifsc_code varchar(15) Primary key,
bank_name varchar(25),
branch_name varchar(25),
branch_id varchar(10),
branch_address varchar(20),
Manager_id varchar(20));


INSERT INTO bank_info
(ifsc_code, bank_name, branch_name, branch_id, branch_address, Manager_id)
VALUES
('HDFC0001DEL', 'HDFC Bank', 'Green Park Branch', 'B001', 'Delhi', 'E001'),
('SBI0002MUM', 'State Bank of India', 'Andheri East', 'B002', 'Mumbai', 'E002'),
('ICIC0003KOL', 'ICICI Bank', 'Park Street', 'B003', 'Kolkata', 'E003'),
('AXIS0004BLR', 'Axis Bank', 'Electronic City', 'B004', 'Bengaluru', 'E004'),
('PNB0005NOD', 'Punjab National Bank', 'Sector 18', 'B005', 'Noida', 'E005'),
('BOB0006CHE', 'Bank of Baroda', 'Anna Nagar', 'B006', 'Chennai', 'E006'),
('UBI0007BLR', 'Union Bank of India', 'Rajaji Nagar', 'B007', 'Bengaluru', 'E007'),
('KOT0008PUN', 'Kotak Mahindra Bank', 'Viman Nagar', 'B008', 'Pune', 'E008'),
('YES0009HYD', 'YES Bank', 'Banjara Hills', 'B009', 'Hyderabad', 'E009'),
('IDBI0010DEL', 'IDBI Bank', 'Laxmi Nagar', 'B010', 'Delhi', 'E010');


SELECT * FROM  BANK_INFO;
DESC BANK_INFO;






create table account_info(
account_no varchar(16) primary key,
customer_id varchar(10),
account_type varchar(10),
registeration_date date,
activation_date date,
ifsc_code varchar(20),
interest float,
initial_deposit int ,
foreign key(customer_id) references customer_personal_info(customer_id),
foreign key(ifsc_code) references bank_info(ifsc_code));

 
INSERT INTO account_info
(account_no, customer_id, account_type, registeration_date, activation_date, ifsc_code, interest, initial_deposit)
VALUES
('1000100010001001', 'C001', 'Saving', '2020-01-10', '2020-01-15', 'HDFC0001DEL', 3.5, 25000),
('1000100010001002', 'C002', 'Current', '2020-02-05', '2020-02-10', 'SBI0002MUM', 0.0, 50000),
('1000100010001003', 'C003', 'Saving', '2019-07-20', '2019-07-25', 'ICIC0003KOL', 3.7, 30000),
('1000100010001004', 'C004', 'Saving', '2021-03-12', '2021-03-18', 'AXIS0004BLR', 3.8, 20000),
('1000100010001005', 'C005', 'Current', '2018-11-01', '2018-11-05', 'PNB0005NOD', 0.0, 75000),
('1000100010001006', 'C006', 'Saving', '2021-06-15', '2021-06-20', 'BOB0006CHE', 3.6, 18000),
('1000100010001007', 'C007', 'Saving', '2020-09-09', '2020-09-15', 'UBI0007BLR', 3.7, 22000),
('1000100010001008', 'C008', 'Saving', '2022-01-05', '2022-01-10', 'KOT0008PUN', 3.5, 26000),
('1000100010001009', 'C009', 'Current', '2019-04-18', '2019-04-22', 'YES0009HYD', 0.0, 60000),
('1000100010001010', 'C010', 'Saving', '2023-05-10', '2023-05-15', 'IDBI0010DEL', 3.6, 20000);

DESC ACCOUNT_INFO;
SELECT * FROM ACCOUNT_INFO;




create table Customer_Address(
Address_id varchar(10) primary key,
Home_Number varchar(10),
Address_Line1 varchar(20),
Address_Line2 varchar(20),
City varchar(20),
Post varchar(20),
State varchar(10),
Pin varchar(20),
Country varchar(30),
Landmark varchar(12),
Customer_id varchar(10),foreign key(Customer_id)
 references Customer_personal_info(Customer_id));


 INSERT INTO Customer_Address 
(Address_id, Home_Number, Address_Line1, Address_Line2, City, Post, State, Pin, Country, Landmark, Customer_id)
VALUES
('CA001', '12A', 'Lajpat Nagar', 'Block B', 'Delhi', 'South Delhi', 'DL', '110024', 'India', 'Near Metro', 'C001'),
('CA002', '45B', 'Lokhandwala', 'Andheri West', 'Mumbai', 'Andheri', 'MH', '400053', 'India', 'Opp Mall', 'C002'),
('CA003', '23C', 'Salt Lake', 'Sector 5', 'Kolkata', 'Bidhan', 'WB', '700091', 'India', 'Tech Hub', 'C003'),
('CA004', '78D', 'Koramangala', '5th Block', 'Bengaluru', 'Koramang', 'KA', '560095', 'India', 'Cafe Coffee', 'C004'),
('CA005', '16E', 'Sector 62', 'Phase 2', 'Noida', 'GautamBudh', 'UP', '201309', 'India', 'City Mall', 'C005'),
('CA006', '33F', 'T Nagar', 'West Main Rd', 'Chennai', 'T Nagar', 'TN', '600017', 'India', 'Near Park', 'C006'),
('CA007', '21G', 'Jayanagar', 'Block 4', 'Bengaluru', 'Jayanagar', 'KA', '560041', 'India', 'Bus Depot', 'C007'),
('CA008', '50H', 'Kalyani Nagar', 'East Lane', 'Pune', 'Kalyani', 'MH', '411006', 'India', 'Near Mall', 'C008'),
('CA009', '19I', 'Banjara Hills', 'Road No 10', 'Hyderabad', 'Banjara', 'TS', '500034', 'India', 'Lake View', 'C009'),
('CA010', '64J', 'Preet Vihar', 'Main Road', 'Delhi', 'East Delhi', 'DL', '110092', 'India', 'Metro Gate', 'C010');

show tables;

# Retrieve the names and salaries of all employees
select  * from employee_table;
select * from employee_salary;

select concat(employee_table.First_name , " " ,employee_table.last_name) as full_name , employee_salary.total_sal 
from  employee_table join employee_salary 
on employee_table.employee_id = employee_table.employee_id;

# Find the address of a specific employee based on their employee ID

select employee_table.employee_id ,  concat(employee_table.first_name , " " , employee_table.last_name ) as full_name ,
concat(employee_address.address_line1 ,"  ",employee_address.address_line2 ) as full_address
from employee_table join employee_address
on employee_table.employee_id = employee_address.employee_id;  

# list all customers along with their addresses
show tables;
select * from customer_personal_info;
select * from customer_address;

select customer_personal_info.customer_id , concat(customer_personal_info.first_name," ",customer_personal_info.last_name) as full_name ,
concat(customer_address.home_number," ",customer_address.address_line1 ," ",customer_address.address_line2 ," ",city) as full_adress 
from customer_personal_info join customer_address 
on customer_personal_info.customer_id = customer_personal_info.customer_id;

# Show account details of a specific customer using their customer ID
show tables;
select * from customer_personal_info;
select * from account_info;

select customer_personal_info.customer_id , account_info.* 
from customer_personal_info  join account_info 
on customer_personal_info.customer_id = account_info.customer_id;

# Retrieve all employees who earn more than rs 50000
show tables;
select * from employee_table;
select * from employee_salary;

select employee_table.employee_id , concat(employee_table.first_name, " ", employee_table.last_name) as full_name ,
employee_salary.total_sal 
from employee_table join employee_salary
on employee_table.employee_id = employee_salary.employee_id
where employee_salary.total_sal > 50000;

# Display employee details along with their salary and address
show tables;
select * from employee_table;
select * from employee_salary;
select * from employee_address;

select employee_table.employee_id , concat( employee_table.first_name , " ", employee_table.last_name ) as full_name ,
employee_Salary.total_Sal , concat(employee_Address.address_line1 , " , " ,employee_Address.address_line2," , " ,employee_Address.city ) as full_address 
from employee_table join employee_salary
on employee_table.employee_id = employee_salary.employee_id 
join employee_address on employee_salary.employee_id = employee_address.employee_id;

# Show customers details along with their bank information
show tables;
select * from customer_personal_info;
select * from bank_info;
select * from account_info;
select concat(customer_personal_info.first_name ," " , customer_personal_info.last_name ) as full_name,
customer_personal_info.contact , customer_personal_info.date_of_birth,bank_info.* 
from customer_personal_info join account_info 
on customer_personal_info.customer_id = account_info.customer_id
join bank_info 
on account_info.ifsc_code = bank_info.ifsc_code;

# List all employees working at a specific bank
show tables;
select * from employee_table;
select * from bank_info;
select concat(employee_table.first_name," ",employee_table.last_name) as full_name ,
employee_table.designation , bank_info.*
from employee_table join bank_info 
on employee_table.branch_id = bank_info.branch_id
where bank_info.bank_name="HDFC Bank";

# Retrieve account details along with customer names and addresses
select account_info.* , customer_personal_info.customer_id ,
concat(customer_personal_info.First_name ," " ,customer_personal_info.second_name," ",customer_personal_info.last_name ) as full_name ,
customer_address.* 
from account_info join customer_personal_info 
on account_info.customer_id = customer_personal_info.customer_id
join customer_Address 
on customer_personal_info.customer_id = customer_Address.customer_id;


# Find employees and thier respective salaries , sorted in descending order
select employee_table.employee_id , employee_table.first_name , employee_table.last_name , employee_table.designation ,
employee_salary.total_sal 
from employee_table join employee_salary 
on employee_table.employee_id = employee_salary.employee_id;


# Find the total number of customers in the bank
select count(*) as total_customers
from customer_personal_info;

# Calculate the average salary of employees in the bank
select avg(total_sal) as average_salary
from employee_salary;

# Count the number of accounts in each bank branch 
select branch_name, count(account_no) as total_accounts 
from account_info join bank_info 
on account_info.ifsc_Code = bank_info.ifsc_code
group by branch_name;


# Find the highest salary among all employees
select max(total_sal) as highest_salary 
from employee_salary;


# Retrieve the total number of employees working in the bank
select count(*) as total_employees
from employee_table join bank_info
on employee_table.branch_id = bank_info.branch_id;


# List all customers who have more than one account 
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.second_name, ' ', c.last_name) AS full_name,
    COUNT(a.account_no) AS total_accounts
FROM customer_personal_info c
JOIN account_info a 
    ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.first_name, c.second_name, c.last_name
HAVING COUNT(a.account_no) > 1;


# Find employees whose salary is above the average salary of all employees
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
    s.total_sal
FROM employee_table e
JOIN employee_salary s 
    ON e.employee_id = s.employee_id
WHERE s.total_sal > (
    SELECT AVG(total_sal) 
    FROM employee_salary
);

# Retrieve all the bank details where the  maximum numbers of customers have accounts
SELECT 
    b.ifsc_code,
    b.bank_name,
    b.branch_name,
    COUNT(a.account_no) AS total_customers
FROM bank_info b
JOIN account_info a 
    ON b.ifsc_code = a.ifsc_code
GROUP BY b.ifsc_code, b.bank_name, b.branch_name
HAVING COUNT(a.account_no) = (
    SELECT MAX(customer_count)
    FROM (
        SELECT COUNT(account_no) AS customer_count
        FROM account_info
        GROUP BY ifsc_code
    ) AS sub
);

# Display employees who do not have a recorded address
SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM employee_table e
LEFT JOIN employee_address ea
    ON e.employee_id = ea.employee_id
WHERE ea.employee_id IS NULL;

# Find the details of customers who have accounts but no recorded address
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    a.account_no
FROM customer_personal_info c
JOIN account_info a 
    ON c.customer_id = a.customer_id
LEFT JOIN customer_address ca
    ON c.customer_id = ca.customer_id
WHERE ca.customer_id IS NULL;

 