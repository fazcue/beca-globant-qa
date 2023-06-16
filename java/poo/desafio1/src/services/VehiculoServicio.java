package services;

import entities.Vehiculo;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class VehiculoServicio {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Vehiculo crear() {
        Vehiculo v1 = new Vehiculo();
        
        System.out.print("Ingresa la marca: ");
        v1.setMarca(scanner.next());
        
        System.out.print("Ingresa el modelo: ");
        v1.setModelo(scanner.next());
        
        String tipo;
        do {
            System.out.print("Ingresa el tipo: ");
            tipo = scanner.next();
            
            if (!tipo.equals("bicicleta") && !tipo.equals("motocicleta") && !tipo.equals("automovil")) {
                System.out.println("Tipo inválido");
                System.out.println("");
            }
        } while (!tipo.equals("bicicleta") && !tipo.equals("motocicleta") && !tipo.equals("automovil"));
        v1.setTipo(tipo);
        
        System.out.print("Ingresa el año: ");
        v1.setAnio(scanner.nextInt());
        
        System.out.println("");
        
        return v1;
    }
    
    public int moverse(Vehiculo v1) {
        int metros = 1; //default bicicleta
        
        
        if (v1.getTipo().equals("motocicleta")) {
            metros = 2;
        }
        if (v1.getTipo().equals("automovil")) {
            metros = 3;
        }
        
        System.out.print("Indica la cantidad de segundos moviendose: ");
        int segundos = scanner.nextInt();
        
        return metros * segundos;
    }
    
    public int moverse(Vehiculo v1, int segundos) {
        int metros = 1; //default bicicleta
        
        if (v1.getTipo().equals("motocicleta")) {
            metros = 2;
        }
        if (v1.getTipo().equals("automovil")) {
            metros = 3;
        }
        
        return metros * segundos;
    }
    
    public int frenar(Vehiculo v1) {
        int metros = 0;
        
        if (!v1.getTipo().equals("bicicleta")) {
            metros = 2;
        }
        
        return metros;
    }
}