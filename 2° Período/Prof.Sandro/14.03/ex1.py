class Pessoa:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade
        
    def exibir_info (self):
        print("Nome: ", self.nome)
        print("Idade: ", self.idade)
    
pessoa1 = Pessoa("João", 30)
pessoa2 = Pessoa("Maria", 25)

pessoa1.exibir_info()
pessoa2.exibir_info()