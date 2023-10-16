CREATE VIEW Dashboard.FactOrders AS
(
SELECT
	Orders.OrderID AS OrderID,

	Orders.CustomerID AS CustomerID,

	Orders.SalespersonPersonID AS SalespersonPersonID,

	OrderLines.StockItemID AS StockItemID,

	OrderLines.Quantity AS Quantity,

	OrderLines.UnitPrice AS [Unit Price],

	Orders.OrderDate AS [Date],

	YEAR(Orders.OrderDate) AS [Year],

	MONTH(Orders.OrderDate) AS Month

FROM Sales.Orders AS Orders

INNER JOIN Sales.OrderLines AS OrderLines

ON Orders.OrderID = OrderLines.OrderID

WHERE YEAR(Orders.OrderDate) < 2016

);
