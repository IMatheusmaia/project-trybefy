SELECT
  artists.name AS 'Artista',
  COUNT(played.song_id) AS 'Quantidade de músicas reproduzidas'
FROM artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
  INNER JOIN songs
    ON albums.id = songs.album_id
  INNER JOIN history_play_songs AS played
    ON songs.id = played.song_id
GROUP BY artists.name
HAVING COUNT(played.song_id) > 10;