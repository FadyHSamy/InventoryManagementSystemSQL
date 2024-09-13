CREATE PROCEDURE [ims].[AddingCategory](
  @CategoryName NVARCHAR(MAX)
)
AS
BEGIN
  INSERT INTO [ims].[Category](CategoryName)
  VALUES(@CategoryName)
END