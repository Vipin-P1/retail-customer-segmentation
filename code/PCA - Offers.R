## Part 1: Load data from Project
cdata
head(cdata)
summary(cdata)
str(cdata)

## Part 2: Select and standardize the Data
offer_columns <- c(
  "Accepted_Offer1", 
  "Accepted_Offer2", 
  "Accepted_Offer3", 
  "Accepted_Offer4", 
  "Accepted_Offer5", 
  "Response_Latest"
)

cdataoffer.sc <- cdata
cdataoffer.sc[, offer_columns] <- scale(cdata[, offer_columns])
summary(cdataoffer.sc)

# Visualize the Correlation Matrix Heatmap
library(corrplot)
corrplot(cor(cdataoffer.sc[, offer_columns]), method = 'color', order = "hclust")

## Part 3: Perform PCA
cdataoffer.pc <- prcomp(cdataoffer.sc[, offer_columns], scale = TRUE)
summary(cdataoffer.pc)

## Part 4: Visualize PCA Results
# Scree Plot
screeplot(cdataoffer.pc, type = "lines", main = "Scree-Plot: Offers")

# Biplot
biplot(cdataoffer.pc, 
       xlabs = rep(".", nrow(cdataoffer.pc$x)), 
       main = 'PCA Biplot: Offers')

## Part 5: Cumulative Variance Explained
cumsum(summary(cdataoffer.pc)$importance[2,])
summary(cdataoffer.pc)$importance[3,]

## Part 6: Create a New Dataset with Selected Components (First 3 Components)
pca_scores <- cdataoffer.pc$x[, 1:4]
head(pca_scores)

## Part 7: Principal Component Loadings
cdataoffer.pc$rotation


## Part 8: Performing rotation
# Install the necessary packages
install.packages("psych")  # For Varimax rotation
library(psych)

# Apply Varimax rotation using the 'principal' function from the 'psych' package
pca_rotated <- principal(cdataoffer.sc[, offer_columns], nfactors = 4, rotate = "varimax")

# View the rotated factor matrix
pca_rotated$loadings
