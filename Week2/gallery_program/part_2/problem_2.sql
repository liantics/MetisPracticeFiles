-- Return the oldest image for each gallery.
SELECT galleries.name, MIN(images.id) 
FROM galleries JOIN images 
ON galleries.id = images.gallery_id GROUP BY galleries.id ORDER BY galleries.id;

