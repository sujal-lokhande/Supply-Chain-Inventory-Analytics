-- Supply Chain & Inventory Analytics
-- Analytical SQL Queries

-- 1. Region-wise inventory analysis
SELECT
    region,
    SUM(inventory_level) AS total_inventory,
    SUM(units_sold) AS total_units_sold
FROM supply_chain_abt
GROUP BY region
ORDER BY total_inventory DESC;


-- 2. Supplier lead time analysis
SELECT
    supplier_id,
    AVG(supplier_lead_time_days) AS avg_lead_time
FROM supply_chain_abt
GROUP BY supplier_id
ORDER BY avg_lead_time DESC;


-- 3. Stockout analysis
SELECT
    region,
    SUM(stockout_flag) AS total_stockouts
FROM supply_chain_abt
GROUP BY region
ORDER BY total_stockouts DESC;


-- 4. Inventory turnover analysis
SELECT
    sku_id,
    SUM(units_sold) AS total_units_sold,
    AVG(sku_average_inventory) AS avg_inventory,
    SUM(units_sold) / NULLIF(AVG(sku_average_inventory), 0)
        AS inventory_turnover
FROM supply_chain_abt
GROUP BY sku_id
ORDER BY inventory_turnover DESC;


-- 5. Inventory value analysis
SELECT
    warehouse_id,
    SUM(inventory_level * unit_cost) AS inventory_value
FROM supply_chain_abt
GROUP BY warehouse_id
ORDER BY inventory_value DESC;
