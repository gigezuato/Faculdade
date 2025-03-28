package horario;

public class Projeto {
    public static void main(String[] args) {
        Horario h1 = new Horario(23, 25, 80);
        Horario h2 = new Horario(8, 95);
        Horario h3 = new Horario(8);
        Horario h4 = new Horario();
        Horario h5 = new Horario(23, 59, 56);
        Horario h6 = new Horario(4, 36, 14);

        System.out.println(h1.getHorario());
        System.out.println(h2.getHorario());
        System.out.println(h3.getHorario());
        System.out.println(h4.getHorario());

        h1.setHoras(15);
        System.out.println(h1.getHoras());
        h1.setMinutos(45);
        System.out.println(h1.getMinutos());
        h1.setSegundos(53);
        System.out.println(h1.getSegundos());
        System.out.println(h1.getHorario());

        
        for (int i = 0; i < 10; i++) {
            h5.tick();
            System.out.println(h5.getHorario());
        }

        if (h6.eMadrugada()) {
            System.out.println("Estou dormindo!");
        } else if (h6.eManha()) {
            System.out.println("Estou trabalhando!");
        } else if (h6.eTarde()) {
            System.out.println("Ainda trabalhando!");
        } else if (h6.eNoite()) {
            System.out.println("Estou vendo TV!");
        }
        
    
    if(h2.vemDepois(h1)) {
        System.out.println("h2 vem depois de h1");
    }
    if (h2.vemAntes(h1)) {
        System.out.println("h2 vem antes de h1");
    }
    if (h2.eIgual(h1)) {
        System.out.println("h2 é o mesmo horário que h1");
    }
}}

