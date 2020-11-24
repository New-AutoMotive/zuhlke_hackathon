library(raster)
library(rgeos)
library(readr)
library(dplyr)

# Set the working directory to the `code` subdirectory
setwd('~/Documents/DataCamp2020/new-automotive-hackathon/Code/zuhlke_hackathon')

# Read in shapefile
sh <- raster::shapefile('data/ONS/Local_Authority_Districts__December_2019__Boundaries_UK_BUC-shp/Local_Authority_Districts__December_2019__Boundaries_UK_BUC.shp')

# Read deprivation data
dep_data <- read_csv("data/ev_growth_and_deprivation.csv")

# Join with shapefile data
sh@data <- left_join(sh@data, dep_data, by = c('lad19cd' = 'LAD19CD'))

# Plot data with spplot
spplot(sh, zcol = 'IMD19', main=list(label='2019 Index of Multiple Deprivation', cex=0.8))
spplot(sh, zcol = 'imd_normalised', at=seq(-5, 10, 3), main=list(label='2019 Normalised Index of Multiple Deprivation', cex=0.8))
spplot(sh, zcol = 'imd_by_pop', at=seq(-5, 105, 3), main=list(label='2019 Index of Multiple Deprivation Normalised By Population', cex=0.8))
spplot(sh, zcol = 'norm_2019', at=seq(-5, 15, 3), main=list(label='2019 percentage of EVs normalised by total number of EVs', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2019', at=seq(-5, 40, 3), main=list(label='2019', cex=0.8))

# Read EV growth data
data <- read_csv("data/ev_growth_analysis.csv")

# Join with shapefile data
sh@data <- left_join(sh@data, data, by = c('lad19cd' = 'LAD19CD'))

# Plot data with spplot
spplot(sh, zcol = 'norm_2020', at=seq(-5, 15, 3), main=list(label='2020 percentage of EVs normalised by total number of EVs', cex=0.8))
spplot(sh, zcol = 'norm_2019', at=seq(-5, 15, 3), main=list(label='2019 percentage of EVs normalised by total number of EVs', cex=0.8))
spplot(sh, zcol = 'norm_2018', at=seq(-5, 15, 3), main=list(label='2018 percentage of EVs normalised by total number of EVs', cex=0.8))
spplot(sh, zcol = 'norm_2017', at=seq(-5, 15, 3), main=list(label='2017 percentage of EVs normalised by total number of EVs', cex=0.8))
spplot(sh, zcol = 'norm_2016', at=seq(-5, 15, 3), main=list(label='2016 percentage of EVs normalised by total number of EVs', cex=0.8))

spplot(sh, zcol = 'per_index_2020', at=seq(-5, 30, 3), main=list(label='2020 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2019', at=seq(-5, 30, 3), main=list(label='2019 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2018', at=seq(-5, 30, 3), main=list(label='2018 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2017', at=seq(-5, 30, 3), main=list(label='2017 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2016', at=seq(-5, 30, 3), main=list(label='2016 percentage of EVs normalised by population', cex=0.8))

spplot(sh, zcol = 'cum_per_index_2020', at=seq(-5, 40, 3), main=list(label='2020', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2019', at=seq(-5, 40, 3), main=list(label='2019', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2018', at=seq(-5, 40, 3), main=list(label='2018', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2017', at=seq(-5, 40, 3), main=list(label='2017', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2016', at=seq(-5, 40, 3), main=list(label='2016', cex=0.8))

# Read deprivation data
dep_data <- read_csv("data/ev_growth_and_deprivation.csv")

# Join with shapefile data
sh@data <- left_join(sh@data, dep_data, by = c('lad19cd' = 'LAD19CD'))

# Plot data with spplot
spplot(sh, zcol = 'IMD19', main=list(label='2019 Index of Multiple Deprivation', cex=0.8))
spplot(sh, zcol = 'norm_2019', at=seq(-5, 15, 3), main=list(label='2019 percentage of EVs normalised by total number of EVs', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2019', at=seq(-5, 40, 3), main=list(label='2019', cex=0.8))




