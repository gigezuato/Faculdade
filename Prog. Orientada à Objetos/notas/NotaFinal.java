package notas;

import java.util.Scanner;

public class NotaFinal {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        double nota;  // tem que declarar a variável aqui fora
        while (true) {  // poderia usar o do...while
            System.out.println("Digite sua nota: ");
            nota = Double.parseDouble(teclado.nextLine());  // passar nota para double
            if (0 <= nota && nota <= 10) {
                break;
            }
        }

        if (nota >= 9) {
            System.out.println("Sua nota final é A.");
        } else if (nota >= 8) {
            System.out.println("Sua nota final é B.");
        } else if (nota >= 7) {
            System.out.println("Sua nota final é C.");
        } else {
            System.out.println("Sua nota final é F.");
        }
        teclado.close();
    }
}