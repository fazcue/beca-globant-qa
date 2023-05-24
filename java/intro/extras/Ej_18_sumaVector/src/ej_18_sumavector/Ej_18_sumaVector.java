/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_18_sumavector;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_18_sumaVector {

    static Scanner scanner = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        System.out.println("Ingresa la longitud del vector: ");
        int longVector = scanner.nextInt();
        
        int[] vector = new int[longVector];
        
        fillVector(vector);
        
        int sum = getVectorSum(vector);
        
        System.out.println("La suma de los números ingresados es: " + sum);
    }
    
    static void fillVector(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            System.out.println("#" + (i+1) + ": Ingresa un número: ");
            vector[i] = scanner.nextInt();
        }
    }
    
    static int getVectorSum(int[] vector) {
        int sum = 0;
        
        for (int i = 0; i < vector.length; i++) {
            sum += vector[i];
        }
        
        return sum;
    }
    
}
