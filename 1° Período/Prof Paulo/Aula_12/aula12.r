library(FSA)
library(readxl)
library(stats)

dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_12/anova.xlsx", 
                    sheet = "1")
View(dados)

# Normalidade (0,05)
# H0: Os dados seguem uma distribuição normal (Maior)
# H1: Os dados se afastam de uma distribuição normal (Menor)
shapiro.test(dados$nota)

# Variância (0,05)
# H0: As variâncias são próximas ou iguais (Maior)
# H1: As ariâncias são diferentes (Menor)

bartlett.test(nota ~ disciplina, data = dados)

# ANOVA ()
# H0: As médias são iguais ou próximas (Maior)
# H1: Pelo menos uma das médias é diferente (Menor)

summary(aov(dados$nota ~ dados$disciplina))

# Boxplot
boxplot(dados$nota ~ dados$disciplina)

# Verificar as diferenças
TukeyHSD(aov(dados$nota ~ dados$disciplina)) # Diferença da média

# Estatísticas descritivas
Summarize(dados$nota ~ dados$disciplina) # Conferir se a diferença da média está certa


dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_12/anova.xlsx", 
                    sheet = "2")

shapiro.test(dados$vendas)

bartlett.test(vendas ~ representante, data = dados)

summary(aov(dados$vendas ~ dados$representante))

boxplot(dados$vendas ~ dados$representante)

TukeyHSD(aov(dados$vendas ~ dados$representante))

Summarize(dados$vendas ~ dados$representante)


dados <- read_excel("C:/Users/tiago/OneDrive/Área de Trabalho/FACULDADE/Prof Paulo/Aula_12/anova.xlsx", 
                    sheet = "3")

shapiro.test(dados$intencao)

bartlett.test(intencao ~ tipo, data = dados)

summary(aov(intencao ~ tipo, data = dados))

TukeyHSD(aov(intencao ~ tipo, data = dados))

Summarize(dados$intencao ~ dados$tipo)

# Shapiro == Avaliar Normalidade
# Bartlett == Avaliar Variâncias
# ANOVA == Verificar possíveis diferenças entre as Médias
# Tukey == Verificar as Diferenças
# Estatísticas descritivas == Descrever os Dados





