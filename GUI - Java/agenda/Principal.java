package agenda;

import javax.swing.*;

import java.awt.BorderLayout;
import java.awt.event.*;;

public class Principal extends Win{
    private JLabel labelId, labelNome, labelSexo, labelTelefone;
    private JTextField id, nome, telefone;
    private JRadioButton pessoa, empresa;
    private JComboBox sexo;
    private JCheckBox amigo, cliente;
    private JButton inserir, cancelar;
    private boolean mostrar = true;

    public Principal() {
        super("Principal", 200, 50, 500, 400, JFrame.EXIT_ON_CLOSE);
    }

    @Override
    protected void setupComponents() {
        // Border Layout
        setLayout(new BorderLayout(5, 5));
        // setLayout(null);
        labelId = new JLabel("Id:");
        labelNome = new JLabel("Nome");
        labelSexo = new JLabel("Sexo");
        labelTelefone = new JLabel("Telefone");
        id = new JTextField(5);
        nome = new JTextField(30);
        telefone = new JTextField(15);
        pessoa = new JRadioButton("Pessoa", true);
        empresa = new JRadioButton("Empresa");
        ButtonGroup groupTipo = new ButtonGroup();
        groupTipo.add(pessoa);
        groupTipo.add(empresa);
        sexo = new JComboBox(new String[] {
            "Masculino", "Feminino"
        });
        amigo = new JCheckBox("Amigo");
        cliente = new JCheckBox("Cliente");
        inserir = new JButton("Inserir");
        cancelar = new JButton("Cancelar");
        x = y = gap = 4;
        add(new JButton("North"), BorderLayout.NORTH);
        add(new JButton("South"), BorderLayout.SOUTH);
        add(new JButton("East"), BorderLayout.EAST);
        add(new JButton("West"), BorderLayout.WEST);
        add(new JButton("Center"), BorderLayout.CENTER);
        /*
        add(labelId);
        add(id);
        add(pessoa);
        add(empresa);
        add(labelNome);
        add(nome);
        add(labelSexo);
        add(sexo);
        add(labelTelefone);
        add(telefone);
        add(amigo);
        add(cliente);
        add(inserir);
        add(cancelar);
         */
        
        /*addRow(labelId, id, pessoa, empresa);
        addRow(labelNome, nome);
        addRow(labelSexo, sexo, labelTelefone, telefone);
        addRow(amigo);
        addRow(cliente);
        addRow(inserir, cancelar);*/

        // Técnica 1 Eventos e Técnica 2 (segundo modo)
        //InserirHandler inserirhandler = new InserirHandler();
        //inserir.addActionListener(inserirhandler);

        // Técnica 2 Eventos (primeiro modo)
        /*inserir.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String nome = Principal.this.nome.getText();
                JOptionPane.showMessageDialog(Principal.this,
                    "Olá " + nome, "Mensagem",
                    JOptionPane.INFORMATION_MESSAGE
                );
            }
        });*/     

        // Técnica 3 Eventos
        /*inserir.addActionListener((ActionEvent e) -> {
            String nome = Principal.this.nome.getText();
            JOptionPane.showMessageDialog(Principal.this,
                "Olá " + nome, "Mensagem",
                JOptionPane.INFORMATION_MESSAGE
            );
        });*/

        // Técnica 4 Eventos
        inserir.addActionListener(this::inserir_click);
        // Quando cancelar
        cancelar.addActionListener((ActionEvent e) -> {
            dispose();
        });
        // habilitando e desabilitando botões
        empresa.addActionListener((ActionEvent e) -> {
            mostrar = false;
            habilitaBotoes();
        });
        pessoa.addActionListener((ActionEvent e) -> {
            mostrar = true;
            habilitaBotoes();
        });
    }
    private void habilitaBotoes () {
        sexo.setEnabled(pessoa.isSelected());
        amigo.setEnabled(pessoa.isSelected());
        cliente.setEnabled(pessoa.isSelected());
    }
    // Técnica 1 Eventos
    /*private class InserirHandler implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {
            String nome = Principal.this.nome.getText();
            JOptionPane.showMessageDialog(
                Principal.this,
                "Olá " + nome,
                "Mensagem",
                JOptionPane.INFORMATION_MESSAGE
            );
        }*/
        /*public void actionPerformed(ActionEvent e){
            String nome = Principal.this.nome.getText();
            String telefone = Principal.this.telefone.getText();
            String tipo = pessoa.isSelected() ? "Pessoa" : "Empresa";
            String tipo_sexo = sexo.getSelectedIndex() == 0 ? "Masculino" : "Feminino";
            String amigo_cliente = "";

            if(amigo.isSelected() && cliente.isSelected()){
                amigo_cliente = "Amigo e Cliente";
            } else if (cliente.isSelected()){
                amigo_cliente = "Cliente";
            } else if (amigo.isSelected()){
                amigo_cliente = "Amigo";
            }

            String mensagem = "Nome: " + nome + "\nTipo: " + tipo + "\nSexo: " + tipo_sexo + "\nTelefone: " + telefone + "\n" + amigo_cliente;
            
            JOptionPane.showMessageDialog(
                Principal.this,
                mensagem,
                "Mensagem",
                JOptionPane.INFORMATION_MESSAGE
            );
        }*/
        
        // Técnica 2 Eventos (segundo modo)
        /*private class InserirHandler implements ActionListener {
            @Override
            public void actionPerformed(ActionEvent e){
                String nome = Principal.this.nome.getText();
                JOptionPane.showMessageDialog(Principal.this,
                    "Olá " + nome, "Mensagem",
                    JOptionPane.INFORMATION_MESSAGE
                );
            }
        }*/

        // Técnica 4 Eventos
        private void inserir_click(ActionEvent e) {
            String id = Principal.this.id.getText();
            String nome = Principal.this.nome.getText();
            String tipo = pessoa.isSelected() ? "Pessoa" : "Empresa";
            String telefone = Principal.this.telefone.getText();
            String amigo_cliente = "";
            String tipo_sexo;
            if (mostrar){
                tipo_sexo = sexo.getSelectedIndex() == 0 ? "Masculino" : "Feminino";
                if(amigo.isSelected() && cliente.isSelected()){
                amigo_cliente = "Amigo e Cliente";
                } else if (cliente.isSelected()){
                amigo_cliente = "Cliente";
                } else if (amigo.isSelected()){
                amigo_cliente = "Amigo";
                }
            } else {
                tipo_sexo = "";
                amigo_cliente = "";
            }
            

            String mensagem = "ID: " + id + "\nNome: " + nome + "\n" + tipo + "\nSexo:" + tipo_sexo + "\nTelefone: " + telefone + "\n" + amigo_cliente;

            JOptionPane.showMessageDialog(Principal.this,
                mensagem, "Mensagem",
                JOptionPane.INFORMATION_MESSAGE
            );
        }
}
