/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Rectangle;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class RectangleService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Rectangle create() {
        Rectangle r1 = new Rectangle();
        
        System.out.println("Crear rectángulo");
        System.out.println("-----------------");
        
        System.out.print("Base: ");
        r1.setBase(scanner.nextDouble());
        
        System.out.print("Altura: ");
        r1.setHeight(scanner.nextDouble());
        
        System.out.println("-----------------");
        System.out.println("");
        
        return r1;
    }
    
    public void area(Rectangle r1) {
        double res = r1.getBase() * r1.getHeight();
        
        System.out.printf("Area: %.2f\n", res);
    }
    
    public void perimeter(Rectangle r1) {
        double res = 2 * (r1.getBase() + r1.getHeight());
        
        System.out.printf("Perimetro: %.2f\n", res);
    }
    
    public void printRectangle(Rectangle r1) {
        for (int i = 0; i < r1.getHeight(); i++) {
            for (int j = 0; j < r1.getBase(); j++) {
                
                if (i == 0 || i == r1.getHeight() - 1 || j == 0 || j == r1.getBase() - 1) {
                    System.out.print("* ");
                } else {
                    System.out.print("  ");
                }
                
            }
            System.out.println("");
        }
    }
}
