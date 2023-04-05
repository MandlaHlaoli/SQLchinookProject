-- List the top 5 best-selling tracks and their corresponding album and artist information
SELECT tracks.Name AS TrackName, albums.Title AS AlbumTitle, artists.Name AS ArtistName, SUM(invoice_items.Quantity) AS TotalSales
FROM tracks
INNER JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
INNER JOIN artists ON albums.ArtistId = artists.ArtistId
GROUP BY tracks.TrackId
ORDER BY TotalSales DESC
LIMIT 5;