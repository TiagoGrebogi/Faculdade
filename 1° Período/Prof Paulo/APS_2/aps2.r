#install.packages('FSA')
#install.packages('readxl')
#install.packages('sqldf')

library('FSA')
library('readxl')
library('sqldf')

netflix <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/APS_2/netflix.xlsx")
plan_idades <- netflix$idade


#1 
hist(plan_idades, col = "blue", main = "Histograma de Idade", xlab = "Idade", ylab = "Frequencia")

#2
barplot(sort(table(netflix$inscricao)), horiz = TRUE, col = "blue")

#3
boxplot(netflix$idade ~ netflix$inscricao, xlab = 'Inscrição', ylab = 'Idade', main = 'Inscrição x Idade', col = "blue")

#4
barplot(sort(table(netflix$genero)), col = 'green')

#5
boxplot(netflix$idade ~ netflix$equipamento, xlab = 'Equipamento', ylab = 'Idade', main = 'Equipamento x Idade', col = "green")

#12
barplot(table(netflix$genero, netflix$inscricao),
        main = "Inscrição x Gênero",
        xlab = "Tipo de Inscrição", ylab = "Quantidade",
        col = c("green", "blue"),
        legend.text = c("Masculino", "Feminino"),
        beside = TRUE)

#13
boxplot(idade ~ inscricao, data = netflix,
        main = "Variação de idade por tipo de inscrição", col = "green",
        xlab = "Inscrição", ylab = "Idade")

boxplot(idade ~ equipamento, data = netflix,
        main = "Variação de idade por equipamento", col = "green",
        xlab = "Equipamento", ylab = "Idade")

#14
barplot(table(netflix$ano, netflix$inscricao),
        main = "Inscrição x Ano",
        xlab = "Tipo de Inscrição", ylab = "Ano",
        col = c("blue", "green", "red"), ylim = c(0, 1200),
        legend.text = c("2021", "2022", "2023"),
        beside = TRUE )

#15
barplot(table(netflix$equipamento, netflix$pais),
        main = "País x Equipamento",
        xlab = "País", ylab = "Equipamento", ylim = c(0, 150),
        col = c("green", "blue", "red", "orange"),
        legend.text = c("Laptop", "Smart TV", "Smartphone", "Tablet"),
        cex.names = 0.4,
        beside = TRUE )

# Calcule as médias de idade por equipamento
medias_por_equipamento <- tapply(netflix$idade, netflix$equipamento, mean)

# Crie um gráfico de barras da média de idade por equipamento
barplot(medias_por_equipamento,
        main = "Média de Idade por Equipamento",
        xlab = "Equipamento", ylab = "Idade Média", ylim = c(0, 40),
        col = "green")

#17
hist(netflix$idade ~ netflix$inscricao, col = "purple")
hist(netflix$idade ~ netflix$pais, col = "purple")