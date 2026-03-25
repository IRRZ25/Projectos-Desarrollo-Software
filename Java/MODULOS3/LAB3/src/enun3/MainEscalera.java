package enun3;

import java.util.Scanner;

class Escalera {
    public void construirEscalera(int altura) {
        for (int i = 1; i <= altura; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

public class MainEscalera {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Ingrese la altura: ");
        int altura = sc.nextInt();

        Escalera e = new Escalera();
        e.construirEscalera(altura);

        sc.close();
    }
}
