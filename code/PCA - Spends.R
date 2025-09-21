## Part 1: Load data from Project
cdata
head(cdata)
summary(cdata)
str(cdata)

## Part 2: Select and standardize the Data
spend_columns <- c(
  "Spend_Wine", 
  "Spend_OrganicFood", 
  "Spend_Meat", 
  "Spend_WellnessProducts", 
  "Spend_Treats", 
  "Spend_LuxuryGoods"
)

cdataspend.sc <- cdata
cdataspend.sc[, spend_columns] <- scale(cdata[, spend_columns])
summary(cdataspend.sc)

# Visualize the Correlation Matrix Heatmap
library(corrplot)
corrplot(cor(cdataspend.sc[, spend_columns]), method = 'color', order="hclust") 

## Part 3: Perform PCA
cdataspend.pc <- prcomp(cdataspend.sc[, spend_columns], scale = TRUE)
summary(cdataspend.pc)

## Part 4: Visualize PCA Results
# Scree Plot
screeplot(cdataspend.pc, type = "lines", main = "Scree-Plot: Spending")

# Biplot
biplot(cdataspend.pc, 
       xlabs = rep(".", nrow(cdataspend.pc$x)), 
       main = 'PCA Biplot: Spending')

## Part 5: Cumulative Variance Explained
cumsum(summary(cdataspend.pc)$importance[2,])
summary(cdataspend.pc)$importance[3,]

## Part 6: Create a New Dataset with Selected Components (First 3 Components)
pca_scores <- cdataspend.pc$x[, 1:3]
head(pca_scores)

## Part 7: Principal Component Loadings
cdataspend.pc$rotation


## Part 8: Performing rotation
# Install the necessary packages
install.packages("psych")  # For Varimax rotation
library(psych)

# Apply Varimax rotation using the 'principal' function from the 'psych' package
pca_rotated <- principal(cdataspend.sc[, spend_columns], nfactors = 3, rotate = "varimax")

# View the rotated factor matrix
pca_rotated$loadings
