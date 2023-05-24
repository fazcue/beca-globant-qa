/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_16_mayormenoredad;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_16_mayorMenorEdad {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int persons = getInt();
        
        olderAgeOrNot(persons);
    }
    
    public static int getInt() {
        int n;
        
        do {
            System.out.println("Indica la cantidad de personas: ");
            n = leer.nextInt();
            leer.nextLine();
            
            if (n < 0) {
                System.out.println("Número no válido.");
                System.out.println("");
            }
        } while (n < 0);
        
        return n;
    }
    
    public static void olderAgeOrNot(int persons) {
        for (int i = 0; i < persons; i++) {
            
            System.out.println("Persona #" + (i + 1) + ": Indica su nombre: ");
            String name = leer.nextLine();
            
            System.out.println("Persona #" + (i + 1) + ": Indica su edad");
            int age= leer.nextInt();
            leer.nextLine();
            
            System.out.println("");
            
            if (age > 17) {
                System.out.println(name + " es mayor de edad. Tiene " + age + " años.");
            } else {
                System.out.println(name + " NO es mayor de edad. Tiene solamente " + age + " año/s");
            }
            
            System.out.println("");
            
            System.out.println("Desea continuar con el resto de personas?");
            String nextPerson = leer.nextLine();
            
            if (nextPerson.equalsIgnoreCase("no")) {
                break;
            }
            
        }
    }
}
