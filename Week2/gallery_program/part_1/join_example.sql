-- *******************************************
-- samples:
-- Get the gallery name and associted images
-- SELECT galleries.name, images.name FROM galleries JOIN images ON galleries.id = images.gallery_id;

-- Get the gallery id and image name when the image name contains the word space
-- SELECT galleries.name, images.name FROM galleries JOIN images ON galleries.id = images.gallery_id WHERE images.name ILIKE '%space%';


-- galleries ID and averave number of likes in that gallery
-- SELECT galleries.id, AVG(images.likes) 
-- FROM galleries JOIN images 
-- ON galleries.id = images.gallery_id GROUP BY galleries.id ORDER BY galleries.id;

-- get the most recent image id with its gallery id
-- since we have no time stamps, but ids are self incrementing
-- the highest id is the id of the newest image
SELECT galleries.id, MAX(images.id) 
FROM galleries JOIN images 
ON galleries.id = images.gallery_id GROUP BY galleries.id;