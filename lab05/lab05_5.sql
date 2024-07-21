WITH employee_with_avg_salary AS (
SELECT e.id, e.salary, e.department, 
(SELECT AVG(salary) 
	FROM employees 
   	WHERE department = e.department) AS avg_salary_by_department
    FROM employees e
)
SELECT id, salary, department, avg_salary_by_department AS "Average by department"
FROM employee_with_avg_salary;
