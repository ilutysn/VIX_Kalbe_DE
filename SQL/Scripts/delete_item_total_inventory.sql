-- Identify the minimum Item_total value
SELECT MIN(Item_total) AS min_total
FROM Inventory;

-- Delete rows with the minimum Item_total from the Inventory table using a JOIN operation
DELETE Inventory
FROM Inventory
JOIN (SELECT MIN(Item_total) AS min_total FROM Inventory) AS temp
ON Inventory.Item_total = temp.min_total;

