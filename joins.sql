select * from employee;

select employee.Emp_Name from employee join department 
on 
employee.Dept_ID = department.Dept_ID where department.Dept_Name = "Animation";

select employee.Emp_Name, department.Supervisor from employee 
join department on employee.Dept_ID = department.Dept_ID;

select count(Emp_ID) from employee right join department 
on 
employee.Dept_ID = department.Dept_ID
where Dept_Name = "Animation";

select Dept_Name ,max(EMP_Salary) as max_salary, 
min(Emp_Salary) as min_Salary, 
avg(Emp_Salary) as average 
from employee join department
on 
employee.Dept_ID = department.Dept_ID
where Dept_Name = "Animation";

select Dept_Name from employee inner join department
on 
employee.Dept_ID = department.Dept_ID
group by department.Dept_Name having count(employee.Dept_ID) >= 2; 

select Dept_Name from department group by Dept_name;

select * from employee;

set SQL_SAFE_UPDATES = 1;

UPDATE employee
JOIN department ON employee.Dept_ID = department.Dept_ID
SET employee. Emp_Salary = ((employee. Emp_Salary * 0.10) + employee.Emp_Salary)
where department.Dept_Name = 'Animation';

delete employee from employee inner join department on employee.Dept_ID = department.Dept_ID where Dept_Name = 'Stock';

select * from employee;
select * from department;