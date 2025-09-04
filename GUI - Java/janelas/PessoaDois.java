package janelas;

import javax.swing.JFrame;

public class PessoaDois extends JFrame{
    public PessoaDois (int x, int y) {
        setupFrame(x, y);
        setupComponents();
        setVisible(true);
    }

    public PessoaDois () {
        this(-1, -1);
    }

    private void setupFrame(int x, int y) {
        setTitle("Pessoa");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(300, 150);
        if (x == 1 && y == -1) 
            setLocationByPlatform(true);
        else
            setLocation(x, y);
    }

    private void setupComponents () {

    }
}
