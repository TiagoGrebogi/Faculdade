#install.packages('FSA')
#install.packages('readxl')
#install.packages('sqldf')

library(FSA)
library(readxl)
library(sqldf)

plan <- read_excel('C:/Users/tiago/Desktop/FACULDADE/Prof Paulo/APS_1/salarios.xlsx')


# 1
barplot(table(salarios$idade), col = 'purple', main = 'Distribuição das Idades')

# 2
boxplot((salarios$salario ~ salarios$faixaEtaria), col = 'purple', main = 'Variação do salário', xlab = 'Idades', ylab = 'Salários')

# 3
barplot(table(salarios$sexo), col = 'purple', main = 'Distribuição de gêneros', xlab = 'Sexo', ylab = 'Respondentes')

# 4
barplot(table(salarios$satisfacaoEmpresa), col = 'purple', main = 'Satisfação na Empresa', ylab = 'Respondentes')

# 5
boxplot((salarios$salario ~ salarios$regiao), col = 'purple', main = 'Variação Salárial', xlab = 'Região', ylab = 'Salário')

# 6
barplot(table(salarios$tipoContrato), col = 'purple', main = 'Tipos de contrato', ylab = 'Respondentes')

# 7
boxplot((salarios$salario ~ salarios$tipoContrato), col = 'purple', main = 'Variação do Salário', xlab = 'Tipos de Contrato', ylab = 'Salário')

#8
plot((salarios$idade ~ salarios$salario), col = 'purple', main = 'Relação entre idade de salário', xlab = 'Salário', ylab = 'Idade')

