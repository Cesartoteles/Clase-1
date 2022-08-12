library("tidyverse")
install.packages("haven")
haven::read_dta("C:/Users/BibliotecasUC/Downloads/2021.dta")
base_11_8 <- haven::read_dta("C:/Users/BibliotecasUC/Downloads/2021.dta")
sjmisc::frq(base_11_8, q1tb)
base_11_8 %>%
  group_by(q1tb, a4) %>% 
  summarise(n = n()) %>% 
  arrange(-n) %>% 
  filter(q1tb == 2)
install.packages("sjmisc")
