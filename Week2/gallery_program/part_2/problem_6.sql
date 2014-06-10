-- Return the name of the gallery with the most images. This requires a nested select.

-- SELECT 	winning_gallery.name,  winning_gallery.id,
-- 	(SELECT COUNT(images.id) 
-- 		FROM galleries JOIN images as img_count
-- 		ON galleries.id = img_count.gallery_id) As counted_galleries 
-- 	FROM galleries AS winning_gallery;


SELECT COUNT(images.id),
	(SELECT winning_gallery.name, winning_gallery.id 
		FROM galleries JOIN images AS winning_gallery 
		ON winning_gallery.id = images.galleries_id) 

 FROM images;


-- SELECT Ord.SalesOrderID, Ord.OrderDate,
--     (SELECT MAX(OrdDet.UnitPrice)
--      FROM AdventureWorks.Sales.SalesOrderDetail AS OrdDet
--      WHERE Ord.SalesOrderID = OrdDet.SalesOrderID) AS MaxUnitPrice
-- FROM AdventureWorks2008R2.Sales.SalesOrderHeader AS Ord