# Some simple code for working with NYT polling data.
library(tidyverse)


orig <- read_csv(file = "https://raw.githubusercontent.com/TheUpshot/2018-live-poll-results/master/data/elections-poll-me02-3.csv",
                 col_types =  cols(
                   .default = col_character(),
                   turnout_scale = col_double(),
                   turnout_score = col_double(),
                   w_LV = col_double(),
                   w_RV = col_double(),
                   final_weight = col_double(),
                   timestamp = col_datetime(format = "")))

x <- orig %>% 
  select(response, educ, race_edu, age_combined, final_weight)
