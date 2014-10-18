SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[Order Subtotals] AS
SELECT "OrderDetails".OrderID, Sum(CONVERT(money,("OrderDetails".UnitPrice*Quantity*(1-Discount)/100))*100) AS Subtotal
FROM "OrderDetails"
GROUP BY "OrderDetails".OrderID
GO
