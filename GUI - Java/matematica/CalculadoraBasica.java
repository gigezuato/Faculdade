package matematica;

import javax.swing.JOptionPane;

public class CalculadoraBasica {
    public static void main(String[] args) {
        Integer a = leNumero("Primeiro número");
        if (a == null) {
            lamento();
            return;
        }
        Integer b = leNumero("Segundo número");
        if (b == null) {
            lamento();
            return;
        }
        /* String resultado =
            a + " + " + b + " = " + (a + b) + "\n" +
            a + " - " + b + " = " + (a - b) + "\n" +
            a + " * " + b + " = " + (a * b) + "\n" +
            a + " / " + b + " = " + (b == 0 ? "impossível" : a / b); */
        String resultado = String.format(
               
            "%d + %d = %d\n" +
            "%d - %d = %d\n" +
            "%d * %d = %d\n" +
            "%d / %d = %s\n",
            a, b, a + b,
            a, b, a - b,
            a, b, a * b,
            a, b, (b == 0 ? "impossível" : a / b)
        );
        JOptionPane.showMessageDialog(null,
            resultado, "Calculadora", JOptionPane.INFORMATION_MESSAGE
        );
        JOptionPane.showMessageDialog(null,
            "Obrigado por confiar na calculadora", "Tchau",
            JOptionPane.INFORMATION_MESSAGE
        );
    }
    private static Integer leNumero(String mensagem) {
        while (true) {
            try {
                String entrada = JOptionPane.showInputDialog(null,
                    mensagem, "Calculadora", JOptionPane.QUESTION_MESSAGE
                );
                if (entrada == null) return null;
                return Integer.parseInt(entrada);
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null,
                    "Número inválido", "Calculadora", JOptionPane.ERROR_MESSAGE
                );
            }
        }
    }
    private static void lamento() {
        JOptionPane.showMessageDialog(null,
            "Fico triste por sair tão cedo", "Calculadora",
            JOptionPane.INFORMATION_MESSAGE
        );
    }
}