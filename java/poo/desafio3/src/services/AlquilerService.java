package services;

import entities.Alquiler;
import entities.Pelicula;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class AlquilerService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Alquiler crearAlquiler(Pelicula pelicula) {
        Alquiler alquiler = new Alquiler();
        
        alquiler.setPelicula(pelicula);
        
        System.out.print("Inicio: ");
        alquiler.setInicio(new Date(scanner.next()));
        
        System.out.print("Fin: ");
        alquiler.setFin(new Date(scanner.next()));
        
        //Calcular diferencia de días
        long cantDias = (alquiler.getFin().getTime() - alquiler.getInicio().getTime()) / 86400000;
        
        //Calcular precio
        double precio = alquiler.getPrecio();
        
        if (cantDias - 3 > 1) {
            cantDias -= 3;
            for (int i=0; i < cantDias; i++) {
                precio += precio * 0.1;
            }
        }
        
        alquiler.setPrecio(precio);
        
        return alquiler;
    }
}
