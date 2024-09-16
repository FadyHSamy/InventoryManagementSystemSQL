CREATE PROCEDURE [ims].[GetInventories]
AS
BEGIN
	SELECT [InventoryId]
		,[StockQuantity]
		,[ProductId]
		,[LastUpdated]
	FROM ims.Inventory
END
