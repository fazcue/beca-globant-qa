/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Person;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class PersonService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Person create() {
        Person p1 = new Person();
        
        System.out.println("Datos de la persona");
        System.out.println("---------------");
        
        System.out.print("Nombre: ");
        p1.setName(scanner.next());
        
        System.out.print("Edad: ");
        p1.setAge(scanner.nextInt());
        
        char sex;
        do {
            System.out.print("Sexo: ");
            sex = scanner.next().toUpperCase().charAt(0);
            
            if (sex != 'H' && sex != 'M' && sex != 'O') {
                System.out.println("Sexo inválido. Opciones: H: hombre, M: mujer, O: otro");
            }
            
        } while (sex != 'H' && sex != 'M' && sex != 'O');
        p1.setSex(sex);

        System.out.print("Altura: ");
        p1.setHeight(scanner.nextDouble());
        
        System.out.print("Peso: ");
        p1.setWeight(scanner.nextDouble());
        
        System.out.println("---------------");
        System.out.println("");
        
        return p1;
    }
    
    public int imc(Person p1) {
        double imc = p1.getWeight() / (Math.pow(p1.getHeight(), 2));
        
        if (imc < 20) {
            return -1;
        }
        
        if (imc >= 20 && imc <= 25) {
            return 0;
        }

        return 1;
    }
    
    public boolean isAdult(Person p1) {
        return p1.getAge() >= 18;
    }
}
