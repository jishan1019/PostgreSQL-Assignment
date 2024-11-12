-- Query 1:
INSERT INTO students(student_name, age, email, frontend_mark, backend_mark, status)
    VALUES ('Mehedi', 23, 'mehedi@gmail.com', 50, 47, NULL)


--Explain Query 1 purpose and functionality:



-- Query 2: 
SELECT student_name FROM enrollment
    JOIN students USING(student_id)
        JOIN courses USING(course_id)
            WHERE course_name = 'Next.js';

--Explain Query 2 purpose and functionality:



SELECT * FROM students