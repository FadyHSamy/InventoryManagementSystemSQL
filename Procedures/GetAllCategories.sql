CREATE PROCEDURE [ims].[GetAllCategories]
AS
BEGIN
  SELECT  [CategoryId]
         ,[CategoryName]
  FROM [ims].[Category]
END
