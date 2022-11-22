# Bussines Intelligence Application - PowerBI

BI app, made in PowerBI, for creating different bussines analyses by integrating the gathered data, performing statistical analysis to gather new insights and visualizing it by creating interactive dashboards that can be used to monitor KPIs. The use of the application is supposed to lead to better business decisions based on data and statistics.

<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Overview.png" />
</p>

The use of the application is supposed to lead to better business decisions based on data and statistics, easier viewing and understanding of the data collected by the organization and an overall improved methodology of work related to management and decision-making. 

The developed BI application strives to achieve the above-mentioned results using various methods such as visualizing the data, analyzing the data by performing mathematical operations on data sets to gather new insights and creating interactive dashboards for management that can be used to monitor KPIs.


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/DataModel.PNG" width="800" height="500" />
</p>

The above data model is of type star schema. The data is imported into PowerBI from an SQL Server database - "WideWorldImporters". In order to optimize the data experience, I created a new schema and five data views, since not only are views good for defining a table without using extra storage, but they also accelerate data analysis and can provide the data extra security. Using Data Analysis Expressions (DAX), the data making up the Revenue column was calculated by multiplying each quantity sold by the respective unit price.


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Intro.PNG" />
</p>


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/MainDashboard.PNG" />
</p>


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Sales.PNG" />
</p>


<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Stock.PNG" />
</p>

Revenue is currently trending up, resulting in a 18.94% increase between 2013 and 2015. The company's revenue jumped from $46,928,592 to $55,817,887 during its steepest incline between 2013 and 2015. The customer - Mauno Laurila accounted for 20.48% of the company's revenue. The salesperson Lily Code in Year 2015 contributed with 3.83% for the company's revenue. At 181.188, the product - Black and orange fragile despatch tape 48mmx75m had the highest quantity sold and was 36.10% higher than the 3 kg Courier post bag (White) 300x190x95mm, which had the lowest quantity sold at 133.125.


The average price of the company’s products is $45.51. The most expensive product category being “Toys” with average price of $124.04 and the cheapest category being “Mugs” with an average price of $13.00. The best-selling product category is “Packaging Materials” and the least sold products are from category “USB Novelties”. The company’s main supplier by far, supplying 74.76% of all products, is “Fabrikam, Inc.”, followed by “Litware, Inc.” making for 25.18% of all supplies.
