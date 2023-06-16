package services;

import entities.Cuadrado;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class CuadradoServicio {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Cuadrado crear() {
        Cuadrado c1 = new Cuadrado();
        
        System.out.print("Indica la base: ");
        c1.setBase(scanner.nextDouble());
        
        System.out.print("Indica la altura: ");
        c1.setAltura(scanner.nextDouble());
        
        return c1;
    }
    
    public void area(Cuadrado c1) {
        double a = c1.getBase() * c1.getAltura();
        
        System.out.printf("El area del cuadrado es igual a: %.2f\n", a);
    }
    
    public void perimetro(Cuadrado c1) {
        double p = 2 * (c1.getBase() + c1.getAltura());
        
        System.out.printf("El perimetro del cuadrado es igual a: %.2f\n", p);
    }
}
