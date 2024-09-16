CREATE PROCEDURE [ims].[AddingProduct] (
	@ProductName NVARCHAR(MAX)
	,@ProductDescription NVARCHAR(MAX)
	,@ProductPrice MONEY
	,@CategoryId INT
	,@ProductId INT OUTPUT
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

	SET @ProductId = SCOPE_IDENTITY();
END
