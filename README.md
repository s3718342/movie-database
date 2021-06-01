# Movies Database
## ISYS3412 Practical Database Concepts - Assignment 4

## Description
This is a repo containing all files necessary to prepare the data and create the database for my `ISYS3412 Practical Database Concepts - Assignment 4`. It uses python to wrangle the data into the required format and uses the python `sqlite3` library to perform database schema creation and data insertion.

## Schema
MOVIE(<ins>movie_id</ins>, title, overview, release_date, vote_average, runtime, budget, revenue)\
COMPANY(<ins>company_id</ins>, company_name)\
MOVIECOMPANY(<ins>movie_id</ins>\*, <ins>company_id</ins>\*)\
COUNTRY(<ins>country_id</ins>, country_name)\
MOVIECOUNTRY(<ins>movie_id</ins>\*, <ins>company_id</ins>\*)\
LANGUAGE(<ins>language_id</ins>, language_name)\
MOVIELANGUAGE(<ins>movie_id</ins>\*, <ins>language_id</ins>\*)\
GENRE(<ins>movie_id</ins>\*, <ins>genre_name</ins>\*)\
ACTOR(<ins>actor_id</ins>, actor_name)\
CHARACTER(<ins>movie_id</ins>\*, <ins>actor_id</ins>\*, <ins>character_name</ins>)\

## Usage
### Prerequisites
* Anaconda 3
* Python 3
* Might need to update `pandas` version to use `explode` function

### Installation
1. Download dataset from https://www.kaggle.com/rounakbanik/the-movies-dataset. 
2. Extract csv files to `input` folder
3. Open and run all cells in data_prep.ipynb
