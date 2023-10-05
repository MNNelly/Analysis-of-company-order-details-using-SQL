SELECT TOP (1000) [PurchaseOrderID]
      ,[RevisionNumber]
      ,[Status]
      ,[EmployeeID]
      ,[VendorID]
      ,[ShipMethodID]
      ,[OrderDate]
      ,[ShipDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

SELECT SUM(TotalDue)AS "Totalsales"
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

SELECT VendorID, SUM(TotalDue)AS "Totalsales"
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
GROUP BY VendorID
ORDER BY Totalsales DESC

SELECT ShipMethodID,COUNT(ShipMethodID) AS TotalOrders
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
GROUP BY ShipMethodID
ORDER BY ShipMethodID



SELECT VendorID, COUNT(VendorID) AS Orders
FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
GROUP BY VendorID
ORDER BY Orders DESC