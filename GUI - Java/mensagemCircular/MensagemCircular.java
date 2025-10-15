package mensagemCircular;
import javax.swing.*;

public class MensagemCircular extends JFrame{
    public MensagemCircular () {
        setVisible(true);
        setTitle("Mensagem Circular");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 400);
        mensagem("Seja bem-vindo ao mundo da programação!");
    }

    private void mensagem(String msg) {
        setLayout(null);
        double delta = 2 * Math.PI / msg.length();
        double angulo = 0;
        double raio = 150;
        for (char c : msg.toCharArray()) {
            double x = Math.round(Math.cos(angulo)*raio);
            double y = Math.round(Math.sin(angulo)*raio);
            JLabel letra = new JLabel(String.valueOf(c));
            letra.setSize(letra.getPreferredSize());
            letra.setLocation(200 + (int)x, 200 - (int)y);
            add(letra);
            angulo += delta;
        }
    }
}
