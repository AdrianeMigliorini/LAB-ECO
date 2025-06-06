#A PARTIR DA AULA DE ONTEM DE ECONOMETRIA (AULA 1.R)
#BUSQUE DUAS VARIÁVEIS DE SEU INTERESSE NO BANCO MUNDIAL
#CRIE UM ARQUIVO DE DADOS DE TODOS OS PAÍESES PARA 2022
#UM ARQUIVO DE DADOS DO BRASIL (TODO PERÍODO)

library(WDI)#CARREGAR O PACOTE
library(tidyverse)

#VARIAVEIS 
variáveis <- c("NY.GDP.MKTP.KD.ZG", "SP.DYN.LE00.IN")

# TAXA DE CRESCIMENTO ANUAL DO PIB - NY.GDP.MKTP.KD.ZG
# EXPECTATIVA DE VIDA AO NASCER - SP.DYN.LE00.IN


#BAIXAR DADOS DE TODOS OS PAÍSES PARA O ANO DE 2022
dados_todos_paises <- WDI(indicator = variáveis, start = 2022, end = 2022) %>%
  na.omit()


#DADOS BRASIL TODO O PERÍODO
dados_brasil <- WDI(indicator = variáveis, country = "BR", start = 1960, end = 2022) %>% 
  na.omit()




