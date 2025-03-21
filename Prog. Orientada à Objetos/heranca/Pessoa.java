package heranca;

public abstract class Pessoa {
    // Campos ou atributos
    private int id;
    private String nome;
    private int idade;
    // Construtores
    public Pessoa (int id, String nome, int idade) {
        this.id = id;
        this.nome = nome;
        this.idade = idade;
    }
    public Pessoa (int id, String nome) {
        this(id, nome, 0);
    }
    // Getters
    public int getId() {
        return id;
    }
    public String getNome() {
        return nome;
    }
    public int getIdade() {
        return idade;
    }
    // Setters
    public void setNome(String nome) {
        this.nome = nome;
    }
    public void setIdade(int idade) {
        if (idade >= 0) this.idade = idade;
    }
}
