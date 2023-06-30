package services;

import entities.Nif;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class NifService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Nif crearNif() {
        Nif nif = new Nif();
        
        char[] letters = {'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};
        
        System.out.print("Ingresa el DNI: ");
        nif.setDni(scanner.nextInt());

        int resto = (int) nif.getDni() % 23;
        nif.setLetter(letters[resto]);
        
        return nif;
    }
    
    public void mostrar(Nif nif) {
        System.out.printf("%08d-%c\n", nif.getDni(), nif.getLetter());
    }
}
