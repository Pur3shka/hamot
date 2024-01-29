insert into genres (name)
values 
('Jazz'),
('Rock'),
('Pop'),
('House');

insert into artists (name)
values 
('Steve Lacy'),
('Linkin Park'),
('Ariana Grande'),
('David Guetta');

insert into artist_genres (genre_id, artist_id)
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4);

insert into albums (title, year)
values 
('The Lo-Fis', '2020'),
('Meteora', '2003'),
('yes,and?', '2024'),
('Listen', '2014');

insert into album_artists (album_id, artist_id)
values 
(1, 1),
(2, 2),
(3, 3),
(4, 4);

insert into tracks (title, duration, album_id)
values 
('atomic vomit', 130, 1),
('When I', 203, 1),
('Somewhere I Belong', 409, 2),
('Lying friom You', 255, 2), 
('yes,and?', 255, 3),
('Dangerous', 323, 4),
('What I Did for Love', 327, 4);

insert into collections (collection_name, collection_year)
values
('The best of Steve Lacy', 2020),
('The best of Linkin Park', 2003),
('The best of Ariana Grande', 2024),
('The best of David Guetta', 2014);

insert into track_collections (track_id, collection_id)
values
(1,1),
(2,3),
(3,5),
(4,6);