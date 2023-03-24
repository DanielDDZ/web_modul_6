-- Знайти середній бал на потоці (по всій таблиці grades)
SELECT ROUND(AVG(grade),2) AS avg_grade
FROM grades;