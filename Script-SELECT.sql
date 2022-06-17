--название и год выхода альбомов, вышедших в 2018 году
SELECT title, release_year FROM album
WHERE release_year = '01/01/2018';

--песня с самой длинной продолжительностью(вариант 1)
SELECT name, song_time FROM track
ORDER BY song_time DESC
LIMIT 1;

--песня с самой длинной продолжительностью(вариант 2)
SELECT name, song_time FROM track
WHERE song_time = (SELECT MAX(song_time) FROM Track)
ORDER BY song_time DESC;

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM track
WHERE song_time >= '03:30:00';

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title FROM music_collection
WHERE release_year BETWEEN '01/01/2018' AND '01/01/2020';

--исполнители, чье имя состоит из 1 слова
SELECT name FROM author
WHERE name NOT LIKE '% %';

--название треков, которые содержат слово "мой"/"my"
SELECT name FROM track
WHERE name LIKE '%Мой%' OR name LIKE '%мой%'
OR name LIKE '%my%' OR name LIKE '%My%';