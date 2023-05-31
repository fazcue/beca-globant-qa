/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_19_matrizantisimetrica;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_19_matrizAntisimetrica {
    
    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longMatrix = 3;
        int[][] matrix = new int[longMatrix][longMatrix];
        
        fillMatrix(matrix, longMatrix);
        
        if (isAntiSymmetric(matrix, longMatrix)) {
            System.out.println("La matriz es anti simetrica.");
        } else {
            System.out.println("La matriz NO es anti simetrica.");
        }
        
    }
    
    public static void fillMatrix(int[][] matrix, int longMatrix ) {
        for (int i = 0; i < longMatrix; i++) {
            for (int j = 0; j < longMatrix; j++) {
                System.out.println("[" + i + ", " + j + "] Ingresa un número: ");
                matrix[i][j] = leer.nextInt();
            }
        }
    }
    
    public static boolean isAntiSymmetric(int[][] matrix, int longMatrix) {
        boolean antiSymmetric = true;
        
        for (int i = 0; i < longMatrix; i++) {
            for (int j = 0; j < longMatrix; j++) {
                if (matrix[i][j] != -matrix[j][i]) {
                    antiSymmetric = false;
                    break;
                }
            }
            
            if (!antiSymmetric) {
                break;
            }
        }
        
        return antiSymmetric;
    }
    
}
