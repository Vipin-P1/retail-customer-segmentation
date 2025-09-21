# Load Packages
library(tidyverse)
library(lubridate)
options(width=100)


cdata <- cdata %>%
  mutate(Cluster = recode(Cluster, 
                          `1` = "Budget-Spenders", 
                          `2` = "High-Rollers",
                          `3` = "Comfort-Seekers"))
# Labels
# 1-"Budget-Spenders", 2-"High-Rollers", 3-"Comfort-Seekers"

cdata.duplicate <- cdata

# Mean of Promo Purchases by Clusters
cdata.duplicate.mean <- cdata.duplicate %>% 
  group_by(Cluster) %>% 
  summarise(mean=mean(Promo_Purchases), n=n())
cdata.duplicate.mean

# Plot the Cluster-wise Promo Purchases Distribution
ggplot(cdata.duplicate) + 
  geom_histogram(aes(x=Promo_Purchases), binwidth=1) + 
  facet_grid(Cluster~.) + xlim(-1,16) + 
  labs(x="Promo Purchases", 
       y="Frequency") + 
  geom_vline(data=cdata.duplicate.mean, 
             mapping=aes(xintercept=mean), 
             col="green")

#-----------------------------------------------------------------------------#

# Filter the Dataset (Cluster 1 and 3)
cdata.cluster1and3 <- cdata %>%
  filter(Cluster %in% c("Budget-Spenders", "Comfort-Seekers"))

# Mean of Promo Purchases by Clusters
promomean.by_cluster1and3 <- cdata.cluster1and3 %>% 
  group_by(Cluster) %>% 
  summarise(mean=mean(Promo_Purchases), n=n())
promomean.by_cluster1and3

# Summary of Mean Differences
promomean.by_cluster1and3 %>% summarise(difference=diff(mean))

# Plot the Cluster-wise Promo Purchases Distribution
ggplot(cdata.cluster1and3) + 
  geom_histogram(aes(x=Promo_Purchases), binwidth=1) + 
  facet_grid(Cluster~.) + xlim(-1,16) + 
  labs(x="Promo Purchases", 
       y="Frequency") + 
  geom_vline(data=promomean.by_cluster1and3, 
             mapping=aes(xintercept=mean), 
             col="green")

# Performing T-test
t.test(Promo_Purchases~Cluster, data=cdata.cluster1and3)

#-----------------------------------------------------------------------------#

# Filter the Dataset (Cluster 2 and 3)
cdata.cluster2and3 <- cdata %>%
  filter(Cluster %in% c("High-Rollers", "Comfort-Seekers"))

# Mean of Promo Purchases by Clusters
promomean.by_cluster2and3 <- cdata.cluster2and3 %>% 
  group_by(Cluster) %>% 
  summarise(mean=mean(Promo_Purchases), n=n())
promomean.by_cluster2and3

# Summary of Mean Differences
promomean.by_cluster2and3 %>% summarise(difference=diff(mean))

# Plot the Cluster-wise Promo Purchases Distribution
ggplot(cdata.cluster2and3) + 
  geom_histogram(aes(x=Promo_Purchases), binwidth=1) + 
  facet_grid(Cluster~.) + xlim(-1,16) + 
  labs(x="Promo Purchases", 
       y="Frequency") + 
  geom_vline(data=promomean.by_cluster2and3, 
             mapping=aes(xintercept=mean), 
             col="green")

# Performing T-test
t.test(Promo_Purchases~Cluster, data=cdata.cluster2and3)

#-----------------------------------------------------------------------------#

# Filter the Dataset (Cluster 1 and 2)
cdata.cluster1and2 <- cdata %>%
  filter(Cluster %in% c("Budget-Spenders", "High-Rollers"))

# Mean of Promo Purchases by Clusters
promomean.by_cluster1and2 <- cdata.cluster1and2 %>% 
  group_by(Cluster) %>% 
  summarise(mean=mean(Promo_Purchases), n=n())
promomean.by_cluster1and2

# Summary of Mean Differences
promomean.by_cluster1and2 %>% summarise(difference=diff(mean))

# Plot the Cluster-wise Promo Purchases Distribution
ggplot(cdata.cluster1and2) + 
  geom_histogram(aes(x=Promo_Purchases), binwidth=1) + 
  facet_grid(Cluster~.) + xlim(-1,16) + 
  labs(x="Promo Purchases", 
       y="Frequency") + 
  geom_vline(data=promomean.by_cluster1and2, 
             mapping=aes(xintercept=mean), 
             col="green")

# Performing T-test
t.test(Promo_Purchases~Cluster, data=cdata.cluster1and2)
