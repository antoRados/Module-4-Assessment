-- Extra Credit Problems --

-- Artist Table --

-- 1
SELECT * FROM artist
ORDER BY name DESC LIMIT 10

-- 2
SELECT * FROM artist
WHERE name LIKE 'Black%'

-- 3
SELECT * FROM artist
WHERE name LIKE '%Black%'


-- Employee Table --

-- 1
SELECT MAX(birth_date) FROM employee

-- 2
SELECT MIN(birth_date) FROM employee


-- Invoice Table --

-- 1
SELECT COUNT(total) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ')

-- 2
SELECT AVG(total) FROM invoice


-- More Join Queries --

-- 1
SELECT track_id FROM playlist_track a
JOIN playlist b ON a.playlist_id = b.playlist_id
WHERE name = 'Music'

-- 2
SELECT a.name FROM track a
JOIN playlist_track b ON a.track_id = b.track_id
JOIN playlist c ON b.playlist_id = c.playlist_id
WHERE c.playlist_id = 5

-- 3
SELECT a.name, c.name FROM track a
JOIN playlist_track b ON a.track_id = b.track_id
JOIN playlist c ON b.playlist_id = c.playlist_id

-- 4
SELECT a.name, b.title FROM track a
JOIN album b ON a.album_id = b.album_id
JOIN genre c ON a.genre_id = c.genre_id
WHERE c.name = 'Alternative & Punk'