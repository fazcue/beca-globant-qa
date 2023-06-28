package services;

import entities.GuessMonth;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class GuessMonthService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public void play(GuessMonth gm) {
        String guess;
        do {
            System.out.print("Indica el nombre del mes: ");
            guess = scanner.next();

            if (!gm.getSecretMonth().equalsIgnoreCase(guess)) {
                System.out.println("Incorrecto. Intenta nuevamente...");
                System.out.println("");
            }
        } while (!gm.getSecretMonth().equalsIgnoreCase(guess));
        
        System.out.println("Ganaste!");
    }
}
