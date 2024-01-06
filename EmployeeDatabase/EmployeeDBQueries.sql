-- All employee info
select employee.id, concat(firstName, " ", lastName) as fullName, hourlyPay, salary, age, department, `role`, yearsEmployed, email, supervisor, supervisorId 
from employee
left join employee_details
on employee.id = employee_details.id
left join employee_supervisors
on employee_details.id = employee_supervisors.employeeId; 

-- Employees in their 30'savepoin
select concat(firstName, " ", lastName) as fullName, age 
from employee
where age >= 30 and age < 40 order by age;

-- Number of employees per supervisor
select supervisor, count(*) as num_of_employees
from employee_supervisors left join employee
on employee_supervisors.supervisorId = employee.id
group by supervisor;

-- Total years employed by receptionists
select `role`, sum(yearsEmployed)
from employee
inner join employee_details
on employee.id = employee_details.id
group by `role` 
having `role` = "Receptionist";

-- Total years employed by departments
select `role`, sum(yearsEmployed) as totalYearsEmployed
from employee
inner join employee_details
on employee.id = employee_details.id
group by `role`; 

-- Higher than average salary
select * from employee
where salary >
(select avg(salary) as avarage_salary
from employee);

-- Salary after raise
select concat(firstName, ' ', lastName) as fullName, salary, department, `role`, 
case
when role = 'Developer' then salary + (salary * .10)
when role = 'Receptionist' then salary + (salary * .05)
when role = 'Representative' then salary + (salary * .08)
when role = 'Manager' then salary + (salary * .15)
else salary + (salary * .03)	
end as salary_after_raise
from employee;

-- Employees who earn more than average in their department
select * from employee e1
where salary > (select avg(salary) from employee e2
				where e2.department = e1.department)
order by salary;

-- Employees who earn the highest salary in each department
select * from employee
where(department, salary) in
(select department, max(salary) from employee
group by department);

-- List of all emails in the company
select concat(firstName, " ", lastName) as `fullName or department`, email from employee
inner join employee_details
on employee.id = employee_details.id
union 
select department, email from departments_details
order by email;

-- Supervisors
select distinct supervisor, supervisorId, department, officeNumber, phoneNumber, email
from employee_supervisors left join departments_details 
on employee_supervisors.supervisor = departments_details.head;

-- Employees supervised by M.Silva who earn more than 22 hourly pay
select id, concat(firstName, " ", lastName) as fullName, hourlyPay, supervisor
from employee
left join employee_supervisors 
on employee.id = employee_supervisors.employeeId
where hourlyPay > 22.00
group by id, fullName, hourlyPay, supervisor
having supervisor = "Marilyn Silva"
order by id, fullname, hourlyPay, supervisor;

-- Departments that share phone numbers
select * from departments_details 
where phoneNumber in (
select phoneNumber
from departments_details
group by phoneNumber having count(*) > 1
);

-- Departments with at least two employees
select distinct department from employee
where department in (
select department
from employee
group by department having count(*) > 1);

-- Departments with no supervisors
select department
from departments_details 
left join employee_supervisors 
on departments_details.head = employee_supervisors.supervisor 
where head is null;

				











 




       


