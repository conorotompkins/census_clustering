library(tidyverse)
library(sf)


#data from https://www.openicpsr.org/openicpsr/project/100235/version/V5/view

#rename shp file to match rest of Output-Data_2 files
df <- st_read("data/study/Output-Data_2/US_tract_clusters_new.shp") %>% 
  select(Geo_NAME, cluster)

df

df %>% 
  count(cluster, sort = TRUE)
  

df %>% 
  filter(str_detect(Geo_NAME, "Allegheny County, Pennsylvania$")) %>% 
  ggplot(aes(fill = cluster)) +
    geom_sf(show.legend = FALSE, color = NA)
  

df %>% 
  ggplot() +
    geom_sf()
