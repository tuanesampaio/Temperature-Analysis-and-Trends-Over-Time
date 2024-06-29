# Statistical Analysis in R

This repository contains R scripts for statistical analysis exploring associations between variables, checking for normal distribution, calculating confidence intervals for the mean variable, and applying the central limit theorem.

## Contents

1. [Overview](#overview)
2. [Dataset](#dataset)
3. [Analysis](#analysis)
4. [Visualization](#visualization)
5. [Statistical Tests](#statistical-tests)
6. [Conclusion](#conclusion)

---

## Overview

This project focuses on statistical analysis using R, demonstrating various techniques for exploring and visualizing relationships between variables, checking assumptions such as normality, and deriving insights through statistical tests.

---

## Dataset

### USArrests Dataset

The first part of the analysis uses the `USArrests` dataset, which contains statistics on arrests per 100,000 residents across different states in the USA in 1973. Variables analyzed include:

- **Murder**: Rate of murders per 100,000 population.
- **Assault**: Rate of assaults per 100,000 population.
- **Rape**: Rate of rapes per 100,000 population.
- **UrbanPop**: Percentage of urban population in each state.

### City Temperature Dataset

The second part of the analysis uses the `city_temperature.csv` dataset, which contains temperature data across various regions and years. Analysis includes:

- Cleaning data by removing NA values and incorrect years.
- Aggregating data to calculate average temperatures by region and year.
- Performing regression analysis to understand temperature trends over the years.

---

## Analysis

### USArrests Analysis

- Exploring associations between variables through scatterplot matrices.
- Checking for normal distribution using histograms and density plots.
- Calculating confidence intervals for the mean variable.
- Applying the central limit theorem to understand the sampling distribution of the mean.

### City Temperature Analysis

- Cleaning data and removing invalid entries.
- Aggregating data to compute average temperatures by region and year.
- Plotting scatter plots and histograms to visualize temperature distributions and trends.
- Performing linear regression analysis to model temperature changes over time.

---

## Visualization

Various visualizations are used to illustrate the findings:

- Scatterplots for exploring variable associations.
- Histograms and density plots to assess data distributions.
- Regression lines to depict trends over time.

---

## Statistical Tests

Statistical tests are conducted to validate findings and assumptions:

- Mean aggregation and comparison across variables.
- Hypothesis testing for normality.
- Linear regression to model and predict temperature trends.

---

## Conclusion

This project serves as a practical guide to statistical analysis in R, showcasing fundamental techniques for exploring datasets, visualizing relationships, and deriving meaningful insights through statistical methods.

---

Feel free to further customize this template to include additional details or specific aspects of your analysis!
