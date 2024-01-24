SELECT
  name AS 'Artista',
  COUNT(albums.artist_id) AS 'Quantidade de álbuns'
  FROM artists
  INNER JOIN albums
      ON albums.artist_id = artists.id
  GROUP BY name
  ORDER BY COUNT(albums.artist_id) DESC, name ASC;