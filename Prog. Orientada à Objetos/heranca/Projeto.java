package heranca;

public class Projeto {
    public static void main(String[] args) {
        //Pessoa p1 = new Pessoa(1, "John Doe", 11);
        //Pessoa p2 = new Pessoa(2, "Jane Doe");
        //System.out.println("Id: " + p1.getId());
        //System.out.println("Nome: " + p1.getNome());
        //System.out.println("Idade: " + p1.getIdade());
        //System.out.println("Id: " + p2.getId());
        //System.out.println("Nome: " + p2.getNome());
        //System.out.println("Idade: " + p2.getIdade());

        Aluno sheldon = new Aluno(3, "Sheldon Cooper", 33, "Física", 3000.00);

        System.out.println("Id: " + sheldon.getId());
        System.out.println("Nome: " + sheldon.getNome());
        System.out.println("Idade: " + sheldon.getIdade());
        System.out.println("Curso: " + sheldon.getCurso());
        System.out.println("Mensalidade: " + sheldon.getMensalidade());

        Professor leonard = new Professor(-5, "Leonard", 34, "Física", 4500.00);
        System.out.println("Id: " + leonard.getId());
        System.out.println("Nome: " + leonard.getNome());
        System.out.println("Idade: " + leonard.getIdade());
        System.out.println("Curso: " + leonard.getDisciplina());
        System.out.println("Mensalidade: " + leonard.getSalario());
    }
}
