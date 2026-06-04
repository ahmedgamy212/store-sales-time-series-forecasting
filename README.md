# 🏪 Store Sales Time Series Forecasting & Data-Driven Decision Making

## 📌 Business Goal
Empower the retail business to **make decisions based on data** by analyzing store sales performance, promotional effectiveness, and external market factors across multiple dimensions.

---

## 🛠️ Tech Stack
| Layer | Tool | Purpose |
|-------|------|---------|
| Data Cleaning & Validation | Python (Pandas) | Recheck files, clean data, correct data types for downstream analysis |
| Data Analysis | SQL | Build holiday table, calculate growth, measure effects of promotions/holidays/oil |
| Visualization & Reporting | Power BI | Interactive dashboards with multi-level filters for strategic decision-making |

---

## 🔧 Data Preparation (Python)
- **Rechecked each file** to ensure data integrity and consistency
- **Cleaned** raw datasets by handling inconsistencies and invalid entries
- **Edited data types** to ensure compatibility for SQL querying and time series analysis

---

## 📊 SQL Analysis

### 🗓️ Custom Holiday Table
Built a **dedicated holiday table** to accurately measure the impact of holidays on sales performance.

### 📈 Business Queries

| Query | Business Purpose |
|-------|----------------|
| **Monthly Growth** | Track month-over-month sales evolution to identify trends and seasonality |
| **Top 10 Category Selling** | Discover which product categories drive the most revenue |
| **Top Selling Cities in Each State** | Identify geographic hotspots at the city level within each state |
| **Top Stores by Total Sales in Each City** | Pinpoint the best-performing stores for benchmarking and replication |
| **Total Store Sales** | Overall revenue aggregation for executive reporting |
| **Average Sales per Store by Year** | Yearly performance benchmarking across the store network |
| **Promotions' Effect on Category** | Measure whether promotions genuinely lift sales per product category |
| **Holidays Effect** | Quantify sales uplift (or decline) during holiday periods |
| **Oil Price Effect** | Analyze correlation between oil prices and consumer spending patterns |

---

## 📈 Power BI Dashboard

### 🎛️ Interactive Filters
- **City** — Drill down to specific urban markets
- **State** — Compare performance across regions
- **Family (Category)** — Filter by product family/category

### 📊 Visualizations
- **Sales by Month** — Time series trend for seasonal pattern identification
- **Promotions' Effect on Category** — Visual proof of promotional ROI per category
- **Top 10 Category** — Ranking of highest revenue-generating product families
- **Average Sales by Holiday Status** — Side-by-side comparison: Holiday vs. Non-Holiday performance
- **Top City per State** — Geographic leaderboard to guide expansion and resource allocation

---

## 🔍 Key Insights *(Fill with your actual numbers)*

- 📈 **Monthly Growth:** Peak sales month was **[Month]**, with **[X%]** growth compared to the previous month
- 🏆 **Top Category:** **[Category Name]** is the highest-selling category, generating **[X%]** of total revenue
- 🌍 **Top City:** **[City Name]** in **[State Name]** leads sales among all cities
- 🏪 **Top Store:** Store **[Store ID]** in **[City Name]** is the top performer in its city
- 🎁 **Holiday Effect:** Sales during holidays were **[X%] higher/lower** than non-holiday periods
- ⛽ **Oil Price Impact:** A **[X]** change in oil prices correlated with a **[Y%]** shift in sales
- 🏷️ **Promotion ROI:** Promotions boosted **[Category Name]** sales by **[X%]**, while **[Another Category]** showed minimal uplift

---

## 💡 Data-Driven Recommendations

1. **🎯 Double Down on Top Categories:** Allocate more shelf space and marketing budget to the **Top 10 Categories** — especially the top 3
2. **🏪 Replicate Top Store Model:** Study what makes the **Top Stores** successful and apply those operational practices to underperforming locations
3. **🎁 Optimize Holiday Strategy:** Increase inventory and staffing **[X] weeks** before peak holiday months identified in the analysis
4. **⛽ Monitor Oil Price Trends:** When oil prices rise, consider targeted promotions on essential categories to maintain foot traffic
5. **🏷️ Smart Promotions:** Focus promotional spend on categories that show **genuine uplift**; reduce or eliminate promos on categories with weak response
6. **🌍 Geographic Expansion:** Prioritize opening new stores in states where the **Top City** has proven high demand but limited store presence

---

## 🚀 How to Run This Project

1. **Clone the repository**
2. **Data Validation & Cleaning:** Run the Python script to recheck, clean, and correct data types across all source files
3. **Holiday Table Setup:** Execute the SQL script to build the custom holiday reference table
4. **Business Analysis:** Run the SQL queries in sequence to generate metrics on growth, promotions, holidays, and oil effects
5. **Power BI Reporting:** Open the `.pbix` file, connect to the SQL database, and use the **City + State + Family** filters to explore insights interactively

---

## 📸 Dashboard Preview
*(Add screenshots of your Power BI dashboard here — especially the Sales by Month trend, Promotions Effect visual, and Top City per State map)*

---

## 📬 Contact
- LinkedIn: [https://www.linkedin.com/in/ahmed-gamal-67046739a?]
- Email: [Ahmedgamy442@gmail.com]
- GitHub: [github.com/ahmedgamy212](https://github.com/ahmedgamy212)
