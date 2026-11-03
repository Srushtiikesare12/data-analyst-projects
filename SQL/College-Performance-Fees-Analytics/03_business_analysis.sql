#--BUSINESS ANALYSIS
/* BUSINESS QUETION:
Q1.HOW MANY STUDENTS ARE ENROLLED IN EACH COURSE?
OBJECTIVE:To analyze the no of students
*/

SELECT C_name, COUNT(S_id) as total_stud from courses
left join enrollment
on courses.C_id=enrollment.C_id
group by C_name;

/*
INSIGHT: BCA and MCA have the highest 
enrollment with 4 students each
*/
#===============================================
/*
Q2:How much total fee has been collected for each course?
OBJECTIVE: To analyze course-wise fee collection
*/
select C_name,sum(amount_paid) as total
from enrollment
left join courses
on enrollment.C_id=courses.C_id
left join fees
on enrollment.E_id=fees.E_id
group by C_name;

/* INSIGHT:MBA Has the highest fee collection
($1,80,000),while BBA has the lowest ($1,00,000).

#===============================================
/*
Q3:How much fees is pending for each course?
OBJECTIVE:To calculate the outstanding fee amount
for the each course
*/

select C_name,
sum(total_fees-amount_paid) as pending_amount 
from fees
right join enrollment
on fees.E_id=enrollment.E_id
left join courses
on courses.C_id=enrollment.C_id
group by C_name;

/* INSIGHT:MCA Has the highest pending fees
($1,50,000),while BBA has the lowest pending
fees($20,000)
*/

#================================================
/*
Q4:Which students have unpaid or partially paid 
fees?
OBJECTIVE:To identify students whose fees are not
fully paid
*/

select S_name,enrollment.E_id,payment_status from students
left join enrollment
on students.S_id=enrollment.S_id
left join fees
on fees.E_id=enrollment.E_id
where payment_status="pending"
or
payment_status="partial";

/* INSIGHT:11 Students have unpaid or partially
paid fees,most of these records have partial 
payment status */

#===============================================

/*
Q5: What is the average age of students in each
city?
OBJECTIVE:To compare the average age of students
across different the cities */

select S_city,avg(S_age) from students
group by S_city;

/* INSIGHT:Latur has the highest average students
age (22.67 years),while satara has the lowest
average students age (20.33 years) */

#===============================================

/*
Q6:How many enrollments are there for each 
enrollment status?
 OBJECTIVE:To analyze the number of students 
 in each enrollment status */
 
 select enrollment_status,count(S_id) from 
 enrollment
 group by enrollment_status;
 
 /* INSIGHT:17 enrollments are active,2 are completed,
 and 1 enrollment has been withdrawn,Active enrollments
 account for 85% of all records */
 
 #==============================================
 
 /*
 Q7:Which courses have an average score above 60?
 OBJECTIVE:To identify courses with an average
 student score above 60 */
 
 select C_name,avg(marks_obtained) from courses
 left join enrollment
 on enrollment.C_id=courses.C_id
 left join results
 on results.E_id=enrollment.E_id
 group by C_name
 having avg(marks_obtained)>60;
 
 /* INSIGHT:BCA has an average score of 67.50 marks,
 while MBA has an average score of 69.33 marks.
 these are the only courses with an average score 
 above 60 */
 
 #======================================================
 
/*
Q8:What is the average score in each subject?
OBJECTIVE:TO compare student performance across diffrent
subjects */

select S_name,avg(marks_obtained)from results
left join subjects
on results.Sub_id=subjects.Sub_id
group by S_name;

/* INSIGHT:Financial management has the highest
average score (69.33),while advanced programming
has the lowest average score (53.50)*/

#===============================================
/*
Q9: Which students have failed, and in which
subjects?
OBJECTIVE:To identify students who scored below
the passing marks in each subject */

select distinct students.S_name,
subjects.S_name,result_status,marks_obtained
from results
left join enrollment
on enrollment.E_id=results.E_id
left join students
on enrollment.S_id=students.S_id
left join subjects
on enrollment.C_id=subjects.C_id
where result_status="fail";

/*INSIGHT:This analysis identifies students who
failed in individual subjects.A student may appear
multiple times if they failed in more than one 
subjects.This helps the college identify students
who need subjects-wise academic support.*/

#===============================================
/*
Q10.What is the pass percentage for each course?
OBJECTIVE:To calculate the percentage of students
who passed in each course and compare academic
performance across courses.*/

select courses.C_name,count(results.E_id) 
as total_results,sum(case 
when results.result_status="pass" 
then 1
else 0
end) as passed_results,
round(
sum(case 
when results.result_status="pass"
then 1
else 0
end)*100.0/count(results.E_id),
2
) as pass_percentage
from courses 
join enrollment
on courses.C_id=enrollment.C_id
join results
on enrollment.E_id=results.E_id
group by courses.C_name;

/*INSIGHT:BCA and MBA have the highest pass percentage
of 100%.MCA has a pass percentage of 75%,followed
by Bsc computer science has the lowest pass percentage
of 50%.The college should focus on improving academic
performance in Msc computer science.*/

#===============================================
/*
Q11.Who are the top-performing students?
OBJECTIVE:To identify students based on their average
marks across all subjects.*/

select students.S_name as student_name,
round(avg(results.marks_obtained),2) 
as avg_marks
from students
join enrollment
on students.S_id=enrollment.S_id
join results
on enrollment.E_id=results.E_id
group by students.S_id,students.S_name
order by avg_marks desc
limit 5;

/* INSIGHT:Aditya kulkarni is the top-performing
student with an average score of 91%.pooja shinde
ranks second with 85%,followed by Ananya Sharma
with 82%.These students demonstrate strong academic
performance.The college can recognize and encourage
top-performing students.*/

#===============================================

/*
Q12:How do courses rank by total fee collection?
OBJECTIVE:To rank courses based on total fees
collected and identify the highest revenue-generating
course.*/

select courses.C_name,sum(fees.amount_paid) As
total_fee_collection,
rank() over(
order by sum(fees.amount_paid)desc) As course_rank
from courses
join enrollment
on courses.C_id=enrollment.C_id
join fees
on enrollment.E_id=fees.E_id
group by courses.C_id,courses.C_name
order by course_rank;

/*INSIGHT:MBA generates the highest fee collection
of $ 1,80,000 and ranks first.MCA ranks second with
$ 1,40,000.BBA has the lowest fee collection of
$ 1,00,000.The college can review course-wise
admissions and fee collection to improve overall
revenue.*/

#================================================
