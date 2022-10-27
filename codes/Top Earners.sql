SELECT MAX(salary*months), COUNT(employee_id)
FROM employee
WHERE salary*months IN (SELECT(MAX(salary*months)) FROM employee);
