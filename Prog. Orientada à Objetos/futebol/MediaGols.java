package futebol;

public class MediaGols {
    public static void main(String[] args) {
        int[] [] ronaldinho = {
            { 2005, 2, 9, 9, 1, 3, 2, 1, 4, 0, 0, 0, 1 },
            { 2006, 3, 0, 0, 3, 2, 4, 3, 1 },
            { 2007, 0, 0, 2, 1, 4, 3, 2, 4, 2, 3, 0 }
        };
        int [] total = new int [ronaldinho.length];
        int soma = 0;
        double [] medias = new double[total.length];
        double media;
        for(int i = 0; i < ronaldinho.length; i++){
            for(int j = 1; j < ronaldinho[i].length; j++){
                soma += ronaldinho[i][j];
            }
            total[i] = soma;
            soma = 0;
        }

        for(int i = 0; i < total.length; i++){
            media = total[i] / (ronaldinho[i].length - 1);
            medias[i] = media;
            media = 0;
        }
        for (int i = 0; i < medias.length; i++){
            System.out.printf("%.2f  ", medias[i]);
        }
    }
}
