-- List all tracks and their playlists, including those that aren't in any playlists
SELECT tracks.Name, playlists.Name AS PlaylistName
FROM tracks
LEFT JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
LEFT JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId;