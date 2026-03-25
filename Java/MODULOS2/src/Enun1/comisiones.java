/// Un vendedor recibe un sueldo base más un 10% extra por comisión de sus ventas efectuadas en el mes.
/// El vendedor desea saber cuánto dinero en total obtendrá por las ventas que realiza en el mes.
/// Desarrolle el algoritmo para ingresar la data y mostrar el sueldo neto.¿
package Enun1;

import javax.swing.*;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/// primero debe ser ingrese el sueldo base que es el que se le suma el 10%
/// segundo pedir cuantas comisiones hizo este mes
/// debe hacer el calculo sumando el 10% al base y luego multiplicando por 30 (el mes)
/// dar el resultado con el sueldo base sumado al 10%
public class comisiones {
    public static void main(String[] args) throws IOException {
        Double a, b, c;
        String leer;

        leer = JOptionPane.showInputDialog("Ingrese su sueldo base:");
        a = Double.parseDouble(leer);
        leer = JOptionPane.showInputDialog("Cuantas comisiones hizo este mes?:");
        b = Double.parseDouble(leer);

        /// Calculo del 10% del sueldo base por cada comisión
        c = a * 0.10 * b;
        Double sueldoTotal = a + c;
        JOptionPane.showMessageDialog(null, "El sueldo total es: $" + sueldoTotal);
    }
}
