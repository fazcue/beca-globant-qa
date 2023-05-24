/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_7_maxminpromedio;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_7_maxMinPromedio {
    
    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int n = getN();
        
//        getMinMaxAvgWhile(n);
        getMinMaxAvgDoWhile(n);
    }
    
    public static int getN() {
        int n;
        do {
            System.out.println("Ingrese el valor de n: ");
            n = leer.nextInt();
            
            if (n < 1) {
                System.out.println("Número no válido.");
                System.out.println("");
            }
            
        } while (n < 1);
        
        return n;
    }
    
    public static void getMinMaxAvgWhile(int n) {
        int count = 1;
        
        int min = 0;
        int max = 0;
        float avg = 0;
        
        while (count <= n) {
            System.out.println("#" + count + ": Ingrese un número: ");
            int num = leer.nextInt();
            
            if (count == 1) {
                min = num;
                max = num;
            }
            
            if (num < min) {
                min = num;
            }
            
            if (num > max) {
                max = num;
            }
            
            avg += num;
            count += 1;
        }
        
        avg /= n;
        
        System.out.println("El valor mínimo ingresado es: " + min);
        System.out.println("El valor máximo ingresado es: " + max);
        System.out.println("El promedio es: " + avg);
    }
    
        public static void getMinMaxAvgDoWhile(int n) {
        int count = 1;
        
        int min = 0;
        int max = 0;
        float avg = 0;
        
        do {
            System.out.println("#" + count + ": Ingrese un número: ");
            int num = leer.nextInt();
            
            if (count == 1) {
                min = num;
                max = num;
            }
            
            if (num < min) {
                min = num;
            }
            
            if (num > max) {
                max = num;
            }
            
            avg += num;
            count += 1;
        } while (count <= n);
        
        avg /= n;
        
        System.out.println("El valor mínimo ingresado es: " + min);
        System.out.println("El valor máximo ingresado es: " + max);
        System.out.println("El promedio es: " + avg);
    }
    
}
