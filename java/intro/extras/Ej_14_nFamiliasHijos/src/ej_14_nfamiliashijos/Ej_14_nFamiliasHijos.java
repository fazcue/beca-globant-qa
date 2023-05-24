/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_14_nfamiliashijos;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_14_nFamiliasHijos {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int families = getInt("familias");
        System.out.println("");
        
        calculateAvgAge(families);

    }
    
    public static int getInt(String name) {
        System.out.println("Indica la cantidad de " + name + ": ");
        return leer.nextInt();
    }
    
    public static void calculateAvgAge(int families) {
        int totalChilds = 0;
        float avgAge = 0;
      
        for (int i = 0; i < families; i++) {
            
            System.out.print("Flia #" + (i + 1) + ": ");
            int childs = getInt("hijos");
            
            for (int j = 0; j < childs; j++) {
                
                System.out.print("Flia #" + (i + 1) + ", Hijo #" + (j + 1 + ": "));
                int age = getInt("años");
                
                totalChilds += 1;
                avgAge += age;
                
            }
            
            System.out.println("");
        }
        
        avgAge /= totalChilds;
        
        System.out.println("");
        System.out.println("La media de edad de los hijos es: " + avgAge);
    }
    
}
