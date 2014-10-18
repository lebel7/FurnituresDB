SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ViewCart] AS
 SELECT TOP (100) PERCENT dbo.Products.ProductID, dbo.Products.ProductNumber,
  dbo.Products.ProductName, dbo.Products.UnitPrice, dbo.Carts.Quantity, dbo.Carts.CartID
 FROM dbo.Products INNER JOIN dbo.Carts 
	ON dbo.Products.ProductID = dbo.Carts.ProductID AND dbo.Products.ProductID = dbo.Carts.ProductID 
	ORDER BY dbo.Products.ProductName, dbo.Products.ProductNumber
GO
