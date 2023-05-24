/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_5_dobletripleraiz2;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_5_dobleTripleRaiz2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        System.out.print("Ingresa un numero: ");
        int num = leer.nextInt();
        
        doubleTripleSqr(num);
    }
    
    public static void doubleTripleSqr(int num) {
        System.out.println("Doble: " + (num * 2));
        System.out.println("Triple: " + (num * 3));
        System.out.println("Raiz cuadrada: " + (Math.sqrt(num)));
    }
    
}
