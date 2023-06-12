/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Nespresso;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class NespressoService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Nespresso create() {
        Nespresso n1 = new Nespresso();
        
        System.out.println("Datos para la cafetera");
        System.out.println("------------------------");
        
        System.out.print("Indica la capacidad máxima de la cafetera (en ml): ");
        n1.setMaxCapacity(scanner.nextInt());
        
        System.out.print("Indica la cantidad de cafe inicial (en ml): ");
        int quantity = scanner.nextInt();
        
        if (quantity > n1.getMaxCapacity()) {
            quantity = n1.getMaxCapacity();
            System.out.println("Rebalsaste la cafetera :/");
        }
        
        n1.setQuantity(quantity);
        
        System.out.println("------------------------");
        System.out.println("");
        
        return n1;
    }
    
    public void fill(Nespresso n1) {
        n1.setQuantity(n1.getMaxCapacity());
        
        System.out.println("Cafetera llena");
        System.out.println("");
    }
    
    public void serve(Nespresso n1) {
        System.out.print("Indica la capacidad de la taza (en ml): ");
        int quantity = scanner.nextInt();
        
        if (n1.getQuantity() < quantity) {
            quantity = n1.getQuantity();
            System.out.println("La taza solo ha sido llenada con " + quantity + "ml de cafe");
        } else {
            System.out.println("La taza ha sido llenada");
        }
        
        n1.setQuantity(n1.getQuantity() - quantity);
        
        System.out.println("");
    }
    
    public void serve(Nespresso n1, int quantity) {       
        if (n1.getQuantity() < quantity) {
            quantity = n1.getQuantity();
            System.out.println("La taza solo ha sido llenada con " + quantity + "ml de cafe");
        } else {
            System.out.println("La taza ha sido llenada");
        }
        
        n1.setQuantity(n1.getQuantity() - quantity);
        
        System.out.println("");
    }
    
    public void empty(Nespresso n1) {
        n1.setQuantity(0);
        
        System.out.println("Se ha vaciado la cafetera");
        System.out.println("");
    }
    
    public void add(Nespresso n1) {
        System.out.print("Indica la cantidad de cafe a añadir: ");
        int amount = scanner.nextInt();
        int quantity = n1.getQuantity() + amount;
        
        if (quantity > n1.getMaxCapacity()) {
            quantity = n1.getMaxCapacity();
            System.out.println("Rebalsaste la cafetera :/");
        }
        
        n1.setQuantity(quantity);
        
        System.out.println("La cafetera ahora contiene " + quantity + " ml de cafe");
        System.out.println("");
    }
    
    public void add(Nespresso n1, int amount) {
        int quantity = n1.getQuantity() + amount;
        
        if (quantity > n1.getMaxCapacity()) {
            quantity = n1.getMaxCapacity();
            System.out.println("Rebalsaste la cafetera :/");
        }
        
        n1.setQuantity(quantity);
        
        System.out.println("La cafetera ahora contiene " + quantity + " ml de cafe");
        System.out.println("");
    }
}
