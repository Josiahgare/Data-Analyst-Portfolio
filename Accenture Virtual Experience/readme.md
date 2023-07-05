# ![Social buzz](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/4a1fb5ca-07b9-4817-a186-2e8c4589909a)  Social Media Analysis

## Introduction
Social Buzz is a fast growing social media company that wants to scale and meet the height of its global demand.
To achieve its goal, Accenture was tasked with the following:

* Recommendation to achieve successful IPO
* Big data management practice
* Analysis to uncover top 5 most popular category

We recieved three datasets from Social Buzz namely; `Content`, `Reactions`, and `ReactionTypes`.

## Problem
* Over 100,000 data everyday
* At least 36.5M data annually
* But how to manage the data to uncover key insight?
* Need for an in depth analysis of data to uncover the top 5 popular category.

## Tool Used
* Excel
* Tableau

## Data Cleaning with Excel
After loading the dataset into the spreadsheet, data exploration began to assess the quality of the data. The [ReactionType dataset](https://drive.google.com/file/d/13fWrhb031pTjLqLHMTohlI0s8WKf5lOU/view?usp=sharing) 
acts as a guide to the other tables.  
![Social buzz reaction types](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/51238642-6f13-499d-9904-da80e5960229)
* `A` column was removed

Next, the [Content dataset](https://drive.google.com/file/d/1UbJ0m15pTthWeitlpoHx369nLkumldC7/view?usp=sharing) was explored  
![Social buzz content](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/0f50dbd7-dc0b-42d0-8c4e-dedd846114a2)
* `A`, `User ID` and `URL` columns were removed as they were unnecessary for analysis requirement
* `Category` column was formatted properly to remove inconsistency in data type
* The `type` column was renamed `Content Type` to reduce ambiguity

Lastly, the [Reactions dataset](https://drive.google.com/file/d/1hKntaHbljEbDHjabpbgQFF563ydw1Dmx/view?usp=sharing) was explored
![Social buzz reactions](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/7d8d1fb8-d4e3-412b-a0ef-d87ea5bbe3bd)
* `A` and `User ID` columns were removed
* The `type` column was renamed `Reaction Type` to reduce ambiguity
* Null values in the `Reaction Type` column were removed

## Data Modeling and Preparation with `VLOOKUP` Function
After exploring and cleaning the data, `VLOOKUP` function was used to model and prepare the data.
`=VLOOKUP=(lookup_value,table_ array, col_index_num, [range_lookup])` where

### Model
`Content(Content ID)` &rarr; `Reactions(Content ID)` = `New dataset`  
`New dataset(Reeaction Type)` &rarr; `ReactionType(Reaction Type)` = [Cleaned_data](https://docs.google.com/spreadsheets/d/1HbwnQP4yLmTbP95pRWEi8XYTMGUKTaKR/edit?usp=sharing&ouid=110296809348029147838&rtpof=true&sd=true)  
![Social buzz merged](https://github.com/Josiahgare/Data-Analyst-Portfolio/assets/117512409/f9f92b37-f604-42f2-a67c-48963b1235f7)


## Data Visualization with Tableau
The cleaned data was loaded into Tableau for proper visualizaion.  
See [static dashboard](https://github.com/Josiahgare/Data-Analyst-Portfolio/blob/main/Accenture%20Virtual%20Experience/Dashboard%201.png)  
Check out my [Interactive dashboard](https://public.tableau.com/views/SocialBuzzAnalysisonContentCategoriesfromJune2020toJune2021/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link) on Tableau public

## Insights
After fully exploring the data, the following insights were drawn;
* The top 5 category are animals, science, healthy eating, technology,  and food.
* Photo got the most engagement regardless of sentiment.
* Mondays are the most engaged days.
* Saturdays are the least engaged days.

## Recommendation
* Promote quality content on the top 5 categories
* promote sport and fun content on saturdays to increase engagements

## Further Analysis
Find out what hours were contents engaged the most?
