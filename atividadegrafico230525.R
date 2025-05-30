#install.packages("gganimate")
#install.packages("gifski")
library(gganimate)
#install.packages(c("gganimate", "gifski", "transformr"), repos = "https://cloud.r-project.org")
install.packages("gifski", repos = "https://cloud.r-project.org")
library(gifski)


library(gganimate)

ggplot(df.mes, aes(x = mes, y = media_tcd)) +
  geom_line(color = "steelblue", size = 1) +
  geom_point(color = "steelblue", size = 1) +
  labs(title = "Média Mensal da Taxa de Câmbio - Dólar Americano (Venda)",
       subtitle = 'Data: {frame_along}', # Mostra o mês na legenda da animação
       x = "Data",
       y = "R$/US$ (média mensal)",
       caption = "Fonte: Banco Central do Brasil") +
  theme_minimal() +
  transition_reveal(mes)
anim <- last_plot()
animate(anim, renderer = gifski_renderer("grafico_animado.gif"), width = 800, height = 600)


