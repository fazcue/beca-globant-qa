package desafio2;

import entities.Cuadrado;
import java.util.Scanner;
import services.CuadradoServicio;

/**
 *
 * @author facu
 */
public class Desafio2 {

    static Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.print("Que figura geométrica deseas crear? ");
        String figura = scanner.next();
        
        switch (figura) {
            case "cuadrado":
                cuadrado();
                break;
            case "Rectangulo":
//                rectangulo();
                break;
            case "Triangulo":
//                triangulo();
                break;
            case "Circulo":
//                circulo();
                break;
            case "Hexagono":
//                hexagono();
                break;
            case "Pentagono":
//                pentagono();
                break;
            case "Rombo":
//                rombo();
                break;
            default:
                System.out.println("Figura no válida");
        }
    }
    
    public static void cuadrado() {
        CuadradoServicio servicio = new CuadradoServicio();
        Cuadrado figura = servicio.crear();
        
        servicio.area(figura);
        servicio.perimetro(figura);
    }
}
