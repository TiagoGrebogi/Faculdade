"""
Exercício
Exiba os índices da lista
0 Tiago
1 Vera
2 Rogério
"""
lista = ['Tiago', 'Vera', 'Rogério', 'Jefferson Caminhões']
lista.append('Pedro')
indice_lista = 0

for nome in lista:
    print(indice_lista, nome)
    indice_lista += 1