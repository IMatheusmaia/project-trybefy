SELECT
  artists.name AS 'Artista'
FROM artists
  INNER JOIN artists_followers
    ON artists.id = artists_followers.artist_id
GROUP BY artists.name
HAVING COUNT(artists_followers.user_id) > 0
ORDER BY COUNT(artists_followers.user_id) DESC
LIMIT 1;