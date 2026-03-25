package Enun2;

import java.io.*;
import java.lang.*;

public class main {
    public static void main(String[] args) throws IOException{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        float a, b, c;
        double res;

        Contructor obj_cons = new Contructor();

        System.out.println("Ingrese el Dinero del inversor 1:");
        a = Float.parseFloat(br.readLine());
        System.out.println("Ingrese el Dinero del Inversor 2:");
        b = Float.parseFloat(br.readLine());
        System.out.println("Ingrese el Dinero del inversor 3:");
        c = Float.parseFloat(br.readLine());

        obj_cons.asignar_val(a, b, c);
/// fue aqui donde fallé en el parcial
        System.out.println("Total invertido: $" + obj_cons.calcular_total());
        System.out.println("Inversor 1: " + String.format("%.2f", obj_cons.calcular_porcentaje1()) + "%");
        System.out.println("Inversor 2: " + String.format("%.2f", obj_cons.calcular_porcentaje2()) + "%");
        System.out.println("Inversor 3: " + String.format("%.2f", obj_cons.calcular_porcentaje3()) + "%");
    }
}