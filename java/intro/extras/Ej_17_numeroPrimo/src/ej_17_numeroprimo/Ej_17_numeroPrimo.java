/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_17_numeroprimo;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_17_numeroPrimo {

    static Scanner scanner = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        System.out.println("Ingresa un número: ");
        int num = scanner.nextInt();
        
        if (isPrime(num)) {
            System.out.println("El número " + num + " es primo.");
        } else {
            System.out.println("El número " + num + " NO es primo.");
        }
        
    }
    
    
    static boolean isPrime(int num) {
        boolean prime = true;
        
        for (int i = 2; i < num; i++) {
            if (num % i == 0) {
                prime = false;
                break;
            }
        }
        
        return prime;
    }
    
}
