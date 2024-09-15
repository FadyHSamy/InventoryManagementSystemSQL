CREATE TABLE [ims].[Inventory]
(
  [InventoryId] INT IDENTITY,
  [StockQuantity] INT,
  [ProductId] INT,
  [LastUpdated] DATETIME2 NOT NULL DEFAULT GETDATE(),
  CONSTRAINT PK_Inventory PRIMARY KEY (ProductId),
  FOREIGN KEY (ProductId) REFERENCES [ims].[Products](ProductId)
)
