package janelas;

import javax.swing.JFrame;

public class ProdutoDois extends JFrame{
    public ProdutoDois(int x, int y) {
        setupFrame(x, y);
        setupComponents();
        setVisible(true);
    }

    public ProdutoDois () {
        this(-1, -1);
    }

    private void setupFrame (int x, int y) {
        setTitle("Produto");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(200, 200);
        if (x == 1 && y == -1) 
            setLocationByPlatform(true);
        else
            setLocation(x, y);
    }

    private void setupComponents () {
        
    }
}
