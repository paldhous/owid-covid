# load required packages
library(dplyr)
library(readr)

# our world in data timeline
covid_owid <- read_csv("https://covid.ourworldindata.org/data/owid-covid-data.csv") %>%
  filter(location == "World") %>%
  select(location, date, new_cases, new_deaths) %>%
  head(-1)

# write to csv
write_csv(covid_owid, "covid_owid.csv", na = "")
