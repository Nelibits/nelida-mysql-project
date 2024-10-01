USE university_project;

SELECT students_id, professors_id, COUNT(DISTINCT(courses_id)) AS num_courses
FROM
students 
INNER JOIN 
grades 
ON grades.grades_students_id = students.students_id
INNER JOIN
courses
ON grades.grades_courses_id = courses_id
INNER JOIN
professors
ON courses_professors_id = professors_id
GROUP BY students_id, professors_id
ORDER BY num_courses DESC
