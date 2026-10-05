-- Средний балл по ученикам
SELECT s.name, ROUND(AVG(g.grade),2) AS avg_grade
FROM students s JOIN grades g ON s.id=g.student_id
GROUP BY s.id ORDER BY avg_grade DESC;

-- Средний балл по предметам
SELECT sub.name, ROUND(AVG(g.grade),2)
FROM subjects sub JOIN grades g ON sub.id=g.subject_id
GROUP BY sub.id;

-- Отличники (все 5)
SELECT s.name FROM students s
JOIN grades g ON s.id=g.student_id
GROUP BY s.id HAVING MIN(g.grade) = 5;
