/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Operation;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class OperationService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Operation create() {
        Operation c1 = new Operation();
        
        System.out.println("Operación");
        System.out.println("-----------");
        
        System.out.print("Ingrese el num #1: ");
        c1.setNum1(scanner.nextInt());
        
        System.out.print("Ingrese el num #2: ");
        c1.setNum2(scanner.nextInt());
        
        System.out.println("-----------");
        System.out.println("");
        
        return c1;
    }
    
    public int add(Operation c1) {
        return c1.getNum1() + c1.getNum2();
        
    }
    
    public int subtract(Operation c1) {
        return c1.getNum1() - c1.getNum2();
    }
    
    public int multiply(Operation c1) {
        if (c1.getNum1() == 0 || c1.getNum2() == 0) {
            System.out.println("");
            System.out.println("Todo número multiplicado por 0 es igual a 0");
            return 0;
        }
        
        return c1.getNum1() * c1.getNum2();
    }
    
    public double divide(Operation c1) {
        if (c1.getNum2() == 0) {
            System.out.println("");
            System.out.println("No se puede dividir por 0");
            return 0;
        }
        
        return (double) c1.getNum1() / c1.getNum2();
    }
}
