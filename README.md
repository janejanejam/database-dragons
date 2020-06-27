# Project: Extract, Transform, Load (ETL)

## Objective
Gather data on voters and voting conditions by state from 2016 General Election. 

* Extract using API, scrape and tables. 
* Transform by cleaning data and joining by state. 
* Load into SQL database.

Goal is to create database to analyze quality of voting accessibility for each state against voter and state demographics to see if there's any correlations on voter turnout and problems with ballots such as rejected ballots or unreturned mail ballots.

## Data Sources
•	https://www.census.gov/data/developers.html 
* Data: TBD
* Output: API to json

•	https://www.census.gov/data/tables/time-series/demo/voting-and-registration/p20-580.html
* Data: Registered voters/reported voters by state, by gender, race, age
* Output: Excel tables

•	https://elections.mit.edu
* Data: Election performance index by state using indicators such as provisional ballots cast, voting wait time, registrations rejected
* Output: Data scrape into SQL

## Tools and Libraries:
* Python
* Sqlalchemy
* Jupyter
* Pandas
* Requests
* Json
* Beautiful Soup


