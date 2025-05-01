package universidade;

public abstract class Pessoa extends Entidade {
    // Atributos
    private String cpf;
    // Construtor
    public Pessoa(int id, String nome, String cpf){
        super(id, nome)
        this.cpf = cpf
    }
    // Getters
    public String getCpf(){
        return cpf;
    }
    public void setCpf(String cpf){
        this.cpf = cpf;
    }
    public String getDoc() {
        return "CPF: " + cpf;
    }
}
