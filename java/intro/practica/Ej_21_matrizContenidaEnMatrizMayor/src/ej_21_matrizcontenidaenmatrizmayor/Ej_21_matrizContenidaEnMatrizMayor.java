/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_21_matrizcontenidaenmatrizmayor;

/**
 *
 * @author facu
 */
public class Ej_21_matrizContenidaEnMatrizMayor {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longMatrixA = 10;
        int[][] matrixA = new int[longMatrixA][longMatrixA];
        
        int longMatrixB = 3;
        int[][] matrixB = {{27, 28, 29}, {37, 38, 39}, {47, 48, 49}};
        
        fillMatrix(matrixA, longMatrixA);
        
        printMatrix(matrixA, longMatrixA);
        System.out.println("");
        printMatrix(matrixB, longMatrixB);
        
        System.out.println("");
        matrixBInMatrixA(matrixA, longMatrixA, matrixB, longMatrixB);
    }
    
    public static void fillMatrix(int[][] matrix, int longMatrix) {
        for (int i = 0; i < longMatrix; i++) {
            for (int j = 0; j < longMatrix; j++) {
                matrix[i][j] = (i * longMatrix) + j;
            }
        }
    }
    
    public static void printMatrix(int[][] matrix, int longMatrix) {
        
        for (int i = 0; i < longMatrix; i++) {
            if (i == 0) {
                System.out.print("     ");
            }
            
            System.out.print(i + "  ");
        }
        
        System.out.println("");
        
        for (int i = 0; i < longMatrix; i++) {
            System.out.print(i + " [ ");
            for (int j = 0; j < longMatrix; j++) {
                if (matrix[i][j] < 10) {
                    System.out.print(" ");
                }
                System.out.print(matrix[i][j] + " ");
            }
            System.out.print("]");
            System.out.println("");
        }
    }
    
    public static void matrixBInMatrixA(int[][] matrixA, int longMatrixA, int[][] matrixB, int longMatrixB) {
        
        boolean isBinA = false;
        int firstI = -1;
        int firstJ = -1;
        
        for (int i = 0; i < longMatrixA; i++) {
            for (int j = 0; j < longMatrixA - longMatrixB + 1; j++) {
                
                //Si coincide con 1er elemento en matrizB...
                if (matrixA[i][j] == matrixB[0][0]) {
                    
                    isBinA = true;
                    firstI = i;
                    firstJ = j;
                    
                    //recorrer matrizB...
                    for (int k = 0; k < longMatrixB; k++) {
                        for (int l = 0; l < longMatrixB; l++) {
                            
                            //Si no coincide uno de los elementos, entonces NO se encuenta
                            if (matrixB[k][l] != matrixA[i + k][j + l]) {
                                isBinA = false;
                                break;
                            }
                            
                        }
                        
                        //Si un elemento de la fila no coincidió, entonces salir
                        if (!isBinA) {
                            break;
                        }
                    }
                    
                    //Si la matriz fue encontrada, entonces salir
                    if (isBinA) {
                        break;
                    }
                    
                }
            }
        }
        
        if (isBinA) {
            System.out.println("Matriz B se encuentra dentro de matriz A");
            System.out.println("La fila inicial es: " + firstI);
            System.out.println("La columna inicial es: " + firstJ);
            
        } else {
            System.out.println("Matriz B NO se encuentra dentro de matriz A");
        }
        
    }
    
}
