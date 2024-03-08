import java.util.*;
import java.lang.*;
import java.io.*;

public class Main {
    public static void main(String[] args) {
        Aluno pessoa1 = new Aluno("Bibi", 2512, "Direito");
        Aluno pessoa2 = new Aluno("Tiago", 3031, "Engenharia de Software");

        pessoa1.apresentar();
        pessoa2.apresentar();
    }

    static class Aluno {
        private String nome;
        private int matricula;
        private String curso;

        public Aluno(String nome, int matricula, String curso) {
            this.nome = nome;
            this.matricula = matricula;
            this.curso = curso;
        }

        public void apresentar() {
            System.out.println("Olá, meu nome é " + nome + " minha matricula é " + matricula + " e faço o curso de " + curso);
        }

        public String getNome() {
            return nome;
        }

        public void setNome(String novoNome) {
            nome = novoNome;
        }
    }
}
