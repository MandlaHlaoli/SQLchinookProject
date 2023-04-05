-- List all customers and their invoices, including those who haven't made any purchases and those that have invoices without a corresponding customer
SELECT customers.FirstName, customers.LastName, invoices.InvoiceId, invoices.InvoiceDate, invoices.Total
FROM customers
FULL OUTER JOIN invoices ON customers.CustomerId = invoices.CustomerId;

-- List all albums and their artists, including those that don't have any artists and those artists without any corresponding albums
SELECT albums.Title, artists.Name AS ArtistName
FROM albums
FULL OUTER JOIN artists ON albums.ArtistId = artists.ArtistId;

-- List all tracks and their playlists, including those that aren't in any playlists and those playlists that don't have any corresponding tracks
SELECT tracks.Name, playlists.Name AS PlaylistName
FROM tracks
FULL OUTER JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
FULL OUTER JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId;