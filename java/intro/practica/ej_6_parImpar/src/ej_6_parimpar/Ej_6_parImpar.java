/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_6_parimpar;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_6_parImpar {

    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner leer = new Scanner(System.in);
        
        System.out.print("Ingresa un numero: ");
        int num = leer.nextInt();
        
        showIfPairOrNot(num);
    }
    
    public static void showIfPairOrNot(int num) {
        if (num % 2 == 0) {
            System.out.println("El numero " + num + " es par.");
        } else {
            System.out.println("El numero " + num + " es impar.");
        }
    }
}
