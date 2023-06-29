package services;

import entities.Pelicula;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class PeliculaService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Pelicula crearPelicula() {
        //Crear película
        Pelicula pelicula = new Pelicula();
        
        //Setear título
        System.out.print("Titulo: ");
        pelicula.setTitulo(scanner.next());
        
        //Setear genero
        System.out.print("Genero: ");
        pelicula.setGenero(scanner.next());
        
        //Setear año
        int anio;
        final int ANIO_MIN = 1920;
        int anioActual = new Date().getYear() + 1900;
        
        do {
            System.out.print("Año: ");
            anio = scanner.nextInt();

            if (anio < ANIO_MIN || anio > anioActual) {
                System.out.println("Año no válido. Debe ser entre " + ANIO_MIN + " y " + anioActual);
                System.out.println("");
            }
        } while (anio < ANIO_MIN || anio > anioActual);
        pelicula.setAnio(anio);
        
        //Setear duración
        int duracion;
        final int DURACION_MIN = 15;
        final int DURACION_MAX = 300;
        do {
            System.out.print("Duración: ");
            duracion = scanner.nextInt();
            
            if (duracion < DURACION_MIN || duracion > DURACION_MAX) {
                System.out.println("Duración no válida. Debe ser entre " + DURACION_MIN + " y " + DURACION_MAX + " minutos");
                System.out.println("");
            }
        } while (duracion < DURACION_MIN || duracion > DURACION_MAX);
        pelicula.setDuracion(duracion);
        
        //Retornar
        return pelicula;
    }
}
