# Customer Segmentation & Behaviour Analysis for Retail Data Using Visualization, PCA, and Clustering

This repository contains an analysis of customer demographics and purchase behaviour aimed at enhancing personalization, customer retention, and targeted marketing strategies. The project leverages segmentation techniques to identify key consumer groups and provide actionable insights.

## Overview

The analysis identifies three primary customer segments:

- **Budget-Spenders**: Price-sensitive consumers with lower income.  
- **High-Rollers**: High-income customers who prioritize premium products.  
- **Comfort-Seekers**: Moderate-income consumers with balanced spending.

Key findings include:

- Strong correlations between income and spending, with in-store shopping as the preferred channel.  
- Factor analysis (PCA) uncovering distinct spending drivers such as organic and luxury products.  
- K-means clustering confirming three well-defined segments, supported by statistical tests highlighting differences in promotional engagement.  
- Budget-Spenders and Comfort-Seekers respond more to promotions, while High-Rollers are largely unaffected.

## Data

The analysis uses both raw and processed datasets:

- **Raw data**: [Raw CSV files](https://github.com/Vipin-P1/retail-customer-segmentation/tree/main/data/raw)  
- **Processed data**: [Cleaned and transformed datasets](https://github.com/Vipin-P1/retail-customer-segmentation/tree/main/data/processed)  
- Data transformation was performed using this script: [Data Transformation Code](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/Data%20Transformation.r)

> The raw datasets are transformed and cleaned using the above script to prepare them for visualization, factor analysis, segmentation, and statistical testing.

## Code and Analysis

All analyses are organized into separate sections for clarity:

- **[Data Visualization](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/docs/01-visualization.md)**: Explore distributions, correlations, and customer spending patterns.  
- **[Factor Analysis (PCA)](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/docs/02-factor%20analysis%20(PCA).md)**: Identify key drivers of spending and offer responses.  
- **[Customer Segmentation](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/docs/03-segmentation.md)**: K-means clustering to define meaningful consumer segments.  
- **[Independent T-Tests](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/docs/04-t-tests.md)**: Assess differences in promotional engagement across clusters.  
- **[Targeted Marketing Insights](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/docs/05-insights.md)**: Recommendations for each customer segment to optimize marketing strategies.

## How to Use

1. Start with the raw datasets and review the **Data Transformation** script to understand preprocessing steps.  
2. Explore visualizations and summaries in the linked markdown documents to understand customer behaviours and spending patterns.  
3. Follow the segmentation and statistical analysis to identify target groups and actionable insights.  
4. Use the **Targeted Marketing Insights** document to guide marketing strategy decisions based on customer segments.
