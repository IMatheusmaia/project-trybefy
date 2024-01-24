SELECT title AS 'Título'
  FROM songs
    WHERE songs.album_id = 1
    ORDER BY songs.title ASC;