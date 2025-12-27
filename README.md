# Data-Driven Warehouse Inventory Optimization & Stock Movement Analysis

Efficient inventory management is a critical factor in maintaining smooth warehouse operations while reducing costs and improving service. This project focuses on analyzing and optimizing inventory performance using real-world style datasets, advanced analytics, and business intelligence tools.

The dataset used in this project simulates a complete warehouse ecosystem, including inventory records, sales transactions, purchase orders, supplier performance metrics, warehouse zones, bin locations, batch numbers, and expiry information. With this data, the project aims to uncover inefficiencies, identify risks, and propose data-driven solutions to improve inventory health.

This project replicates real industry challenges, aligns with supply chain and operations analytics roles, and demonstrates the ability to connect domain expertise with data-driven decision-making. 

# *Table of Contents*

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

# *Project Objective*

The objective of this project is to enhance warehouse decision-making by leveraging data analytics to uncover inefficiencies, reduce operational risks, and optimize inventory performance. The project focuses on delivering clear, actionable insights that support strategic and day-to-day operations. Key objectives include:

-   Identify stock risks such as slow-moving, dead, and near-expiry items.

-   Reduce stockouts by analyzing demand patterns and monitoring reorder levels.

-   Optimize inventory levels using data-driven reorder strategies.

-   Improve supplier performance through lead-time and reliability analysis.

-   Lower operational and holding costs by eliminating excess stock and improving inventory rotation.

-   Strengthen warehouse efficiency by evaluating zone utilization and storage distribution.

-   Enable informed decision-making through interactive dashboards and analytical reporting.

These objectives collectively demonstrate the impact of analytics in improving warehouse operations and ensuring better control over inventory health.

# *Project Files*

### 1️. Data Files
Source Data Contains **four raw datasets** used as inputs for the project:

- `data/raw/inventory.csv` – Product details, stock levels, and inventory status  
- `data/raw/sales.csv` – Historical sales transactions for demand analysis  
- `data/raw/purchase_orders.csv` – Purchase order and replenishment records  
- `data/raw/suppliers.csv` – Supplier information and delivery performance data 

### 2️. Scripts & Notebook

+ `sql_scripts/db_ddl_dml.sql` – SQL script to create database 
+ `notebooks/inventory_analytics.ipynb` – Performs Exploratory Data Analysis

> Raw CSV files are ingested into PostgreSQL and structured for efficient querying.

### 3. Reporting & Visualization

- `reports/dashboards/warehouse_inventory_optimization.pbix` - Power BI dashboard

- `reports/figures` - Exported charts and visualizations used in reports and documentation

- `reports/summary_reports/warehouse_inventory_report.pdf` - Final summarized report with insights and business recommendations

# *Tools & Technologies*

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


# *Setup & Installation*

Follow these steps to set up the project locally:

### 1. Clone the Repository
```bash
git clone https://github.com/hemant4dsci/warehouse_inventory_optimization.git
```

### 2. Create a virtual enviroment
```bash
# For Windows
python -m venv venv
venv\Scripts\activate

# For macOS/Linux
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

# *Project Workflow*

### 1. Data Collection
   - Collected raw data files (`inventory.csv`, `sales.csv`, `purchase_orders.csv`, `suppliers.csv`) and stored them in the `data/raw/` directory.

### 2. Database Setup
   - Created a PostgreSQL database named **`warehouse_inventory`**.
   - Designed database schema and relationships using SQL.
   - Loaded raw CSV data into PostgreSQL tables using the SQL script in `sql_queries/db_ddl_dml.sql`.

### 3. Data Analysis & Processing
   - Performed data analysis using **`notebooks/inventory_analytics.ipynb`**.
   - Connected the PostgreSQL database to Python using **SQLAlchemy** and **psycopg2**.
   - Cleaned, transformed, and analyzed data using **Pandas** and **NumPy**.
   - Conducted exploratory data analysis (EDA) to identify trends, anomalies, and patterns.
   - Calculated key inventory KPIs such as inventory turnover, stock levels, stockout risk, and supplier performance.

### 4. Visualization & Dashboarding
   - Built an interactive Power BI dashboard using **`reports/dashboards/warehouse_inventory_optimization.pbix`**.
   - Created and exported visualizations, which are stored in **`reports/figures/`**.

### 5. Reporting & Insights
   - Compiled findings and insights into a PDF report stored at  
     **`reports/summary_reports/warehouse_inventory_report.pdf`**.
   - Documented business insights, trends, and actionable recommendations.

### 6. Version Control & Documentation
   - Managed source code and project files using **Git** and **GitHub**.
   - Documented project structure, workflow, and tools in the README.

# *Project Structure*

```bash
warehouse_inventory_optimization/
│
├── data/                     # All datasets used in the project
│   ├── raw/                      # Original, unprocessed source data
│   │   ├── inventory.csv         
│   │   ├── sales.csv            
│   │   ├── purchase_orders.csv
│   │   └── suppliers.csv        
│   ├── interim/                  # Cleaned and transformed intermediate datasets
│   └── final/                    # Final datasets used for analysis
│
├── notebooks/                # Jupyter notebooks for analysis
│   └── inventory_analytics.ipynb
│
├── scripts/                  # Python scripts for automation and reusable logic
│
├── sql_queries/              # SQL scripts for database setup and queries
│   └── db_ddl_dml.sql        
│
├── reports/                  # Project outputs and reports
│   ├── dashboards/               # Business intelligence dashboards
│   │   └── warehouse_inventory_optimization.pbix
│   │                             
│   ├── figures/                  # Exported charts and visualizations
│   │   ├── inventory_optimization_dashboard.png
│   │   ├── inventory_turnover_rate.png
│   │   ├── inventory_value_status.png
│   │   ├── product_expiry_status.png
│   │   ├── stockout_risk_product.png
│   │   └── supplier_delivery_performance.png
│   └── summary_reports/          # Final summarized reports
│       └── warehouse_inventory_report.pdf
│                                   
│
├── logs/                     # Execution logs and debugging information
│
├── requirements.txt          # Python dependencies for the project
├── README.md                 # Project documentation
├── LICENCE                   # License information
└── .gitignore                # Files and folders ignored by Git

```

# *Contributing*

Contributions are welcome! Please fork the repository and submit a pull request.


# *License*

This project is licensed under the MIT License.


# *Author*

Hi, I'm Hemant, a data enthusiast passionate about turning raw data into meaningful business insights.

### Let’s connect:
- LinkedIn : [LinkedIn Profile](https://www.linkedin.com/in/hemant1491/)  
- Email : hemant4dsci@gmail.com
