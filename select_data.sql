-- Название и продолжительность самого длительного трека
SELECT
title_track,
CONCAT(
    FLOOR(length_track / 60),
    ':',
    LPAD((length_track % 60)::text, 2, '0')
  ) AS length_track
FROM tracks
WHERE length_track = (SELECT MAX(length_track) FROM tracks);

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT
title_track,
CONCAT(
    FLOOR(length_track / 60),
    ':',
    LPAD((length_track % 60)::text, 2, '0')
  ) AS length_track
FROM tracks
WHERE length_track >= 210
ORDER BY length_track;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title_collection, release_date rd
FROM collections
WHERE release_date BETWEEN DATE '2018-01-01' AND DATE '2020-12-31';

-- Исполнители, чьё имя состоит из одного слова
SELECT name_musician
FROM musicians
WHERE name_musician LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my»
SELECT title_track
FROM tracks
WHERE title_track ILIKE '%my%' 
   OR title_track ILIKE '%мой%';
