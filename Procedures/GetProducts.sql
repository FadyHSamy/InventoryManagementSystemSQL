CREATE PROCEDURE [ims].[GetProducts]
AS
BEGIN
	SELECT [ProductId]
		,[ProductName]
		,[ProductDescription]
		,[ProductPrice]
		,[category].[CategoryId]
		,[category].[CategoryName]
	FROM [ims].[Products] AS products
	INNER JOIN [ims].[Category] AS category ON products.CategoryId = category.CategoryId
END