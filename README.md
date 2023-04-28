# Business Intelligence App using Power BI

BI app, made in PowerBI, for creating different bussines analyses by modeling and integrating the gathered data using SQL, performing statistical analysis with DAX to gather new insights and visualizing them by creating interactive dashboards that can be used to monitor KPIs. The use of the application is supposed to lead to better business decisions based on data and statistics.
<br/><br/>
<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Overview.png" />
</p>
The data is imported into PowerBI from an SQL Server database - "WideWorldImporters". In order to optimize the data experience, I created a new schema and five data views, since not only are views good for defining a table without using extra storage, but they also accelerate data analysis and can provide the data extra security.
<br/>

<br/>

```
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
```

After the new data schema and views, such as the one above, are created in SQL Server, the data is imported and the relationships established. After loading, the design is as follows:

<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/DataModel.PNG" width="800" height="500" />
</p>

The above data model is of type snowflake schema, as one of the dimensions is split into an additional dimensional table. Using Data Analysis Expressions (DAX), the data making up the Revenue column was calculated by multiplying each quantity sold by the respective unit price.

<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Intro.PNG" />
</p>


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/MainDashboard.PNG" />
</p>

The dashboard provides insights into key performance indicators (KPIs) and can be filtered and drilled down to provide more detailed information and help identify trends and patterns in the data.

<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Sales.PNG" />
</p>


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Stock.PNG" />
</p>

## Conclusion

Revenue is currently trending up, resulting in a 18.94% increase between 2013 and 2015. The company's revenue jumped from $46,928,592 to $55,817,887 during its steepest incline between 2013 and 2015. The customer - Mauno Laurila accounted for 20.48% of the company's revenue. The salesperson Lily Code in Year 2015 contributed with 3.83% for the company's revenue. At 181.188, the product - Black and orange fragile despatch tape 48mmx75m had the highest quantity sold and was 36.10% higher than the 3 kg Courier post bag (White) 300x190x95mm, which had the lowest quantity sold at 133.125.


The average price of the company’s products is $45.51. The most expensive product category being “Toys” with average price of $124.04 and the cheapest category being “Mugs” with an average price of $13.00. The best-selling product category is “Packaging Materials” and the least sold products are from category “USB Novelties”. The company’s main supplier by far, supplying 74.76% of all products, is “Fabrikam, Inc.”, followed by “Litware, Inc.” making for 25.18% of all supplies.

Overall, this project demonstrates the power of Power BI for creating business intelligence apps that can provide insights and help stakeholders make informed decisions. It shows how data can be transformed into actionable insights that can drive business success.
