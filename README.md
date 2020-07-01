# Project: Extract, Transform, Load (ETL)

## Objective
Gather data on state demographics and voting conditions by state from 2016 General Election to see if there’s a correlation between quality of voting condition and state population’s race, economic status, and gender.
 
Extract using API, scrape and tables. Transform by cleaning, filtering and aggregating data. Load into SQL database.

## Tools and Libraries:
* Python
* Sqlalchemy
* Jupyter
* Pandas
* Requests
* Json
* Beautiful Soup
* Census API (ensus 0.8.14)
* PostgreSQL 

## Data Sources
•	https://www.census.gov/data/developers.html 
* Data: Census acs5 demographics data by state - Economic status, gender, race and age.
* Output: API to json using Census wrapper (census 0.8.14) to pandas dataframe to SQL

•	https://www.census.gov/data/tables/time-series/demo/voting-and-registration/p20-580.html
* Data: Registered voters/reported voters by state, by gender, race, age
* Output: Excel .xlsx to pandas dataframe to .csv to SQL 

•	https://elections.mit.edu
* Data: Election performance index by state using indicators such as provisional ballots cast, voting wait time, registrations rejected
* Output: Data scrape into SQL

## Presentation
[ETL Voting Presentation](/blob/master/ETL_ VOTERS AND VOTING CONDITIONS.pdf)




