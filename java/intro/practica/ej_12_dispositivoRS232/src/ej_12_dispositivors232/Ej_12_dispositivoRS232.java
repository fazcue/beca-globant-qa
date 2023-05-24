/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_12_dispositivors232;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_12_dispositivoRS232 {
    
    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int totalValid = 0;
        int totalInvalid = 0;
        String sequence;
        
        do {
            sequence = getSequence();
            
            if (!sequence.equals("&&&&&")) {
                
                if (isValid(sequence)) {
                    totalValid += 1;
                } else {
                    totalInvalid += 1;
                }
                
            }
        } while (!sequence.equals("&&&&&"));
        
        System.out.println("Total valid: " + totalValid);
        System.out.println("Total invalid: " + totalInvalid);
    }
    
    public static String getSequence() {
        System.out.println("Ingresa una secuencia: ");
        String sequence = leer.nextLine();
        
        return sequence;
    }
    
    public static boolean isValid(String sequence) {
        boolean isValid = true;
        
        int sequenceLong = sequence.length();
        String firstLetter = sequence.substring(0, 1);
        String lastLetter = sequence.substring(sequenceLong - 1);
        
        if (sequenceLong != 5 || !firstLetter.equals("X") || !lastLetter.equals("O")) {
            isValid = false;
        }
        
        return isValid;
    }
    
}
