"""
Enumerate - enumera iteráveis (índices)
"""
lista = ['Tiago', 'Vera', 'Rogério', 'Jefferson Caminhões']
lista.append('Pedro')

# for item in enumerate(lista):
#     incice, nome = item
#     print(incice, nome)

for indice, nome in enumerate(lista):
    print(indice, nome)

# for item in enumerate(lista):
#     print('FOR da tupla')
#     for valor in item:
#         print(f'\t{valor}')
