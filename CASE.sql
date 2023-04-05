-- List the track names and their durations, rounded to the nearest minute
SELECT Name AS TrackName,
       (CASE WHEN Milliseconds / 1000 % 60 >= 30 THEN (Milliseconds / 1000 / 60) + 1 ELSE Milliseconds / 1000 / 60 END) AS TrackDuration
FROM tracks;


-- List the names of customers who have made at least one purchase and categorize them by the total amount spent
SELECT FirstName || ' ' || LastName AS CustomerName, 
       (CASE 
          WHEN TotalAmount >= 1000 THEN 'Platinum'
          WHEN TotalAmount >= 500 THEN 'Gold'
          WHEN TotalAmount >= 100 THEN 'Silver'
          ELSE 'Bronze'
       END) AS CustomerCategory
FROM (
  SELECT customers.FirstName, customers.LastName, SUM(invoices.Total) AS TotalAmount
  FROM customers
  INNER JOIN invoices ON customers.CustomerId = invoices.CustomerId
  GROUP BY customers.CustomerId
) t
WHERE TotalAmount > 0
ORDER BY TotalAmount DESC;

