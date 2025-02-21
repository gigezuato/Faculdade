package cadastro;

import java.util.Scanner;

public class InfoUser {
    public static void main(String [] args) {
        Scanner teclado = new Scanner(System.in);
        
        System.out.println("Nome: ");
        String nome = teclado.nextLine();

        System.out.println("Endereço: ");
        String endereco = teclado.nextLine();

        System.out.println("Bairro: ");
        String bairro = teclado.nextLine();

        System.out.println("CEP: ");
        String cep = teclado.nextLine();

        System.out.println("Cidade: ");
        String cidade = teclado.nextLine();

        System.out.println("UF: ");
        String uf = teclado.nextLine();

        System.out.println("INFORMAÇÕES DO USUÁRIO");
        System.out.println("Nome: " + nome);
        System.out.println("Endereço: " + endereco);
        System.out.println("Bairro: " + bairro);
        System.out.println("CEP: " + cep);
        System.out.println("Cidade: " + cidade + " - " + uf);
        teclado.close();
    }
}
