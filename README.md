# Movies Database
## ISYS3412 Practical Database Concepts - Assignment 4

## Description
This is a repo containing all files necessary to prepare the data and create the database for my `ISYS3412 Practical Database Concepts - Assignment 4`. It uses python to wrangle the data into the required format and uses the python `sqlite3` library to perform database schema creation and data insertion.

## Schema
MOVIES(<ins>movie_id</ins>, title, overview, release_date, vote_average, runtime, budget, revenue)\
COMPANIES(<ins>company_id</ins>, company)\
MOVIECOMPANIES(<ins>movie_id</ins>\*, <ins>company_id</ins>\*)\
COUNTRIES(<ins>country_id</ins>, country)\
MOVIECOUNTRIES(<ins>movie_id</ins>\*, <ins>company_id</ins>\*)\
LANGUAGES(<ins>language_id</ins>, language)\
MOVIELANGUAGES(<ins>movie_id</ins>\*, <ins>language_id</ins>\*)\
GENRES(<ins>movie_id</ins>\*, <ins>genre</ins>)\
ACTORS(<ins>actor_id</ins>, actor)\
CHARACTERS(<ins>movie_id</ins>\*, <ins>actor_id</ins>\*, <ins>character</ins>)\

## Usage
### Prerequisites
* Anaconda 3
* Python 3
* Might need to update `pandas` version to use `explode` function

### Installation
1. Download dataset from https://www.kaggle.com/rounakbanik/the-movies-dataset. 
2. Extract csv files to `input` folder
3. Open and run all cells in data_prep.ipynb
