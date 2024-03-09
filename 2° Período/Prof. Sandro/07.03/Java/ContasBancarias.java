package Java;
public class ContasBancarias {
    public static void main(String[] args) {
        ContaBancaria conta1 = new ContaBancaria("Tiago", 500);

        conta1.show();
        conta1.deposito(1000);
    }
}

class ContaBancaria {
    private String titular;
    private int saldo;

    public ContaBancaria(String titular, int saldo) {
        this.titular = titular;
        this.saldo = saldo;
    }

    public void show() {
        System.out.printf("O sr. %s tem em sua conta %d reais. ", titular, saldo);
    }

    public void deposito(int deposito) {
        saldo += deposito;
        System.out.printf("O novo valor da sua conta bancária é de %d", saldo);
    }
}
