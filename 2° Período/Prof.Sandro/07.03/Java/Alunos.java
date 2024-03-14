package Java;
public class Alunos {
    public static void main(String[] args) {
        Aluno aluno1 =  new Aluno("Robson", 871263, "Engenharia de Sexo");
        Aluno aluno2 =  new Aluno("Alexia", 987123, "Sexo de Engenharia");

        aluno1.show();
        aluno2.show();
    }
}

class Aluno {
    private String nome;
    private int matricula;
    private String curso;

    public Aluno (String nome, int matricula, String curso) {
        this.nome = nome;
        this.matricula = matricula;
        this.curso = curso;
    }

    public void show() {
        System.out.println("O nome do aluno é " + nome + ", sua matricula é " + matricula + ", e seu curso é " + curso);
    }


}

