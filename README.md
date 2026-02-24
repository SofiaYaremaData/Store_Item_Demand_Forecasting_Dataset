# Retail Inventory Optimization & Demand Forecasting

# 🎯 Business Objective
The goal of this project is to analyze 5 years of sales data to optimize inventory levels across 10 retail stores. As a trainee analyst, I aim to identify patterns that help reduce storage costs and prevent stockouts (out-of-stock events) through data-driven insights.


🛠️ Tool-Based Methodology
I used a multi-tool approach to handle the data lifecycle:

- SQL: Data extraction and structured cleaning. I ensured data integrity by identifying missing timestamps and aggregating daily_sales into broader categories.
- Python (Pandas & Statsmodels): Deep Exploratory Data Analysis (EDA). I performed time-series decomposition to isolate trend and seasonality.
- Excel: Used for financial modeling and quick validation. I built a cost-benefit logic to estimate the monetary impact of reducing overstock.
- Power BI / Tableau: Creation of an interactive Executive Dashboard to visualize 6-month forecasts and store performance.

📈 Project Workflow
1. Data Cleaning (SQL): Handled the store_item_demand dataset to ensure item_id and store_id consistency.

3. Exploratory Analysis (Python): Identified that sales peak during weekends and have a strong yearly seasonality in July.

4. Sales Forecasting: Developed a model to predict demand for the next 6 months.

5. Financial Impact: Calculated potential savings by comparing current stock levels vs. optimized forecast levels.

🔑 Key Variables (English Nomenclature)
sales_qty: Number of units sold.

forecast_demand: Predicted units for future periods.

inventory_cost: Cost of holding unsold items.

stockout_risk: Probability of running out of items.





## 🔍 Phase 1: Data Audit & Insights (SQL)

### Data Quality Check
Before the analysis, a **Data Integrity Audit** was performed using **MS SQL Server**. 
* **Nulls & Duplicates:** Verified 0 null values and 0 duplicate records across `date`, `store_id`, and `item_id`.
* **Consistency:** Confirmed that all 10 stores have continuous daily records for the 5-year period.
* [View Data Audit Script](./sql/01_data_audit.sql)

### Key Business Discovery: Seasonal Demand Patterns
Through monthly aggregations in SQL, I identified a consistent **demand spike every March**.
* **Insight:** Sales in March are approximately **43.6% higher** than the monthly average (**2.22M**), representing the most critical peak for the supply chain.
* **Trend:** Confirmed a **4.18% Year-over-Year (YoY) growth** when comparing March 2023 vs. March 2022, indicating steady business expansion.
* **Business Impact:** This 44% surge requires a specialized inventory strategy. Stock levels must be reinforced by late February to prevent **stockouts** and capture this high-revenue window.
* [View Aggregation Script](./sql/02_monthly_aggregations.sql)





