SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[Order Details Extended] AS
SELECT "OrderDetails".OrderID, "OrderDetails".ProductID, Products.ProductName, 
	"OrderDetails".UnitPrice, "OrderDetails".Quantity, "OrderDetails".Discount, 
	(CONVERT(money,("OrderDetails".UnitPrice*Quantity*(1-Discount)/100))*100) AS ExtendedPrice
FROM Products INNER JOIN "OrderDetails" ON Products.ProductID = "OrderDetails".ProductID
--ORDER BY "Order Details".OrderID
GO
