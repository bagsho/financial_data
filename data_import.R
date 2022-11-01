library(tidyquant)
library(tidyverse)

# tq_get("NFLX",get="stock.prices")

#sp_500 <- tq_index("SP500") %>%  tq_get(get="stock.prices")
# sp_500 %>% saveRDS("data/sp_500.rds")

sp_500 <- readRDS("data/sp_500.rds")

results<- sp_500 %>% 
  select(date,symbol,close) %>% 
  pivot_wider(names_from = symbol,values_from = close)
