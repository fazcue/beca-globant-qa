/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_11_cantidaddigitos;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_11_cantidadDigitos {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        System.out.println("Ingresa un número: ");
        int num = leer.nextInt();
        
        calculateTotalDigits(num);
    }
    
    public static void calculateTotalDigits(int num) {
        int total = 1;
        
        while (num > 9) {
            num = (int) num / 10;
            total += 1;
        }
        
        System.out.println("Cantidad de digitos: " + total);
        
    }
    
}
