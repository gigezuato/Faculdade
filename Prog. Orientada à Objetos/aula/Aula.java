package aula;

import java.util.Scanner;  // O import sempre vem depois do package e antes da classe

public class Aula {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        System.out.println("Qual o seu nome? ");
        String nome = teclado.nextLine();
        System.out.println("Olá " + nome + "!Giovana");
        teclado.close();
    }
}
