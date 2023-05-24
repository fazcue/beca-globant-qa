/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_3_frasemayusculasminusculas;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_3_fraseMayusculasMinusculas {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        String phrase = getPhrase(leer);
        
        showUpperCasePhrase(phrase);
        
        showLowerCasePhrase(phrase);
        
    }
    
    public static String getPhrase(Scanner leer) {
        System.out.println("Ingresa una frase:");
        
        return leer.nextLine();
    }
    
    public static void showUpperCasePhrase(String phrase) {
        System.out.println("Frase en mayusculas:");
        System.out.println(phrase.toUpperCase());
        System.out.println("");
    }
    
    public static void showLowerCasePhrase(String phrase) {
        System.out.println("Frase en minusculas:");
        System.out.println(phrase.toLowerCase());
        System.out.println("");
    }
}
