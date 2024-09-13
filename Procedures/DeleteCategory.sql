CREATE PROCEDURE [ims].[DeleteCategory](
  @CategoryId INT
)
AS
BEGIN
  DELETE FROM [ims].[Category]
  WHERE [CategoryId] = @CategoryId
END