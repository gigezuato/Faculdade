package horario;

public class FusoHorario extends Horario {
    private int fuso;
    public FusoHorario (int horas, int minutos, int segundos, int fuso) {
        super(horas, minutos, segundos);
        this.fuso = fuso;
    }
    @Override
    public String getHorario() {
        String horario = super.getHorario();
        if (fuso < 0) {
            horario += String.format("%03d", fuso);
        } else {
            horario += String.format("+%02d", fuso);
        }
        return horario;
    }
}