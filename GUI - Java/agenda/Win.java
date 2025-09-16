package agenda;

import javax.swing.*;

public abstract class Win extends JFrame {
    protected int x, y, gap;

    public Win (String title, int x, int y, int width, int height, int closing){
        setupFrame(title, x, y, width, height, closing);
        setupComponents();
        setVisible(true);
    }

    public Win(String title, int width, int height, int closing){
        this(title, -1, -1, width, height, closing);
    }

    private void setupFrame(String title, int x, int y, int width, int height, int closing){
        setTitle(title);
        setDefaultCloseOperation(closing);
        setSize(width, height);
        if(x == -1 && y == -1){
            setLocationByPlatform(true);
        } else{
            setLocation(x, y);
        }
    }

    protected abstract void setupComponents();

    protected void addRow(JComponent... components){
        int h = 0;
        for(JComponent component : components){
            component.setLocation(x, y);
            component.setSize(component.getPreferredSize());
            add(component);
            x += component.getSize().width + gap;
            if (component.getSize().height > h){
                h = component.getSize().height;
            }
        }
        x = gap;
        y += h + gap;
    }
}