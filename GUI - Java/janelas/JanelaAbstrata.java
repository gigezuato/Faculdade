package janelas;

import javax.swing.JFrame;

public abstract class JanelaAbstrata extends JFrame {
    // Construtor
    public JanelaAbstrata(String title, int x, int y, int width, int height, int closing) {
        setupFrame(title, x, y, width, height, closing);
        setupComponents();
        setVisible(true);
    }
    // Construtor
    public JanelaAbstrata(String title, int width, int height, int closing){
        this(title, -1, -1, width, height, closing);
    }
    // Método
    private void setupFrame(String title, int x, int y, int width, int height, int closing) {
        setTitle(title);
        setDefaultCloseOperation(closing);
        setSize(width, height);
        if (x == -1 && y == -1) 
            setLocationByPlatform(true);
        else
            setLocation(x, y);
    }
    // Método abstrato
    protected abstract void setupComponents();
}
