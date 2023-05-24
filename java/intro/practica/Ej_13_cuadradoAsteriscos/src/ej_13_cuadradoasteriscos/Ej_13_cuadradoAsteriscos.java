/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_13_cuadradoasteriscos;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_13_cuadradoAsteriscos {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int SIZE = 4;
        
        for (int i = 0; i < SIZE; i++) {
            
            for (int j = 0; j < SIZE; j++) {
                
                if (i == 0 || i == SIZE - 1) {
                    System.out.print(" *  ");
                } else if (j == 0 || j == SIZE - 1) {
                    System.out.print(" *  ");
                } else {
                    System.out.print("    ");
                }
                
            }
            
            System.out.println("");
            System.out.println("");
            
        }
        
    }
    
}
