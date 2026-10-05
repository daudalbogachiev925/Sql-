-- Процент посещаемости
SELECT s.name, ROUND(100.0*SUM(a.present)/COUNT(*),1) AS pct
FROM students s JOIN attendance a ON s.id=a.student_id
GROUP BY s.id ORDER BY pct;

-- Пропуски
SELECT s.name, COUNT(*) FROM attendance a
JOIN students s ON a.student_id=s.id
WHERE a.present=0 GROUP BY s.id;
