package services;

import entities.Ahorcado;
import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class AhorcadoService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Ahorcado crearJuego() {
        Ahorcado ahorcado = new Ahorcado();
        
        System.out.print("Ingresa la palabra secreta: ");
        String palabraSecreta = scanner.next();
        
        int longPalabraSecreta = palabraSecreta.length();
        char[] vectorPalabraSecreta = new char[longPalabraSecreta];
        
        for (int i = 0; i < longPalabraSecreta; i++) {
            vectorPalabraSecreta[i] = palabraSecreta.charAt(i);
        }
        
        ahorcado.setPalabraSecreta(vectorPalabraSecreta);
        ahorcado.setPalabraJugador(new char[longPalabraSecreta]);
        
        System.out.print("Indica el máximo de intentos: ");
        ahorcado.setCantJugadasMaximas(scanner.nextInt());
        
        return ahorcado;
    }
    
    public void longitud(Ahorcado ahorcado) {
        System.out.println("Longitud de la palabra: " + ahorcado.getPalabraSecreta().length + " letras");
    }
    
    public void mostrarPalabra(char[] palabraJugador, int longitud) {
        for (int i = 0; i < longitud; i++) {
            if (palabraJugador[i] == 0) {
                System.out.print(" _ ");
            } else {
                System.out.print(" " + palabraJugador[i] + " ");
            }
        }
        System.out.println("");
    }
    
    public void buscar(Ahorcado ahorcado, char letraABuscar) {
        char[] palabraJugador = ahorcado.getPalabraJugador();
        
        int count = 0;
        int vecesEncontrada = 0;
        
        for (char letra : ahorcado.getPalabraSecreta()) {
            if (Character.compare(letraABuscar, letra) == 0) {
                palabraJugador[count] = letraABuscar;
                vecesEncontrada++;
            }
            count++;
        }
        
        if (vecesEncontrada > 0) {
            ahorcado.setPalabraJugador(palabraJugador);
            System.out.println("La letra '" + letraABuscar + "' fue encontrada en " + vecesEncontrada + " posicion/es");
        } else {
            ahorcado.setCantJugadasMaximas(ahorcado.getCantJugadasMaximas() - 1);
            System.out.println("Letra '" + letraABuscar + "' no fue encontrada");
        }
        
        mostrarPalabra(palabraJugador, palabraJugador.length);

    }
    
    public void intentos(Ahorcado ahorcado) {
        System.out.println("Intentos restantes: " + ahorcado.getCantJugadasMaximas());
    }
    
    public void juego(Ahorcado ahorcado) {
        do {
            
            System.out.print("Ingresa la letra a buscar: ");
            buscar(ahorcado, scanner.next().charAt(0));
            
            
        } while (!Arrays.equals(ahorcado.getPalabraSecreta(), ahorcado.getPalabraJugador()) && ahorcado.getCantJugadasMaximas() > 0);
        
        
    }
}
