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





-- Query 3: 
UPDATE students SET status = 'Awarded' WHERE student_id = (
    SELECT student_id FROM students
        ORDER BY (frontend_mark + backend_mark) DESC
            LIMIT 1
)

--Explain Query 3 purpose and functionality:







-- Query 4:
DELETE FROM courses
    WHERE course_id NOT IN (SELECT DISTINCT course_id FROM enrollment);

--Explain Query 4 purpose and functionality:





-- Query 5:
SELECT * FROM students ORDER BY student_id ASC LIMIT 2 OFFSET 2

--Explain Query 5 purpose and functionality:





-- Query 6:
SELECT course_name, count(student_id) FROM enrollment
    JOIN students USING(student_id)
        JOIN courses USING(course_id)
            GROUP BY course_name

--Explain Query 6 purpose and functionality:


-- Query 7:
SELECT ROUND(AVG(age), 2) AS average_age
    FROM students;

--Explain Query 7 purpose and functionality:






-- Query 8:
SELECT student_name
    FROM students
        WHERE email LIKE '%example.com%'

--Explain Query 8 purpose and functionality:






