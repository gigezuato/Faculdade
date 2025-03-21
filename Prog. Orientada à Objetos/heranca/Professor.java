package heranca;

public class Professor extends Pessoa {
    //Campos e atributos
    private String disciplina;
    private double salario;
    //Construtor
    public Professor(int id, String nome, int idade, String disciplina, double salario) {
        super(id, nome, idade);
        this.disciplina = disciplina;
        this.salario = salario;
    }
    //Getters
    public String getDisciplina() {
        return disciplina;
    }
    public double getSalario() {
        return salario;
    }
    //Setters
    public void setDisciplina(String disciplina) {
        this.disciplina = disciplina;
    }
    public void setSalario(double salario) {
        this.salario = salario;
    }
}