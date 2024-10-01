USE university_project;

SELECT s.students_name AS Student, c.courses_name AS Course
FROM students s
JOIN grades g
ON g.grades_students_id = s.students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
GROUP BY c.courses_name, s.students_name;