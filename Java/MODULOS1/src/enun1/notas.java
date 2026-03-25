package enun1;

public class notas {
    private int n1, n2, n3, examen, trabajo;

    public notas() {
        n1 = 0; n2 = 0; n3 = 0; examen = 0; trabajo = 0;
    }

    public void assign(int a, int b, int c, int ex, int tra) {
        n1 = a; n2 = b; n3 = c; examen = ex; trabajo = tra;
    }

    public double calcular_final() {
        double prom = (n1 + n2 + n3) / 3.0;
        double finalCalif = (prom * 0.55) + (examen * 0.30) + (trabajo * 0.15);
        return finalCalif;
    }
}
