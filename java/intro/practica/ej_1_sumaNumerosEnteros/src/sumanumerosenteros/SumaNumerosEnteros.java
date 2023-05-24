/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sumanumerosenteros;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class SumaNumerosEnteros {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa un numero entero: ");
        int num1 = leer.nextInt();
        
        System.out.println("Ingresa otro numero entero: ");
        int num2 = leer.nextInt();
        
        System.out.println("La suma entre " + num1 + " y " + num2 + " es igual a: " + (num1 + num2));
    }
    
}
