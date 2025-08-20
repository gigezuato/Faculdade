package janelas;
import javax.swing.JFrame;

public class Win extends JFrame{
    // Construtor
    public Win (int x, int y){
        setupFrame(x, y);
        setupComponents();
        setVisible(true);
    }
    // Construtor
    public Win () {
        this(-1, -1);
    }

    private void setupFrame(int x, int y) {
        setTitle("Título");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 200);
        if (x == -1 && y == -1)
            setLocationByPlatform(true);
        else
            setLocation(x, y);
    }

    private void setupComponents(){
        // Componentes da GUI
    }
}
