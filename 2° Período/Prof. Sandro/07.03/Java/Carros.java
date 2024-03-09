package Java;
public class Carros {
    public static void main(String[] args) {
        Carro carro1 = new Carro("Chevette", 1990, "Prata");
        Carro carro2 = new Carro("Coíça", 1997, "Verde");

        carro1.show();
        carro2.show();
    }
}

class Carro {
    private String modelo;
    private int ano;
    private String cor;

    public Carro(String modelo, int ano, String cor) {
        this.modelo = modelo;
        this.ano = ano;
        this.cor = cor;
    }

    public void show(){
        System.out.printf("O modelo do carro é %s, seu ano é %d, e sua cor é %s \n", modelo, ano, cor);
    }
    
}
