/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_17_numerospordigitos;

/**
 *
 * @author facu
 */
public class Ej_17_numerosPorDigitos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        int longVector = 10000;
        int[] vector = new int[longVector];
        
        fillVectorRandomly(vector, longVector);
        
        countNumsByDigits(vector, longVector);
    }
    
    public static void fillVectorRandomly(int[] vector, int longVector) {
        for (int i = 0; i < longVector; i++) {
            vector[i] = (int) (Math.random() * 100000);
        }
    }
    
    public static void countNumsByDigits(int[] vector, int longVector) {
        int oneDigit = 0;
        int twoDigits = 0;
        int threeDigits = 0;
        int fourDigits = 0;
        int fiveDigits = 0;
        
        for (int i = 0; i < longVector; i++) {
            int digits = String.valueOf(vector[i]).length();
            
            switch (digits) {
                case 1:
                    oneDigit += 1;
                    break;
                case 2:
                    twoDigits += 1;
                    break;
                case 3:
                    threeDigits += 1;
                    break;
                case 4:
                    fourDigits += 1;
                    break;
                case 5:
                    fiveDigits += 1;
                    break;
            }
        }
        
        System.out.println("Números de 1 digito: " + oneDigit);
        System.out.println("Números de 2 digitos: " + twoDigits);
        System.out.println("Números de 3 digitos: " + threeDigits);
        System.out.println("Números de 4 digitos: " + fourDigits);
        System.out.println("Números de 5 digitos: " + fiveDigits);
        
        System.out.println("");
        System.out.println("total: " + (oneDigit + twoDigits + threeDigits + fourDigits + fiveDigits));
    }
    
}
