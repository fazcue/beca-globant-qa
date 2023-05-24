/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_18_matriztraspuesta;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_18_matrizTraspuesta {
    
    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longMatrix = 4;
        int[][] matrix = new int[longMatrix][longMatrix];
        int[][] transposedMatrix = new int[longMatrix][longMatrix];
        
        fillMatrixRandomly(matrix, longMatrix);
        transposedMatrix(matrix, transposedMatrix, longMatrix);
        
        printMatrix(matrix, longMatrix);
        System.out.println("");
        printMatrix(transposedMatrix, longMatrix);
    }
    
    public static void fillMatrixRandomly(int[][] matrix, int longMatrix) {
        for (int i = 0; i < longMatrix; i++) {
            for (int j = 0; j < longMatrix; j++) {
                matrix[i][j] = (int) (Math.random() * 9);
            }
        }
    }
    
    public static void transposedMatrix(int[][] matrix, int[][] transposedMatrix, int longMatrix ) {
        for (int i = 0; i < longMatrix; i++) {
            for (int j = 0; j < longMatrix; j++) {
                transposedMatrix[j][i] = matrix[i][j];
            }
        }
    }
    
    public static void printMatrix(int[][] matrix, int longMatrix) {
        for (int i = 0; i < longMatrix; i++) {
            System.out.print("[ ");
            for (int j = 0; j < longMatrix; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println("]");
        }
    }
    
}
