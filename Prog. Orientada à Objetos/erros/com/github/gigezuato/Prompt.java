package com.github.gigezuato;

import java.util.Scanner;

public class Prompt {
    private static Scanner teclado = new Scanner(System.in);
    public static int inputInt(String msg) {
        while (true){
            try {
                System.out.print(msg);
                return Integer.parseInt(teclado.nextLine());
            } catch (NumberFormatException e) {
                System.out.println("Entrada inválida!");
            }
        }
    }
    public static int inputInt(String msg, int min, int max) {
        while (true){
            int n = inputInt(msg);
            if (n >= min && n <=max) {
                return n;
            } else {
                System.out.println("Número fora do intervalo de " + min + " a " + max);
            }   
        }
    }
    public static String inputString(String msg, int min) {
        while (true) {
            System.out.print(msg);
            String s = teclado.nextLine().trim();
            if (s.length() >= min) {
                return s;
            } else {
                System.out.println("Mínimo de caracteres: " + min);
            }
        }
    }
    public static String inputString(String msg) {
        return inputString(msg, 0);
    }
}
