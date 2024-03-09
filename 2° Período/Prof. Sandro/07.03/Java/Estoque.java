package Java;
public class Estoque {
    public static void main(String[] args) {
        Produto produto1 = new Produto("Amendoim", 89123);
        Produto produto2 = new Produto("Paçoca", 98123);

        produto1.Show();
        produto2.Show();
    }
}

class Produto {
    private String nome;
    private int quantidadeEmEstoque;

    public Produto (String nome, int quantidadeEmEstoque) {
        this.nome = nome;
        this.quantidadeEmEstoque = quantidadeEmEstoque;
    }


    public void Show() {
        System.out.println("O nome do produto é " + nome + " e a quantidade é: " + quantidadeEmEstoque);
    }
}