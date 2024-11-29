library(tidyr)
library(dplyr)

u <- c(1:8)
y <- c(1,2,4,4,7,7,7,8)
data <- data.frame("População" = u, "Y" = y)
sample(y, 4)

data <- as.data.frame(t(combn(y,4)))

data.plus <-  data %>% 
  mutate("Média" = (V1+V2+V3+V4)/4) %>% 
  mutate("Proporção" = (ifelse(V1>4,1,0)+ifelse(V2>4,1,0)+ifelse(V3>4,1,0)+ifelse(V4>4,1,0))/4)

hist(data.plus$Média)

#c) A análise feita em cima das amostras é a mesma análise que fazemos para as variáveis aleatórias, cada estatística analisada das amostras é, por si de fato uma variável aleatória.