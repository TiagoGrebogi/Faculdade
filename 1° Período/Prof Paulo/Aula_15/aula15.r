library(QuantPsyc)
library(FSA)
library(readxl)

# REGRESSÃO SIMPLES

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_15/regressao.xlsx", 
                        sheet = "r1")

# x = variável independente -> idade, salario
# y = variável dependente -> oque vocÊ quer prever

# y = a + bx
Summarize(dados$idade)
Summarize(dados$patentes)

shapiro.test(dados$idade)
shapiro.test(dados$patentes) 

# Verificar Relação

cor.test(dados$patentes, dados$idade, method = 'pearson') # Inversamente propocional (está mais perto de -1)

# Verificar normalidade multivariada

mult.norm(dados)

# Rodar a regressão
# Sempre y em relação à X

regressao <- lm(dados$patentes ~ dados$idade)

# Verificar Regressão

summary(regressao) # P-VALOR INVERTE

plot(dados$idade, dados$patentes)
abline(regressao, col='red', lwd=2)

# patentes = 13,35 - 0,28 * idade

# REGRESSÃO MULTIPLA

library(QuantPsyc)
library(FSA)
library(readxl)

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_15/regressao.xlsx", 
                    sheet = "r2")
# Criar as variáveis

y = dados$defeitos
x1 = dados$tempo
x2 = dados$extras

# Estatísticas Descritivas

Summarize(y)
Summarize(x1)
Summarize(x2)

# Normalidade das variáveis

shapiro.test(y) # MAIOR QUE 0.05 ACEITA AINDA
shapiro.test(x1)
shapiro.test(x2)

# Verificar relação entre as variáveis

cor.test(y, x1, method = 'pearson')
cor.test(y, x2, method = 'pearson')

# Normalidade multivariada

normalidade <- cbind(y, x1, x2) # cbind == concatenação
mult.norm(normalidade)

# Rodar a regressão

regressao <- lm(y ~ x1+x2) # LM == Linear Modul
summary(regressao)


regressao <- lm(y ~ x2) # LM == Linear Modul
summary(regressao)

# EQUAÇÃO = DEFEITOS == 202 + 14,62 * horaExtra

# Normalidade dos resíduos

shapiro.test(regressao$residuals) # MAIOR QUE 0.05 ACEITA


dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_15/regressao.xlsx", 
                    sheet = "r3")

y <- dados$vendas
x1 <- dados$equipe
x2 <- dados$comissao

Summarize(y)
Summarize(x1)
Summarize(x2)

shapiro.test(y)
shapiro.test(x1)
shapiro.test(x2) # PARA VER O TIPO DE CORELAÇÃO QUE USA // PEARSON OU SPEARMAN

cor.test(y, x1, method = 'pearson') 
cor.test(y, x2, method = 'spearman') # SPEARMAN USA-SE QUANDO O P'VALOR DO SHAPIRO Dá RESULTADO DIFERENTE

normalidade <- cbind(y, x1, x2)
mult.norm(normalidade)

regressao <- lm(y ~ x1+x2) # LM == Linear Modul
summary(regressao)

regressao <- lm(y ~ x1) 
summary(regressao)

# EQUAÇÃO = 1743,92 -26,08 * equipe


dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_15/regressao.xlsx", 
                    sheet = "r4")

y = dados$vendas
x1 = dados$tv
x2 = dados$eventos

shapiro.test(y)
shapiro.test(x1)
shapiro.test(x2)

cor.test(y, x1, method = 'pearson')
cor.test(y, x2, method = 'pearson')

normalidade = cbind(y, x1, x2)
mult.norm(normalidade)

regressao = lm(y ~ x1+x2)
summary(regressao)

regressao = lm(y ~ x2)
summary(regressao)

# 32,23 + 5,08 * eventos

dados <- read_excel("G:/Meu Drive/codigo/FACULDADE/Prof Paulo/Aula_15/regressao.xlsx", 
                    sheet = "r5")

y = dados$classificacao
x1 = dados$pontos
x2 = dados$assistencias
x3 = dados$rebotes

shapiro.test(y)
shapiro.test(x1)
shapiro.test(x2)
shapiro.test(x3)

cor.test(y, x1, method = 'pearson')
cor.test(y, x2, method = 'pearson')
cor.test(y, x3, method = 'pearson')

normalidade = cbind(y, x1, x2, x3)
mult.norm(normalidade)

regressao = lm(y ~ x1+x2+x3)
summary(regressao)

regressao = lm(y ~ x1)
summary(regressao)

# 68,02 + 0,94 * pontos