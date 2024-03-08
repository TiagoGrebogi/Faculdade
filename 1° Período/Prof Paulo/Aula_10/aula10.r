library(readxl)
library(stats)
library(readxl)
pressupostos <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_10/pressupostos.xlsx", 
                           sheet = "bartlitt1")

#1 Histograma
set.seed(123)
dados_normais <- rnorm(50, mean= 0, sd = 1)
hist(dados_normais)

#2 QQ-Ploat
qqnorm(dados_normais)
qqline(dados_normais)

#3 = Shapiro
shapiros.test(dados_normais)



#4 = Histograma
set.seed(456)
dados_nao_normais <- rgamma(50, shape = 2, scale = 1)
hist(dados_nao_normais)

#5 = QQ-Plot
qqnorm(dados_nao_normais)
qqline(dados_nao_normais)

#6 = Shapiro
shapiro.test(dados_nao_normais)

#------------------------------------------------------------------------------#

grupo1 <- rnorm(25, mean = 5, sd = 2)
grupo2 <- rnorm(25, mean = 5, sd = 4)

grupos <- rep(c("grupo1", "grupo2"), each = 25)

dados <- data.frame(Grupo = grupos, Valor = c(grupo1, grupo2))

bartlett.test(Valor ~ Grupo, data = dados)

boxplot(grupo1, grupo2)

#------------------------------------------------------------------------------#
pressupostos <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_10/pressupostos.xlsx", 
                           sheet = "normalidade")
shapiro.test(pressupostos$nota1)


dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_10/pressupostos.xlsx", 
                           sheet = "bartlett1")
bartlett.test(tempo ~ grupo, data = dados)
boxplot(tempo ~ grupo, data = dados)


dados1 <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_10/pressupostos.xlsx", 
                    sheet = "bartlett2")
bartlett.test(nota ~ disciplina, data1 = dados)











