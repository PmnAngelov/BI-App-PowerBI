CREATE VIEW Dashboard.DimProducts AS
(
SELECT
	StockItems.StockItemID,
	StockItems.StockItemName AS [Product Name],
	StockGroups.StockGroupName AS [Product Category],
	StockItems.SupplierID,
	Suppliers.SupplierName,
	StockItems.UnitPrice,
	StockItemHoldings.QuantityOnHand AS [Quantity On Hand]
FROM Warehouse.StockItems

INNER JOIN Warehouse.StockItemHoldings AS StockItemHoldings
ON StockItemHoldings.StockItemID = StockItems.StockItemID

INNER JOIN Warehouse.StockItemStockGroups AS StockItemStockGroups
ON StockItemStockGroups.StockItemID = StockItems.StockItemID

INNER JOIN Warehouse.StockGroups AS StockGroups
ON StockGroups.StockGroupID = StockItemStockGroups.StockGroupID

INNER JOIN Purchasing.Suppliers AS Suppliers
ON Suppliers.SupplierID = StockItems.SupplierID
);
