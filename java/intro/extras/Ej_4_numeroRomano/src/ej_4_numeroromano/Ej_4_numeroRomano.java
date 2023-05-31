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
        int rest = num;
        
        //Valor inicial | rest: max number - num
        if (num > 7) {
            romanNumber = "X";
            rest = 10 - num;
        } else if (num > 3) {
            romanNumber= "V";
            rest = 5 - num;
        }
        
        //Si el resto es negativo, concatenar LUEGO del valor inicial. Sino ANTES
        if (rest < 0) {
            for (int i = 0; i < -rest; i++) {
                romanNumber += "I";
            }
        } else {
            for (int i = 0; i < rest; i++) {
                romanNumber = "I" + romanNumber;
            }
        }
        
        System.out.println(num + " en romano: " + romanNumber);
    }
}
