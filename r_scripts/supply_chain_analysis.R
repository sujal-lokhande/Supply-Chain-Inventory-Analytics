# Exploratory Data Analysis

# Check dataset dimensions
dim(supply_chain_abt)

# View column names
names(supply_chain_abt)

# Check data structure
str(supply_chain_abt)

# View first 6 rows
head(supply_chain_abt)

# Check summary statistics of the dataset
summary(supply_chain_abt)

# Load required libraries for data visualization
library(dplyr)
library(ggplot2)

# Visualize the distribution of demand forecast
ggplot(supply_chain_abt, aes(x = demand_forecast)) +
  geom_histogram(bins = 30, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Demand Forecast",
       x = "Demand Forecast",
       y = "Frequency")

# Visualize the distribution of inventory level
ggplot(supply_chain_abt, aes(x = inventory_level)) +
  geom_histogram(bins = 30, fill = "lightgreen", color = "black") +
  labs(title = "Distribution of Inventory Level",
       x = "Inventory Level",
       y = "Frequency")

# Visualize the distribution of lead time
ggplot(supply_chain_abt, aes(x = warehouse_average_lead_time)) +
  geom_histogram(bins = 30, fill = "orange", color = "black") +
  labs(title = "Distribution of Warehouse Average Lead Time",
       x = "Warehouse Average Lead Time",
       y = "Frequency")
# Visualize the distribution of stockout flag
ggplot(supply_chain_abt, aes(x = factor(stockout_flag))) +
  geom_bar(fill = "purple", color = "black") +
  labs(title = "Distribution of Stockout Flag",
       x = "Stockout Flag (0 = No, 1 = Yes)",
       y = "Frequency")

# Visualize the relationship between demand forecast and inventory level
ggplot(supply_chain_abt, aes(x = demand_forecast, y = inventory_level)) +
  geom_point(color = "blue", alpha = 0.5) +
  labs(title = "Demand Forecast vs Inventory Level",
       x = "Demand Forecast",
       y = "Inventory Level")

# Visualize outliers in inventory level
ggplot(supply_chain_abt, aes(y = inventory_level)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  labs(title = "Outliers in Inventory Level",
       y = "Inventory Level")

# Visualize correlation between numerical features
cor_matrix <- cor(select(supply_chain_abt, where(is.numeric)))

cor_data <- as.data.frame(as.table(cor_matrix))

ggplot(cor_data, aes(x = Var1, y = Var2, fill = Freq)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red") +
  labs(title = "Feature Correlation Heatmap",
       x = "Features",
       y = "Features",
       fill = "Correlation") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))

# Build a Multiple Linear Regression Model
model <- lm(inventory_level ~ demand_forecast + warehouse_average_lead_time,
            data = supply_chain_abt)

# Display model summary
summary(model)

# Evaluate model performance using R-squared and RMSE

# Calculate R-squared
r_squared <- summary(model)$r.squared
r_squared

# Calculate RMSE
predictions <- predict(model, supply_chain_abt)

rmse <- sqrt(mean((supply_chain_abt$inventory_level - predictions)^2))
rmse

# Add predicted inventory level to dataset
supply_chain_abt$predicted_inventory <- predictions

# Export predicted results to CSV file
write.csv(supply_chain_abt, "predicted_inventory_results.csv",
          row.names = FALSE)