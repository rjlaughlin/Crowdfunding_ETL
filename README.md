# Crowdfunding ETL Project

## Team Members
- Riley Laughlin
- Cameron Magor

## Overview
This project involves building an Extract, Transform, Load (ETL) pipeline to process crowdfunding data. Using Python tools such as `pandas`, dictionary methods, and regular expressions, the data is extracted, transformed, and loaded into a PostgreSQL database.

## Features

### Part 1 - DataFrame Creation
#### Category and Subcategory DataFrames
##### Objectives
- Extract and transform data to create `Category` and `Subcategory` DataFrames.
- Export the DataFrames to `category.csv` and `subcategory.csv`.

##### Key Steps
1. Extract data from the `crowdfunding.xlsx` file.
2. Split the "category & subcategory" column into separate "category" and "subcategory" columns.
3. Create the `Category` DataFrame:
   - Add a `category_id` column with sequential IDs (e.g., `cat1`, `cat2`, ...).
   - Retain a `category` column with unique category names.
   - Export the DataFrame to `category.csv`.
4. Create the `Subcategory` DataFrame:
   - Add a `subcategory_id` column with sequential IDs (e.g., `subcat1`, `subcat2`, ...).
   - Retain a `subcategory` column with unique subcategory names.
   - Export the DataFrame to `subcategory.csv`.

#### Campaign DataFrame
##### Objectives
- Extract and transform campaign data into a structured DataFrame.
- Export the DataFrame to `campaign.csv`.

##### Key Steps
1. Extract data from the `crowdfunding.xlsx` file.
2. Create the `Campaign` DataFrame with the following edits:
   - Change column names `blurb`, `launched_at`, and `deadline` to `description`, `launched_date`, and `end_date`.
   - Convert `goal` and `pledged` columns to float data type.
   - Convert `launched_date` and `end_date` columns to datetime format from UTC timestamps.
   - Map `category_id` and `subcategory_id` from the `Category` and `Subcategory` DataFrames.
   - Remove certain columns for clean final dataframe.
3. Export the DataFrame to `campaign.csv`.

#### Contacts DataFrame
##### Objectives
- Extract and clean contact data from an Excel file.
- Export the DataFrame to `contacts.csv`.

##### Key Steps
1. Extract data from the `contacts.xlsx` file.
2. Transform the data using the options below:
   - **Option 1**: Use Python dictionary methods:
   - **Option 2**: Use regular expressions:
3. Split the `name` column into `first_name` and `last_name`.
4. Ensure the `contact_id` is an integer.
5. Export the DataFrame to `contacts.csv`.


### Part 2 - Database Creation
#### Crowdfunding Database
##### Objectives
- Create a PostgreSQL database with properly defined table schemas.
- Import CSV data into the database and verify successful loading.

##### Key Steps
1. Inspect the four CSV files and sketch an ERD using QuickDBD.
2. Create a database schema with primary keys, foreign keys, and constraints:
   - Save the schema as `crowdfunding_db_schema.sql`.
3. Create a new PostgreSQL database, `crowdfunding_db`, and execute the schema script.
4. Import each CSV file into the corresponding table.
5. Verify data accuracy by running `SELECT *` queries for each table.

## Deliverables
- **CSV Files**: 
  - `category.csv`
  - `subcategory.csv`
  - `campaign.csv`
  - `contacts.csv`
- **Database Schema**: `crowdfunding_db_schema.sql`
- **Database Queries**: `queries.sql`
- **Entity Relationship Diagram (ERD)**: Visual representation of the database structure.

## Setup and Dependencies
Before running the project, ensure the following Python libraries are installed:

```python
# Dependencies
import pandas as pd
import numpy as np
import json
import re
```

In addition, please ensure **PostgreSQL** or another SQL database management system is installed.

## Running the Analysis
1. Clone the repository and navigate to the project directory.
- Install dependencies as shown above.
- Run the Jupyter Notebook to generate the DataFrames and outputs.

2. Set up the database:
- Create a new database in the preferred SQL client.
- Run the table schema file `crowdfunding_db_schema.sql` to create the tables.
- Import the CSV data into the respective tables.

3. Run SQL queries:
- Open the SQL query file `queries.sql` in the SQL client.
- Execute the queries to show the data from the tables.