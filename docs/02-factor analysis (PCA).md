## Factor Analysis (PCA)

Principal Component Analysis (PCA) was applied to uncover key drivers of consumer spending and offer response behaviours. The analysis helps identify underlying factors such as spending preferences and responsiveness to promotions.  

The correlation heatmap reveals strong positive correlations between spending categories like Meat and Wine, while Offers 1 and 2 show a slight negative correlation. These visuals provide an initial overview of variable relationships.

![Correlation Heatmap PCA](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Correlation%20Heatrmap%20PCAs.jpg)

Scree plots visually indicate the optimal number of components to retain. For PCA-Spending and PCA-Offers, three and four components were optimal, respectively, explaining 79.9% of variance in both cases.

![Scree Plots & Cumulative Proportions](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Scree-Plots%20%26%20Cumulative%20proportions.jpg)

Biplots provide a two-dimensional view of how each variable (spending categories or accepted offers) relates to the principal components, making patterns and clusters easier to identify.

![Boxplots & Rotated Loadings](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/PCA%20Boxplots%20%26%20Rotated%20Loadings.jpg)

For PCA-Spending, rotated loadings indicate variables such as OrganicFood (0.8), Treats (0.81), and WellnessProducts (0.79) are highly associated with PC1, suggesting a shared underlying factor. LuxuryGoods (0.94) is strongly associated with PC3, representing a distinct premium spending factor.  

For PCA-Offers, Offer4 (0.91) aligns with PC1, while Response_Latest (0.85) aligns with PC4, showing how different offer types contribute to separate latent factors.  

The analysis reveals that consumer spending on Organic Food, Treats, and Wellness Products is influenced by factors like income, education, and health consciousness, while luxury products are driven by a separate premium factor. Similarly, recent offers drive the strongest responses, highlighting the importance of targeted promotions.

Code for the analysis is available here: [PCA-Spending](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/PCA%20-%20Spends.R) | [PCA-Offers](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/PCA%20-%20Offers.R)
