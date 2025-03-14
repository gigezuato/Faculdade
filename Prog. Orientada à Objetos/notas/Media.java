package notas;

import java.util.Scanner;

public class Media {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.print("Informe o número de provas: ");
        int qtde = Integer.parseInt(teclado.nextLine());
        double [] notas = new double[qtde];
        double soma = 0;
        for(int i = 0; i < qtde; i++) {
            System.out.print("Nota " + (i +1) + ": ");
            notas[i] = Double.parseDouble(teclado.nextLine());
            soma += notas[i];
        }

        double media;
        media = soma / notas.length;

        System.out.print("As notas foram: ");
        for (int i = 0; i < notas.length; i++){
            if (i == qtde - 2){
                System.out.printf("%.2f" + " e ", notas[i]);
            } else if (i == qtde - 1){
                System.out.printf("%.2f" + ".%n", notas[i]);
            } else{
                System.out.printf("%.2f" + "; ", notas[i]);
            }
        }
        System.out.printf("A média é: " + "%.2f", media);
        teclado.close();
    }
}