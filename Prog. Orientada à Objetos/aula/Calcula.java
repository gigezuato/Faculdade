package aula;

import java.util.Scanner;

public class Calcula {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Digite o primeiro número: ");
        int num1 = Integer.parseInt(teclado.nextLine());

        System.out.println("Digite o segundo número: ");
        int num2 = Integer.parseInt(teclado.nextLine());

        int soma = num1 + num2;
        int sub = num1 - num2;
        int div = num1 / num2;
        int mul = num1 * num2;

        System.out.printf("%d + %d = %d\n", num1, num2,soma);  
        System.out.printf("%d - %d = %d\n", num1, num2, sub);
        System.out.printf("%d * %d = %d\n", num1, num2, mul);
        System.out.printf("%d / %d = %d\n", num1, num2, div);
        teclado.close();
    }
}
