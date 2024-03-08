import java.util.*;
import java.lang.*;
import java.io.*;

public class Main {
    public static void main(String[] args) {
        Pessoa pessoa1 = new Pessoa("Alice", 25);
        Pessoa pessoa2 = new Pessoa("Bob", 30);

        pessoa1.apresentar();
        pessoa2.apresentar();
    }

    static class Pessoa {
        private String nome;
        private int idade;

        public Pessoa(String nome, int idade) {
            this.nome = nome;
            this.idade = idade;
        }

        public void apresentar() {
            System.out.println("Olá, meu nome é " + nome + " e tenho " + idade + " anos.");
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String novoNome) {
            nome = novoNome;
        }
    }
}
