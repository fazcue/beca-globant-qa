/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_7_fraseeureka;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_7_fraseEureka {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una frase: ");
        String phrase = leer.nextLine();
        
        eureka(phrase);
    }
    
    public static void eureka(String phrase) {
        if (phrase.equals("eureka")) {
            System.out.println("Correcto");
        } else {
            System.out.println("Incorrecto");
        }
    }
    
}
