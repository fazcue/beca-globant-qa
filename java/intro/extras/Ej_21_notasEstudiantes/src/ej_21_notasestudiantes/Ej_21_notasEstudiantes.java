/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ej_21_notasestudiantes;

import java.util.Scanner;

/**
 *
 * @author facu
 */
public class Ej_21_notasEstudiantes {

    static Scanner scanner = new Scanner(System.in);
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        double[] students = new double[2];
        
        studentsNotes(students);
        
        printApprovedDisapproved(students);
        
    }
    
    static void studentsNotes(double[] students) {
        for (int i = 0; i < students.length; i++) {
            
            System.out.println("#" + (i+1) + ": nota TP1: ");
            double tp1 = scanner.nextDouble();
            
            System.out.println("#" + (i+1) + ": nota TP2: ");
            double tp2 = scanner.nextDouble();
            
            System.out.println("#" + (i+1) + ": nota I1: ");
            double i1 = scanner.nextDouble();
            
            System.out.println("#" + (i+1) + ": nota I2: ");
            double i2 = scanner.nextDouble();
            
            students[i] = (tp1 * 0.1) + (tp2 * .15) + (i1 * .25) + (i2 * .5);
            
            System.out.println("");
        }
    }
    
    static void printApprovedDisapproved(double[] students) {
        int approved = 0;
        int disapproved = 0;
        
        for (int i = 0; i < students.length; i++) {
            if (students[i] >= 7) {
                approved++;
            } else {
                disapproved++;
            }
        }
        
        System.out.println("");
        System.out.println("Aprobados: " + approved);
        System.out.println("Desaprobados: " + disapproved);
    }
    
}
