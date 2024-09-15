CREATE PROCEDURE [ims].[AddingProduct] (
	@ProductName NVARCHAR(MAX)
	,@ProductDescription NVARCHAR(MAX)
	,@ProductPrice MONEY
	,@CategoryId INT
	)
AS
BEGIN
	INSERT INTO [ims].[Products] (
		[ProductName]
		,[ProductDescription]
		,[ProductPrice]
		,[CategoryId]
		)
	VALUES (
		@ProductName
		,@ProductDescription
		,@ProductPrice
		,@CategoryId
		)
END
