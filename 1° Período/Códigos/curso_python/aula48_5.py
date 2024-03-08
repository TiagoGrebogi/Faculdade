"""
Cuidados com dados mutáveis
= - copiado o valor (imutáveis)
= - aponta para o mesmo valor na memória (mutável)
"""
lista_a = ['Tiago', 'Jefferson', 123123, True]
lista_b = lista_a.copy()

lista_a[0] = 'Qualquer Coisa'
print(lista_a)
print(lista_b)
