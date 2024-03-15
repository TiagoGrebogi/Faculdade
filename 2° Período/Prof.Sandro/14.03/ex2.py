class Animal:
    def __init__(self, tipo, cor, som_padrao):
        self.tipo = tipo
        self.cor = cor
        self.som_padrao = som_padrao
        
    def som(self):
        print(self.som_padrao)
        
    def exibir_info(self):
        print("Tipo: ", self.tipo)
        print("Cor: ", self.cor, "\n")
        
meu_cachorro = Animal("Mamífero", "Marrom", "Au Au!")
meu_cachorro.som()
meu_cachorro.exibir_info()

meu_gato = Animal ("Mamífero", "Branco", "Miau Miau!")
meu_gato.som()
meu_gato.exibir_info()