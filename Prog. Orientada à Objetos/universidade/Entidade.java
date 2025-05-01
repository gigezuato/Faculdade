package universidade;

public abstract class Entidade {
    // Atributos
    private int id;
    private String nome;
    //Construtor
    public Entidade(int id, String nome) {
        this.id = id;
        this.nome = nome
    }
    // Getters
    public int getId(){
        return id;
    }
    public String getNome(){
        return nome;
    }
    //Setters
    public void setNome(String nome){
        this.nome = nome;
    }
}
