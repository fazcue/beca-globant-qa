/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_4_centigradosfahrenheit;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_4_centigradosFahrenheit {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        float c = getC(leer);
        
        convertToFahrenheit(c);
    }
    1
    public static float getC(Scanner leer) {
        System.out.print("Ingresa temperatura en cetigrados: ");
        float c = leer.nextFloat();
        
        return c;
    }
    
    public static void convertToFahrenheit(float c) {
        float f = 32 + (9 * c / 5);
        
        System.out.println("");
        System.out.println("En fahrenheit: " + f + "º");
    }
    
}
