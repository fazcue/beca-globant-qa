/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_24_vectorfibonacci;

/**
 *
 * @author facu
 */
public class Ej_24_vectorFibonacci {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int[] fibonacci = new int[10];
        
        fibonacciSequence(fibonacci);
        printFibonacci(fibonacci);
    }
    
    static void fibonacciSequence(int[] fibonacci) {
        int n2 = 1;
        int n1 = 1;
        
        for (int i = 0; i < fibonacci.length; i++) {
            if (i == 0 || i == 1) {
                fibonacci[i] = 1;
                continue;
            }
            
            fibonacci[i] = n2 + n1;
            n2 = n1;
            n1 = fibonacci[i];
        }
    }
    
    static void printFibonacci(int[] fibonacci) {
        System.out.print("[ ");
        for (int i = 0; i < fibonacci.length; i++) {
            System.out.print(fibonacci[i] + " ");
        }
        System.out.println("]");
    }
    
}
