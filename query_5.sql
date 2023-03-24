-- які курси читає певний викладач.
SELECT teachers.fullname, disciplines.name
FROM teachers
         LEFT JOIN disciplines ON disciplines.teacher_id = teacher_id
WHERE teachers.id = 1;