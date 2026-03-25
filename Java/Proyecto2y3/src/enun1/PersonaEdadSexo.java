package enun1;

import java.io.*;

public class PersonaEdadSexo {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        char sexo;
        int edad;

        for (int i = 1; i <= 5; i++) {
            System.out.println("\nPersona #" + i);

            System.out.print("Sexo (h/m): ");
            sexo = br.readLine().toLowerCase().charAt(0);

            System.out.print("Edad: ");
            edad = Integer.parseInt(br.readLine());

            if (sexo == 'h') {
                if (edad >= 18) System.out.println("Hombre mayor de edad");
                else System.out.println("Hombre menor de edad");
            } else if (sexo == 'm') {
                if (edad >= 18) System.out.println("Mujer mayor de edad");
                else System.out.println("Mujer menor de edad");
            } else {
                System.out.println("Sexo no válido");
            }
        }
    }
}