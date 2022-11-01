library(tidyquant)
library(tidyverse)

# tq_get("NFLX",get="stock.prices")

#sp500 <- tq_index("SP500") %>%  tq_get(get="stock.prices")
# sp500 %>% saveRDS("data/sp500.rds")

sp500 <- readRDS("data/sp500.rds")

results<- sp500 %>% 
  select(date,symbol,close) %>% 
  pivot_wider(names_from = symbol,values_from = close)
