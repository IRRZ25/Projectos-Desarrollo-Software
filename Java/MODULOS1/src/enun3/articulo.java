package enun3;

public class articulo {
    private double costo;

    public articulo() {
        costo = 0;
    }

    public void assign(double c) {
        costo = c;
    }

    public double calcularDetal() {
        return costo + (costo * 0.30);
    }

    public double calcularMayor() {
        return costo + (costo * 0.15);
    }
}
