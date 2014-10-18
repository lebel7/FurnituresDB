SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[VewOrderDetails] AS SELECT dbo.Products.ProductID, dbo.Products.ProductNumber,
 dbo.Products.ProductName, dbo.OrderDetails.Quantity, dbo.OrderDetails.UnitPrice, dbo.OrderDetails.OrderID
  FROM dbo.OrderDetails INNER JOIN dbo.Products ON dbo.OrderDetails.ProductID = dbo.Products.ProductID
GO
