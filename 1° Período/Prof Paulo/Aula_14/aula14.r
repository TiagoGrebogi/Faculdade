library(readxl)

# -1 0 1

# Mais próximo de 1: correlação fortemente proporciomal
# Mais próximo de -1: correlação inversamente proporcional
# Mais próximo de 0: sem relação

# CORRELAÇÃO NÃO IMPLICA EM CAUSA!!!!!

# R² = demonstra o quanto da variável y é explicada pela variável x
dados <- read_excel("correlacao.xlsx", 
                         sheet = "p1")

# X e Y
# H0: não há relação significativa
# H1: existe relação significativa

shapiro.test(dados$x)
shapiro.test(dados$y)

# Verificar linearidade
plot(dados$x ~ dados$y)

# Correlação de Pearson
# H0: não há relação significativa
# H1: existe relação significativa

correlacao <- cor.test(dados$x, dados$y, method = 'pearson')
correlacao

# Verificar variação

R2 = as.numeric(correlacao$estimate ^ 2) * 100
R2

dados <- read_excel("correlacao.xlsx", 
                    sheet = "p2")

shapiro.test(dados$agua)
shapiro.test(dados$temperatura)

plot(dados$agua, dados$temperatura)

correlacao <- cor.test(dados$agua, dados$temperatura, method = 'pearson')
correlacao

R2 = as.numeric(correlacao$estimate ^ 2) * 100
R2


dados <- read_excel("correlacao.xlsx", 
                    sheet = "p3")

shapiro.test(dados$consumo)
shapiro.test(dados$ganho)

plot(dados$consumo, dados$ganho)

correlacao <- cor.test(dados$consumo, dados$ganho, method = 'pearson')
correlacao

R2 = as.numeric(correlacao$estimate ^ 2) * 100
R2

dados <- read_excel("correlacao.xlsx", 
                    sheet = "r1")

shapiro.test(dados$notas)
shapiro.test(dados$qi)

correlacao = cor.test(dados$notas, dados$qi, method = 'spearman')
correlacao

R2 = as.numeric(correlacao$estimate ^ 2) * 100
R2

plot(dados$notas, dados$qi)

dados <- read_excel("correlacao.xlsx", 
                    sheet = "r2")

shapiro.test(dados$popularidade)
shapiro.test(dados$aparicoes)

correlacao <- cor.test(dados$popularidade, dados$aparicoes, method = 'spearman')
correlacao

R2 = as.numeric(correlacao$estimate ^ 2) * 100
R2

plot(dados$popularidade, dados$aparicoes)

dados <- read_excel("quiQuadrado.xlsx", 
                    sheet = "q1")

observado <- table(dados$sexo, dados$resposta)
observado

prop.table(observado, 1) * 100 # 1 == LINHA, 2 == COLUNA

# H0: as variáveis não estão associadas
# H1: as variáveis estão associadas
chisq.test(observado)


















