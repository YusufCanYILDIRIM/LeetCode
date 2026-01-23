# Write your MySQL query statement below
SELECT 
    p.firstName, 
    p.lastName, 
    a.city, 
    a.state
FROM Person p
/* 1. LEFT JOIN kullanarak 'Person' tablosundaki herkesi koruyoruz. 
   'Address' tablosunda karşılığı olmayan kişiler silinmez, sadece 
   adres bilgileri NULL olarak gelir.
*/
LEFT JOIN Address a 
/* 2. İki tabloyu ortak olan 'personId' sütunu üzerinden birbirine bağlıyoruz.
*/
ON p.personId = a.personId;