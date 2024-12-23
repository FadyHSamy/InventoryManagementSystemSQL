CREATE PROCEDURE [ims].[DeleteProductInventory](@ProductId INT)
AS
BEGIN
	DELETE ims.Inventory
	WHERE ProductId = @ProductId
END