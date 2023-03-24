-- Середній бал, який певний викладач ставить певному студентові.
SELECT students.fullname, teachers.fullname, ROUND(AVG(grades.grade), 2) AS avg_grade
FROM grades
            LEFT JOIN students ON students.id = grades.student_id
            LEFT JOIN disciplines ON disciplines.id = grades.discipline_id
            LEFT JOIN teachers ON teacher_id = disciplines.teacher_id
WHERE grades.student_id = 1 AND teachers.id = 1
GROUP BY students.fullname;