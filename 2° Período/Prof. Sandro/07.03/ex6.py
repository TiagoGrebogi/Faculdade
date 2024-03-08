class ProdutoEletronico:
    def __init__(self, nome, marca, preco):
        self.nome = nome
        self.marca = marca
        self.preco = preco
        
    def exibir(self):
        print(f"O produto é {self.nome}, a marca é {self.marca}, e o preço é {self.preco}")
        
produto1 = ProdutoEletronico("Placa de Vídeo", "MSI", 1899)
produto2 = ProdutoEletronico("WaterCooler", "RiseMode", 300)

produto1.exibir()
produto2.exibir()