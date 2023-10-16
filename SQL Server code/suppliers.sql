CREATE VIEW Dashboard.DimSuppliers AS
(
SELECT
	Suppliers.SupplierID AS SupplierID,
	Suppliers.SupplierName AS [Supplier Name],
	SupplierCategories.SupplierCategoryName AS [Supplier Category],
	Cities.CityName AS City,
	StateProvinces.StateProvinceName AS [State]
FROM Purchasing.Suppliers AS Suppliers

INNER JOIN Purchasing.SupplierCategories AS SupplierCategories
ON SupplierCategories.SupplierCategoryID = Suppliers.SupplierCategoryID

INNER JOIN Application.Cities AS Cities
ON Cities.CityID = Suppliers.DeliveryCityID

INNER JOIN Application.StateProvinces AS StateProvinces
ON Cities.StateProvinceID = StateProvinces.StateProvinceID
