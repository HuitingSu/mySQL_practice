-- Practice on Instagram Data

-- 1. Find 5 oldest users
SELECT *
FROM users
ORDER BY created_at 
LIMIT 5;

-- 2. Most popular registration date
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC

-- 3. Inactive users
SELECT
    username,
    image_url
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE image_url IS NULL;

-- 4. Most likes on a single photo
SELECT
    username,
    image_url,
    COUNT(*) AS total
FROM likes
INNER JOIN photos
    ON photos.id = likes.photo_id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photo_id
ORDER BY total DESC
LIMIT 1;

-- 5. Average photos posted
SELECT 
    (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

-- 6. Commonly used hashtags
SELECT
    tag_name,
    COUNT(*) AS total    
FROM photo_tags
INNER JOIN tags 
    ON tags.id = photo_tags.tag_id
GROUP BY photo_tags.tag_id
ORDER BY total DESC
LIMIT 5;

-- 7. Find people liked all photos
SELECT 
    username,
    COUNT(*) AS num_likes
FROM users
INNER JOIN likes
    ON users.id = likes.user_id
GROUP BY users.id
HAVING num_likes = (SELECT COUNT(*) FROM photos);
