##Random forest models to look at habitat suitability of nekton over seagrass beds
##Author: Jon Rodemann
##Date last edited: 3/31/2026

library(tidyverse)
library(randomForest)
library(mlr3verse)
library(iml)
library(ranger)

#load in data
sled <- read.csv('Data/combined_sled_species_sp.csv')
trawl <- read.csv('Data/combined_trawl_species.csv')

#Let's look at some summary data
unique(sled$species_common)
unique(trawl$species_common)

##We want to isolate the 8 important fish species. Here are the ones I think they are:
# - Gray snapper
# - Blue crab
# - Pink shrimp
# - Spotted seatrout
# - Sheepshead
# - Black drum
# - Red drum
# - White shrimp
# - Brown shrimp
# - Flounder (all three - Gulf, Summer, Southern)

##Ok. We are going to try a couple of things. Here are the different models we are going to try:
#Dependent variable:
# Binary
# Abundance with zeros
# Hurdle RF
#Independent variables:
# All
# Handpicked set

###Binary with all variables####