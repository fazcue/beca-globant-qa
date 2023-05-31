/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_11_menucalculadora;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_11_menuCalculadora {
    
    static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int num1 = getPositiveNum();
        int num2 = getPositiveNum();
        
        menu(num1, num2);
    }
    
    public static int getPositiveNum() {
        int num;
        do {
            System.out.print("Ingresa un numero positivo: ");
            num = leer.nextInt();
            
            if (num < 1) {
                System.out.println("Número no válido.");
                System.out.println("");
            }
        } while (num < 1);
        
        return num;
    }
    
    public static void menu(int num1, int num2) {
        boolean showMenu = true;
        int selectedOption;
        
        do {
            System.out.println("");
            System.out.println("MENU");
            System.out.println("---------------");
            System.out.println("1. Sumar");
            System.out.println("2. Restar");
            System.out.println("3. Multiplicar");
            System.out.println("4. Dividir");
            System.out.println("5. Salir");
            System.out.println("----------------");
            System.out.print("Elija una opción: ");
            selectedOption = leer.nextInt();
            
            switch (selectedOption) {
                case 1:
                    showSum(num1, num2);
                    break;
                case 2:
                    showSubtraction(num1, num2);
                    break;
                case 3:
                    showMultiplication(num1, num2);
                    break;
                case 4:
                    showDivision(num1, num2);
                    break;
                case 5:
                    showMenu = exit();
                    break;
                default:
                    System.out.println("Opción no válida.");
                    System.out.println("");
            }
            
        } while (showMenu);
    }
    
    public static void showSum(int num1, int num2) {
        System.out.println("La suma es igual a: " + (num1 + num2));
    }
    
    public static void showSubtraction(int num1, int num2) {
        System.out.println("La resta es igual a: " + (num1 - num2));
    }
    
    public static void showMultiplication(int num1, int num2) {
        System.out.println("La multiplicación es igual a: " + (num1 * num2));
    }
    
    public static void showDivision(int num1, int num2) {
        float res = (float) num1 / num2;
        System.out.println("La división es igual a: " + res);
    }
    
    public static boolean exit() {
        System.out.print("¿Está seguro que desea salir del programa (S/N)? ");
        String res = leer.next();
        
        return !res.equalsIgnoreCase("S");
    }
}
