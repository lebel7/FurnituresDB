SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ViewInvoice]
AS
SELECT     dbo.Orders.ShipName, dbo.Orders.ShipAddress, dbo.Orders.ShipCity, dbo.Orders.ShipPostalCode, dbo.Orders.ShipCountry, dbo.Orders.UserName, 
                      dbo.ExtUserDetails.CompanyName AS CustomerName, dbo.ExtUserDetails.Address, dbo.ExtUserDetails.City, dbo.ExtUserDetails.PostalCode, 
                      dbo.ExtUserDetails.Country, dbo.Employees.Firstname + ' ' + dbo.Employees.Surname AS Salesperson, dbo.Orders.OrderID, dbo.Orders.OrderDate, 
                      dbo.Orders.ShippedDate, dbo.Shippers.CompanyName AS ShipperName, dbo.OrderDetails.ProductID, dbo.Products.ProductName, dbo.OrderDetails.UnitPrice, 
                      dbo.OrderDetails.Quantity, dbo.OrderDetails.Discount, CONVERT(money, (dbo.OrderDetails.UnitPrice * dbo.OrderDetails.Quantity) * (1 - dbo.OrderDetails.Discount) 
                      / 100) * 100 AS ExtendedPrice, dbo.Orders.Freight
FROM         dbo.aspnet_Users INNER JOIN
                      dbo.Employees ON dbo.aspnet_Users.UserId = dbo.Employees.UserId INNER JOIN
                      dbo.ExtUserDetails ON dbo.aspnet_Users.UserId = dbo.ExtUserDetails.UserId INNER JOIN
                      dbo.Orders ON dbo.aspnet_Users.UserName = dbo.Orders.UserName AND dbo.Employees.EmployeeID = dbo.Orders.EmployeeID INNER JOIN
                      dbo.OrderDetails ON dbo.Orders.OrderID = dbo.OrderDetails.OrderID INNER JOIN
                      dbo.Payments ON dbo.Orders.PaymentID = dbo.Payments.PaymentID INNER JOIN
                      dbo.Products ON dbo.OrderDetails.ProductID = dbo.Products.ProductID INNER JOIN
                      dbo.Shippers ON dbo.Orders.ShipVia = dbo.Shippers.ShipperID
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "aspnet_Users"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Employees"
            Begin Extent = 
               Top = 6
               Left = 255
               Bottom = 125
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExtUserDetails"
            Begin Extent = 
               Top = 6
               Left = 458
               Bottom = 125
               Right = 619
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "OrderDetails"
            Begin Extent = 
               Top = 6
               Left = 657
               Bottom = 125
               Right = 817
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Orders"
            Begin Extent = 
               Top = 6
               Left = 855
               Bottom = 125
               Right = 1018
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Payments"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 126
               Left = 236
               Bottom = 245
               Right = 399
            End
            Dis', 'SCHEMA', N'dbo', 'VIEW', N'ViewInvoice', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'playFlags = 280
            TopColumn = 0
         End
         Begin Table = "Shippers"
            Begin Extent = 
               Top = 126
               Left = 437
               Bottom = 230
               Right = 598
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'ViewInvoice', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'ViewInvoice', NULL, NULL
GO
