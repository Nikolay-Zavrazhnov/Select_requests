--�������� � ��� ������ ��������, �������� � 2018 ����
SELECT title, release_year FROM album
WHERE release_year = '01/01/2018';

--����� � ����� ������� ������������������(������� 1)
SELECT name, song_time FROM track
ORDER BY song_time DESC
LIMIT 1;

--����� � ����� ������� ������������������(������� 2)
SELECT name, song_time FROM track
WHERE song_time = (SELECT MAX(song_time) FROM Track)
ORDER BY song_time DESC;

--�������� ������, ����������������� ������� �� ����� 3,5 ������
SELECT name FROM track
WHERE song_time >= '03:30:00';

--�������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������
SELECT title FROM music_collection
WHERE release_year BETWEEN '01/01/2018' AND '01/01/2020';

--�����������, ��� ��� ������� �� 1 �����
SELECT name FROM author
WHERE name NOT LIKE '% %';

--�������� ������, ������� �������� ����� "���"/"my"
SELECT name FROM track
WHERE name LIKE '%���%' OR name LIKE '%���%'
OR name LIKE '%my%' OR name LIKE '%My%';