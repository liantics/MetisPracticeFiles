-- Return the most liked image.
SELECT likes, name FROM images ORDER BY likes DESC LIMIT 1;