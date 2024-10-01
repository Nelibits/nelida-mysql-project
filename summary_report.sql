USE university_project;

SELECT c.courses_name AS Course, 
FROM courses c
LEFT JOIN (
	SELECT AVG(g.grades_value), g_grades_courses_id
    FROM grades g
    GROUP BY g_grades_courses_id
) AS "Average Grade"
ON g.grades_courses_id = courses_id
GROUP BY c.courses_name;