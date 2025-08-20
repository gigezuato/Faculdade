package janelas;

import javax.swing.JFrame;

public class Principal extends JFrame{
    public Principal (int x, int y) {
        setupFrame(x, y);
        setVisible(true);
    }

    private void setupFrame(int x, int y) {
        setTitle("Principal");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 200);
        setLocation(x, y);
    }
}
