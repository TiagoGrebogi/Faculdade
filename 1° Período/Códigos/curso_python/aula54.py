
import os
lista = []

while True:
    
    print('Lista de compras!')
    opcao = input('Oque deseja fazer?\n[I]nserir [A]pagar [L]istar [S]air: ').lower()
    
    if opcao == 'i':
        os.system('cls')
        item = input('Qual item deseja adicionar? ')
        lista.append(item)

    elif opcao == 'a':
        os.system('cls')
        item_apagar = input('Qual item deseja remover? ')

        try:
            indice = int(item_apagar)
            del lista[indice]
        except ValueError:
            print('Por favor digite número int.')
        except IndexError:
            print('Índice não existe na lista')
        except Exception:
            print('Erro desconhecido')
            

    elif opcao == 'l':
        os.system('cls')

        if len(lista) == 0:
            print('Não à nada na lista!')
        for i, valor in enumerate(lista):
            print(i, valor)
    elif opcao == 's':
        print('Encerrando programa...')
        break

    else:
        os.system('cls')
        print('Erro desconhecido!')
