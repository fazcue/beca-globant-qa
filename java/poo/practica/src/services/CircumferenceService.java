/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Circumference;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class CircumferenceService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Circumference create() {
        Circumference c1 = new Circumference();
        
        System.out.print("Radio: ");
        c1.setRadio(scanner.nextDouble());
        
        System.out.println("");

        return c1;
    }
    
    public void area(Circumference c1) {
        double res = Math.PI * Math.pow(c1.getRadio(), 2);
        
        System.out.printf("Area: %.2f\n", res);
    }
    
    public void perimeter(Circumference c1) {
        double res = 2 * Math.PI * c1.getRadio();
        
        System.out.printf("Perímetro: %.2f\n", res);
    }
}
