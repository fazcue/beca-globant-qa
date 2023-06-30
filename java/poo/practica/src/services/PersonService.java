/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Person;
import java.time.LocalDate;
import java.time.Period;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class PersonService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Person create() {
        Person p1 = new Person();
        
        System.out.print("Nombre: ");
        p1.setName(scanner.next());
        
        //Modificado por ejercicio 12
//        System.out.print("Edad: ");
//        p1.setAge(scanner.nextInt());

        System.out.print("Fecha de nacimiento (YYYY-MM-DD): ");
        p1.setBirthDate(LocalDate.parse(scanner.next()));
        
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
        
        //Modificado por ejercicio 12
//        return p1.getAge() >= 18;
        Period age = Period.between(p1.getBirthDate(), LocalDate.now());

        
        return age.getYears() >= 18;
    }
    
    //Extra ejercicio 12
    public int age(Person p1) {
        Period p = Period.between(p1.getBirthDate(), LocalDate.now());
        
        return p.getYears();
    }
    
    public boolean isYoungerThan(Person p1, int age) {
        int p1Age = age(p1);
        
        return p1Age < age;
    }
    
    public void print(Person p1) {
        System.out.println("Nombre: " + p1.getName());
        System.out.println("Fecha de nacimimiento: " + p1.getBirthDate());
        System.out.println("Edad: " + age(p1));
        System.out.println("");
    }
}
