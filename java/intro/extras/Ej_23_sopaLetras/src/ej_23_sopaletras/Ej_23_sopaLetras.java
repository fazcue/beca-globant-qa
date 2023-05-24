/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_23_sopaletras;

import static ej_23_sopaletras.Ej_23_sopaLetras.scanner;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_23_sopaLetras {

    static Scanner scanner = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int totalWords = 5;
        String[][] soupBox = new String[20][20];
        
        fillSoupBox(soupBox, totalWords);
        fillRestSoupBox(soupBox);
        
        printSoupBox(soupBox);
    }
    
    static void fillSoupBox(String[][] soupBox, int totalWords) {
        for (int i = 0; i < totalWords; i++) {
            String word;
            do {
                System.out.println("#" + (i+1) + ": ingresa una palabra de 3 a 5 caracteres.");
                word = scanner.nextLine();
            } while (word.length() < 3 || word.length() > 5);
            
            int randomRow;
            do {
                randomRow = (int) (Math.random() * 20);
            } while (soupBox[randomRow][0] != null);

            for (int j = 0; j < word.length(); j++) {
                soupBox[randomRow][j] = word.substring(j, j+1);
            }
            
        }
    }
    
    static void fillRestSoupBox(String[][] soupBox) {
        for (int i = 0; i < soupBox.length; i++) {
            for (int j = 0; j < soupBox.length; j++) {
                if (soupBox[i][j] == null) {
                    soupBox[i][j] = String.valueOf((int) (Math.random() * 10));
                }
            }
        }
    }
    
    static void printSoupBox(String[][] soupBox) {
        for (int i = 0; i < soupBox.length; i++) {
            System.out.print("[ ");
            for (int j = 0; j < soupBox.length; j++) {
                System.out.print(soupBox[i][j] + " ");
            }
            System.out.println("]");
        }
    }
}
