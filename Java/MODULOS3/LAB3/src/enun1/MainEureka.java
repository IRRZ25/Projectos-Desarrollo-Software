package enun1;

import java.util.Scanner;

class Clave {
    private final String claveCorrecta = "eureka";

    public void verificarClave() {
        Scanner sc = new Scanner(System.in);
        int intentos = 0;
        boolean acierto = false;

        while (intentos < 3 && !acierto) {
            System.out.print("Ingrese la clave: ");
            String clave = sc.nextLine();

            if (clave.equals(claveCorrecta)) {
                System.out.println("¡Acceso concedido!");
                acierto = true;
            } else {
                intentos++;
                if (intentos == 3) {
                    System.out.println("Has agotado los intentos.");
                } else {
                    System.out.println("Clave incorrecta. Intentos restantes: " + (3 - intentos));
                }
            }
        }
        sc.close();
    }
}

public class MainEureka {
    public static void main(String[] args) {
        Clave c = new Clave();
        c.verificarClave();
    }
}
