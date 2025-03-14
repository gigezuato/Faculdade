package futebol;

public class MediaGolsResolucao {
    public static void main(String[] args) {
        int[] [] ronaldinho = {
            { 2005, 2, 9, 9, 1, 3, 2, 1, 4, 0, 0, 0, 1 },
            { 2006, 3, 0, 0, 3, 2, 4, 3, 1 },
            { 2007, 0, 0, 2, 1, 4, 3, 2, 4, 2, 3, 0 }
        };
        for (int[] campeonato : ronaldinho) {
            int ano = campeonato[0];
            int gols = 0;
            for (int i = 1; i < campeonato.length; i++) {
                gols += campeonato[i];
            }
            double media = (double)gols / (campeonato.length - 1);
            System.out.printf(ano + ": %.2f", media);
        }
    }
}
