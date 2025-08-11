import javax.swing.JOptionPane;

public class Message {
    public static void main(String[] args) {
        String nome = JOptionPane.showInputDialog(
            null, "Qual o seu nome?", "Teste",
            JOptionPane.QUESTION_MESSAGE
        );
        if (nome == null) {
            JOptionPane.showMessageDialog(
                null, "Oops", "Erro",
                JOptionPane.ERROR_MESSAGE
            );
        } else {
            JOptionPane.showMessageDialog(
                null, "Seja Bem-Vindo, " + nome, "Saudações",
                JOptionPane.INFORMATION_MESSAGE
            );
        }
    }
}
