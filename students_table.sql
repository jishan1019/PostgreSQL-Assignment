-- Active: 1730831490547@@127.0.0.1@5432@university_db
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(100),
    age INTEGER,
    email VARCHAR(100) UNIQUE,
    frontend_mark INTEGER,
    backend_mark INTEGER,
    status VARCHAR(50)
);

INSERT INTO students(student_name, age, email, frontend_mark, backend_mark, status) VALUES
('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


-- SELECT * FROM students