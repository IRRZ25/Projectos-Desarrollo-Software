package enun3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class main_articulo {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        articulo obj_articulo = new articulo();
        double costoBase, detal, mayor;

        System.out.println("Ingrese el costo base del artículo: ");
        costoBase = Double.parseDouble(br.readLine());

        obj_articulo.assign(costoBase);
        detal = obj_articulo.calcularDetal();
        mayor = obj_articulo.calcularMayor();

        System.out.println("El precio al detal es: " + detal);
        System.out.println("El precio al mayor es: " + mayor);
    }
}
