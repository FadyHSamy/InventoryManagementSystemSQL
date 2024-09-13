CREATE PROCEDURE [ims].[GetSpecificCategory](
  @CategoryId INT
)
AS
BEGIN
  SELECT CategoryId,
        CategoryName
  FROM [ims].[Category]
  WHERE [CategoryId] = @CategoryId
END