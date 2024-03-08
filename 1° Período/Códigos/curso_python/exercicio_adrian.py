def repetidos(n):
    if len(n) == 0 or len(n) == 1:
        return n
    if n[0] in n[1:]:
        return repetidos(n[1:])
    else:
        return n[0] + repetidos(n[1:])
texto = "aaaaAAAAAaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbcdefgg"
res = repetidos(texto.casefold())
print(res)