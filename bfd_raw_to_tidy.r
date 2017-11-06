
# Load necessary packages
library(tidyverse)

# Use readr to read the raw .tab file from GitHub
# Skip the lengthy metadata.
bfd <- read_tsv("https://raw.githubusercontent.com/phjacobs/foram_sdm/master/Data/Raw/BFD.tab", skip=1326)

# Remove '[m]', '[#]' and spaces
names(bfd) <- gsub(x = names(bfd), pattern = " \\[m\\]", replacement = "")
names(bfd) <- gsub(x = names(bfd), pattern = " \\[#\\]", replacement = "")
names(bfd) <- gsub(x = names(bfd), pattern = "\\.", replacement = "")
names(bfd) <- gsub(x = names(bfd), pattern = "\\(", replacement = "")
names(bfd) <- gsub(x = names(bfd), pattern = "\\)", replacement = "")
names(bfd) <- gsub(x = names(bfd), pattern = " ", replacement = "_")
names(bfd)

write_csv(bfd, "brown_clean_02.csv")

### tidy the data
# First we use gather to breakout the taxa & count data
tidy.bfd <- bfd %>%
# Use select to ignore the irrelavant & summary columns
  select(1:3,7:10,12:14,16:42,44:51) %>%
# Use gather to breakout the taxa & count data
  gather(Taxa, Count, -Event, -Latitude, -Longitude)

head(tidy.bfd, 3)

write_csv(tidy.bfd, "tidy_brown_02.csv")

## 
# Need to calculate relative abundance, which is count of each taxa divided by total

## 