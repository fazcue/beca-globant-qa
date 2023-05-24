/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_10_sumaconlimite;

import java.util.Scanner;
/**
 *
 * @author facu
 */
public class Ej_10_sumaConLimite {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int limit = getLimit();
        
        int sum = sumUntilLimit(limit);
        
        System.out.println("La suma final es igual a: " + sum);
    }
    
    public static int getLimit() {
        int limit;
        do {
            System.out.print("Indica un limite: ");
            limit = leer.nextInt();
            
            if (limit < 1) {
                System.out.println("No válido. Debe ser un valor positivo");
            }
        } while (limit < 1);
        
        return limit;
    }
    
    public static int sumUntilLimit(int limit) {
        int sum = 0;
        while (sum < limit) {
            System.out.print("Ingresa un numero a sumar: ");
            int num = leer.nextInt();
            
            sum += num;
        }
        
        return sum;
    }
}
