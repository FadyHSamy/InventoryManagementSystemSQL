CREATE PROCEDURE [ims].[GetProducts]
AS
BEGIN
	SELECT [ProductId]
		,[ProductName]
		,[ProductDescription]
		,[ProductPrice]
		,[CategoryId]
	FROM [ims].[Products]
END