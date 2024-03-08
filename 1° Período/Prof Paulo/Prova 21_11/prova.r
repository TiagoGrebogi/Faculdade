library(readxl)
library(FSA)
library(QuantPsyc)

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Prova 21_11/dados.xlsx", 
                    sheet = "3")
options (scipen = 999)
y = dados$nota_bolsa_estudo
x1 = dados$idade
x2 = dados$horas_sono
x3 = dados$tempo_deslocamento
x4 = dados$salario
x5 = dados$horas_lazer
x6 = dados$num_irmaos

shapiro.test(y)
shapiro.test(x1)
shapiro.test(x2)
shapiro.test(x3)
shapiro.test(x4)
shapiro.test(x5)
shapiro.test(x6)

cor.test(y, x1, method= 'spearman')
cor.test(y, x2, method= 'spearman')
cor.test(y, x3, method= 'pearson')
cor.test(y, x4, method= 'pearson')
cor.test(y, x5, method= 'spearman')
cor.test(y, x6, method= 'spearman')

normalidade <- cbind(y, x1, x2, x3, x4, x5, x6)
mult.norm(normalidade)

regressao <- lm(y ~ x1 + x2 + x3 + x4 + x5 + x6)
summary(regressao)