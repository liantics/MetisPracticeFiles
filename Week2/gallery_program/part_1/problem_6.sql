-- Return all animal images with more than 3 likes.
SELECT id, name FROM images WHERE gallery_id IN (1,2) AND likes > 3;