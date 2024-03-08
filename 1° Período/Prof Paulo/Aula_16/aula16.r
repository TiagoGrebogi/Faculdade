library(FSA)
library(QuantPsyc)
library(readxl)

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_16/revisao.xlsx", 
                    sheet = "1")

y = dados$consumoCerveja
x1 = dados$temperaturaMedia
x2 = dados$temperaturaMinima
x3 = dados$temperaturaMaxima
x4 = dados$precipitacao

as.table(Summarize(y))
as.table(Summarize(x1))
as.table(Summarize(x2))
as.table(Summarize(x3))
as.table(Summarize(x4))

# Normalidade

shapiro.test(y)
shapiro.test(x1)
shapiro.test(x2)
shapiro.test(x3)
shapiro.test(x4)

cor.test(y, x1, method = 'spearman')
cor.test(y, x2, method = 'spearman')
cor.test(y, x3, method = 'spearman')
cor.test(y, x4, method = 'spearman')

# Normalidade Multivariada

normalidade <- cbind(y, x1, x2, x3, x4)
mult.norm(normalidade)

regressao <- lm(y ~ x1 + x2 + x3 + x4)
summary(regressao) # QUANDO NÃO TIVER OS "*" É NÃO SIGNIFICATIVO

regressao <- lm(y ~ x3 + x4)
summary(regressao)

# NORMALIDADE DOS RESÍDUOS
shapiro.test(regressao)

# CONSUMO = 8491,33 + 646,68 * temperaturaMáxima - 57,56 * precipitação

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_16/revisao.xlsx", 
                    sheet = "2")


y = dados$producao
x1 = dados$sojaQualidade
x2 = dados$fertilizanteQuantidade
x3 = dados$diasSol
x4 = dados$chuvaQuantidade
x5 = dados$irrigacaoRotina


shapiro.test(y) # MENOR QUE 0.05, JOGA NO SPEARMAN
shapiro.test(x1)
shapiro.test(x2)
shapiro.test(x3)
shapiro.test(x4)
shapiro.test(x5)

cor.test(y, x1, method = 'spearman') # ACEITA O VALOR MENOR QUE 0.05
cor.test(y, x2, method = 'spearman')
cor.test(y, x3, method = 'spearman')
cor.test(y, x4, method = 'spearman')
cor.test(y, x5, method = 'spearman')

normalidade <- cbind(y, x1, x2, x3, x4, x5)
mult.norm(normalidade)

regressao <- lm(y ~ x1 + x2 + x3 + x4 + x5)
summary(regressao)

#EQUAÇÃO: 259,17 + 1,5 * sojaQualidade + 0,8 * fertilizanteQuantidade + 2,02 * diasSol - 0,5 * chuvaQuantidade + 49,79 * irrigacaoRotina  





























