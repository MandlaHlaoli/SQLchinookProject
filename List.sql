-- List the names of all playlists that contain at least one track from the "Rock" genre
SELECT DISTINCT playlists.Name AS PlaylistName
FROM playlists
INNER JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
INNER JOIN tracks ON playlist_track.TrackId = tracks.TrackId
INNER JOIN genres ON tracks.GenreId = genres.GenreId
WHERE genres.Name = "Rock";

-- List all playlists and their corresponding tracks, including those tracks without a corresponding playlist
SELECT tracks.Name, playlists.Name AS PlaylistName
FROM playlist_track
RIGHT JOIN tracks ON playlist_track.TrackId = tracks.TrackId
RIGHT JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId;

-- List all artists and their corresponding albums, including those albums without a corresponding artist
SELECT albums.Title, artists.Name AS ArtistName
FROM artists
RIGHT JOIN albums ON artists.ArtistId = albums.ArtistId;