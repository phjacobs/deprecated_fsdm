## Create Presence, Absence, and Relative Abundance Datafiles
## Based on Answer from Stack Exchange:  https://stackoverflow.com/questions/41233173/how-can-i-write-dplyr-groups-to-separate-files


## Make sure you have BFD data in tidy format as "tidy.bfd"
## Script is available here:  https://raw.githubusercontent.com/phjacobs/foram_sdm/master/bfd_raw_to_tidy.r

## Presence Data
presenceCSV  = function(DF) {
  write.csv(DF,paste0("presence_data_",unique(DF$Taxa),".csv"))
  return(DF)
}

tidy.bfd %>% 
  filter(Count >= 1) %>%
  group_by(Taxa) %>%
  select(Longitude, Latitude, Count) %>%
  do(presenceCSV(.))

## Absence Data
absenceCSV  = function(DF) {
  write.csv(DF,paste0("absence_data_",unique(DF$Taxa),".csv"))
  return(DF)
}

tidy.bfd %>% 
  filter(Count == 0) %>%
  group_by(Taxa) %>%
  select(Longitude, Latitude, Count) %>%
  do(absenceCSV(.))

## Relative Abundace Data