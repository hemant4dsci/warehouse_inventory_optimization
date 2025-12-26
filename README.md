# Data-Driven Warehouse Inventory Optimization & Stock Movement Analysis

Efficient inventory management is a critical factor in maintaining smooth warehouse operations while reducing costs and improving service. This project focuses on analyzing and optimizing inventory performance using real-world style datasets, advanced analytics, and business intelligence tools.

The dataset used in this project simulates a complete warehouse ecosystem, including inventory records, sales transactions, purchase orders, supplier performance metrics, warehouse zones, bin locations, batch numbers, and expiry information. With this data, the project aims to uncover inefficiencies, identify risks, and propose data-driven solutions to improve inventory health.

This project replicates real industry challenges, aligns with supply chain and operations analytics roles, and demonstrates the ability to connect domain expertise with data-driven decision-making. 

## Table of Contents

+ [Project Objective](#project-objective)
+ [Project Files](#project-files)
+ [Tools and Technologies](#tools-and-technologies)
+ [Setup & Installation](#setup--installation)
+ [Project Workflow](#project-workflow)
+ [Analysis Summary & Key Insights](#analysis-summary--key-insights)
+ [Project Structure](#project-structure)
+ [Contributing](#contributing)
+ [License](#license)
+ [Author](#author)

## Project Objective

The objective of this project is to enhance warehouse decision-making by leveraging data analytics to uncover inefficiencies, reduce operational risks, and optimize inventory performance. The project focuses on delivering clear, actionable insights that support strategic and day-to-day operations. Key objectives include:

-   Identify stock risks such as slow-moving, dead, and near-expiry items.

-   Reduce stockouts by analyzing demand patterns and monitoring reorder levels.

-   Optimize inventory levels using data-driven reorder strategies.

-   Improve supplier performance through lead-time and reliability analysis.

-   Lower operational and holding costs by eliminating excess stock and improving inventory rotation.

-   Strengthen warehouse efficiency by evaluating zone utilization and storage distribution.

-   Enable informed decision-making through interactive dashboards and analytical reporting.

These objectives collectively demonstrate the impact of analytics in improving warehouse operations and ensuring better control over inventory health.

## Project Files

### 1️⃣ Data Files

#### `data/raw/` — Source Data
Contains **four raw datasets** used as inputs for the project:

- **inventory.csv** – Product details, stock levels, and inventory status  
- **sales.csv** – Historical sales transactions for demand analysis  
- **purchase_orders.csv** – Purchase order and replenishment records  
- **suppliers.csv** – Supplier information and delivery performance data  

#### `data/interim/`
- Cleaned and transformed datasets generated during preprocessing

#### `data/final/`
- Final, analysis-ready datasets used for modeling and reporting


### 2️⃣ Database Setup (PostgreSQL)

- **Database Name:** `warehouse_inventory`  
- **Database Engine:** PostgreSQL  

- **sql_queries/db_ddl_dml.sql**  
  SQL script used to:
  - Create database tables and relationships (DDL)
  - Load and manipulate inventory, sales, supplier, and purchase order data (DML)
  - Prepare structured data for analytics and reporting

> Raw CSV files are ingested into PostgreSQL and structured for efficient querying.


### 3️⃣ Data Analysis (Python)

- **notebooks/inventory_analytics.ipynb**  
  Jupyter Notebook used for:
  - Connecting to the PostgreSQL database
  - Data cleaning and preprocessing
  - Exploratory Data Analysis (EDA)
  - Inventory KPIs (stock levels, turnover rate, stockout risk)
  - Supplier performance and demand trend analysis


### 4️⃣ Reporting & Visualization

- **reports/dashboards/warehouse_inventory_optimization.pbix**  
  Interactive Power BI dashboard built using processed data

- **reports/figures/**  
  Exported charts and visualizations used in reports and documentation

- **reports/summary_reports/warehouse_inventory_report.pdf**  
  Final summarized report with insights and business recommendations

## Tools & Technologies

| Category | Tools / Technologies | Purpose |
|--------|---------------------|---------|
| Programming Language | Python | Data analysis, preprocessing, and KPI calculations |
| Python Libraries | Pandas | Data cleaning, transformation, and analysis |
|  | NumPy | Numerical computations |
|  | Matplotlib | Data visualization |
|  | Seaborn | Statistical and exploratory visualizations |
|  | SQLAlchemy | Database connection and ORM support |
|  | psycopg2 | PostgreSQL database adapter for Python |
| Database | PostgreSQL | Setup and management of warehouse inventory database |
| Business Intelligence | Power BI | Interactive dashboards and reporting |
| Development Environment | Jupyter Notebook | Interactive data exploration and analysis |
| Version Control | Git | Source code version control |
|  | GitHub | Project hosting and collaboration |


## Setup & Installation


## Project Workflow


## Analysis Summary & Key Insights


## Project Structure
```bash
data_analytics_project_template/
│
├─ data/                    # Data storage
│  ├─ final/                  # Final datasets (ready for reporting/ML models)
│  ├─ interim/                # Intermediate processed files
│  └─ raw/                    # Raw untouched datasets
│
├─ logs/                    # Logging outputs (script runs, ETL jobs, errors)
│
├─ notebooks/               # Jupyter notebooks (exploration, EDA, visualization)
│
├─ reports/                 # Deliverables for stakeholders
│  ├─ dashboards/             # Power BI/Tableau/Looker dashboards
│  ├─ figures/                # Saved plots, charts, images
│  └─ summary_reports/        # Business-style reports (PDF/Word/Markdown)
│
├─ scripts/                 # Reusable Python scripts
│
├─ sql_scripts/             # All reusable SQL queries
│
├─ .gitignore               # Ignore data, logs, venv, credentials
├─ LICENCE                  # Open-source license
├─ README.md                # Project overview + instructions
└─ requirements.txt         # Python dependencies
```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.


## License

This project is licensed under the MIT License.


## Author

Hi, I'm Hemant, a data enthusiast passionate about turning raw data into meaningful business insights.

**Let’s connect:**
- LinkedIn : [LinkedIn Profile](https://www.linkedin.com/in/hemant1491/)  
- Email : hemant4dsci@gmail.com
