package enun1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class main_notas {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        notas obj_notas = new notas();
        int n1, n2, n3, examen, trabajo;
        double finalCalif;

        System.out.println("Ingrese la primera nota parcial: ");
        n1 = Integer.parseInt(br.readLine());

        System.out.println("Ingrese la segunda nota parcial: ");
        n2 = Integer.parseInt(br.readLine());

        System.out.println("Ingrese la tercera nota parcial: ");
        n3 = Integer.parseInt(br.readLine());

        System.out.println("Ingrese la nota del examen final: ");
        examen = Integer.parseInt(br.readLine());

        System.out.println("Ingrese la nota del trabajo final: ");
        trabajo = Integer.parseInt(br.readLine());

        obj_notas.assign(n1, n2, n3, examen, trabajo);
        finalCalif = obj_notas.calcular_final();

        System.out.println("La calificacion final es: " + finalCalif);
    }
}
