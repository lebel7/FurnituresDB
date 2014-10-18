SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ViewAlsoPurchased] AS SELECT TOP (5) dbo.OrderDetails.ProductID, dbo.Products.ProductName,
 SUM(dbo.OrderDetails.Quantity) AS TotalNumPurchased, dbo.OrderDetails.OrderID, dbo.Products.ProductID
  AS Products_ProductID FROM dbo.OrderDetails INNER JOIN dbo.Products ON dbo.OrderDetails.ProductID = dbo.Products.ProductID
   WHERE (dbo.OrderDetails.OrderID IN (SELECT DISTINCT OrderID FROM dbo.OrderDetails AS OrderDetailsSelected))
    GROUP BY dbo.OrderDetails.ProductID, dbo.Products.ProductName, dbo.OrderDetails.OrderID, dbo.Products.ProductID
     ORDER BY TotalNumPurchased DESC
GO
