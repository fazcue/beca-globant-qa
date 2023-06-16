package services;

import entities.Smartphone;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class SmartphoneService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public int[] loadCode(int codeLength) {
        int[] code = new int[codeLength];
        
        System.out.println("Código");
        System.out.println("-------");

        String num;
        
        do {
            System.out.print("Ingresa un código de " + codeLength + " digitos: ");
            num = scanner.next();
            
            if (num.length() != codeLength) {
                System.out.println("Código no válido.");
                System.out.println("");
            }
        } while (num.length() != codeLength);
        
        for (int i = 0; i < codeLength; i++) {
            code[i] = Integer.parseInt(num.substring(i, i + 1));
        }
        
        return code;
    }
    
    public Smartphone create() {
        
        Smartphone sp1 = new Smartphone();
        
        System.out.print("Marca: ");
        sp1.setBrand(scanner.next());
        
        System.out.print("Precio: ");
        sp1.setPrice(scanner.nextDouble());
        
        System.out.print("Modelo: ");
        sp1.setModel(scanner.next());
        
        System.out.print("RAM: ");
        sp1.setRam(scanner.nextDouble());
        
        System.out.print("Almacenamiento: ");
        sp1.setDiskSpace(scanner.nextInt());
        
        System.out.print("Longitud de código: ");
        sp1.setCode(loadCode(scanner.nextInt()));

        return sp1;
    }
}
