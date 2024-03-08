while True:
    n1 = input('Digite o primeiro numero: ')
    n2 = input('Digite o segundo numero: ')
    op = input('Digite a operacao [A]adicao | [S]subtracao | [D]divisao | [M]multiplicacao: ').lower()


    try:
        n1_float = float(n1)
        n2_float = float(n2)
        num_validos = True

    except:
        num_validos = False

    if num_validos == False:
        print('Letras nao sao validas')
        break
    if NameError:
        continue

    if op == 'a':
        operacao = n1_float + n2_float
        print(operacao)
    elif op == 's':
        operacao = n1_float - n2_float
        print(operacao)
    elif op == 'd': 
        operacao = n1_float / n2_float
        print(operacao)
    elif op == 'm':
        operacao = n1_float * n2_float
        print(operacao)
    else:
        print('Operacao invalida.')