/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_8_frase8caracteres;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_8_frase8caracteres {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa una frase de 8 caracteres: ");
        String phrase = leer.nextLine();
        
        max8chars(phrase);
        
    }
    
    public static void max8chars(String phrase) {
        int phraseLong = phrase.length();
        
        if (phraseLong == 8) {
            System.out.println("CORRECTO");
        } else {
            System.out.println("INCORRECTO");
        }
    }
    
}
