USE university_project;

SELECT p.professors_name AS Professor, AVG(g.grades_value) AS "Average Grade"
FROM professors p
JOIN courses c 
ON c.courses_professors_id = p.professors_id
JOIN grades g
ON g.grades_courses_id = c.courses_id
GROUP BY p.professors_name; 