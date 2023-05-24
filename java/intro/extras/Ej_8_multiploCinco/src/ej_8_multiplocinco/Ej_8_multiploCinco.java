/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_8_multiplocinco;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_8_multiploCinco {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int count = 0;
        int odd = 0;
        int even = 0;
        
        int num;
        
        do {
            num = getPositiveNumber();
            
            if (num % 2 == 0) {
                even += 1;
            } else {
                odd += 1;
            }
            
            count += 1;
        } while (num % 5 != 0);
      
        System.out.println("Cantidad de números: " + count);
        System.out.println("Cantidad pares: " + even);
        System.out.println("Cantidad impares: " + odd);
        
    }
    
    public static int getPositiveNumber() {
        int num;

        do {
            System.out.println("Ingresa un número: ");
            num = leer.nextInt();

            if (num < 1) {
                System.out.println("Número no válido.");
                System.out.println("");
            }

        } while (num < 1);

        return num;
    }
    
}
