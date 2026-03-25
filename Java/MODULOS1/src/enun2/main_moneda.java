package enun2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class main_moneda {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        moneda obj_moneda = new moneda();
        double cantidad;
        int opcion;
        double resultado;

        System.out.println("Ingrese la cantidad a convertir: ");
        cantidad = Double.parseDouble(br.readLine());

        System.out.println("Seleccione la moneda: ");
        System.out.println("1. Dólares");
        System.out.println("2. Libras");
        System.out.println("3. Yenes");
        opcion = Integer.parseInt(br.readLine());

        obj_moneda.assign(cantidad, opcion);
        resultado = obj_moneda.ConversionMoneda();

        System.out.println("El valor en Euros es: " + resultado);
    }
}
