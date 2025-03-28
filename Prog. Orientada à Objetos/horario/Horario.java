package horario;

public class Horario {
    // Campos
    private int horas;
    private int minutos;
    private int segundos;

    // Construtores
    public Horario (int horas, int minutos, int segundos) {
        if (horas >= 0 && horas <= 24) {
            this.horas = horas;
        } 
        if (minutos >= 0 && minutos <= 59) {
            this.minutos = minutos;
        }
        if (segundos >= 0 && segundos <= 59) {
            this.segundos = segundos;
        }
    }
    public Horario (int horas, int minutos) {
        this(horas, minutos, 0);
    }
    public Horario (int horas) {
        this(horas, 0, 0);
    }
    public Horario() {
        this(0, 0, 0);
    }

    //Getters
    public String getHorario() {
        return String.format("%02d:%02d:%02d", horas, minutos, segundos);
    }
    public String getHoras() {
        return String.format("%02d horas", horas);
    }
    public String getMinutos() {
        return String.format("%02d minutos", minutos);
    }
    public String getSegundos() {
        return String.format("%02d segundos", segundos);
    }

    //Setters
    public void setHoras(int horas) {
        if (horas >= 0 && horas <= 24) {
            this.horas = horas;
        } 
    }
    public void setMinutos(int minutos) {
        if (minutos >= 0 && minutos <= 59) {
            this.minutos = minutos;
        }
    }
    public void setSegundos(int segundos) {
        if (segundos >= 0 && segundos <= 59) {
            this.segundos = segundos;
        }
    }

    public void tick() {
        segundos ++;
        if (segundos == 60) {
            segundos = 0;
            minutos++;
            if (minutos == 60) {
                minutos = 0;
                horas++;
                if (horas == 24) {
                    horas = 0;
                }
            }
        }
    }

    public boolean eMadrugada() {
        return horas < 5;
    }
    public boolean eManha() {
        return horas >= 5 && horas < 12;
    }
    public boolean eTarde() {
        return horas >= 12 && horas < 18;
    }
    public boolean eNoite() {
        return horas >= 18;
    }
    public boolean vemDepois(Horario other) {
        if (this.horas > other.horas) {
            return true;
        } else if (this.horas == other.horas) {
            if (this.minutos > other.minutos) {
                return true;
            } else if (this.minutos == other.minutos) {
                if (this.segundos > other.segundos) {
                    return true;
                }
            }
        }
        return false;
    }
    public boolean eIgual(Horario other) {
        return this.horas == other.horas && 
        this.minutos == other.minutos &&
        this.segundos == other.segundos;
    }
    public boolean vemAntes (Horario other) {
        return !this.eIgual(other) && !this.vemDepois(other);
    }
}
