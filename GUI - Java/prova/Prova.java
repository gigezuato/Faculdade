package prova;

import java.util.Scanner;

public class Prova {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Digite um ano: ");
        int ano = teclado.nextInt();
        int seculo = getSeculo(ano);
        System.out.println(seculo);
        teclado.close();
    }
    public static int getSeculo (int ano){
        int doisUltimosDigitos = ano % 100;
        int seculo = 1;
        if (doisUltimosDigitos != 0){
            seculo = (ano / 100) + 1;
        } else {
            seculo = (ano / 100);
        }

        return seculo;
    }
}
