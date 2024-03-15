public class Animal {
    private String tipo;
    private String cor;
    private String somPadrao;

    public Animal(String tipo, String cor, String somPadrao) {
        this.tipo = tipo;
        this.cor = cor;
        this.somPadrao = somPadrao;
    }

public void exibirInfo() {
    System.out.println("Tipo:" + tipo);
    System.out.println("Cor:" + cor);
    System.out.println("Som:" + somPadrao);
}

public static void main(String[] args) {
    Animal animal1 = new Animal ("Cachorro", "Marrom" , "Au Au!");
    Animal animal2 = new Animal ("Gato", "Preto", "Miau");

    animal1.exibirInfo();
    animal2.exibirInfo();
}
}
