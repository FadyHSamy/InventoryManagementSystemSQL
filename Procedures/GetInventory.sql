CREATE PROCEDURE [ims].[GetInventory] (@ProductId INT)
AS
BEGIN
	SELECT [InventoryId]
		,[StockQuantity]
		,[ProductId]
		,[LastUpdated]
	FROM ims.Inventory
	WHERE [ProductId] = @ProductId
END
