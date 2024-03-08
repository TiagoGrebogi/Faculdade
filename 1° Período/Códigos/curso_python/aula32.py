"""
Faça um programa que peça ao usuário para digitar um número inteiro,
informe se este número é par ou ímpar. Caso o usuário não digite um número
inteiro, informe que não é um número inteiro.
"""
# numero_inteiro = input('Digite um número inteiro: ')
# if numero_inteiro.isdigit():
#     numero_float = int(numero_inteiro)
#     if numero_float % 2 == 0:
#         print('Este número é par!')
#     else:
#         print('Este número é impar!')
# else:
#     print('Este número não é inteiro!')
"""
Faça um programa que pergunte a hora ao usuário e, baseando-se no horário 
descrito, exiba a saudação apropriada. Ex. 
Bom dia 0-11, Boa tarde 12-17 e Boa noite 18-23.
"""
# hora = input('Digite o horário atual: ')

# try:
#     hora_inteira = int(hora)
#     if  hora_inteira >= 0 and hora_inteira <= 11:
#         print('Bom dia')
#     elif hora_inteira >= 12 and hora_inteira <= 17:
#         print('Boa tarde')
#     elif hora_inteira >= 18 and hora_inteira <= 23:
#         print('Boa noite')
#     else:
#         print('Você digitou um número invalido')
# except:
#     print('Digite apenas números inteiros!')
"""
Faça um programa que peça o primeiro nome do usuário. Se o nome tiver 4 letras ou 
menos escreva "Seu nome é curto"; se tiver entre 5 e 6 letras, escreva 
"Seu nome é normal"; maior que 6 escreva "Seu nome é muito grande". 
"""
nome = input('Digite seu nome: ')
tamanho_nome = len(nome)

if tamanho_nome > 1:
    if tamanho_nome <= 4:
        print('Seu nome é muito pequeno')
    elif tamanho_nome >= 5 and tamanho_nome <= 6:
        print('Seu nome é normal')
    else:
        print('Seu nome é muito grande')

else:
    print('Por favor, digite mais de uma letra!')