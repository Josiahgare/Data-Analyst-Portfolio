# Data Cleaning using MS SQL Server
## Introduction
Sprocket Central Pty Ltd, a cycling and bike accesssory company provided these datasets for Market Analysis. They are to be explored, cleaned, and prepared for analysis using SQL.
The datasets are listed below;
* [CustomerAddress](https://docs.google.com/spreadsheets/d/1Cff4L3xMMTV81fiwSbDP2QcmhQ2AfpuP/edit?usp=sharing&ouid=110296809348029147838&rtpof=true&sd=true)
* [CustomerDemographic](https://docs.google.com/spreadsheets/d/148q6XUbBnq7bNoH-x3MztBWlYrgpgEK9/edit?usp=sharing&ouid=110296809348029147838&rtpof=true&sd=true)
* [Transactions](https://docs.google.com/spreadsheets/d/1TsszvsXnZa4_gLA9I9XytwmjwimbnmOa/edit?usp=sharing&ouid=110296809348029147838&rtpof=true&sd=true)

These datasets were extracted, transformed, and loaded (ETL) into Microsoft SQL Server where data cleaning and data preparation exercise where performed.

## Data Cleaning
The data cleaning exercise on `CustomerAddress` dataset can be found [here](https://github.com/Josiahgare/Data-Analyst-Portfolio/blob/main/Data%20Cleaning%20with%20SQL/CustomerAddress.sql)  
The data cleaning exercise on `CustomerDemographic` dataset can be found [here](https://github.com/josiahgare/Data-Analyst-Portfolio/blob/main/Data%20Cleaning%20with%20SQL/CustomerDemographic.sql)  
The data cleaning exercise on `Transactions` dataset can be found [here](https://github.com/josiahgare/Data-Analyst-Portfolio/blob/main/Data%20Cleaning%20with%20SQL/Transactions.sql)  

## Data Preparation
The cleaned `CustomerAddress` and `CustomerDemographic` datasets were merged into a new table `CustomerList` can be found 
[here](https://github.com/josiahgare/Data-Analyst-Portfolio/blob/main/Data%20Cleaning%20with%20SQL/CustomerAddress.sql)  

## Exporting data
After cleaning and preparing the data, the data can be exported to **Tableau** or **Power BI** for data visualization. 
The `CustomerList` and `Transactions` data will be used for the visualizaion.

## Reference
Data source: KPMG Virtual Inernship with Forage
