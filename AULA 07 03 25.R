# CRIAR GRÁFICO COM AS VARIÁVEIS ESCOLHIDAS NA ÚLTIMA AULA 

library(WDI)#CARREGAR O PACOTE
library(tidyverse)

variáveis2 <- c("NY.GDP.MKTP.KD.ZG", "SP.DYN.LE00.IN")

# Renomeando a coluna "SP.DYN.LE00.IN" para "expectativa de vida ao nascer"
colnames(dados_brasil)[colnames(dados_brasil) == "SP.DYN.LE00.IN"] <- "EXPECTATIVA DE VIDA AO NASCER"

# Renomeando a coluna "NY.GDP.MKTP.KD.ZG" para "expectativa de vida ao nascer"
colnames(dados_brasil)[colnames(dados_brasil) == "NY.GDP.MKTP.KD.ZG"] <- "TAXA CRESCIMENTO ANUAL DO PIB"


grafico_ponto <- 
  ggplot(data = dados_brasil,
         mapping = aes(x = `EXPECTATIVA DE VIDA AO NASCER`, y = year)) +
  geom_point() #GRAFICO 

print(grafico_ponto)

summary(dados_brasil$CRESCIMENTO.PIB)
summary(dados_brasil$year)
  
colnames(dados_brasil)



