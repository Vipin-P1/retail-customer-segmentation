## Part 1: Load and Transform Data ----
cdata <- read.csv("SmartFreshRetail.csv")
str(cdata)
summary(cdata)

## Part 2 - Create Age Bins
cdata$Age <- 2015 - cdata$Year_Birth  
age_bins <- c(-Inf, 18, 25, 40, 60, Inf)  
age_labels <- c("Teen",  
                "Young Adult",  
                "Adult",  
                "Middle-Aged",  
                "Senior")  

cdata$Age_Bin <- cut(cdata$Age,  
                    breaks = age_bins,  
                    labels = age_labels,  
                    right = TRUE)  

table(cdata$Age_Bin)

## Part 3 - Fill in NA Values for Annual Income  
library(tidyverse)  

cdata <- cdata %>%  
  group_by(Education_Level) %>%  # Group by Education Level  
  
  # Handle missing values in Annual Income  
  mutate(Annual_Income = ifelse(  
    is.na(Annual_Income),  # Check for missing values  
    mean(Annual_Income, na.rm = TRUE), 
    Annual_Income))  
 
summary(cdata$Annual_Income)

## Part 4 - Create Annual Income Bins
bins <- c(-Inf, 20000, 50000, 80000, 120000, Inf)  
 
labels <- c("Low Income",  
            "Lower Middle Income",  
            "Middle Income",  
            "Upper Middle Income",  
            "High Income")  
 
cdata$Income_Bin <- cut(cdata$Annual_Income,  
                       breaks = bins,  
                       labels = labels,  
                       right = TRUE)

table(cdata$Income_Bin)

## Part 5 -  Replace random Marital categories  
valid_status <- c("Divorced", "Married", "Single", "Together", "Widow")  

cdata$Marital_Status <- ifelse(cdata$Marital_Status %in% valid_status,  
                              cdata$Marital_Status, "Single")  
unique(cdata$Marital_Status)

## Part 6 - Converting variables to right measures
cdata$Education_Level<-as.factor(cdata$Education_Level)
cdata$Marital_Status<-as.factor(cdata$Marital_Status)
cdata$Dt_Customer<-as.Date(cdata$Dt_Customer, format="%d/%m/%Y")

file.exists("SmartFreshRetail.csv")
