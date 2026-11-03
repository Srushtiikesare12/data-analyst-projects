#--1 SAMPLE DATA FOR STUDENTS TABLE
INSERT INTO students
(S_id, S_name, S_city, S_age, Join_date)
VALUES
(1, 'Arav Patil', 'Kolhapur', 20, '2025-06-15'),
(2, 'Ananya Sharma', 'Pune', 21, '2025-06-18'),
(3, 'Rohan Jadhav', 'Latur', 22, '2025-06-20'),
(4, 'Sneha More', 'Sangli', 20, '2025-06-20'),
(5, 'Aditya Kulkarni', 'Pune', 23, '2025-06-25'),
(6, 'Priya Deshmukh', 'Solapur', 21, '2025-06-27'),
(7, 'Omkar Shinde', 'Kolhapur', 22, '2025-07-01'),
(8, 'Isha Pawar', 'Satara', 20, '2025-07-03'),
(9, 'Siddharth Kale', 'Latur', 24, '2025-07-05'),
(10, 'Neha Joshi', 'Pune', 21, '2025-07-08'),
(11, 'Atharva Chavan', 'Sangli', 22, '2025-07-10'),
(12, 'Riya Gaikwad', 'Solapur', 20, '2025-07-12'),
(13, 'Vedant More', 'Kolhapur', 23, '2025-07-15'),
(14, 'Tanvi Patil', 'Satara', 21, '2025-07-18'),
(15, 'Saurabh Pawar', 'Latur', 22, '2025-07-20'),
(16, 'Pooja Shinde', 'Pune', 20, '2025-07-22'),
(17, 'Kunal Desai', 'Sangli', 24, '2025-07-25'),
(18, 'Aditi Kulkarni', 'Kolhapur', 21, '2025-07-28'),
(19, 'Yash Jadhav', 'Solapur', 22, '2025-08-01'),
(20, 'Mitali Joshi', 'Satara', 20, '2025-08-05');

#-- 2 SAMPLE DATA FOR COURSES TABLE
insert into courses values
(101,"BCA","Computer Applications",3,45000.00),
(102,"MCA","Computer Applications",2,80000.00),
(103,"BBA","Management",3,40000.00),
(104,"MBA","Management",2,90000.00),
(105,"Bsc Computer Science","Computer Science",
3,50000.00),
(106,"Msc Computer Science","Computer Science",
2,70000.00);

#-- 3 SAMPLE DATA FOR ENROLLMENT TABLE
insert into enrollment values
(1,1,101,'2025-06-10',"Active"),
(2,2,102,'2025-06-11',"Active"),
(3,3,101,'2025-06-12',"Active"),
(4,4,103,'2025-06-13',"Active"),
(5,5,104,'2025-06-14',"Active"),
(6,6,105,'2025-06-15',"Active"),
(7,7,102,'2025-06-16',"Active"),
(8,8,106,'2025-06-17',"Active"),
(9,9,103,'2025-06-18',"Active"),
(10,10,101,'2025-06-19',"Active"),
(11,11,104,'2025-06-20',"Active"),
(12,12,105,'2025-06-21',"Active"),
(13,13,102,'2025-06-22',"Active"),
(14,14,106,'2025-06-23',"Active"),
(15,15,103,'2025-06-24',"Active"),
(16,16,101,'2025-06-25',"Completed"),
(17,17,104,'2025-06-26',"Active"),
(18,18,105,'2026-06-27',"Withdeawn"),
(19,19,106,'2025-06-28',"Active"),
(20,20,102,'2025-06-29',"Completed");

#-- 4 SAMPLE DATA FOR FEES TABLE
insert into fees values
(1,1,45000,45000,'2025-07-10',"paid"),
(2,2,80000,50000,'2025-07-12',"partial"),
(3,3,45000,30000,'2025-07-13',"partial"),
(4,4,40000,40000,'2025-07-14',"paid"),
(5,5,90000,60000,'2025-07-15',"partial"),
(6,6,50000,50000,'2025-07-16',"paid"),
(7,7,80000,0,null,"pending"),
(8,8,70000,35000,'2025-07-18',"partial"),
(9,9,40000,40000,'2025-07-19',"paid"),
(10,10,45000,20000,'2025-07-20',"partial"),
(11,11,90000,90000,'2025-07-21',"paid"),
(12,12,50000,25000,'2025-07-22',"partial"),
(13,13,80000,80000,'2025-07-23',"paid"),
(14,14,70000,0,null,"pending"),
(15,15,40000,20000,'2025-07-25',"partial"),
(16,16,45000,45000,'2025-07-26',"paid"),
(17,17,90000,30000,'2025-07-27',"partial"),
(18,18,50000,50000,'2025-07-28',"paid"),
(19,19,70000,70000,'2025-07-29',"paid"),
(20,20,80000,40000,'2025-07-30',"partial");

#-- 5 SAMPLE DATA FOR RESULTS
insert into results values
(1,1,1,78,"pass",'2025-10-10'),
(2,3,1,65,"pass",'2025-10-10'),
(3,10,1,42,"pass",'2025-10-10'),
(4,16,1,85,"pass",'2025-10-10'),
(5,2,4,88,"pass",'2025-10-12'),
(6,7,4,56,"pass",'2025-10-12'),
(7,13,4,32,"fail",'2025-10-12'),
(8,20,4,71,"pass",'2025-10-12'),
(9,2,5,76,"pass",'2025-10-15'),
(10,7,5,48,"pass",'2025-10-15'),
(11,13,5,28,"fail",'2025-10-15'),
(12,20,5,67,"pass",'2025-10-15'),
(13,6,12,81,"pass",'2025-10-18'),
(14,12,12,59,"pass",'2025-10-18'),
(15,18,12,35,"fail",'2025-10-18'),
(16,5,10,91,"pass",'2025-10-20'),
(17,11,10,73,"pass",'2025-10-20'),
(18,17,10,44,"pass",'2025-10-20'),
(19,8,15,68,"pass",'2025-10-22'),
(20,14,15,39,"fail",'2025-10-22');

#-- 6 SAMPLE DATA FOR SUBJECTS
insert into subjects values
(1,101,"c programming",1,100),
(2,101,"DBMS",2,100),
(3,101,"python programming",3,100),
(4,102,"Advanced DBMS",1,100),
(5,102,"data analytics",1,100),
(6,102,"ML",2,100),
(7,102,"cloud computing",2,100),
(8,103,"principles of management",1,100),
(9,103,"business economics",2,100),
(10,104,"financial management",1,100),
(11,104,"marketing management",2,100),
(12,105,"computer networks",1,100),
(13,105,"operating systems",2,100),
(14,105,"software engineering",3,100),
(15,106,"advanced programming",1,100),
(16,106,"AI",1,100),
(17,106,"data mining",2,100),
(18,106,"research methodology",2,100);