package aula;

import java.util.Scanner;

public class Soma {
    public static void main (String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Digite o primeiro número: ");
        int num1 = Integer.parseInt(teclado.nextLine());  // Conversão de string para inteiro
        System.out.println("Digite o segundo número: "); 
        int num2 = Integer.parseInt(teclado.nextLine());  // Poderia ser double, ai teria que fazer Double.parseDouble

        int soma = num1 + num2;

        System.out.println("Resultado: " + soma);
        teclado.close();
    }
}
