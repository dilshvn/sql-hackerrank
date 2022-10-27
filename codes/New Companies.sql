SELECT
    e.company_code,
    MIN(c.founder),
    COUNT(DISTINCT e.lead_manager_code),
    COUNT(DISTINCT e.senior_manager_code),
    COUNT(DISTINCT e.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM employee AS e
INNER JOIN company AS c ON e.company_code = c.company_code
GROUP BY e.company_code
ORDER BY e.company_code;