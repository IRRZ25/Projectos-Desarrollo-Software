import java.io.*;

public class PrestamoNormal {
    public static void main(String[] args) throws IOException {

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n, puntos;
        char c;
        double p, s, pr;
        String nom;

        System.out.print("Cantidad de solicitantes: ");
        n = Integer.parseInt(br.readLine());

        for (int i = 1; i <= n; i++) {
            System.out.println("\nSolicitante #" + i);

            System.out.print("Nombre: ");
            nom = br.readLine();

            System.out.print("Historial ('b' buena, 'm' mala): ");
            c = br.readLine().toLowerCase().charAt(0);

            System.out.print("Préstamo solicitado: ");
            p = Double.parseDouble(br.readLine());

            System.out.print("Salario anual: ");
            s = Double.parseDouble(br.readLine());

            System.out.print("Valor de propiedades: ");
            pr = Double.parseDouble(br.readLine());

            // Si crédito es malo => rechazo inmediato
            if (c == 'm') {
                System.out.println("RECHAZADO. Crédito no es bueno.");
                continue;
            }

            // Cálculo de puntos
            puntos = 0;
            if (s >= p*0.50) puntos += 5;
            else if (s >= p*0.25) puntos += 3;
            else if (s >= p*0.10) puntos += 1;

            if (pr >= p*2) puntos += 5;
            else if (pr >= p) puntos += 3;

            // Resultado final
            System.out.println("Puntos: " + puntos);
            if (puntos > 6) System.out.println("APROBADO para " + nom);
            else System.out.println("RECHAZADO para " + nom);
        }
    }
}