SELECT
  songs.title AS 'Título',
  duration_in_seconds AS 'Duração',
  albums.title AS 'Álbum'
FROM songs
  INNER JOIN albums
    ON songs.album_id = albums.id
  WHERE duration_in_seconds >= 300
    AND duration_in_seconds <= 480
ORDER BY duration_in_seconds ASC;