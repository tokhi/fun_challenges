-- querly will check how many hours a department clocked per day
SELECT DISTINCT ON (day, department_name) department.name as department_name, Date(to_char(timesheet.login, 'YYYY-MM-DD'))  as day, DATE_PART('hour', timesheet.logout::timestamp - timesheet.login::timestamp) as total_hours
from department
join timesheet on timesheet.department_id = department.id
order by day, department_name ASC;
