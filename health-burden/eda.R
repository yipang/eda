# Exploratory data analysis (see readme for more detail)
# Feel free to follow these steps, or complete your own EDA

# Set up (install packages if you don't have them)
library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)
library(vioplot)
setwd('~/Documents/info-370/eda/health-burden/')
risk.data <- read.csv('./data/prepped/risk-data.csv', stringsAsFactors = FALSE) 

######################
### Data Structure ###
######################

## Using a variety of functions, investigate the structure of your data, such as:

# Dimensions, column names, structure, summaries, etc.
dim(risk.data)
colnames(risk.data)
str(risk.data)
summary(risk.data)
View(risk.data)
# Replacing missing values...?
which(duplicated(risk.data[1:5],))

###########################
### Univariate Analysis ###
###########################
summary(risk.data[,8:ncol(risk.data)])
hist(risk.data$deaths.rate)
## Using a variety of approaches, investigate the structure each (risk column) individually

# Summarize data
 
# Create histograms, violin plots, boxplots
hist(risk.data$drug.use)
hist(risk.data$alcohol.use)
hist(risk.data$high.meat)
hist(risk.data$low.exercise)
hist(risk.data$smoking)

####################################
### Univariate Analysis (by age) ###
####################################

# Investiage how each risk-variable varies by **age group**

# Create histograms, violin plots, boxplots. Calculate values as needed. 


####################################
### Univariate Analysis (by sex) ###
####################################

# Investiage how each risk-variable varies by **sex**
p <- aplot(drug.use, data = risk.data)
# Compare male to female values -- requires reshaping (and dropping population)!


########################################
### Univariate Analysis (by country) ###
########################################

## Investiage how each risk-variable varies by **country**

# Aggregate by country

# Create a choropleth map (see https://plot.ly/r/choropleth-maps/)

###########################
### Bivariate Analysis ####
###########################

# Compare risks-variables to one another (visually)
