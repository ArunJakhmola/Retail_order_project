# Retail Order Analysis Project

## Project Overview

This project involves analyzing retail order data. The analysis includes data cleaning, processing, and deriving insights using Python and SQL. The raw data was obtained from Kaggle, and the detailed steps of the analysis are documented in the following sections.

## Files and Descriptions

### Raw Data

- **Filename**: `orders_raw.csv`
- **Description**: This is the raw data downloaded from Kaggle. You can find the dataset [here](https://www.kaggle.com/datasets/ankitbansal06/retail-orders).

### Data Cleaning and Manipulation

- **Filename**: `Retail orders analysis.ipynb`
- **Description**: This Jupyter Notebook contains the Python code used to clean and preprocess the raw data.
- **Output File**: `orders.csv`
- **Description**: This is the cleaned and processed data saved as a CSV file.

### Data Analysis

- **Filename**: `retail_orders_analysis.sql`
- **Description**: This SQL file contains queries that provide answers to the analysis questions.

## Analysis Questions

The SQL file `retail_orders_analysis.sql` addresses the following analysis questions:

1. Find the top 10 highest revenue-generating products.
2. Find the top 5 highest-selling products in each region by total sales.
3. Find month-over-month growth comparison for 2022 and 2023 sales, e.g., Jan-22 vs Jan-23.
4. For each category, determine which month had the highest sales.
5. Identify the sub-category that had the highest profit growth percentage in 2023 compared to 2022.

## Getting Started

### Prerequisites

- Python 3.x
- Jupyter Notebook
- MySQL

### Instructions

1. **Clone the Repository**

    ```bash
    git clone https://github.com/yourusername/retail-order-analysis.git
    cd retail-order-analysis
    ```

2. **Download Raw Data**

    Download the raw data file from [Kaggle](https://www.kaggle.com/datasets/ankitbansal06/retail-orders) and place it in the project directory.

3. **Data Cleaning and Manipulation**

    Open the Jupyter Notebook `Retail orders analysis.ipynb` and run all the cells to clean and preprocess the raw data. The output will be saved as `orders.csv`.

4. **Data Analysis**

    Import the cleaned data into your MySQL database and run the queries in `retail_orders_analysis.sql` to generate insights from the data.

## Conclusion

This project demonstrates the process of data cleaning, preparation, analysis, and visualization to extract meaningful insights from retail order data. The skills used in this project include data wrangling in Python and data analysis using SQL.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
