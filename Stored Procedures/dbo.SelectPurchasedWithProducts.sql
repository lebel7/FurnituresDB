SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SelectPurchasedWithProducts] @ProductID int AS
 SELECT TOP 5 dbo.[OrderDetails].ProductID, Products.ProductName,
 SUM(OrderDetails.Quantity) as TotalNum FROM OrderDetails INNER JOIN Products
  ON OrderDetails.ProductID = Products.ProductID WHERE OrderID IN 
  ( /* This inner query should retrieve all orders that have contained the productID */
   SELECT DISTINCT OrderID FROM OrderDetails WHERE ProductID = @ProductID ) AND OrderDetails.ProductID != @ProductID
    GROUP BY OrderDetails.ProductID, Products.ProductName ORDER BY TotalNum DESC 
    RETURN
GO
