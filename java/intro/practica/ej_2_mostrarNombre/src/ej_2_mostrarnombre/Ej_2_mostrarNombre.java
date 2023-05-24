/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_2_mostrarnombre;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_2_mostrarNombre {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner leer = new Scanner(System.in);
        
        System.out.println("Ingresa tu nombre: ");
        String name = leer.nextLine();
        
        System.out.println("Tu nombre es: " + name);
    }
    
}
