CREATE TABLE [ims].[Inventory]
(
  [InventoryId] INT IDENTITY,
  [StockQuantity] INT,
  [ProductId] INT,
  [LastUpdated] DATETIME2 NOT NULL DEFAULT GETDATE(),
  CONSTRAINT PK_Inventory PRIMARY KEY (ProductId),
  CONSTRAINT FK_Inventory_Product FOREIGN KEY (ProductId) REFERENCES [ims].[Products](ProductId)
)
