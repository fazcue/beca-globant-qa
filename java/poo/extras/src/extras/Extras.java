package extras;

import entities.Ahorcado;
import entities.GuessMonth;
import services.NifService;
import entities.Nif;
import entities.Points;
import entities.Roots;
import services.AhorcadoService;
import services.GuessMonthService;

/**
 *
 * @author facu
 */
public class Extras {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
//        ejercicio2();
//        ejercicio3();
//        ejercicio4();
//        ejercicio5();
        ejercicio6();
    }
    
    public static void ejercicio2() {
        Points points1 = new Points();
        
        points1 = points1.create();
        
        points1.distance();
    }
    
    public static void ejercicio3() {
        //Ecuacion con 2 soluciones
        Roots root1 = new Roots(3, -5, 1);
        
        System.out.println("Ecuación con 2 soluciones: ");
        root1.calculate();
        System.out.println("");
        
        //Ecuacion con 1 solucion
        Roots root2 = new Roots(2, -4, 2);

        
        System.out.println("Ecuación con 1 solución: ");
        root2.calculate();
        System.out.println("");
                
        //Ecuacion sin solucion
        Roots root3 = new Roots(1, 1, 1);
        
        System.out.println("Ecuación sin solución: ");
        root3.calculate();
        System.out.println("");
    }
    
    public static void ejercicio4() {
        NifService ns = new NifService();
        
        Nif nif1 = ns.crearNif();
        
        ns.mostrar(nif1);
    }
    
    public static void ejercicio5() {
        GuessMonthService gms = new GuessMonthService();
        
        GuessMonth gm1 = new GuessMonth();
        
        gms.play(gm1);
    }
    
    public static void ejercicio6() {
        AhorcadoService as = new AhorcadoService();
        
        Ahorcado ahorcado1 = as.crearJuego();
        
        as.juego(ahorcado1);
    }
    
}
