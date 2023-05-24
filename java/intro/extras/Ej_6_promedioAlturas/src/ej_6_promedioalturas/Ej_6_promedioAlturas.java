/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_6_promedioalturas;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_6_promedioAlturas {
    
    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("Indica la cantidad de personas: ");
        int totalPersons = leer.nextInt();
        
        calculateAvg(totalPersons);
        
    }
    
    public static void calculateAvg(int totalPersons) {
        float height;
        int totalUnder160 = 0;
        float avgUnder160 = 0;
        float avg = 0;
        
        for (int i = 0; i < totalPersons; i++) {
            System.out.println("#" + (i + 1) + ": Indica la altura: ");
            height = leer.nextFloat();
            
            if (height < 1.6) {
                totalUnder160 += 1;
                avgUnder160 += height;
            }
            
            avg += height;
        }
        
        avgUnder160 /= totalUnder160;
        avg /= totalPersons;
        
        System.out.println("El promedio de estaturas con menos de 1.60 mts es igual a: " + avgUnder160);
        System.out.println("El promedio general de estaturas es igual a: " + avg);
    }
    
}
