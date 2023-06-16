package desafio1;

import entities.Vehiculo;
import services.VehiculoServicio;

/**
 *
 * @author facu
 */
public class Desafio1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        final int TOTAL_VEHICULOS = 3;
        
        //X vehículos durante Y segundos
//        recorrido(TOTAL_VEHICULOS, 5);
        recorrido(TOTAL_VEHICULOS, 10);
//        recorrido(TOTAL_VEHICULOS, 60);
        
        //Mayor recorrido entre X vehículos durante Y segundos
        mayorRecorrido(TOTAL_VEHICULOS, 300);
    }
    
    public static void recorrido(int totalVehiculos, int totalSegundos) {
        VehiculoServicio vs = new VehiculoServicio();
        
        System.out.println("Recorrido individual: " + totalSegundos + " segundos");
        System.out.println("-----------------------------------");
        
        for (int i = 0; i < totalVehiculos; i++) {
            System.out.println("Vehículo #" + (i + 1));
            System.out.println("------------");
            
            Vehiculo v = vs.crear();
            
            int metrosRecorrido = vs.moverse(v, totalSegundos) + vs.frenar(v);
            
            System.out.println("El vehículo tipo " + v.getTipo() + ", "  + v.getMarca() + " " + v.getModelo() + ", avanzó " + metrosRecorrido + " metros en " + totalSegundos + " segundos");
            
            System.out.println("------------");
            System.out.println("");

        }
    }
    
    public static void mayorRecorrido(int totalVehiculos, int totalSegundos) {
        //vehículo que más avanzó en X segundos
        Vehiculo queMasAvanzo = new Vehiculo();
        int metrosRecorridos = 0;
        
        //Crear servicio
        VehiculoServicio vs = new VehiculoServicio();
        
        System.out.println("Obtener vehículo con mayor recorrido: " + totalSegundos + " segundos");
        System.out.println("---------------------------------------------------");
        
        //Para cada vehículo...
        for (int i = 0; i < totalVehiculos; i++) {
            System.out.println("Vehículo #" + (i + 1));
            System.out.println("------------");
            
            Vehiculo v = vs.crear();
            
            int recorridoFinal = vs.moverse(v, totalSegundos) + vs.frenar(v);
            
            if (recorridoFinal > metrosRecorridos) {
                metrosRecorridos = recorridoFinal;
                queMasAvanzo = v;
            }
        }
        
        //Imprimir vehículo que más avanzó
        System.out.println("El vehículo que más avanzó fue: " + queMasAvanzo.getTipo() + " " + queMasAvanzo.getMarca() + ", modelo " + queMasAvanzo.getModelo() + ". Recorrió un total de " + metrosRecorridos + " metros en " + totalSegundos + " segundos");
        System.out.println("---------------------------------------------------");
        System.out.println("");
    }
    
}
