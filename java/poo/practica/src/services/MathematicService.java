/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Mathematic;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class MathematicService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Mathematic create() {
        Mathematic math = new Mathematic();
        
        System.out.print("Ingresa el número 1: ");
        math.setNum1(scanner.nextDouble());
        
        System.out.print("Ingresa el número 2: ");
        math.setNum2(scanner.nextDouble());
        
        System.out.println("");
        
        return math;
    }
    
    public void higher(Mathematic math) {
        if (math.getNum1() == math.getNum2()) {
            System.out.println("Ambos números son iguales");
            System.out.println("");
            return;
        }
        
        if (math.getNum1() > math.getNum2()) {
            System.out.println("Número 1 es mayor");
        } else {
            System.out.println("Número 2 es mayor");
        }
        
        System.out.println("");
    }
    
    public void pow(Mathematic math) {
        int base = (int) math.getNum1();
        int pow = (int) math.getNum2();
        
        if (base > pow) {
            int aux = pow;
            pow = base;
            base = aux;
        }
        
        int res = base;
        
        for (int i = 0; i < pow - 1; i++) {
            res *= base;
        }
        
        System.out.println("La potencia es igual a: " + res);
        System.out.println("");
    }
    
    public void squareRoot(Mathematic math) {
        
        double num = math.getNum1();
        
        if (num > math.getNum2()) {
            num = math.getNum2();
        }
        
        num = Math.abs(num);
        
        double res = Math.sqrt(num);
        
        System.out.println("La raíz cuadrada de " + num + " es igual a: " + res);
    }
}
