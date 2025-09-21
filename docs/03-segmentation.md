## Customer Segmentation (Clustering)

K-means clustering was applied to segment customers based on key attributes such as age, education level, income, family structure, and spending behaviour. The objective was to identify meaningful customer groups to help tailor marketing strategies more effectively.

![Elbow Curve & WSS](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Elbow%20Curve%20%26%20WSS.jpg)

To determine the optimal number of clusters, an elbow curve was plotted using the within-cluster sum of squares (WSS). The curve suggested that three clusters (K=3) provided the best balance between capturing variation in the data and keeping the model interpretable. Adding more clusters did not significantly reduce WSS, indicating diminishing returns.

![Cluster Visualization & Summary](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Cluster%20-%20Visualization%20and%20Summary.jpg)

The cluster visualization shows three distinct groups:  
- **C2:** Customers with the highest income and spending levels, indicating a financially stable and engaged segment.  
- **C1:** Younger, lower-income customers with more dependents, displaying more conservative spending patterns.  
- **C3:** Customers with moderate income and balanced spending habits, forming a middle-ground segment.  

![Customer Profiling](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Customer%20Profiling.jpg)

From these clusters, we defined three customer segments:  
1. **Budget-Spenders (706):** Typically younger, lower-income individuals who are price-conscious and respond well to promotions.  
2. **High-Rollers (594):** Older, married, higher-income customers who prioritize premium and luxury products.  
3. **Comfort-Seekers (940):** Moderate-income and average-aged customers who spend evenly across categories, representing a stable and reliable customer base.  

![Bar Graphs - Spending](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Cluster%20-%20Bar%20plot%20-%20Spending.png)  
![Bar Graphs - Income](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Cluster%20-%20Bar%20plot%20-%20Income.png)

Bar plots provide further insight into each cluster's behaviour. High-Rollers are concentrated in higher-income groups and spend significantly on premium categories like Wine and Meat. Budget-Spenders primarily belong to lower-income groups, reflecting cautious spending. Comfort-Seekers show a balanced income distribution with moderate spending across all categories, making them a versatile segment for targeted campaigns.

The clustering process and visualization were implemented in R. Code for this analysis is available here: [Clustering](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/Clustering.r) | [Barplots for Clusters](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/Barplots%20For%20Clusters.R)
