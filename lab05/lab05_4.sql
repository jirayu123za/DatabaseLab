WITH above_average_salary_employees(id, name)
AS (
    SELECT id, name 
    FROM employees
    WHERE salary > (SELECT AVG(salary) FROM employees)
)

SELECT *
FROM above_average_salary_employees;
