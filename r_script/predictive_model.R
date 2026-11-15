# Supply Chain & Inventory Analytics
# Predictive Model and Evaluation

# Calculate R-squared
r_squared <- summary(model)$r.squared
r_squared

# Calculate predictions
predictions <- predict(model, supply_chain_abt)

# Calculate RMSE
rmse <- sqrt(mean((supply_chain_abt$inventory_level - predictions)^2))
rmse

# Add predicted inventory level to dataset
supply_chain_abt$predicted_inventory <- predictions

# Export predicted results to CSV file
write.csv(supply_chain_abt, "predicted_inventory_results.csv",
          row.names = FALSE)
