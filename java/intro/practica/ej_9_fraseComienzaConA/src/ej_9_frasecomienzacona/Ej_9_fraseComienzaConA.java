/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_9_frasecomienzacona;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_9_fraseComienzaConA {

    public static Scanner leer = new Scanner(System.in);
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        String phrase = getPhrase();
        
        startsWithLetterA(phrase);
    }
    
    public static String getPhrase() {
        System.out.println("Ingresa una frase que comience con la letra A: ");
        return leer.nextLine();
    }
    
    public static void startsWithLetterA(String phrase) {
        String firstLetter = phrase.substring(0, 1);
        
        if (firstLetter.equals("A")) {
            System.out.println("CORRECTO");
        } else {
            System.out.println("INCORRECTO");
        }
    }
}
