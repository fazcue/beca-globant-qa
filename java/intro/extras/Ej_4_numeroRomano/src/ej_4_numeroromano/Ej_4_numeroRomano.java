/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_4_numeroromano;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_4_numeroRomano {
    
    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int num = getNumBetween1and10();
        
        convertToRoman(num);
    }
    
    public static int getNumBetween1and10() {
        int num;
        do {
            System.out.println("Ingresa un número entre 1 y 10: ");
            num = leer.nextInt();
            
            if (num < 1 || num > 10) {
                System.out.println("Número no válido.");
                System.out.println("");
            }
        } while (num < 1 || num > 10);
        
        return num;
    }
    
    public static void convertToRoman(int num) {
        String romanNumber = "";
        
        switch (num) {
            case 1:
                romanNumber = "I";
                break;
            case 2:
                romanNumber = "II";
                break;
            case 3:
                romanNumber = "III";
                break;
            case 4:
                romanNumber = "IV";
                break;
            case 5:
                romanNumber = "V";
                break;
            case 6:
                romanNumber = "VI";
                break;
            case 7:
                romanNumber = "VII";
                break;
            case 8:
                romanNumber = "VIII";
                break;
            case 9:
                romanNumber = "IX";
                break;
            case 10:
                romanNumber = "X";
                break;
        }
        
        System.out.println(num + " en romano: " + romanNumber);
    }
}
