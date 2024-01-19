use test1;
-- Show all columns and rows in the table.
select * from test1;
-- show only the employeename and jobtitle column
select EmployeeName , jobTitle from test1;
-- Show the number of employees in the table.
select count(EmployeeName) from test1;
-- Show the unique job titles in the table.
select distinct(JobTitle) from test1;
-- count the unique job titles in the table.
select count(distinct(JobTitle)) from test1;
-- Show the job title and overtime pay for all employees with overtime pay greater than 50000.
select JobTitle,OvertimePay from test1 where OvertimePay>50000;
-- show the average base pay for all the employees 
select avg(BasePay) as avg_base_pay from test1;
-- show the top 10 highest paid employees 
select EmployeeName,TotalPay from test1 order by TotalPay desc limit 10;
-- Show the average of BasePay, OvertimePay, and OtherPay for each employee:
select EmployeeName,(BasePay+OvertimePay+TotalPay)/3 as avg_pay from test1;
-- Show all employees who have the word "Manager" in their job title.
select * from test1 where Jobtitle like '%Manager%';
-- Show all employees with a jobtitle notequal to word "Manager" 
select * from test1 where Jobtitle != '%Manager%';
-- Show all employees with a total pay between 50,000 and 75,000.
select * from test1 where TotalPay Between  50000 and 75000;
-- Show all employees with a base pay less than 50,000 or TotalPay greatherthan 100,000
select * from test1 where BasePay< 50000 or TotalPay>100000;
-- Show all employees with a total pay benefits valuebetween 125,000 and 150,000 and a job title containing the word "Director"
select * from test1 where TotalPay Between 125000 and 150000 and JobTitle like '%Director%';
-- Show all employees ordered by their total pay benefits in descending order
select * from test1 order by TotalPayBenefits desc;
-- Show all job titles with an average base pay of at least 100,000 and order them by the average base pay in descending order,
select Jobtitle,avg(BasePay)as "avg_base_pay"  from test1 group by Jobtitle having avg(BasePay)>=100000 order by avg_base_pay desc;
-- Delete the column.
alter table test1 drop notes ;
select * from test1;
-- Update the base pay of all employees with the job title containing "Manager" by increasing it by 10%.
update test1 set Basepay=basepay*1.1 where Jobtitle like "Manager";
-- Delete all employees who have no overtimepay.
select count(*) from test1 where OvertimePay=0;
SET SQL_SAFE_UPDATES=0;
DELETE FROM test1 WHERE OvertimePay = 0;
SET SQL_SAFE_UPDATES=1;


