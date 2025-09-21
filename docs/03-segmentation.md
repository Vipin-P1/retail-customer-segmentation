## Customer Segmentation (Clustering)

K-means clustering was applied to segment customers based on key attributes such as age, education level, income, family structure, and spending behaviour. The goal was to uncover meaningful customer segments to inform targeted marketing strategies.

![Elbow Curve & WSS](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Elbow%20Curve%20%26%20WSS.jpg)

The optimal number of clusters was determined using the elbow curve, which suggested K=3. This balance of model complexity and interpretability provides well-separated and meaningful clusters.

![Cluster Visualization & Summary](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Cluster%20-%20Visualization%20and%20Summary.jpg)

Cluster visualization revealed three distinct groups:  
- **C2:** Highest spending and income, financially stable and engaged.  
- **C1:** Lower spending, younger customers with lower income and more children.  
- **C3:** Balanced profile, moderate income and spending, middle ground between the other two clusters.  

![Customer Profiling](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Customer%20Profiling.jpg)

The three clusters can be described as follows:  
1. **Budget-Spenders (706):** Younger customers with lower income and conservative spending habits.  
2. **High-Rollers (594):** Older, married, higher income, with significant spending on premium products.  
3. **Comfort-Seekers (940):** Moderate income and age, with balanced spending across categories.  

![Bar Graphs - Spending](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Cluster%20-%20Bar%20plot%20-%20Spending.png)  
![Bar Graphs - Income](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Cluster%20-%20Bar%20plot%20-%20Income.png)

Further analysis using bar plots shows differences in spending and income distribution across the clusters. High-Rollers dominate the Upper-Middle and High-Income groups with a focus on premium products, Budget-Spenders are concentrated in Lower Income groups, and Comfort-Seekers maintain a balanced spread across income and spending.

Code for this analysis is available here: [Clustering](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/Clustering.r) | [Barplots for Clusters](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/Barplots%20For%20Clusters.R)
