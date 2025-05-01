package universidade;

public class Teste {
    public static void main(String[] args) {
        Aluno sheldon = new Aluno(1, "Sheldon Cooper", null, "001", "Física", 1000);
        Aluno amy = new Aluno(2, "Amy Farah Fowller", null, "002", "Microbiologia", 900);
        Aluno leonard = new Aluno(3, "Leonard", null, "003", "Física", 1000);
        Empresa microsoft = new Empresa(4, "Microsoft", null, 200, 300);
        Empresa ibm = new Empresa(5, "IBM", null, 100, 0);

        Entidade [] entidades = [
            sheldon, amy, leonard, microsoft, ibm
        ];
        
        double total = 0;
        for (Entidade entidade: entidades){
            if (entidade instanceof Aluno){
                Aluno aluno = (Aluno) entidade;
                total += aluno.getMensalidade();
            } else if (entidade instanceof Empresa){
                Empresa empresa = (Empresa) entidade;
                total += empresa.getPaga();
            }
        }
    }
    System.out.println("Total: " + total)
}
