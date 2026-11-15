Supply Chain & Inventory Analytics

Project Overview

This project focuses on analyzing supply chain and inventory data to identify operational trends, inventory performance, supplier insights, and cost-related patterns.

The project uses PostgreSQL for data management and SQL analysis, R for exploratory data analysis and predictive modeling, and Power BI for interactive dashboard visualization.

Objectives

- Analyze inventory and supply chain performance.
- Identify trends in inventory levels and costs.
- Evaluate warehouse and supplier performance.
- Apply predictive modeling to inventory data.
- Develop an interactive dashboard for business insights.

Tools & Technologies

- PostgreSQL
- SQL
- R Programming
- RStudio
- Power BI
- GitHub

Project Workflow

1. Data preparation and SQL analysis using PostgreSQL.
2. Exploratory Data Analysis using R.
3. Predictive inventory modeling and evaluation.
4. Dashboard development using Power BI.
5. Business insights and recommendations.

Power BI Dashboard

The dashboard contains three pages:

- Supply Chain Inventory Analytics
- Warehouse & Supplier Analysis
- Regional & Cost Analysis

Key Areas of Analysis

- Inventory analysis
- Warehouse performance
- Supplier analysis
- Regional analysis
- Cost analysis
- Predicted inventory results

Business Recommendations

- Monitor inventory levels regularly to support better inventory planning.
- Review supplier performance to improve supply chain efficiency.
- Analyze warehouse performance for better operational decisions.
- Use regional cost insights to support cost management.
- Use inventory predictions to assist future planning.

Repository Structure

- "data/" – Dataset documentation
- "sql/" – SQL scripts
- "r_scripts/" – R scripts for EDA and predictive modeling
- "bi_dashboard/" – Power BI dashboard file

Conclusion

This project demonstrates the application of SQL, R, and Power BI in supply chain and inventory analytics to support data-driven business decision-making.

## 1. Project Title & Executive Summary

### Supply Chain & Inventory Analytics

This project focuses on analyzing supply chain and inventory data to identify operational trends, inventory performance, supplier insights, and cost-related patterns.

The main objective is to use SQL, R, and Power BI to support data-driven decision-making and improve supply chain performance.

## 2. Tech Stack

- SQL: PostgreSQL for data management, data cleaning, joins, and analytical queries.
- R: Exploratory Data Analysis, data visualization, and predictive modeling.
- Power BI: Interactive dashboard development and KPI visualization.

## 3. Data Pipeline & Architecture

The project follows an end-to-end analytical process:

1. Raw supply chain and inventory data is collected.
2. Data is cleaned and transformed using SQL.
3. Analytical queries are performed to identify trends and patterns.
4. R is used for exploratory data analysis and predictive modeling.
5. Power BI is used to create an interactive dashboard.
6. Insights are used to support managerial decisions.

Data Flow:

Raw Data → PostgreSQL → SQL Analysis → R Analysis & Modeling → Power BI Dashboard → Business Insights

## 4. Key SQL Code Highlights

The project uses PostgreSQL queries for:

- Data cleaning and validation.
- Common Table Expressions (CTEs).
- Multi-table joins.
- Window functions.
- Inventory and supply chain performance analysis.

These queries help identify inventory trends, operational performance, and cost-related patterns.

## 5. R Modeling Insights & Validation

R is used for exploratory data analysis, data preprocessing, visualization, and predictive modeling.

The R scripts include:

- Summary statistics and data visualization.
- Data preprocessing.
- Predictive model execution.
- Model diagnostics and evaluation.

The model outputs are intended to support inventory analysis and operational decision-making.

### Predictive Model Evaluation

A Linear Regression model was developed to predict inventory levels.

Model Evaluation Metrics:

- R-Squared (R²): 0.004640724
- Root Mean Square Error (RMSE): 133.1772

Model Interpretation:

The R-Squared value indicates that the model explains a very small proportion of the variation in inventory levels. The RMSE value of 133.1772 represents the average magnitude of prediction errors. The model shows limited predictive performance and may require additional relevant features and improvements for better accuracy.

Validation:
The model was evaluated using R-Squared and RMSE metrics. Predicted inventory values were generated and exported to "predicted_inventory_results.csv" for further analysis.

## 6. Dashboard Preview

The Power BI dashboard contains three pages presenting supply chain and inventory analytics.

Dashboard features include:

- KPI cards for total profit, sales, order quantity, cost, and inventory.
- Regional inventory distribution.
- Demand forecast trends.
- SKU-wise inventory analysis.
- Monthly inventory overview.
- Interactive filters and slicers.

The Power BI dashboard file is available in the bi_dashboard folder.

## 7. Business Insights & Strategic Recommendations

1. Monitor inventory levels regularly to avoid overstocking and stock shortages.
2. Use demand forecasting to improve inventory planning.
3. Identify high-performing and low-performing SKUs for better decision-making.
4. Analyze regional inventory distribution to improve resource allocation.
5. Use supply chain performance indicators to support operational efficiency.
