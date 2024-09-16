CREATE TABLE [ims].[Products]
(
  [ProductId] INT IDENTITY,
  [ProductName] NVARCHAR(MAX),
  [ProductDescription] NVARCHAR(MAX),
  [ProductPrice] MONEY,
  [CategoryId] INT,
  CONSTRAINT PK_Products PRIMARY KEY (ProductId),
  CONSTRAINT FK_Products_Category FOREIGN KEY (CategoryId) REFERENCES [ims].[Category](CategoryId)
)

