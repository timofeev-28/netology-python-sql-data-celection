INSERT INTO genres (name_genre)
VALUES ('Pop'), ('Rock'), ('Jazz');

INSERT INTO musicians (name_musician)
VALUES ('Michael Jackson'), ('Rihanna'), ('Metallica'), ('Karen Souza'), ('Diana Krall');

INSERT INTO genre_musician (genre_id, musician_id)
VALUES (1, 1), (1, 2), (2, 3), (3, 4), (3, 5);

INSERT INTO albums (title_album, release_date)
VALUES ('Bad', DATE '1987-08-25'), ('Dangerous', DATE '1920-11-26'), ('Loud', DATE '2019-01-01'), ('Master of Puppets', DATE '1986-02-12'), ('Hotel Souza', DATE '2019-01-01'), ('The Look of Love', DATE '2020-01-01');

INSERT INTO musician_album (musician_id, album_id)
VALUES (1, 1), (1, 2), (2, 3), (3, 4), (4, 5), (5, 6);

INSERT INTO tracks (title_track, length_track, album_id)
VALUES ('Bad', 247, 1), ('Dirty Diana', 281, 1), ('Jam', 339, 2), ('S&M', 243, 3), ('Fading', 199, 3), ('Battery', 288, 4), ('My Paris', 226, 5), ('Dindi', 239, 5), ('Cry Me a River', 305, 6), ('Love Letters', 295, 6);

INSERT INTO collections (title_collection, release_date)
VALUES ('Best-1', DATE '2018-01-07'), ('Best-2', DATE '2020-12-24'), ('Pop-Rock', DATE '2026-02-09'), ('Best Jazz', DATE '2020-02-09');

INSERT INTO track_collection (track_id, collection_id)
VALUES (1, 1), (3, 1), (5, 1), (2, 2), (3, 2), (4, 2), (1, 3), (2, 3), (5, 3), (2, 3), (6, 3), (7, 4), (8, 4), (9, 4), (10, 4);
