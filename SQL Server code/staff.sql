CREATE VIEW Dashboard.DimStaff AS

(
SELECT
	People.PersonID AS PersonID,
	People.FullName AS [Full Name]
FROM Application.People AS People

WHERE People.IsSalesperson = 1

);
