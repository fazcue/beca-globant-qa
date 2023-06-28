package desafio3;

import entities.Tienda;
import services.TiendaService;

/**
 *
 * @author facu
 */
public class Desafio3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        TiendaService ts = new TiendaService();
        Tienda tienda = ts.crearTienda();
        
        ts.menu(tienda);
    }
}
