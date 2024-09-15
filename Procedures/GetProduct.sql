CREATE PROCEDURE [ims].[GetProduct](@ProductId INT)
AS
BEGIN
	SELECT [ProductName]
		,[ProductDescription]
		,[ProductPrice]
		,[CategoryId]
	FROM [ims].[Products]
	WHERE [ProductId] = @ProductId
END
