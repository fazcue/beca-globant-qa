package services;

import entities.Pelicula;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class PeliculaService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Pelicula crearPelicula() {
        Pelicula pelicula = new Pelicula();
        
        System.out.print("Titulo: ");
        pelicula.setTitulo(scanner.next());
        
        System.out.print("Genero: ");
        pelicula.setGenero(scanner.next());
        
        System.out.print("Año: ");
        pelicula.setAnio(scanner.nextInt());
        
        System.out.print("Duracion: ");
        pelicula.setDuracion(scanner.nextInt());
        
        return pelicula;
    }
}
