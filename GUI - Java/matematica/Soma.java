package matematica;

import javax.swing.JOptionPane;

public class Soma {
    public static void main(String[] args) {
        int a = lerNumero("Primeiro número:");
        int b = lerNumero("Segundo número:");

        
    }

    private static int lerNumero(String mensagem) {
        while (true) {
            try{
                String entrada = JOptionPane.showInputDialog(
                null, mensagem, "Calculadora", JOptionPane.QUESTION_MESSAGE
                );
                if (entrada == null) System.exit(0);;
                return Integer.parseInt(entrada);
            } catch (NumberFormatException e){
                JOptionPane.showMessageDialog(
                null, "Número inválido", "Calculadora", JOptionPane.ERROR_MESSAGE
            );
            }
        }
    }

    private void operacoes(int n1, int n2) {
        int soma = n1 + n2;
        int subtracao = n1 - n2;
        int multiplicacao = n1 * n2;
        
        if (n2 == 0){
            String divisao = "impossível";
        } else {
            int divisao = n1 / n2;
        }

        JOptionPane.showMessageDialog(
            null, "", "Calculadora", JOptionPane.INFORMATION_MESSAGE
        );

    }
}
