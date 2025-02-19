SELECT 
  artists.name AS 'Artista',
  albums.title AS 'Álbum',
  songs.title AS 'Música'
  FROM artists
    INNER JOIN albums
      ON artists.id = albums.artist_id
    INNER JOIN songs
      ON albums.id = songs.album_id
  WHERE artists.name NOT LIKE '%The Beatles%'
  ORDER BY artists.name ASC, albums.title ASC, songs.title ASC;