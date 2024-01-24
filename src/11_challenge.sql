SELECT 
  title AS 'Album',
  release_year AS 'Ano de lançamento',
  name AS 'Artista'
FROM 
  artists
INNER JOIN
  albums ON albums.artist_id = artists.id
WHERE 
  title LIKE '%you%'
ORDER BY release_year ASC;
