package janelas;

import javax.swing.JFrame;

public class Produto extends JFrame {
    public Produto (int x, int y) {
        setupFrame(x, y);
        setVisible(true);
    }

    private void setupFrame(int x, int y) {
        setTitle("Produto");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(200, 200);
        setLocation(x, y);
    }
}