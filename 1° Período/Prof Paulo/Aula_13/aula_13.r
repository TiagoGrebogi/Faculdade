library(readxl)
library(FSA)
library(stats)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_13/naoParametricos.xlsx", 
                              sheet = "m1")

# Mann-Whitney

## Esporte x Dia

# Normalidade

shapiro.test(dados$domingo)

bartlett.test(domingo ~ esporte, data = dados)

# Gráfico

qqnorm(dados$domingo)
qqline(dados$domingo)

# Boxplot

boxplot(dados$domingo ~ dados$esporte)

# Mann-Whitney

# H0: As medianas são iguais ou próximas
# H1: As medianas são diferentes

wilcox.test(domingo ~ esporte, data = dados, paired = FALSE)

Summarize(domingo ~ esporte, data = dados)

# Normalidade

shapiro.test(dados$quarta)

# Variância

bartlett.test(quarta ~ esporte, data = dados)

# Usar o test.t apenas quando os dois pressupostos derem certo

wilcox.test(quarta ~ esporte, data = dados, paired = FALSE)

Summarize(quarta ~ esporte, data = dados)

# Boxplot

boxplot(quarta ~ esporte, data = dados)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_13/naoParametricos.xlsx", 
                    sheet = "m2")

shapiro.test(dados$vendas)
 
bartlett.test(vendas ~ empresa, data = dados)

wilcox.test(vendas ~ empresa, data = dados)

Summarize(vendas ~ empresa, data = dados)

boxplot(vendas ~ empresa, data = dados)


dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_13/naoParametricos.xlsx", 
                    sheet = "m3")

shapiro.test(dados$defeitos)

bartlett.test(defeitos ~ turno, data = dados)

wilcox.test(defeitos ~ turno, data = dados)

Summarize(defeitos ~ turno, data = dados)

boxplot(defeitos ~ turno, data = dados)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_13/naoParametricos.xlsx", 
                    sheet = "k1")

shapiro.test(dados$funcionarios)

bartlett.test(funcionarios ~ empresa, data = dados)

# KW
# HO: As medianas são iguais ou próximas
# H1: Existe pelo menos uma mediana diferente

kruskal.test(funcionarios ~ empresa, data = dados)

# Verificar diferenças

dunnTest(funcionarios ~ empresa, data = dados)

Summarize(funcionarios ~ empresa, data = dados)

boxplot(funcionarios ~ empresa, data = dados)
qqnorm(dados$funcionarios)
qqline(dados$funcionarios)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_13/naoParametricos.xlsx", 
                    sheet = "k2")

shapiro.test(dados$glicose)

bartlett.test(glicose ~ refeicoes, data = dados)

kruskal.test(glicose ~ refeicoes, data = dados)

dunnTest(glicose ~ refeicoes, data = dados)

Summarize(glicose ~ refeicoes, data = dados)

boxplot(glicose ~ refeicoes, data = dados)
