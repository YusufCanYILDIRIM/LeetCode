# Write your MySQL query statement below
SELECT email AS Email
FROM Person
-- 1. E-postaları aynı olanları bir araya (gruba) topla
GROUP BY email
-- 2. Bu gruplardan satır sayısı (count) 1'den büyük olanları seç
HAVING COUNT(email) > 1;