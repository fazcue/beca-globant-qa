/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_3_letraesvocal;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_3_letraEsVocal {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Ingresa una letra: ");
        String letter = leer.next();
        
        if (isLetterVocal(letter)) {
            System.out.println(letter + " es vocal.");
        } else {
            System.out.println(letter + " NO es vocal.");
        }
    }
    
    public static boolean isLetterVocal(String letter) {
        boolean isVocal = false;
        
        switch (letter.toLowerCase()) {
            case "a":
            case "e":
            case "i":
            case "o":
            case "u":
                isVocal = true;
                break;
        }
        
        return isVocal;
    }
    
}
