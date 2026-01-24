SELECT c.name as Customers
FROM Customers c
LEFT JOIN Orders o
    ON c.id = o.customerid
WHERE o.customerid IS NULL;
