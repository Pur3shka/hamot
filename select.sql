Задание 2 

select title, duration from tracks
order by duration desc
limit 1

select title , round(duration/60, 1) as minutes
from tracks t 
where duration /60 >=350

select title
from collections c 
where year >=2018 and year <=2020

select name 
from artists  
where name not like '% %'

select title 
from tracks t 
where title like '%my%' or title like '%мой%'

Задание 3

SELECT genres.name, COUNT(artist_genres.artist_id) AS artist_count FROM genres
LEFT JOIN artist_genres ON genres.id = artist_genres.genre_id
LEFT JOIN artists ON artist_genres.artist_id = artists.id
GROUP BY genres.name;


SELECT COUNT(tracks.id) AS track_count FROM tracks
LEFT JOIN albums ON tracks.album_id = albums.id
WHERE albums.year BETWEEN 2019 AND 2020;


SELECT albums.title, AVG(tracks.duration) AS avg_duration FROM albums
LEFT JOIN tracks ON albums.id = tracks.album_id
GROUP BY albums.title;


SELECT artists.name FROM artists
WHERE artists.name NOT IN (
    SELECT artists.name FROM artists
    JOIN album_artists ON artists.id = album_artists.artist_id
    JOIN albums ON album_artists.album_id = albums.id
    WHERE albums.year = 2020
    )

SELECT collections.title FROM collections
LEFT JOIN collection_tracks ON collections.id = collection_tracks.collection_id
LEFT JOIN tracks ON collection_tracks.track_id = tracks.id
LEFT JOIN albums ON tracks.album_id = albums.id
LEFT JOIN album_artists ON albums.id = album_artists.album_id
LEFT JOIN artists ON album_artists.artist_id = artists.id
WHERE artists.name = 'Ariana Grande';