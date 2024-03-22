class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade
    
pessoas = [Pessoa("Prof. Paulo", 15), Pessoa("Prof. Sandro", 20), Pessoa("Prof. Elton", 35)]

indice = 1
pessoa = pessoas[indice]
print(f"Nome da pessoa no índice {indice}: {pessoa.nome}")
print(f"Idade da pessoa no índice {indice}: {pessoa.idade}")