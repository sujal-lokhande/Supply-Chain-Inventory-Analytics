- Data Cleaning and Validation
-- Project: Supply Chain & Inventory Analytics
-- Table: supply_chain_abt

-- 1. Check total records
SELECT COUNT(*) AS total_records
FROM supply_chain_abt;

-- 2. Check missing values in important columns
SELECT
    COUNT(*) FILTER (WHERE date IS NULL) AS missing_date,
    COUNT(*) FILTER (WHERE sku_id IS NULL) AS missing_sku,
    COUNT(*) FILTER (WHERE warehouse_id IS NULL) AS missing_warehouse,
    COUNT(*) FILTER (WHERE supplier_id IS NULL) AS missing_supplier,
    COUNT(*) FILTER (WHERE region IS NULL) AS missing_region
FROM supply_chain_abt;

-- 3. Check duplicate records
SELECT
    date,
    sku_id,
    warehouse_id,
    supplier_id,
    COUNT(*) AS duplicate_count
FROM supply_chain_abt
GROUP BY date, sku_id, warehouse_id, supplier_id
HAVING COUNT(*) > 1;

-- 4. Check negative values
SELECT *
FROM supply_chain_abt
WHERE units_sold < 0
   OR inventory_level < 0
   OR supplier_lead_time_days < 0
   OR order_quantity < 0
   OR unit_cost < 0
   OR unit_price < 0;
