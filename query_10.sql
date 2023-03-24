-- Список курсів, які певному студенту читає певний викладач.
SELECT students.fullname, teachers.fullname, disciplines.name
FROM grades
            LEFT JOIN students ON students.id = grades.student_id
            LEFT JOIN disciplines ON disciplines.id = grades.discipline_id
            LEFT JOIN teachers ON teacher_id = disciplines.teacher_id
WHERE grades.student_id = 1 AND teachers.id = 1
GROUP BY disciplines.name;