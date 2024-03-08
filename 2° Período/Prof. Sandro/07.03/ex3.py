class Carro:
    def __init__(self, modelo, ano, cor):
        self.modelo = modelo
        self.ano = ano
        self.cor = cor
        
    def exibir(self):
        print(f"O modelo do carro é {self.modelo}, seu ano é {self.ano}, e sua cor é {self.cor}")
        
carro1 = Carro("Chevette", 1990, "Prata")
carro2 = Carro("Corsa", 1997, "Verde-Musgo")
carro3 = Carro("Voyage", 2017, "Prata")

carro1.exibir()        
carro2.exibir()        
carro3.exibir()        