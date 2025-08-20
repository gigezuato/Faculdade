package janelas;

import java.awt.Dimension;
import java.awt.Toolkit;

public class JanelaCentralizada {
    public static void main(String [] args) {
        Toolkit toolkit = Toolkit.getDefaultToolkit();
        Dimension screenSize = toolkit.getScreenSize();
        int width = screenSize.width;
        int height = screenSize.height;
        System.out.println(width + ", " + height);
        int posX = (width - 400) / 2;
        int posY = (height - 200) / 2;
        Principal principal = new Principal(posX, posY);
        // Pessoa pessoa = new Pessoa(100, 200);
        // Produto produto = new Produto(550, 350);
    }
}