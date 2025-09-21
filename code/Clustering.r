## Step 1: Select Variables ----
install.packages("writexl")
cdata$Education_Level <- as.integer(cdata$Education_Level)
cdata$Marital_Status <- as.integer(cdata$Marital_Status)
cdata$Age_Bin <- as.integer(cdata$Age_Bin)
cdata$Income_Bin <- as.integer(cdata$Income_Bin)
str(cdata)
summary(cdata)

# Create a new column 'Total_Spend' by summing all Spend_ columns
cdata$Total_Spend <- rowSums(cdata[, c(
  "Spend_Wine", 
  "Spend_OrganicFood", 
  "Spend_Meat", 
  "Spend_WellnessProducts", 
  "Spend_Treats", 
  "Spend_LuxuryGoods"
)], na.rm = TRUE)  # Ensures NA values don’t break the sum

# Check the first few rows
head(cdata$Total_Spend)

clust_columns <- c(
  "Education_Level",
  "Age_Bin",
  "Marital_Status",
  "Income_Bin",
  "Kidhome",
  "Teenhome",
  "Total_Spend"
)

clust_data <- cdata[, clust_columns]
clust_data_z <- as.data.frame(lapply(clust_data, scale))
summary(clust_data_z)

set.seed(9842)
### Determining the optimal number of clusters

sum(is.na(cdata))

k.max <- 10
#data <- scaled_data
wss <- sapply(1:k.max, 
              function(k){kmeans(clust_data_z, k, nstart=50, iter.max = 15 )$tot.withinss})
wss
plot(1:k.max, wss,
     type="b", pch = 19, frame = FALSE, 
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares",
     main = "Clustering - Elbow Curve")


# we aim for 3 clusters
cdata_clusters <- kmeans(clust_data_z, 3)

# Check the results ----
# look at the size of the clusters
cdata_clusters
cdata_clusters$tot.withinss
cdata_clusters$betweenss
cdata_clusters$size
cdata_clusters$centers

## Step 4: Visualize clusters ----
library (cluster)
clusplot(clust_data_z, cdata_clusters$cluster, color = TRUE, shade = TRUE, labels = 4, lines = 0, main = "K-means Cluster Plot")
library(writexl)
cdata$Cluster <- cdata_clusters$cluster  # Add cluster labels
write_xlsx(cdata, "customer_clustersTotalSpend3.xlsx")




