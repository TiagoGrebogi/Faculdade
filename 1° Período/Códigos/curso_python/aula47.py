import os 

palavra_secreta = 'corno'
letras_acertadas = ''
tentativas = 0
while True:
    
    tentativas += 1
    letra_usuario = input('Digite uma letra: ')
    
    if len(letra_usuario) > 1:
        print('Você digitou mais de uma letra!')
        continue

    if letra_usuario in palavra_secreta:
        letras_acertadas += letra_usuario

    palavra_formada = ''

    for letra_secreta in palavra_secreta:
        if letra_secreta in letras_acertadas:
            palavra_formada += letra_secreta
        else:
            palavra_formada += '*'
            
    print(palavra_formada)

    if palavra_formada == palavra_secreta:
        os.system('cls')
        print('Você ganhou o jogo!')
        print('A palavra era:', palavra_secreta)
        print('Tentativas:', tentativas)
        letras_acertadas = ''
        tentativas = 0
