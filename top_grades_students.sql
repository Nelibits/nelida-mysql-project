USE university_project;

SELECT students_name AS Student, MAX(grades_value) AS "Top grade value"
FROM students s
INNER JOIN grades g
ON g.grades_students_id = s.students_id
GROUP BY s.students_name;