package enun2;

import java.util.Scanner;

class Estudiante {
    private String tipo;
    private double promedio;
    private int reprobadas;

    public Estudiante(String tipo, double promedio, int reprobadas) {
        this.tipo = tipo;
        this.promedio = promedio;
        this.reprobadas = reprobadas;
    }

    public double calcularPago() {
        double costoUnidad = tipo.equalsIgnoreCase("profesional") ? 300.0 / 5.0 : 180.0 / 5.0;
        int unidades;
        double descuento = 0.0;

        if (tipo.equalsIgnoreCase("preparatoria")) {
            if (promedio >= 9.5) { unidades = 55; descuento = 0.25; }
            else if (promedio >= 9) { unidades = 50; descuento = 0.10; }
            else if (promedio > 7) { unidades = 50; }
            else if (promedio <= 7 && reprobadas <= 3) { unidades = 45; }
            else { unidades = 40; }
        } else {
            unidades = 55;
            descuento = (promedio >= 9.5) ? 0.20 : 0.0;
        }

        double total = unidades * costoUnidad;
        return total - (total * descuento);
    }
}

public class MainColeg {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        for (int i = 1; i <= 6; i++) {
            System.out.println("\nEstudiante " + i + ":");
            System.out.print("Tipo (profesional/preparatoria): ");
            String tipo = sc.nextLine();
            System.out.print("Promedio: ");
            double promedio = Double.parseDouble(sc.nextLine());
            System.out.print("Materias reprobadas: ");
            int reprobadas = Integer.parseInt(sc.nextLine());

            Estudiante est = new Estudiante(tipo, promedio, reprobadas);
            System.out.println("Total a pagar: $" + est.calcularPago());
        }

        sc.close();
    }
}
