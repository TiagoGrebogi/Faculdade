class Pessoa:
    def __init__(self, nome, idade, cidade):
        self.nome = nome
        self.idade = idade
        self.cidade = cidade
        
    def apresentacao(self):
        print(f"Olá, meu nome é {self.nome}, tenho {self.idade}, e moro na cidade de {self.cidade}")
        
pessoa1 = Pessoa("Alice", 25, "São José")
pessoa2 = Pessoa("Robson", 31, "Curitiba")
pessoa3 = Pessoa("Tiago", 18, "Japão")

pessoa1.apresentacao()
pessoa2.apresentacao()
pessoa3.apresentacao()