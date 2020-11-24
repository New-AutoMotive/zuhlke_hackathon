library(raster)
library(rgeos)
library(readr)
library(dplyr)

# Set the working directory to the `code` subdirectory
setwd('~/Documents/DataCamp2020/new-automotive-hackathon/Code/zuhlke_hackathon')

# Read in shapefile
sh <- raster::shapefile('data/ONS/Regions__December_2019__Boundaries_EN_BUC-shp/Regions__December_2019__Boundaries_EN_BUC.shp')

# Read EV growth data
data <- read_csv("data/ev_growth_analysis_by_region.csv")
colnames(data)
colnames(sh@data)
# Join with shapefile data
sh@data <- merge(sh@data, data, by = 'rgn19cd' = 'rgn19cd')

# Plot data with spplot
spplot(sh, zcol = 'per_index_2020', main=list(label='2020 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2019', at=seq(-5, 30, 3), main=list(label='2019 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2018', at=seq(-5, 30, 3), main=list(label='2018 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2017', at=seq(-5, 30, 3), main=list(label='2017 percentage of EVs normalised by population', cex=0.8))
spplot(sh, zcol = 'per_index_2016', at=seq(-5, 30, 3), main=list(label='2016 percentage of EVs normalised by population', cex=0.8))

spplot(sh, zcol = 'cum_per_index_2020', at=seq(-5, 40, 3), main=list(label='2020', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2019', at=seq(-5, 40, 3), main=list(label='2019', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2018', at=seq(-5, 40, 3), main=list(label='2018', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2017', at=seq(-5, 40, 3), main=list(label='2017', cex=0.8))
spplot(sh, zcol = 'cum_per_index_2016', at=seq(-5, 40, 3), main=list(label='2016', cex=0.8))




