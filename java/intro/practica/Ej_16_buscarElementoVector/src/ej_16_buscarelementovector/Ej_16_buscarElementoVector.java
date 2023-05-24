/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_16_buscarelementovector;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_16_buscarElementoVector {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longVector = 100;
        int[] vector = new int[longVector];
       
        fillVectorRandomly(vector, longVector);
        
        System.out.println("Número a buscar: ");
        int num = leer.nextInt();
        
        searchVector(vector, longVector, num);
        
    }
    
    public static void fillVectorRandomly(int[] vector, int longVector) {        
        for (int i = 0; i < longVector; i++) {
            vector[i] = (int) (Math.random() * 10);
        }
    }
    
    public static void searchVector(int[] vector, int longVector, int num) {
        int count = 0;
        for (int i = 0; i < longVector; i++) {
            if (vector[i] == num) {
                System.out.println("El número " + num + " se encuentra en el indice " + i);
                count += 1;
            }
        }
        
        if (count == 0) {
            System.out.println("El número " + num + " no se encuentra en el vector.");
        }
    }
}
