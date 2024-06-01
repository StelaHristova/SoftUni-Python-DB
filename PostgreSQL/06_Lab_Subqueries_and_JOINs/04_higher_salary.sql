SELECT count(*) FROM employees
WHERE salary >
	(SELECT avg(salary) from employees)
