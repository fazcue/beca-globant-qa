/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_2_cambiarvaloresconaux;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_2_cambiarValoresConAux {
    
    public static Scanner leer = new Scanner(System.in);

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int A = getInt("A");
        int B = getInt("B");
        int C = getInt("C");
        int D = getInt("D");
        
        System.out.println("A: " + A + " - B: " + B + " - C: " + C + " - D: " + D);
        System.out.println("");
        changeBtoDtoAtoCtoB(A, B, C, D);
    }
    
    public static int getInt(String name) {
        System.out.println("Ingresa un valor para " + name + ": ");
        return leer.nextInt();
    }
    
    public static void changeBtoDtoAtoCtoB(int A, int B, int C, int D) {
        int aux;
        
        //change B <- C
        aux = B;
        B = C;
        
        //change C <- A
        C = A;
        
        //change A <- D
        A = D;
        
        //change D <- B
        D = aux;
        
        System.out.println("A: " + A + " - B: " + B + " - C: " + C + " - D: " + D);
    }
}
