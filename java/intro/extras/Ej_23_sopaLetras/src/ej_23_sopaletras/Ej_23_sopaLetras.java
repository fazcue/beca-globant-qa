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
        //Constantes
        int SOUP_LONG = 10;
        int TOTAL_WORDS = 5;
        int MIN_WORD_LENGTH = 3;
        int MAX_WORD_LENGTH = 5;
        int MAX_RANDOM_NUMBER = 10;
        
        //Matrix Sopa
        String[][] soupBox = new String[SOUP_LONG][SOUP_LONG];
        
        fillSoupBox(soupBox, SOUP_LONG, TOTAL_WORDS, MIN_WORD_LENGTH, MAX_WORD_LENGTH);
        fillRestSoupBox(soupBox, SOUP_LONG, MAX_RANDOM_NUMBER);
        
        printSoupBox(soupBox, SOUP_LONG);
    }
    
    static void fillSoupBox(String[][] soupBox, int SOUP_LONG, int TOTAL_WORDS, int MIN_WORD_LENGTH, int MAX_WORD_LENGTH) {
        //Para cada palabra...
        for (int i = 0; i < TOTAL_WORDS; i++) {
            
            //Solicitar palabra...
            String word = getWord(i, MIN_WORD_LENGTH, MAX_WORD_LENGTH);
            
            //Seleccionar una fila vacía al azar...
            int randomRow = getRandomRow(soupBox, SOUP_LONG);
            
            //Seleccionar una columna al azar
            int randomColumn = (int) (Math.random() * (SOUP_LONG - word.length() + 1));
            
            //Guardar palabra en matriz soupBox
            for (int j = 0; j < word.length(); j++) {
                soupBox[randomRow][randomColumn + j] = word.substring(j, j+1);
            }
            
        }
    }
    
    static String getWord(int index, int min, int max) {
        String word;
        do {
            System.out.println("#" + (index+1) + ": ingresa una palabra de " + min + " a " + max + " caracteres.");
            word = scanner.nextLine();

            if (word.length() < min || word.length() > max) {
                System.out.println("Palabrá no válida...");
                System.out.println("");
            }
        } while (word.length() < min || word.length() > max);
        
        return word;
    }
    
    static int getRandomRow(String[][] soupBox, int SOUP_LONG) {
        boolean isRowClear;
        int randomRow;
            
        do {
            randomRow = (int) (Math.random() * SOUP_LONG);
            isRowClear = true;

            for (int i = 0; i < SOUP_LONG; i++) {
                if (soupBox[randomRow][i] != null) {
                    System.out.println("row " + i + " in use");
                    isRowClear = false;
                    break;
                }
            }
        } while (!isRowClear);
        
        return randomRow;
    }
    
    static void fillRestSoupBox(String[][] soupBox, int SOUP_LONG, int MAX_RANDOM_NUMBER) {
        for (int i = 0; i < SOUP_LONG; i++) {
            for (int j = 0; j < SOUP_LONG; j++) {
                if (soupBox[i][j] == null) {
                    soupBox[i][j] = String.valueOf((int) (Math.random() * MAX_RANDOM_NUMBER));
                }
            }
        }
    }
    
    static void printSoupBox(String[][] soupBox, int SOUP_LONG) {
        for (int i = 0; i < SOUP_LONG; i++) {
            System.out.print("[ ");
            for (int j = 0; j < SOUP_LONG; j++) {
                System.out.print(soupBox[i][j] + " ");
            }
            System.out.println("]");
        }
    }
}
