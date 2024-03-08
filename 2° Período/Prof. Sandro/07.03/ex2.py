class Produto:
    def __init__ (self, nome, quantidade_em_estoque):
        self.nome = nome
        self.quantidade_em_estoque = quantidade_em_estoque
        
    def estoque(self):
        print(f"A empresa é {self.nome}, e a quantidade de itens em estoque {self.quantidade_em_estoque}")
        
empresa1 = Produto("Pepsico", 30)
empresa2 = Produto("Coca-Cola", 12)

empresa1.estoque()
empresa2.estoque()
