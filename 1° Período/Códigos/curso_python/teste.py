def encontrar_maior_numero(lista):
    if len(lista) == 0:
        return None
    maior_numero = lista[0]
    for numero in lista:
        if numero > maior_numero:
            maior_numero = numero
    return maior_numero

# Solicitar ao usuário uma lista de números
entrada = input("Digite uma lista de números separados por espaço: ")
numeros = [int(numero) for numero in entrada.split()]
# Encontrar o maior número da lista
maior_numero = encontrar_maior_numero(numeros)
# Exibir o resultado
if maior_numero is not None:
    print("O maior número da lista é:", maior_numero)
else:
    print("A lista está vazia.")