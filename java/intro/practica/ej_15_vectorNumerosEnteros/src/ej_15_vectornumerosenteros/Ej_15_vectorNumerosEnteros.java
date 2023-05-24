/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_15_vectornumerosenteros;

/**
 *
 * @author facu
 */
public class Ej_15_vectorNumerosEnteros {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longVector = 15;
        int[] vector = new int[longVector];
        
        for (int i = 0; i < longVector; i++) {
            vector[i] = i;
        }
        
        for (int i = longVector - 1; i >= 0; i--) {
            System.out.println(vector[i]);
        }
    }
    
}
