package universidade;

public class Professor extends Pessoa implements Despesa {
    // Atributos
    private int funcional;
    private String disciplina;
    private double salario;
    //Construtor
    public Professor(int id, String nome, String cpf, int funcional, String disciplina, double salario){
        super(id, nome, cpf)
        this.funcional = funcional;
        this.disciplina = disciplina;
        this.salario = salario;
    }
    // Getters
    public int getFuncional(){
        return funcional;
    }
    public String getDisciplina(){
        return disciplina;
    }
    public double getSalario(){
        return salario;
    }
    // Setters
    public void setFuncional(int funcional){
        this.funcional = funcional;
    }
    public void setDisciplina(String disciplina){
        this.disciplina = disciplina;
    }
    public void setSalario(double salario){
        this.salario = salario;
    }
    // Interface
    @Override
    public double getDespesa(){
        return salario;
    }
}
