public class Pessoa {
    private String nome;
    private int idade;
    private String cpf;
    private String cartao;
    private String raca;

    public Pessoa(String nome, int idade, String cpf, String cartao, String raca) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
        this.cartao = cartao;
        this.raca = raca;
    }

    public void exibirInfo() {
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("CPF: " + cpf);
        System.out.println("Cartão: " + cartao);
        System.out.println("Raça: " + raca);
    }

    public static void main(String[] args) {
        Pessoa pessoa1 = new Pessoa("João", 30, "02715073909", "7516847512300597", "Branco");
        Pessoa pessoa2 = new Pessoa("Maria", 25, "02715793901", "8451200478456956", "Pardo");

        pessoa1.exibirInfo();
        pessoa2.exibirInfo();
    }
}