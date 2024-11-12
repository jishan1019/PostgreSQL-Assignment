-- Query 1:
INSERT INTO students(student_name, age, email, frontend_mark, backend_mark, status)
    VALUES ('Mehedi', 23, 'mehedi@gmail.com', 50, 47, NULL)


--Explain Query 1 purpose and functionality: In there 1st query using for insert data into the students table. It's used to add a new student with given details.




-- Query 2: 
SELECT student_name FROM enrollment
    JOIN students USING(student_id)
        JOIN courses USING(course_id)
            WHERE course_name = 'Next.js';

--Explain Query 2 purpose and functionality: In this query, it's used to find the student name who enrolled in the course named 'Next.js'. It uses JOINs to connect the necessary tables and WHERE clause to filter the result.





-- Query 3: 
UPDATE students SET status = 'Awarded' WHERE student_id = (
    SELECT student_id FROM students
        ORDER BY (frontend_mark + backend_mark) DESC
            LIMIT 1
)

--Explain Query 3 purpose and functionality: In this query, it's used to update the status of the student with the highest total marks (frontend_mark + backend_mark) to 'Awarded'. It uses subquery to find the highest total marks using (frontend_mark + backend_mark) student data.







-- Query 4:
DELETE FROM courses
    WHERE course_id NOT IN (SELECT DISTINCT course_id FROM enrollment);

--Explain Query 4 purpose and functionality: In this query, it's used to delete courses from the courses table that are not enrolled in any student. It uses subquery to find the course_id that are not in the enrollment table.





-- Query 5:
SELECT * FROM students ORDER BY student_id ASC LIMIT 2 OFFSET 2

--Explain Query 5 purpose and functionality: In this query, it's used to retrieve the first 2 students from the students table ordered by student_id in ascending order. It uses OFFSET to skip the first 2 records and LIMIT to retrieve the first 2 records.





-- Query 6:
SELECT course_name, count(student_id) FROM enrollment
    JOIN students USING(student_id)
        JOIN courses USING(course_id)
            GROUP BY course_name

--Explain Query 6 purpose and functionality: In this query, it's used to count the number of students enrolled in each course and retrieve the course name along with the count. It uses GROUP BY clause to group the result by course_name.





-- Query 7:
SELECT ROUND(AVG(age), 2) AS average_age
    FROM students;

--Explain Query 7 purpose and functionality: In this query, it's used to calculate the average age of the students in the students table and retrieve the result rounded to 2 decimal places. It uses AVG and ROUND functions to calculate the average age. 






-- Query 8:
SELECT student_name
    FROM students
        WHERE email LIKE '%example.com%'

--Explain Query 8 purpose and functionality: In this query, it's used to retrieve the student name whose email address contains 'example.com'. It uses LIKE operator to match the email address with the given pattern. 






