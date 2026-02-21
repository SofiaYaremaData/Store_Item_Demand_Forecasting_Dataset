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
Step 1: Data Audit - Verified zero nulls/duplicates. 
3. Exploratory Analysis (Python): Identified that sales peak during weekends and have a strong yearly seasonality in July.

4. Sales Forecasting: Developed a model to predict demand for the next 6 months.

5. Financial Impact: Calculated potential savings by comparing current stock levels vs. optimized forecast levels.

🔑 Key Variables (English Nomenclature)
sales_qty: Number of units sold.

forecast_demand: Predicted units for future periods.

inventory_cost: Cost of holding unsold items.

stockout_risk: Probability of running out of items.

