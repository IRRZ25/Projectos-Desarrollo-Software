package Enun2;
import java.io.*;
import java.lang.*;

public class Contructor {
    float Inversor1, Inversor2, Inversor3;

    public Contructor(){
        Inversor1 = 0;
        Inversor2 = 0;
        Inversor3 = 0;
    }

    public void asignar_val(float a, float b, float c){
        Inversor1 = a;
        Inversor2 = b;
        Inversor3 = c;
    }
///  este fue el error en mi parcial no calculé los demas y los junte y no daba
    public double calcular_total(){
        return Inversor1 + Inversor2 + Inversor3;
    }

    public double calcular_porcentaje1(){
        double total = calcular_total();
        return (Inversor1 / total) * 100;
    }

    public double calcular_porcentaje2(){
        double total = calcular_total();
        return (Inversor2 / total) * 100;
    }

    public double calcular_porcentaje3(){
        double total = calcular_total();
        return (Inversor3 / total) * 100;
    }
}