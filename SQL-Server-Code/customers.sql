CREATE VIEW Dashboard.DimCustomers AS
(
SELECT
	Customers.CustomerID AS CustomerID,
	Customers.CustomerName AS [Customer Name],
	CustomerCategories.CustomerCategoryName as [Customer Category],
	Cities.CityName AS City,
	StateProvinces.StateProvinceName AS [State],
	Customers.AccountOpenedDate AS [Account Opened Date],
	YEAR(Customers.AccountOpenedDate) AS [Account Opened Year],
	MONTH(Customers.AccountOpenedDate) AS [Account Opened Month]
FROM Sales.Customers AS Customers

INNER JOIN Sales.CustomerCategories AS CustomerCategories
ON CustomerCategories.CustomerCategoryID = Customers.CustomerCategoryID 

INNER JOIN Application.Cities AS Cities
ON Cities.CityID = Customers.DeliveryCityID

INNER JOIN Application.StateProvinces AS StateProvinces
ON Cities.StateProvinceID = StateProvinces.StateProvinceID

WHERE YEAR(Customers.AccountOpenedDate) < 2016

);
