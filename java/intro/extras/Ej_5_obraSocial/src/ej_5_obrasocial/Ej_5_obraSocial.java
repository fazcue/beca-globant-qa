/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_5_obrasocial;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_5_obraSocial {
    
    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        menu();
    }
    
    public static void menu() {
        String type;
        boolean showMenu = true;
        
        do {
            System.out.println("Obra social");
            System.out.println("-----------------------");
            System.out.println("A. Socios categoría 'A'");
            System.out.println("B. Socios categoría 'B'");
            System.out.println("C. Socios categoría 'C'");
            System.out.println("D. Salir");
            System.out.println("-----------------------");
            System.out.println("Elije una opción: ");
            type = leer.nextLine();
            
            switch (type) {
                case "a":
                    getTreatmentCost(50);
                    break;
                case "b":
                    getTreatmentCost(35);
                    break;
                case "c":
                    getTreatmentCost(0);
                    break;
                case "d":
                    showMenu = false;
                    break;
                default:
                    System.out.println("Opción no válida.");
                    System.out.println("");
                    break;
            }
            
        } while (showMenu);
    }
    
    public static void getTreatmentCost(int discount) {
        System.out.println("Ingresa el costo del tratamiento: ");
        int treatmentCost = leer.nextInt();
        leer.nextLine();
        
        //Apply discount
        treatmentCost -= treatmentCost * discount / 100;
        
        System.out.println("El costo final es de: $" + treatmentCost);
        System.out.println("");
    }
    
}
