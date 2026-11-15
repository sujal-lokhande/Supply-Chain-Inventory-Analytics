# Supply Chain & Inventory Analytics
# Exploratory Data Analysis and Preprocessing

# Load required libraries
library(dplyr)
library(ggplot2)

# Load dataset
supply_chain_abt <- read.csv("supply_chain_abt.csv")

# View dataset structure
str(supply_chain_abt)

# Summary statistics
summary(supply_chain_abt)

# Check missing values
colSums(is.na(supply_chain_abt))

# Check duplicate records
sum(duplicated(supply_chain_abt))

# Display first few records
head(supply_chain_abt)
