-- Return all images that have don't have any likes or a description.
SELECT * FROM images WHERE likes IS 0 OR description IS NULL;