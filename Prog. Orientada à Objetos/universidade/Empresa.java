package universidade;

public class Empresa extends Entidade implements Receita, Despesa {
    // Atributos
    private String cnpj;
    private double paga;
    private double recebe;
    //Construtor
    public Empresa(int id, String nome, String cnpj, double paga, double recebe) {
        super(id, nome)
        this.cnpj = cnpj;
        this.paga = paga;
        this.recebe = recebe;
    }
    //Getters
    public String getCnpj(){
        return cnpj;
    }
    public double getPaga(){
        return paga;
    }
    public double getRecebe(){
        return recebe;
    }
    // Setters
    public void setCnpj(String cnpj){
        this.cnpj = cnpj;
    }
    public void setPaga(double paga){
        this.paga = paga;
    }
    public void setRecebe(double recebe){
        this.recebe = recebe;
    }
    // Interface
    @Override
    public double getReceita(){
        return paga;
    }
    @Override
    public double getDespesa(){
        return recebe;
    }
}
