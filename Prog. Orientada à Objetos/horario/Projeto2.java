import horario.FusoHorario;
import horario.Horario;

public class Projeto2 {
    public static void main(String[] args) {
        FusoHorario h7 = new FusoHorario(8, 30, 10, 3);
        System.out.println(h7.getHorario());

        Horario h8 = new FusoHorario(10, 56, 42, -2);
        System.out.println(h8.getHorario());
    }
}