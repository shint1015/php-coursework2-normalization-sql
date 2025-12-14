-- 1) Average and Total Salary
-- Computes overall average and total salary
SELECT AVG(salary) AS average_salary, SUM(salary) AS total_salary
FROM employee;

-- 2) Count Employees in a Department
-- Choose one department code (example: '7H')
SELECT COUNT(empno) AS employee_count
FROM employee
WHERE deptcode = '7H';

-- 3) Name Pattern Search
-- Names starting with 'A' and at least 4 characters long
SELECT empno, name
FROM employee
WHERE name LIKE 'A%'
  AND CHAR_LENGTH(name) >= 4;

-- 4) Employees by Job Title
-- Choose a job title (example: 'Software Engineer')
SELECT empno, name, job, deptcode
FROM employee
WHERE job = 'Software Engineer'
ORDER BY name;

-- 5) Employees Hired Between Two Dates
-- Choose date range and order by name
SELECT empno, name, hiredate, deptcode
FROM employee
WHERE hiredate BETWEEN '2019-01-01' AND '2021-12-31'
ORDER BY name;

-- 6) Min & Max Salary
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employee;

-- 7) Earliest & Latest Hire Date
SELECT MIN(hiredate) AS earliest_hire, MAX(hiredate) AS latest_hire
FROM employee;

-- 8) Employee Count per Department (with department name)
-- Requires JOIN with department
SELECT d.deptcode, d.deptlocation, COUNT(e.empno) AS employee_count
FROM department d
LEFT JOIN employee e ON e.deptcode = d.deptcode
GROUP BY d.deptcode, d.deptlocation
ORDER BY d.deptcode;

-- 9) Average Salary per Department
SELECT d.deptcode, d.deptlocation, AVG(e.salary) AS `Average Salary`
FROM department d
JOIN employee e ON e.deptcode = d.deptcode
GROUP BY d.deptcode, d.deptlocation
ORDER BY d.deptcode;

-- 10) High-Salary Departments (threshold example: 100000)
SELECT d.deptcode, d.deptlocation, SUM(e.salary) AS total_salary
FROM department d
JOIN employee e ON e.deptcode = d.deptcode
GROUP BY d.deptcode, d.deptlocation
HAVING SUM(e.salary) > 100000
ORDER BY total_salary DESC;

-- 11) Employees in a Location
-- Choose a location (example: 'Kyoto')
SELECT e.empno, e.name, e.job, d.deptlocation
FROM employee e
JOIN department d ON d.deptcode = e.deptcode
WHERE d.deptlocation = 'Kyoto'
ORDER BY e.name;

-- 12) Total Salary by Department & Job Title
SELECT d.deptcode, d.deptlocation, e.job, SUM(e.salary) AS total_salary
FROM department d
JOIN employee e ON e.deptcode = d.deptcode
GROUP BY d.deptcode, d.deptlocation, e.job
ORDER BY d.deptcode, e.job;
