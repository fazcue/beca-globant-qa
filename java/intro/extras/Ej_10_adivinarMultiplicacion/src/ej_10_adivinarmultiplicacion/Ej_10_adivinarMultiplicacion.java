/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_10_adivinarmultiplicacion;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_10_adivinarMultiplicacion {
    
    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int num = (int) (Math.random() * 10) * (int) (Math.random() * 10);
        
        guessTheNumber(num);
    }
    
    public static void guessTheNumber(int num) {
        int guess;
        int tries = 0;
        String clue;
        
        System.out.println("Adivina el número!");
        System.out.println("------------------");
        
        do {
            tries += 1;
            
            System.out.println("Intento #" + tries + ": Ingresa un número: ");
            guess = leer.nextInt();
            
            if (guess != num) {
                System.out.println("Ups! ese no es el número :/");
                
                if (guess > num) {
                    clue = "menor";
                } else {
                    clue = "mayor";
                }
                
                System.out.println("Pista: el número es " + clue + ".");
                System.out.println("");
            }
            
        } while (guess != num);
        
        System.out.println("Ganaste! Lo adivinaste en " + tries + " intentos.");
    }
}
