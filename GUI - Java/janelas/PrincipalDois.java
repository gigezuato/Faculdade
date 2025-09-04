package janelas;

import javax.swing.JFrame;

public class PrincipalDois extends JFrame{
    public PrincipalDois (int x, int y) {
        setupFrame(x, y);
        setupComponents();
        setVisible(true);
    }

    public PrincipalDois () {
        this(-1, -1);
    }

    private void setupFrame(int x, int y) {
        setTitle("Principal");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 200);
        if (x == 1 && y == -1)
            setLocationByPlatform(true);
        else
            setLocation(x, y);
    }

    private void setupComponents() {
        
    }
}
