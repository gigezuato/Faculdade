package agenda;

import javax.swing.*;
import java.awt.Dimension;
import java.awt.Toolkit;

public class Cadastro extends JFrame{
    // Construtor
    public Cadastro (int x, int y){
        setupFrame(x, y);
        setupComponents();
        setVisible(true);
    }
    // Construtor
    public Cadastro () {
        this(-1, -1);
    }
    // Janela
    private void setupFrame(int x, int y) {
        setTitle("Agenda - Cadastro");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500, 300);
        setLayout(null);
        if (x == -1 && y == -1){
            Toolkit toolkit = Toolkit.getDefaultToolkit();
            Dimension screenSize = toolkit.getScreenSize();
            int width = screenSize.width;
            int height = screenSize.height;
            int posX = (width - 500) / 2;
            int posY = (height - 300) / 2;
            setLocation(posX, posY);
        } else {
            setLocation(x, y);
        }
    }
    // Componentes da GUI
    private void setupComponents(){
        // ID
        JLabel labelId = new JLabel("ID:");
        labelId.setToolTipText("escreva seu ID");
        labelId.setLocation(10, 20);
        labelId.setSize(80, 25);
        add(labelId);
        JTextField textFieldId = new JTextField(10);
        textFieldId.setLocation(40, 20);
        textFieldId.setSize(150, 25);
        add(textFieldId);

        // Nome
        JLabel labelNome = new JLabel("Nome:");
        labelNome.setToolTipText("escreva seu nome");
        labelNome.setLocation(3, 60);
        labelNome.setSize(80, 25);
        add(labelNome);
        JTextField textFieldNome = new JTextField(30);
        textFieldNome.setLocation(40, 60);
        textFieldNome.setSize(150, 25);
        add(textFieldNome);

        // Pessoa ou Empresa
        JRadioButton pessoa = new JRadioButton("Pessoa", true);
        JRadioButton empresa = new JRadioButton("Empresa");
        ButtonGroup groupPessoaEmpresa = new ButtonGroup();
        groupPessoaEmpresa.add(pessoa);
        groupPessoaEmpresa.add(empresa);
        pessoa.setLocation(200, 20);
        empresa.setLocation(280, 20);
        pessoa.setSize(80, 25);
        empresa.setSize(80, 25);
        add(pessoa);
        add(empresa);

        // Sexo
        JLabel labelSexo = new JLabel("Sexo:");
        labelSexo.setToolTipText("escolha o sexo");
        labelSexo.setLocation(5, 100);
        labelSexo.setSize(80, 25);
        add(labelSexo);
        JComboBox sexo = new JComboBox(new String []{
            "Feminino", "Masculino"
        });
        sexo.setMaximumRowCount(10);
        sexo.setLocation(10, 130);
        sexo.setSize(100, 25);
        add(sexo);

        // Telefone
        JLabel labelTelefone = new JLabel("Telefone:");
        labelTelefone.setToolTipText("(00) 000000000");
        labelTelefone.setLocation(250, 100);
        labelTelefone.setSize(60, 25);
        add(labelTelefone);
        JTextField textFieldTelefone = new JTextField(11);
        textFieldTelefone.setLocation(310, 100);
        textFieldTelefone.setSize(150, 25);
        add(textFieldTelefone);

        // Amigo ou Cliente
        JCheckBox amigo = new JCheckBox("Amigo");
        JCheckBox cliente = new JCheckBox("Cliente");
        amigo.setLocation(250, 140);
        cliente.setLocation(250, 160);
        amigo.setSize(80, 25);
        cliente.setSize(80, 25);
        add(amigo);
        add(cliente);

        // Botão Inserir
        JButton inserir = new JButton("Inserir");
        inserir.setLocation(60, 210);
        inserir.setSize(90, 25);
        add(inserir);

        inserir.addActionListener(e -> {
            JOptionPane.showMessageDialog(null, "Dados adicionados na agenda!");
        });

        // Botão Cancelar
        JButton cancelar = new JButton("Cancelar");
        cancelar.setLocation(200, 210);
        cancelar.setSize(90, 25);
        add(cancelar);

        cancelar.addActionListener(e -> {
            dispose();
        });
    }
}
