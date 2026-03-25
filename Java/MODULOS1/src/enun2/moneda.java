package enun2;

public class moneda {
    private double cantidad;
    private int tipo;

    public moneda() {
        cantidad = 0;
        tipo = 0;
    }

    public void assign(double cant, int t) {
        cantidad = cant;
        tipo = t;
    }

    public double ConversionMoneda() {
        double euros = 0;
        if (tipo == 1) {
            euros = cantidad * 0.75;
        } else if (tipo == 2) {
            euros = cantidad * 1.22;
        } else if (tipo == 3) {
            euros = cantidad * 0.009;
        }
        return euros;
    }
}
