/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_1_convertirminutosadias;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_1_convertirMinutosAdias {

    public static Scanner leer = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int minutes = getMinutes();
        
        convertMinutesToDays(minutes);
    }
    
    public static int getMinutes() {
        System.out.println("Indica los minutos: ");
        return leer.nextInt();
    }
    
    public static void convertMinutesToDays(int minutes) {
        int days = 0;
        int hours = minutes / 60;
        
        while (hours >= 24) {
            days += 1;
            hours -= 24;
        }
        
        System.out.println(days + " día, " + hours + " horas.");
    }
}
