/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_9_divisionconrestas;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_9_divisionConRestas {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int n1 = getPositiveNumber("dividendo");
        int n2 = getPositiveNumber("divisor");
        
        calcularDivisionConRestas(n1, n2);
    }
    
    public static int getPositiveNumber(String name) {
        int num;
        do {
            System.out.println("Ingresa el " + name + " : ");
            num = leer.nextInt();
            
            if (num < 1) {
                System.out.println("Número no válido.");
                System.out.println("");
            }
        } while (num < 1);
        
        return num;
    }
    
    public static void calcularDivisionConRestas(int n1, int n2) {
        int c = 0;
        
        while (n1 >= n2) {
            n1 -= n2;
            
            c += 1;
        }
        
        System.out.println("Cociente: " + c);
        System.out.println("Residuo: " + n1);
    }
    
}
