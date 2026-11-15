Supply Chain & Inventory Analytics

1. Project Title & Executive Summary

Project Overview

Supply Chain & Inventory Analytics is an end-to-end data analytics project focused on analyzing supply chain and inventory data to identify operational trends, inventory performance, supplier insights, and cost-related patterns.

The project aims to support data-driven decision-making by using SQL for data extraction and transformation, R for exploratory data analysis and predictive modeling, and Power BI for interactive dashboard visualization.

The analysis focuses on inventory levels, warehouse performance, supplier performance, regional distribution, costs, and predicted inventory values.

Project Objectives

- Analyze inventory and supply chain performance.
- Identify trends in inventory levels and costs.
- Evaluate warehouse and supplier performance.
- Apply predictive modeling to inventory data.
- Develop an interactive dashboard for business insights.
- Provide strategic recommendations for operational improvement.

2. Tech Stack

Technology| Purpose
PostgreSQL| Database management and data extraction
SQL| Data cleaning, transformation, joins, CTEs, and analytical queries
R Programming| Exploratory Data Analysis and predictive modeling
RStudio| R code execution and analysis
dplyr| Data manipulation and preprocessing
ggplot2| Data visualization
Power BI| Interactive dashboard development
GitHub| Project documentation and version control

3. Data Pipeline & Architecture

The project follows an end-to-end analytics workflow.

Project Workflow

1. Raw supply chain and inventory data is collected.
2. Data is stored and processed using PostgreSQL.
3. SQL queries are used for data cleaning, transformation, joins, aggregations, and analytical processing.
4. The SQL-extracted Analytical Base Table (ABT) is loaded into RStudio.
5. Exploratory Data Analysis is performed using dplyr and ggplot2.
6. A regression model is implemented to predict inventory values.
7. Model evaluation metrics are calculated and predictions are exported.
8. Power BI is used to develop an interactive dashboard.
9. Business insights and strategic recommendations are derived from the analysis.

Data Flow

Raw Data → PostgreSQL → SQL Data Cleaning & Analysis → R EDA & Predictive Modeling → Prediction Output → Power BI Dashboard → Business Insights

4. Key SQL Code Highlights

PostgreSQL was used to prepare and analyze the supply chain analytical dataset.

4.1 Common Table Expressions (CTEs)

CTEs were used to organize complex SQL queries into readable and manageable steps. They help simplify data preparation and analytical processing.

4.2 Joins and Data Transformation

Joins were used to combine relevant supply chain and inventory information into an Analytical Base Table (ABT). Data cleaning and transformations helped prepare the dataset for further analysis.

4.3 Window Functions

Window functions such as ranking and partition-based analysis were used to compare records and analyze performance across different categories.

These SQL techniques support structured data preparation and help generate analysis-ready data for R and Power BI.

5. R Modeling Insights & Validation

R and RStudio were used for Exploratory Data Analysis (EDA), data preprocessing, visualization, predictive modeling, and model evaluation.

5.1 Exploratory Data Analysis

The analysis included:

- Summary statistics to understand the dataset.
- Missing value analysis.
- Duplicate record identification.
- Feature correlation analysis.
- Outlier analysis.
- Data visualization using ggplot2.

5.2 EDA Visualizations

The following visualizations were generated:

- Feature Correlation Heatmap
- Inventory Outliers Boxplot
- Demand Forecast vs Inventory Scatter Plot

These plots help identify relationships between variables, potential outliers, and patterns in inventory data.

5.3 Predictive Modeling

A Multiple Linear Regression model was implemented in R to predict inventory values based on available dataset features.

The model was evaluated using:

- R-squared (R²): 0.00464
- Root Mean Squared Error (RMSE): 133.1772

5.4 Model Interpretation

The obtained R-squared value indicates that the model explains only a very small proportion of the variation in inventory values. Therefore, the current model has limited predictive performance.

The RMSE value indicates the average magnitude of prediction errors in the inventory target's units.

The model results suggest that additional relevant variables, feature engineering, and model improvement may be required to achieve better prediction accuracy.

5.5 Prediction Output

The predicted inventory values were added to the dataset and exported into a CSV file named:

"predicted_inventory_results.csv"

This output can be used for further analysis and dashboard integration.

6. Dashboard Preview

The Power BI dashboard presents supply chain and inventory analytics through three pages.

Dashboard Pages

1. Supply Chain Inventory Analytics
2. Warehouse & Supplier Analysis
3. Regional & Cost Analysis

Dashboard Features

- KPI cards for total profit, sales, order quantity, cost, and inventory.
- Regional inventory distribution.
- Demand forecast trends.
- SKU-wise inventory analysis.
- Monthly inventory overview.
- Interactive filters and slicers.
- Warehouse and supplier performance analysis.
- Predicted inventory results.

The dashboard is designed to provide a clear and interactive view of supply chain performance and support managerial decision-making.

The Power BI dashboard file is available in the "bi_dashboard" folder.

7. Business Insights & Strategic Recommendations

Based on the supply chain and inventory analysis, the following recommendations can support operational decision-making:

1. Inventory Monitoring: Regularly monitor inventory levels to identify overstocking and stock shortages and improve inventory planning.

2. Demand Forecasting: Use demand forecasting insights to support future inventory planning and replenishment decisions.

3. Supplier Performance: Evaluate supplier performance regularly to identify potential delays and improve supply chain reliability.

4. Warehouse Efficiency: Analyze warehouse performance and inventory movement to support better operational resource allocation.

5. Regional & Cost Analysis: Review regional inventory distribution and cost patterns to identify opportunities for improved resource utilization and cost management.

Conclusion

This project demonstrates the application of PostgreSQL, SQL, R, and Power BI in supply chain and inventory analytics.

The project integrates data extraction, exploratory analysis, predictive modeling, model evaluation, and interactive dashboard development into a complete analytical workflow.

The findings and visualizations can support inventory planning, supplier evaluation, warehouse analysis, and data-driven managerial decisions.

Repository Structure

Supply-Chain-Inventory-Analytics/
│
├── data/
│   └── data_dictionary.md
│
├── sql/
│   ├── 01_schema_setup.sql
│   ├── 02_data_cleaning.sql
│   └── 03_analytical_queries.sql
│
├── r_scripts/
│   ├── eda_and_preprocessing.R
│   ├── predictive_model.R
│   └── R analysis plots
│
├── bi_dashboard/
│   └── Power BI dashboard file
│
├── assets/
│   ├── sql_output_screenshots/
│   ├── r_model_plots/
│   └── dashboard_previews/
│
└── README.md

Project Repository

GitHub Repository: "Supply Chain Inventory Analytics" (https://github.com/sujal-lokhande/Supply-Chain-Inventory-Analytics)
