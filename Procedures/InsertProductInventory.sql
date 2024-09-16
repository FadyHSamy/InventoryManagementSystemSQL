CREATE PROCEDURE [ims].[InsertProductInventory] (
	@ProductId INT
	,@StockQuantity INT
	)
AS
BEGIN
	DECLARE @LastUpdated DATETIME2 = (
			SELECT GETDATE()
			);

	INSERT INTO [ims].[Inventory] (
		[ProductId]
		,[StockQuantity]
		,[LastUpdated]
		)
	VALUES (
		@ProductId
		,@StockQuantity
		,@LastUpdated
		)
END
