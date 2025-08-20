package janelas;

import javax.swing.JFrame;

public class Pessoa extends JFrame{
    public Pessoa (int x, int y) {
        setupFrame(x, y);
        setVisible(true);
    }

    private void setupFrame(int x, int y) {
        setTitle("Pessoa");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(300, 150);
        setLocation(x, y);
    }
}
