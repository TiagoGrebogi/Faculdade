# Operadores in e not in
# Strings são iteráveis
#  0 1 2 3 4 
#  T i a g o
# -5-4-3-2-1

nome = input('Digite seu nome: ')
encontrar = input('Digite o que deseja encontrar: ')

if encontrar in nome:
    print(f"'{encontrar}' está em {nome}")
else:
    print(f"'{encontrar}' não está em {nome}")
# print(nome[0])
# print(nome[1])
# print(nome[2])
# print(nome[-2])
# print(nome[-1])

# print('a' in nome)
# print('z' in nome)
# print('Tia' in nome)
# print(10 * '-')
# print('ho' not in nome)

