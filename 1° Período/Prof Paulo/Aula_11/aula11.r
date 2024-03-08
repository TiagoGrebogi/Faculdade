library(readxl)
library(FSA)
library(stats)
dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                     sheet = "t1")

# Normalidade

#H0: Dados normais
#H1: Dados não normais

shapiro.test(dados$vendas)

qqnorm(dados$vendas)
qqline(dados$vendas)

# Variância - Teste de homogenidade de variância

#H0: Variância iguais ou próximas
#H1: Variância diferente

bartlett.test(vendas ~ empresa, data = dados)

boxplot(vendas ~ empresa, data = dados)

# Teste T

#H0: As médias são iguais ou próximas
#H1: As médias são diferentes

t.test(dados$vendas ~ dados$empresa)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                    sheet = "t2")

#Normalidade

#H0:Dados normais
#H1: Dados não normais

shapiro.test(dados$carga)

#Aceita o valor

qqnorm(dados$carga)
qqline(dados$carga)

# Variância - 

#H0: Variância iguais ou próximas
#H1: Variância diferente

bartlett.test(carga ~ etaria, data = dados)

boxplot(carga ~ etaria, data = dados)

t.test(carga ~ etaria, data= dados) #As médias tem diferença

Summarize(carga ~ etaria, data = dados)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                    sheet = "t3")
# Programa Favorito x Idade
#H0: As médias de idades entre os acompanhantes de documentários e filmes são iguais
#H0: As médias de idades entre os acompanhantes de documentários e filmes são diferentes

# Normalidade
shapiro.test(dados$idade)

# Variância
bartlett.test(idade ~ programa, data = dados)
boxplot(idade ~ programa, data = dados)

t.test(idade ~ programa, data = dados)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                    sheet = "tPareado1")

shapiro.test(dados$antes)
shapiro.test(dados$depois)

t.test(dados$antes, dados$depois, paired = TRUE)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                    sheet = "tPareado2")

shapiro.test(dados$antes)
shapiro.test(dados$depois)

t.test(dados$antes, dados$depois, paired = TRUE)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                    sheet = "tPareado3")
shapiro.test(dados$antes)
shapiro.test(dados$depois)
dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_11/testeT.xlsx", 
                    sheet = "tPareado2")
t.test(dados$antes, dados$depois, paired = TRUE)

Summarize(dados$antes)
