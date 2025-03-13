package menu;

import java.util.Scanner;

public class Menu {
    public static void main (String [] args) {
        Scanner teclado = new Scanner(System.in);

        int opc;
        System.out.println("Qual opção? [1- Oposto] [2- Sinal] [3- Sair]");
        opc = Integer.parseInt(teclado.nextLine());

        switch (opc) {
            case 1:
                int num, oposto;
                System.out.println("Digite o número: ");
                num = Integer.parseInt(teclado.nextLine());
                oposto = num * (-1);
                System.out.println("O oposto do número " + num + " é " + oposto);
                break;
            case 2:
                int n;
                System.out.println("Digite o número: ");
                n = Integer.parseInt(teclado.nextLine());
                if (n > 0) {
                    System.out.println("O número " + n + " é positivo!");
                } else if (n < 0) {
                    System.out.println("O número " + n + " é negativo!");
                } else {
                    System.out.println("O número digitado é o Zero!");
                }
                break;   
            default:
                System.out.println("Opção inválida!");
                break;
        }
        teclado.close();
    }
}
