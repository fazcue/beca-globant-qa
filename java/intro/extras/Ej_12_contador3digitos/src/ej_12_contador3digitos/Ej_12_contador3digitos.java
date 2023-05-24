/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_12_contador3digitos;

/**
 *
 * @author facu
 */
public class Ej_12_contador3digitos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        counter2();
    }
    
    public static void counter() {
        int limit = 1000;
        
        for (int i = 0; i < limit; i++) {
            
            String c = "0";
            String d = "0";
            String u = "0";
            
            String aux = String.valueOf(i);
            
            if (i < 10) {
                c = "0";
                d = "0";
                u = aux;
            }
            
            if (i > 9 && i < 100) {
                c = "0";
                d = aux.substring(0, 1);
                u = aux.substring(1);
            }
            
            if (i > 99) {
                c = aux.substring(0, 1);
                d = aux.substring(1, 2);
                u = aux.substring(2);
            }
            
            if (u.equals("3")) {
                u = "E";
            }
            
            if (d.equals("3")) {
                d = "E";
            }
            
            if (c.equals("3")) {
                c = "E";
            }
            
            System.out.println(c + "-" + d + "-" + u);
        }
    }
    
    public static void counter2() {
        int limit = 1000;
        
        for (int i = 0; i < limit; i++) {
            
            int aux = i;
            
            int u = 0;
            int d = 0;
            int c = 0;
            
            while (aux > 0) {
                
                if (aux < 10) {
                    u = aux % 10;
                }

                if (aux > 9 && aux < 100) {
                    d = aux % 10;
                }
                
                if (aux > 99) {
                    c = aux % 10;
                }
                
                aux = aux / 10;
            }
            
                            
            System.out.print(c + "-" + d + "-" + u);
            
            System.out.println("");
            
        }
    }
    
}
