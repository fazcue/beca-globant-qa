/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_19_vectoresiguales;

/**
 *
 * @author facu
 */
public class Ej_19_vectoresIguales {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        int[] vector1 = new int[5];
        int[] vector2 = new int[5];
        
        fillVector(vector1);
        fillVector(vector2);
        
        if (areVectorsEquals(vector1, vector2)) {
            System.out.println("Los vectores son iguales.");
        } else {
            System.out.println("Los vectores NO son iguales.");
        }
        
    }
    
    static void fillVector(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            //vector[i] = (int) (Math.random() * 5);
            vector[i] = i;
        }
    }
    
    static boolean areVectorsEquals(int[] vector1, int[] vector2) {
        boolean res = true;
        
        for (int i = 0; i < vector1.length; i++) {
            if (vector1[i] != vector2[i]) {
                res = false;
                break;
            }
        }
        
        return res;
    }
}
