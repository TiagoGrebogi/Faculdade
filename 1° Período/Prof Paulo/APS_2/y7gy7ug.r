hist(plan_idades, col = "blue", main = "Histograma de Idade", xlab = "Idade", ylab = "Frequencia")
#install.packages('FSA')
#install.packages('readxl')
#install.packages('sqldf')
library('FSA')
install.packages('FSA')
install.packages('readxl')
install.packages('sqldf')
#install.packages('FSA')
#install.packages('readxl')
#install.packages('sqldf')
library('FSA')
library('readxl')
library('sqldf')
netflix <- read_excel("C:/Users/tiago/Desktop/FACULDADE/Prof Paulo/APS_2/netflix.xlsx")
netflix <- read_excel("C:/Users/tiago/Desktop/FACULDADE/Prof Paulo/APS_2/netflix.xlsx")
hist(plan_idades, col = "blue", main = "Histograma de Idade", xlab = "Idade", ylab = "Frequencia")
netflix <- read_excel("C:\Users\tiago\OneDrive\Área de Trabalho\FACULDADE\Prof Paulo\APS_2\netflix.xlsx")
hist(plan_idades, col = "blue", main = "Histograma de Idade", xlab = "Idade", ylab = "Frequencia")
netflix <- read_excel("C:\Users\tiago\OneDrive\Área de Trabalho\FACULDADE\Prof Paulo\APS_2\netflix.xlsx")
#1
plan_idades <- netflix$idade
hist(plan_idades, col = "blue", main = "Histograma de Idade", xlab = "Idade", ylab = "Frequencia")
#2
barplot(sort(table(netflix$inscricao)), horiz = TRUE, col = "blue")
#3
boxplot(netflix$idade ~ netflix$inscricao, xlab = 'Inscrição', ylab = 'Idade', main = 'Inscrição x Idade', col = "blue")
#4
barplot(sort(table(netflix$genero)), col = 'green')
cls
clear
