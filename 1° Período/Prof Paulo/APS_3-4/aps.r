library(readxl)
library(FSA)

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/APS_3-4/APS.xlsx", 
                  sheet = "1")

Summarize(dados$volume_chuva)
Summarize(dados$vitaminaD)

shapiro.test(dados$volume_chuva)
shapiro.test(dados$vitaminaD)

plot(dados$volume_chuva ~ dados$vitaminaD)

correlacao <- cor.test(dados$volume_chuva, dados$vitaminaD, method = 'spearman')
correlacao

R2 = as.numeric(correlacao$estimate ^ 2) * 100
R2

















