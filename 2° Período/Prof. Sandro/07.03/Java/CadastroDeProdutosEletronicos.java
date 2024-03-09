package Java;
public class CadastroDeProdutosEletronicos {
    public static void main(String[] args) {
        ProdutoEletronico produto1 = new ProdutoEletronico("RTX 4060", "MSI", 1899);

        produto1.show();
    }
}

class ProdutoEletronico {
    private String nome;
    private String marca;
    private int preco;

    public ProdutoEletronico(String nome, String marca, int preco) {
        this.nome = nome;
        this.marca = marca;
        this.preco = preco;
    }

    public void show(){
        System.out.printf("O produto é %s, sua marca é %s, e seu preço é de %d.", nome, marca, preco);
    }
}