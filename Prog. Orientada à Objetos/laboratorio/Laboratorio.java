package laboratorio;

public class Laboratorio {
    public static void main(String[] args) {
        System.out.println(soma(1, 2, 3));
    }
    public static int soma(int x, int y) {
        return x + y;
    }
    public static int soma(int x, int y, int z) {
        return soma(x, y) + z;
    }
}
