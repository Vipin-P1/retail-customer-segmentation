## Independent T-Tests

To understand how different customer segments respond to promotional offers, independent t-tests were conducted comparing promotional purchase behaviour across clusters. This helps identify which groups are more responsive to promotions and can inform targeted marketing strategies.

![T-Test Distribution](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/T-Test%20Distribution.jpg)

The distribution of promotional purchases varies across the three clusters:  
- **Budget-Spenders:** Narrow range, mostly concentrated at the lower end, reflecting cautious spending with occasional use of promotions.  
- **Comfort-Seekers:** Wider variation, showing a diverse approach to promotions and consistent engagement.  
- **High-Rollers:** Tightest distribution at the lower end, indicating minimal engagement with promotions despite higher overall spending.  

![T-Test Summary](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/T-Test%20Result%20Summary.jpg)

The three independent t-tests reveal:  
1. **Budget-Spenders vs Comfort-Seekers:** Comfort-Seekers (3.13) engage more with promotions than Budget-Spenders (2.08).  
2. **Budget-Spenders vs High-Rollers:** Budget-Spenders (2.08) make more promotional purchases than High-Rollers (1.34), suggesting that lower-income consumers rely more on discounts.  
3. **Comfort-Seekers vs High-Rollers:** Comfort-Seekers are significantly more responsive than High-Rollers, who are the least influenced by promotions.

Overall, Comfort-Seekers show the highest engagement with promotions, followed by Budget-Spenders. High-Rollers, while driving revenue through premium purchases, are less sensitive to promotional activity. These insights suggest that promotional campaigns should prioritize value-driven consumers to maximize effectiveness.

The t-test analysis was implemented in R. The code for this analysis is available here: [T-Test using Clusters](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/T-test%20using%20CLusters.R)
