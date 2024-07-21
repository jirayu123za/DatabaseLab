WITH student_course_enrollment(student_id, student_name, course_id, course_title)
as (
	SELECT s.id, s.name, c.id, c.title
	FROM students s 
	JOIN enrollments e ON s.id = e.student_id
	JOIN courses c ON e.course_id = c.id
)

DELETE FROM enrollments
WHERE course_id IN (
    SELECT course_id
    FROM student_course_enrollment
    WHERE course_title = 'Fundamental Database System'
)
-- then 
SELECT * FROM student_course_enrollment; 