package services;

import entities.Alquiler;
import entities.Pelicula;
import entities.Tienda;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class TiendaService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Tienda crearTienda() {
        Tienda tienda = new Tienda();
        
        System.out.println("-----------------------------");
        System.out.println("Bienvenido a MovieRent Store");
        System.out.println("-----------------------------");
        System.out.println("");
        
        return tienda;
    }
    
    public void anadirPelicula(Tienda tienda) {
        //Crear servicio pelicula
        PeliculaService ps = new PeliculaService();
        
        //Obtener peliculas y total peliculas 
        Pelicula[] peliculas = tienda.getPeliculas();
        int totalPeliculas = tienda.getTotalPeliculas();
        
        //Crear nueva pelicula
        Pelicula peliculaNueva = ps.crearPelicula();
        
        //Guardar en 1era posicion vacia
        peliculas[totalPeliculas] = peliculaNueva;
        
        //Guardar peliculas
        tienda.setPeliculas(peliculas);
        tienda.setTotalPeliculas(totalPeliculas + 1);
        
        System.out.println("");
    }
    
    public void anadirAlquiler(Tienda tienda) {
        //Obtener total peliculas
        int totalPeliculas = tienda.getTotalPeliculas();
        
        if (totalPeliculas > 0) {
            //Crear servicio alquiler
            AlquilerService as = new AlquilerService();

            //Obtener peliculas
            Pelicula[] peliculas = tienda.getPeliculas();

            //Obtener peliculas alquiladas y total alquiladas
            Alquiler[] alquiladas = tienda.getAlquiladas();
            int totalAlquiladas = tienda.getTotalAlquiladas();

            //Listar peliculas
            listarPeliculas(tienda);

            //Crear alquiler
            System.out.println("-------------");
            System.out.print("Que película deseas alquilar? ");
            int opcion = scanner.nextInt();

            Alquiler nuevoAlquiler = as.crearAlquiler(peliculas[opcion - 1]);

            //guardar en 1er espacio vacio
            alquiladas[totalAlquiladas] = nuevoAlquiler;

            //Guardar array e imprimir info
            tienda.setAlquiladas(alquiladas);
            tienda.setTotalAlquiladas(totalAlquiladas + 1);
        } else {
            System.out.println("No puedes crear un alquiler. Añade al menos 1 película.");
        }
        
        System.out.println("");
    }
    
    public void listarPeliculas(Tienda tienda) {
        int totalPeliculas = tienda.getTotalPeliculas();
        
        if (totalPeliculas > 0) {
            Pelicula[] peliculas = tienda.getPeliculas();
            
            for (int i = 0; i < totalPeliculas; i++) {
                System.out.println((i+1) + ". " + peliculas[i]);
            }
        } else {
            System.out.println("No se han cargado películas aún");
        }
        
        System.out.println("");
    }
    
    public void listarAlquiladas(Tienda tienda) {
        int totalAlquiladas = tienda.getTotalAlquiladas();
        
        if (totalAlquiladas > 0) {
            Alquiler[] alquiladas = tienda.getAlquiladas();
            
            for (int i = 0; i < totalAlquiladas; i++) {
                System.out.println((i+1) + ". " + alquiladas[i]);
            }
        } else {
            System.out.println("No hay películas alquiladas aún");
        }
        
        System.out.println("");
    }
    
    public void buscarPelicula(Tienda tienda) {
        int totalPeliculas = tienda.getTotalPeliculas();
        
        if (totalPeliculas > 0) {
            Pelicula[] peliculas = tienda.getPeliculas();
        
            System.out.print("Indica el nombre de la película: ");
            String peliculaABuscar = scanner.next();

            for (int i = 0; i < totalPeliculas; i++) {
                if (peliculas[i].getTitulo().equalsIgnoreCase(peliculaABuscar)) {
                    System.out.println(peliculas[i]);
                    return;
                }
            }

            System.out.println(peliculaABuscar + " NO existe en la base de datos");
        } else {
            System.out.println("No se han cargado películas aún");
        }
        
        System.out.println("");
    }
    
    public void buscarGenero(Tienda tienda) {
        int totalPeliculas = tienda.getTotalPeliculas();
        
        if (totalPeliculas > 0) {
            Pelicula[] peliculas = tienda.getPeliculas();
            int contador = 0;
        
            System.out.print("Indica el genero de la película: ");
            String generoABuscar = scanner.next();

            for (int i = 0; i < totalPeliculas; i++) {
                if (peliculas[i].getGenero().equalsIgnoreCase(generoABuscar)) {
                    System.out.println(peliculas[i]);
                    contador++;
                }
            }
            
            if (contador == 0) {
                System.out.println("NO existen películas en la base de datos de dicho genero");
            }
        } else {
            System.out.println("No se han cargado películas aún");
        }
        
        System.out.println("");
    }
    
    public void buscarAlquiler(Tienda tienda) {
        int totalAlquiladas = tienda.getTotalAlquiladas();
        
        if (totalAlquiladas > 0) {
            int contador = 0;
        
            System.out.print("Indica la fecha del alquiler: ");
            Date fechaABuscar = new Date(scanner.next());

            for (Alquiler alquiler : tienda.getAlquiladas()) {
                if (alquiler != null) {
                    if (alquiler.getInicio().compareTo(fechaABuscar) == 0) {
                        System.out.println(alquiler);
                        contador++;
                    }
                }
            }

            if (contador == 0) {
                System.out.println("NO existen alquileres con dicha fecha");
            }
        } else {
            System.out.println("No se han cargado alquileres aún");
        }
        
        System.out.println("");
    }
    
    public void calcularIngreso(Tienda tienda) {
        int totalAlquiladas = tienda.getTotalAlquiladas();
        
        if (totalAlquiladas > 0) {
            Alquiler[] alquiladas = tienda.getAlquiladas();
            double total = 0;
            
            for (int i = 0; i < totalAlquiladas; i++) {
                total += alquiladas[i].getPrecio();
            }
            
            System.out.printf("El total de ingreso hasta la fecha es: $%.2f", total);
        } else {
            System.out.println("No se han cargado alquileres aún");
        }
        
        System.out.println("");
    }
    
    public void menu(Tienda tienda) {
        boolean mostrarMenu = true;
        
        do {
            System.out.println("MENU");
            System.out.println("------------");
            System.out.println("1. Añadir película");
            System.out.println("2. Añadir alquiler");
            System.out.println("3. Listar películas");
            System.out.println("4. Listar alquiladas");
            System.out.println("5. Buscar película por título");
            System.out.println("6. Buscar película por genero");
            System.out.println("7. Buscar alquiler por fecha");
            System.out.println("8. Calcular ingreso");
            System.out.println("9. Salir");
            System.out.println("------------");

            System.out.print("Elije una opcion: ");
            int opcion = scanner.nextInt();

            switch (opcion) {
                case 1: 
                    anadirPelicula(tienda);
                    break;
                case 2: 
                    anadirAlquiler(tienda);
                    break;
                case 3:
                    listarPeliculas(tienda);
                    break;
                case 4:
                    listarAlquiladas(tienda);
                    break;
                case 5:
                    buscarPelicula(tienda);
                    break;
                case 6:
                    buscarGenero(tienda);
                    break;
                case 7:
                    buscarAlquiler(tienda);
                    break;
                case 8:
                    calcularIngreso(tienda);
                    break;
                case 9:
                    mostrarMenu = false;
                    break;
                default:
                    System.out.println("Opción no válida");
                    System.out.println("");
                    break;
            }
        } while (mostrarMenu);
        
        System.out.println("Hasta luego");
    }
}
