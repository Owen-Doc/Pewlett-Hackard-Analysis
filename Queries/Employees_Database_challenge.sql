select e.emp_no, e.first_name, e.last_name, titles.title, titles.from_date, titles.to_date
into retirement_titles
from employees as e
inner join titles
	on e.emp_no = titles.emp_no
where (e.birth_date between '1952-01-01' and '1955-12-31')
order by e.emp_no

;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

select count(title), title
into retiring_titles
from unique_titles
group by title
order by count(title) desc
;