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

4.1. Region-wise Inventory Ranking using CTE and Window Function
A Common Table Expression (CTE) was used to calculate total inventory for each region. The RANK() window function ranked regions based on inventory levels, helping identify regions with higher inventory concentration.

4.2. Supplier Lead Time Ranking using Window Function
The AVG() function calculated the average lead time for each supplier. The RANK() window function ranked suppliers in ascending order of average lead time, helping identify suppliers with better delivery performance.

 4.3. Inventory Turnover Analysis
Inventory turnover was calculated using total units sold divided by average inventory. This analysis helps evaluate inventory movement and operational efficiency.

 4.4. Stockout Analysis
Stockout flags were aggregated region-wise to identify areas with higher stockout frequency and potential supply chain risks.

 4.5. Inventory Value Analysis
Inventory value was calculated using inventory level multiplied by unit cost and aggregated warehouse-wise to identify inventory investment concentration.

5. R Modeling Insights & Validation

R was used to perform Exploratory Data Analysis (EDA) and build a predictive regression model for inventory analysis.

Model Evaluation Results

Evaluation Metric| Value
R-squared (R²)| 0.00464
RMSE| 133.1772

Interpretation of Model Results

R-squared (0.00464):

The R-squared value of 0.00464 indicates that the model explains approximately 0.464% of the variation in inventory levels. This suggests that the model has very limited explanatory power.

Root Mean Squared Error (RMSE = 133.1772):

The RMSE value of 133.1772 indicates that the model's prediction errors have a typical magnitude of approximately 133 inventory units, interpreted in the context of the target variable. A lower RMSE would indicate better predictive performance.

Model Performance

The regression model demonstrates weak predictive performance. The low R-squared value indicates that the selected input variables are not sufficient to explain inventory variation effectively.

Therefore, the model should not be considered highly accurate or reliable for operational inventory forecasting in its current form.

Limitations

- The selected variables may not adequately explain inventory fluctuations.
- Additional relevant features may be required.
- Model performance may improve through feature engineering and model comparison.
- Further validation is required before using predictions for business decisions.

Conclusion

The R analysis successfully demonstrates the application of regression modeling and model evaluation techniques. However, the results indicate limited predictive capability. The analysis provides a foundation for further improvement through additional data and better feature selection.

6. Dashboard Preview

The Power BI dashboard presents supply chain and inventory analytics through three pages.

Dashboard Pages

1. Supply Chain Inventory Analytics
2. Warehouse & Supplier Analysis
3. Regional & Cost Analysis

### Dashboard Page 1: Supply Chain Inventory Analytics

![Dashboard Page 1](assets/dashboard_previews/Screenshot%202026-11-15%20160809.png)

### Dashboard Page 2: Warehouse & Supplier Analysis

![Dashboard Page 2](assets/dashboard_previews/Screenshot%202026-11-15%20160859.png)

### Dashboard Page 3: Regional & Cost Analysis

![Dashboard Page 3](assets/dashboard_previews/Screenshot%202026-11-15%20160927.png)
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

### Dataset

The original supply chain dataset used in this project is available in the data folder.

- [Original Dataset (CSV)](data/supply_chain_dataset1.csv)
- [Data Dictionary](data/data_dictionary.md)

  
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
