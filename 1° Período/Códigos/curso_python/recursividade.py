# def fatorial (n):
#     if n == 0 or n == 1:
#         return 1
#     else:
#         return n * fatorial (n - 1)
    
# x = int(input('Digite um número para calcular seu fatorial: '))
# print('O fatorial de {} é {}.'.format(x, fatorial(x)))


def fibonacci (n):
    if n <= 1:
        return n
    else:
        return fibonacci (n -1) + fibonacci (n -2)
x = int(input('Digite um número para calcular seu fibonacci: '))
res = fibonacci(x-1)
print('O fibonacci de {} é {}.'.format(x, res))
