# Sprocket Central Pty Ltd Customer Analysis
![Bike](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/a169deb0-d0f2-4077-ac55-21dfcc5fe24d)

## Introduction
Sprocket Central Pty Ltd specialises in high-quality bikes and accessible cycling accessories to riders.
Their marketing team is looking to boost business by analysing their existing customer dataset to determine customer trends 
and behaviour.

To aid our analysis, we have been given three datasets to work with;  
* Customer Demographic
* Customer Address
* Transaction data

See datasets [here](https://docs.google.com/spreadsheets/d/1Yc3_HLV6ngxpU2UJlEg1dEltssffiK3n/edit?usp=sharing&ouid=110296809348029147838&rtpof=true&sd=true) 

## Problem Statement
The client has given us an additional data set **NewCustomerlist** containing 1000 new customers and asked us to recommend 
which of the 1000 new customers should be targeted to drive most value for the organization. Our task has been divided into 
three;  
* Data quality assessment
* Data insights
* Data visualization

## Tools Used
* Microsoft Excel
* Power Query
* Tableau

## Skills Demonstrated
* Data cleaning
* Data transforming
* Data manipulation
* Excel function
* Tableau manipulation
* Tableau Dashboard

## Data Quality Assessment
The datasets needed to be cleaned and prepared for data modeling and data intrepretation.
### Data Cleaning Process - Customer Demographics
![CustomerDemographics](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/5ca2d824-fc05-41ab-896b-3fcde0484182)
* Rows with 'U' `gender` and 'Y' `deceased_indicator` were deleted
* Row with incosistent `DOB` was deleted
* `default` column was deleted
* `past_3_yeas_bike_related_purchases` column was deleted
* Null values in `job title` were replaced with **n/a**
* Records in `gender` column were replaced 'M' &rarr; 'Male', 'F' &rarr; 'Female'
* New `age` column created from `DOB` column using `=NOW - F3`  and populating the entire field
* Column data types were formatted accordingly

### Data Cleaning Process - Customer Address
![CustomerAddress](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/3d013612-4e7c-4853-8276-609fd52888d3)
* Records in `state` column were replaced with abbreviation for consistency e.g. 'New South Wales' &rarr; 'NSW'
* Column data types were formatted accordingly

### Data Cleaning Process - Transactions
![Transaction data](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/d4e12d65-c736-45b1-b8aa-cd488822f676)
* Null records from `brand` column were deleted

See report [here](https://github.com/Josiahgare/Data-Analyst-Portfolio/KPMG-Virtual-Internship/main/Data-Quality-Assessment)

### Data Modeling
![Cleaned_Customerlist](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/fc6151ad-78cf-4e14-8b15-3d9fae874a9c)
After cleaning the datasets, `CustomerDemographics` and `CustomerAddress` were **merged** using **Power Query** and customers without address were
removed from the `Cleaned_CustomerList`.  
Our `Cleaned_CustomerList` now resembles the `NewCustomerList` given to us earlier.

## Data Insight and Presentation
Important questions to keep in mind during analysis.
* What are the trends in the underlying data?
* Which customer segment has the highest customer value?
* What do you propose should be Sprocket Central Pty Ltd ’s marketing and growth strategy?
*	What additional external datasets may be useful to obtain greater insights into customer preferences and propensity to purchase the products?

See presentation [here](https://github.com/Josiahgare/Data-Analyst-Portfolio/KPMG-Virtual-Internship/main/Data-Insights)

## Data Visualization
See static dashboard [here](https://github.com/Josiahgare/Data-Analyst-Portfolio/KPMG-Virtual-Internship/main/Data-Visualization.png)  
Check out the interactive dashboard below  
See [Tableau Dashboard](https://public.tableau.com/app/profile/josiah.oghenegare/viz/SprocketCentralCustomerAnalysis_16849214653940/SummaryDashboard)

## Recommendation
* New South Wales should be the focus of next year’s campaign
* The `Mountain` product line with zero `product line` purchases could be stopped from production
* The top three brands `Solex, WeareA2B, Giant Bicycles` and the `standard` product line should receive more marketing attention
* Implement a good referral bonus system
