package Java;
public class RegistroDeLivros {
    public static void main(String[] args) {
        Livro livro1 = new Livro("The Witcher", "Andrzej Sapkowski", 320);
        Livro livro2 = new Livro("A Biblia Sagrada", "Jesus Christ", 950);

        livro1.show();
        livro2.show();
    }
}

class Livro {
    private String titulo;
    private String autor;
    private int numeroDePaginas;

    public Livro(String titulo, String autor, int numeroDePaginas) {
        this.titulo = titulo;
        this.autor = autor;
        this.numeroDePaginas = numeroDePaginas;
    }

    public void show() {
        System.out.printf("O nome do livro é %s, o seu autor é %s, e o número de páginas é %d. \n", titulo, autor, numeroDePaginas);
    }
}