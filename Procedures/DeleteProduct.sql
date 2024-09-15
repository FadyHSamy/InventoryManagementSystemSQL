CREATE PROCEDURE [ims].[DeleteProduct] (@ProductId INT)
AS
BEGIN
	DELETE
	FROM [ims].[Products]
	WHERE [ProductId] = @ProductId
END
