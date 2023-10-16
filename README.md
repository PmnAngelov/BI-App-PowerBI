# Business Intelligence App using Power BI

Business Intelligence Application, made with SQL Server, Python and PowerBI, containing interactive dashboards that can be used to monitor KPIs. The use of the application is supposed to lead to better business decisions based on data and statistics.

<p align="center">
<img align="center" src="https://github.com/PmnAngelov/BI-App-PowerBI/blob/main/Images/Overview.jpg" />
</p>

## Project Overview
#### **1. Data Preprocessing And Loading**
* Understand the business questions that need to be answered
* Query the SQL Server database in order to understand the data
* Create a new schema and data views using SQL
* Import the data from the database into PowerBI

#### **2. Data Modelling**
* Established relationships between the tables
* Aggregate and create new columns, using DAX
* Transform the data types as needed for analysis

#### **2. Dashboard and KPIs**
* Visualize different plots, metrics and design the UI
* Utilised Python for more detailed visualizations
* Configure slicers and other visual details
* Draw conclusions

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

Python script used for creating the WordCloud with the most common product names found in the dataset:

```
# Prolog - Auto Generated #
import os, uuid, matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot
import pandas
import sys
sys.tracebacklimit = 0

os.chdir(u'C:/Users/user/PythonEditorWrapper')
dataset = pandas.read_csv('input_df.csv')
matplotlib.pyplot.figure(figsize=(5.55555555555556,4.16666666666667), dpi=72)
matplotlib.pyplot.show = lambda args=None,kw=None: matplotlib.pyplot.savefig(str(uuid.uuid1()))

# Original Script. Please update your script content here and once completed copy below section back to the original editing window #
# The following code to create a dataframe and remove duplicated rows is always executed and acts as a preamble for your script: 
# dataset = pandas.DataFrame(Product Name)
# dataset = dataset.drop_duplicates()

# Paste or type your script code here:
from wordcloud import WordCloud
import matplotlib.pyplot as plt

# Combine all product names into a single string
text = " ".join(product for product in dataset['Product Name'])

# Create a WordCloud object and generate the word cloud
wordcloud = WordCloud(width=800, height=400, background_color='white', max_words=40).generate(text)

# Display the word cloud using Matplotlib
plt.figure(figsize=(16, 8))
plt.imshow(wordcloud, interpolation='bilinear')
plt.axis('off')
plt.title('Products offered', fontsize=36)
plt.show()
```

## Conclusion

Revenue is currently trending up, resulting in a 18.94% increase between 2013 and 2015. The company's revenue jumped from $46,928,592 to $55,817,887 during its steepest incline between 2013 and 2015. The customer - Mauno Laurila accounted for 20.48% of the company's revenue. The salesperson Lily Code in Year 2015 contributed with 3.83% for the company's revenue. At 181.188, the product - Black and orange fragile despatch tape 48mmx75m had the highest quantity sold and was 36.10% higher than the 3 kg Courier post bag (White) 300x190x95mm, which had the lowest quantity sold at 133.125.


The average price of the company’s products is $45.51. The most expensive product category being “Toys” with average price of $124.04 and the cheapest category being “Mugs” with an average price of $13.00. The best-selling product category is “Packaging Materials” and the least sold products are from category “USB Novelties”. The company’s main supplier by far, supplying 74.76% of all products, is “Fabrikam, Inc.”, followed by “Litware, Inc.” making for 25.18% of all supplies.

Overall, this project demonstrates the power of Power BI for creating business intelligence apps that can provide insights and help stakeholders make informed decisions. It shows how data can be transformed into actionable insights that can drive business success.
