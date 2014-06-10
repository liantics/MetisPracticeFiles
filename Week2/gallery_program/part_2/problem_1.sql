-- Return gallery names that have an image named like "Grumpy".
 
-- Make aliases - define in a select clause
SELECT galleries.name AS gallery_name, images.name AS image_name
FROM galleries JOIN images 
ON galleries.id = images.gallery_id 
WHERE images.name ILIKE '%Grumpy%';
