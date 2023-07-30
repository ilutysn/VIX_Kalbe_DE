DELETE FROM Inventory
WHERE Item_total = (SELECT MIN(Item_total) FROM Inventory);