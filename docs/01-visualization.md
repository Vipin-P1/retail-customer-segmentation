# Visualization

This section analyses key columns in the dataset, focusing on customer demographics and spending patterns. The code used for these visualizations is available [here](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/code/Data%20Visualization.R).

## Boxplots

These visualizations highlight the presence of outliers, revealing extreme values in income distribution. Some outliers in spending patterns were also observed, but they are retained, as uneven spending is common among consumers.

![Boxplots](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Boxplots.jpg)

## Histograms

Histograms visualize the distribution of Annual Income, Total Purchases by Channel, Total Spending, and Year of Birth. The charts confirm that outliers have caused a wide spread and skewness in the data. Most distributions are shifted to the left except for Year of Birth.

![Histograms](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Histograms.jpg)

## Pair Plot & Correlation Heatmap

The pair plot and correlation heatmap show strong positive correlations between Annual Income and Spend Total (0.66), and Spend Total and Purchases Total (0.82), indicating that higher income drives more spending and purchases. Year of Birth shows weak negative correlations, and Promo Purchases appear largely independent. These visuals highlight different spending patterns across customer groups.

![Pair Plot](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Pair%20Plot.png)
![Correlation Heatmap](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Correlation%20Heatrmap.png)

## Bar Graphs

Categorical analysis reveals distinct consumer patterns:

- Graduates form the largest education group, followed by PhD holders; basic education is least common.  
- Married individuals dominate the marital status category, with Single and Widowed less frequent.  
- Most households have one or no children.  
- Offer acceptance is relatively consistent across Offers 1–4, but the latest offer shows higher engagement.  
- In-store shopping is the most popular channel, followed by online, with catalog purchases being the least preferred.  

Income strongly influences spending, with higher earners purchasing more frequently. Promotions are secondary drivers, and in-store experiences remain important for evaluating products. The demographic composition suggests that customers prioritize premium or essential products. High engagement with timely offers highlights the importance of delivering relevant content at the right stage of the customer journey.

![Bar Graphs](https://github.com/Vipin-P1/retail-customer-segmentation/blob/main/output/Bar%20Graphs.jpg)
