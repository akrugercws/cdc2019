
library("r2d3")
library("lubridate")
library("dplyr")
mydata <- readRDS("chem_tp_min_2019.rds")
pops <- distinct(mydata[year(mydata[,"SAMP_DATE"])==2019,
                        c("PRIM_STA_C","Water System Name", "Principal County Served","Total Population")])
names(pops) <- c("id","name","county","value")

write.csv(pops, file="WSPops.csv")

unique(pops$county)
