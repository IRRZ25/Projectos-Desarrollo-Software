package enun4;

class Monto {
    private String nombreMadre;
    private int hijos;
    private int estadoCivil; // 1=Casada, 2=Viuda

    public void asignar(String nombreMadre, int hijos, int estadoCivil) {
        this.nombreMadre = nombreMadre;
        this.hijos = hijos;
        this.estadoCivil = estadoCivil;
    }

    public double monto(int hijos) {
        if (hijos <= 2) return 100.0;
        else if (hijos <= 5) return 190.0;
        else return 300.0;
    }

    public double montoAdicional(int estadoCivil) {
        return (estadoCivil == 2) ? 50.0 : 0.0;
    }

    public double montoMensual() {
        return monto(hijos) + montoAdicional(estadoCivil);
    }

    public void mostrarMonto() {
        System.out.println("Nombre de la madre: " + nombreMadre);
        System.out.println("Monto mensual: S/" + montoMensual());
    }
}

public class MainMonto {
    public static void main(String[] args) {
        Monto m = new Monto();
        m.asignar("Ana López", 4, 2);
        m.mostrarMonto();
    }
}
