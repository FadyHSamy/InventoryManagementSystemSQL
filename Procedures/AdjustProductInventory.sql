CREATE PROCEDURE [ims].[AdjustProductInventory] (
	@ProductId INT
	,@StockAdjustment INT -- Positive for additions, negative for reductions
	)
AS
BEGIN
	DECLARE @CurrentStock INT;
	DECLARE @LastUpdated DATETIME2 = (
			SELECT GETDATE()
			);

	SELECT @CurrentStock = StockQuantity
    FROM [ims].[Inventory]
    WHERE ProductId = @ProductId;

	IF @CurrentStock + @StockAdjustment < 0  -- Here i check if there is reductions if it has sufficient stock or not
    BEGIN
        EXEC ims.RaisingError 'Insufficient stock.'
    END

	UPDATE [ims].[Inventory]
    SET StockQuantity = StockQuantity + @StockAdjustment,
        LastUpdated = GETDATE()
    WHERE ProductId = @ProductId;

END
