package universidade;

public class Aluno extends Pessoa implements Receita {
    // Atributos
    private String ra;
    private String curso;
    private double mensalidade;
    // Construtores
    public Aluno(int id, String nome, String cpf, String ra, String curso, double mensalidade){
        super(id, nome, cpf)
        this.ra = ra;
        this.curso = curso;
        this.mensalidade = mensalidade;
    }
    // Getters
    public String getRa(){
        return ra;
    }
    public String getCurso(){
        return curso;
    }
    public double getMensalidade(){
        return mensalidade;
    }
    // Setters
    public void setRa(String ra){
        this.ra = ra;
    }
    public void setCurso(String curso){
        this.curso = curso;
    }
    public void setMensalidade(double mensalidade){
        this.mensalidade = mensalidade;
    }
    // Interface
    @Override
    public double getReceita(){
        return mensalidade;
    }
}
