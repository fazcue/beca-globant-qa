/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_20_matrizmagica;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_20_matrizMagica {
    
    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longMatrix = 3;
        int[][] matrix = new int[longMatrix][longMatrix];
        
        fillMatrix(matrix, longMatrix);
        
        if (isMagicMatrix(matrix, longMatrix)) {
            System.out.println("La matriz es mágica.");
        } else {
            System.out.println("La matriz NO es mágica.");
        }
    }
    
    public static void fillMatrix(int[][] matrix, int longMatrix) {
        for (int i = 0; i < longMatrix; i++) {
            for (int j = 0; j < longMatrix; j++) {
                System.out.println("[" + i + ", " + j + "] Ingresa un número: ");
                matrix[i][j] = leer.nextInt();
            }
        }
    }
    
    public static boolean isMagicMatrix(int[][] matrix, int longMatrix) {
        boolean magicMatrix = true;
        int sum = 0;
        int rowSum;
        int colSum;
        int diag1Sum = 0;
        int diag2Sum = 0;
        
        for (int i = 0; i < longMatrix; i++) {
            
            rowSum = 0;
            colSum = 0;
            
            for (int j = 0; j < longMatrix; j++) {
                
                //1er fila
                if (i == 0) {
                    sum += matrix[i][j];
                }
                
                //fila
                rowSum += matrix[i][j];
                
                //columna
                colSum += matrix[j][i];
                
                //Diagonal 1
                if (i == j) {
                    diag1Sum += matrix[i][j];
                }
                
                //Diagonal 2
                if (j == longMatrix - 1 - i) {
                    diag2Sum += matrix[i][j];
                }
            }
            
            if (sum != rowSum || sum != colSum) {
                magicMatrix = false;
                break;
            }
        }
        
        if (sum != diag1Sum || sum != diag2Sum) {
            magicMatrix = false;
        }
        
        return magicMatrix;
    }
    
}
