/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_14_conversormonedas;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_14_conversorMonedas {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int euros = getEuros();
        
        menu(euros);
    }
    
    public static int getEuros() {
        System.out.println("Indica cantidad de euros: ");
        return leer.nextInt();
    }
    
    public static void menu(int euros) {
        String selectedOption;
        
        System.out.println("");
        System.out.println("Cambio de divisas");
        System.out.println("-----------");
        System.out.println("libras");
        System.out.println("dolares");
        System.out.println("yenes");
        System.out.println("-----------");
        
        System.out.println("Elije una opción: ");
        leer.nextLine();
        selectedOption = leer.nextLine();
        
        convertEuros(euros, selectedOption);
    }
    
    public static void convertEuros(int euros, String currency) {
        switch (currency) {
            case "libras":
                System.out.println((euros * .86) + " libras");
                break;
            case "dolares":
                System.out.println((euros * 1.28611) + " dolares");
                break;
            case "yenes":
                System.out.println((euros * 129.852) + " yenes");
                break;
        }
    }
    
}
