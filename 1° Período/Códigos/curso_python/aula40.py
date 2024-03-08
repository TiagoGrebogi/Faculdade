""" Calculadora com while """
import os
while True:

    numero_1 = input('Digite o primeiro número: ')
    numero_2 = input('Digite o segundo número: ')
    operacao = input('Digite sua operação: ')

    numero_validos = None
    numero_1_float = 0
    numero_2_float = 0
    try:
        numero_1_float = float(numero_1)
        numero_2_float = float(numero_2)
        numero_validos = True
    except:
        numero_validos = None
    
    if numero_validos is None:
        print('Um ou ambos os números digitados são inválidos!')
        continue

    operadores_permitidos = '+-/*%'

    if operacao not in operadores_permitidos:
        print('Operador Inválido!')
        continue

    if len(operacao) > 1:
        print('Digite apenas 1 operador!')
        continue

    if operacao == '+':
        print(f'O resultado da operação é: {numero_1_float + numero_2_float:.2f}')
    elif operacao == '-':
        print(f'O resultado da operação é: {numero_1_float - numero_2_float:.2f}')
    elif operacao == '*':
        print(f'O resultado da operação é: {numero_1_float * numero_2_float:.2f}')
    elif operacao == '/':
        if numero_2_float == '0':
           print("0 não é um número válido para a operação.")
        else:
            print(f'O resultado da operação é: {numero_1_float / numero_2_float:.2f}')
    elif operacao == '%':
        print(f'O resultado da operação é: {numero_1_float ** (1/2):.2f}')
    else:
        print('Algo deu muito errado!')
    sair = input('Quer sair? [S]im: ').lower().startswith('s')
    os.system('cls')
    if sair:
        break