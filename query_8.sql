--  середній бал, який ставить певний викладач зі своїх предметів
SELECT teachers.fullname, ROUND(AVG(grades.grade),2) AS avg_grade
FROM grades
            LEFT JOIN disciplines ON disciplines.id = grades.discipline_id
            LEFT JOIN teachers ON teachers.id = disciplines.teacher_id
WHERE teachers.id = 1
GROUP BY teachers.fullname;