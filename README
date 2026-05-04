#  Auto MPG Exploratory Data Analysis

## Table of Contents

- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Research Questions](#research-questions)
- [Workflow](#workflow)
- [Key Findings](#key-findings)
- [SQL Analysis](#sql-analysis)
- [How to Reproduce](#how-to-reproduce)
- [Next Steps](#next-steps)
- [Repository Structure](#repository-structure)
- [Authors](#authors)
- [Source](#source)

---

## Project Overview

This project explores the **Auto MPG dataset** to understand how **car origin influences vehicle characteristics** and how those characteristics evolved between **1970 and 1982**.

The analysis focuses on fuel efficiency, engine configuration, horsepower, vehicle weight, displacement, acceleration, model year, and origin.

---

## Dataset

The dataset is available from the [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/auto+mpg) and was also accessed through KaggleHub during the notebook workflow.

The dataset is not included in this repository. To reproduce the analysis, please download it directly from the original public source listed in the [Source](#source) section.

The original dataset contains:

- **398 rows**
- **9 columns**

### Variables

- `mpg`: Miles per gallon / fuel efficiency
- `cylinders`: Number of engine cylinders
- `displacement`: Engine displacement
- `horsepower`: Engine horsepower
- `weight`: Vehicle weight
- `acceleration`: Acceleration time
- `model_year`: Model year
- `origin`: Car origin
- `car_name`: Car model name

### Data Notes

- The dataset contained **6 missing values in `horsepower`**, originally stored as non-numeric values.
- The `horsepower` column was converted from object type to numeric.
- Missing horsepower values were handled through targeted analysis (imputation) of similar car models.
- A small number of rows was dropped only when no reliable estimate could be made.
- No duplicated rows were identified.

---

## Research Questions

This project was guided by two main questions:

1. **How does car origin relate to vehicle characteristics?**
2. **How does car origin influence the evolution of those characteristics over time?**

The main comparison was between cars from:

- USA
- Europe
- Japan

---

## Workflow

### 1. Data Cleaning

The cleaning process included:

- Loading the Auto MPG dataset
- Standardising column names
- Checking data types
- Checking for missing values and duplicates
- Investigating hidden missing values in `horsepower`
- Converting `horsepower` to numeric
- Handling missing horsepower values
- Reviewing outliers using the IQR method

### 2. Exploratory Data Analysis (EDA)

The EDA was structured into three parts:

- **Univariate analysis**: understanding individual variable distributions
- **Bivariate analysis**: comparing origin against vehicle characteristics such as:
    - `cylinders`
    - `mpg`
    - `horsepower`
    - `weight`
    - `displacement`
    - `acceleration`
    - `model_year`
- **Multivariate analysis**: analysing how characteristics evolved over time by origin

### 3. Visualisation

The analysis used:

- Frequency tables
- Histograms
- Box plots
- Violin plots
- Line plots
- Grouped summary tables

Main libraries used:

- `pandas`
- `numpy`
- `seaborn`
- `matplotlib`

---

## Key Findings

- The dataset is dominated by **USA cars**, followed by Japan and Europe.
- Most cars in the dataset have **4-cylinder engines**.
- USA cars tend to have:
  - lower MPG
  - higher horsepower
  - higher weight
  - larger displacement
  - greater variability
- Japanese cars tend to be the most fuel-efficient.
- European cars generally sit between USA and Japan, but closer to Japan in efficiency.
- Fuel efficiency improved over time across all origins.
- USA cars showed a clear reduction in horsepower, weight, and displacement over time.
- The results suggest a strong trade-off between **power, weight, displacement, and fuel efficiency**.
- Vehicle characteristics should not be interpreted independently; they form a coherent system related to vehicle design.

---

## SQL Analysis

A SQL extension was added to translate EDA insights into targeted queries.

The SQL analysis explores:

- Most common car models by origin
- Most fuel-efficient cars
- Relationship between horsepower and MPG
- Average MPG by model year
- Differences between high-MPG and low-MPG cars
- Power-to-weight ratio by origin
- Power-to-weight ratio and acceleration
- Acceleration trends over time
- MPG and horsepower among 4-cylinder cars
- Displacement and horsepower by cylinder count

See `queries.sql` for the full SQL implementation. You can run those queries in any SQL environment after loading the dataset into a compatible database.

---

## How to Reproduce

### Requirements

- Python 3.x
- Jupyter Notebook

### Libraries

```python
pandas
numpy
seaborn
matplotlib
kagglehub
```

### Steps

1. Clone this repository.
2. Open the project folder.
3. Install the required libraries.
4. Launch Jupyter Notebook.
5. Open `main.ipynb`.
6. Run the notebook cells in order.
7. Open `queries.sql` to review or execute the SQL queries.

---

## Next Steps

Possible future improvements include:

- Analyse **power-to-weight ratio** by origin.
- Study how power-to-weight ratio changed over time.
- Quantify yearly improvements in fuel efficiency.
- Investigate how long Japanese cars remained more fuel-efficient than European cars.
- Apply statistical testing to validate observed trends.
- Extend the project with predictive modelling for MPG.

---

## Repository Structure

```text
├── main.ipynb              # Main notebook with data cleaning and EDA
├── queries.sql             # SQL queries based on EDA insights
├── EDA Auto-MPG.pdf        # Final presentation
├── README.md               # Project documentation
```

---

## Authors

- Bruno Gregório — [GitHub Profile](https://github.com/brunojrg)
- Vítor Ferraz — [GitHub Profile](https://github.com/vitorferraz19)

---

## Source

- Auto MPG dataset: [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/auto+mpg)

- **NOTE**: If you use this dataset, please credit the original dataset providers and cite the source appropriately.