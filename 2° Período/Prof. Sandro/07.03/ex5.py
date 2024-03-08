class Livro:
    def __init__(self, titulo, autor, numero_de_paginas):
        self.titulo = titulo
        self.autor = autor
        self.numero_de_paginas = numero_de_paginas
        
    def imprimir(self):
        print(f"O livro é {self.titulo}, seu autor é {self.autor}, e seu número de páginas é {self.numero_de_paginas}")


livro1 = Livro("The Witcher", "Andrzej Sapkowski", 235)
livro2 = Livro("Harry Potter", "J. K. Rowling", 1283)

livro1.imprimir()
livro2.imprimir()