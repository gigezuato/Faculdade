import com.github.gigezuato.Prompt;;

public class Erros {
    public static void main (String[] args) {
        int n1 = Prompt.inputInt("Primeiro número: ");
        int n2 = Prompt.inputInt("Segundo número: ", 1, 10);

        System.out.println("A soma é " + (n1 + n2));

        System.out.println("Você digitou: " + Prompt.inputString("Digite algo: "));
        System.out.println("Você digitou: " + Prompt.inputString("Digite algo: ", 5));
    }
}