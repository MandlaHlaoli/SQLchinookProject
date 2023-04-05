-- List all invoices and their corresponding customers, including those invoices without a corresponding customer
SELECT customers.FirstName, customers.LastName, invoices.InvoiceId, invoices.InvoiceDate, invoices.Total
FROM invoices
RIGHT JOIN customers ON invoices.CustomerId = customers.CustomerId;