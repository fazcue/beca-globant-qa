/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_15_calculadora;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_15_calculadora {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int selectedOption;
        float res = 0;
                
        float n1 = getNum(1);
        float n2 = getNum(2);
        
        System.out.println("Calculadora");
        System.out.println("-------------");
        System.out.println("1. Sumar");
        System.out.println("2. Restar");
        System.out.println("3. Multiplicar");
        System.out.println("4. Dividir");
        System.out.println("-------------");
        System.out.println("Elije una opción: ");
        selectedOption = leer.nextInt();
        
        switch (selectedOption) {
            case 1:
                res = add(n1, n2);
                break;
            case 2:
                res = subtract(n1, n2);
                break;
            case 3:
                res = multiply(n1, n2);
                break;
            case 4:
                res = divide(n1, n2);
                break;
            default:
                System.out.println("Opción no válida.");
                System.out.println("");
                break;
        }
        
        System.out.println("El resultado es: " + res);
    }
    
    public static float getNum(int pos) {
        System.out.println("#" + pos + ": Ingresa un número: ");
        return leer.nextFloat();
    }
    
    public static float add(float n1, float n2) {
        return n1 + n2;
    }
    
    public static float subtract(float n1, float n2) {
        return n1 - n2;
    }

    public static float multiply(float n1, float n2) {
        return n1 * n2;
    }
    
    public static float divide(float n1, float n2) {
        return n1 / n2;
    }
}
