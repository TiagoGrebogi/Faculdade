"""
Iterável -> str, range, etc (__iter__)
Iterador -> quem sabe entregar um valor por vez
next -> me entregue o próximo valor
iter -> me entregue seu iterador
"""
#__iter__()

# texto = iter('Tiago')
# print(texto.__next__())
# print(texto.__next__())
# print(texto.__next__())
# print(texto.__next__())
# print(texto.__next__())

# for letra in texto
texto = ('Tiago') # Iterável
iterador = iter(texto) # Iterador

while True:
    try:
        letra = next(iterador)
        print(letra)
    except StopIteration:
        break

# for letra in texto:
#     print(letra)