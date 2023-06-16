package services;

import entities.Course;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class CourseService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public String[] loadStudents(int totalStudents) {
        String students[] = new String[totalStudents];
        
        for (int i = 0; i < totalStudents; i++) {
            System.out.print("Estudiante #" + (i+1) + ": ");
            students[i] = scanner.next();
        }
        
        return students;
    }
    
    public Course create() {
        Course c1 = new Course();
        
        System.out.println("Info del curso: ");
        System.out.println("-----------------------");
        
        System.out.print("Nombre: ");
        c1.setName(scanner.next());
        
        System.out.print("Total horas por día: ");
        c1.setHoursPerDay(scanner.nextInt());
        
        System.out.print("Total días a la semana: ");
        c1.setDaysPerWeek(scanner.nextInt());
        
        System.out.print("Turno: ");
        c1.setShift(scanner.next());
        
        System.out.print("Precio por hora: ");
        c1.setPricePerHour(scanner.nextDouble());
        
        System.out.print("Cantidad de estudiantes: ");
        int totalStudents = scanner.nextInt();
        
        System.out.println("");
        
        System.out.println("Nombres de estudiantes:");
        System.out.println("-----------------------");
        c1.setStudents(loadStudents(totalStudents));
        
        System.out.println("-----------------------");
        System.out.println("");

        return c1;
    }
    
    public void weeklyProfits(Course c1) {
        double total = c1.getHoursPerDay()* c1.getPricePerHour() * c1.getDaysPerWeek() * c1.getStudents().length;
        
        System.out.println("Las ganancias mensuales ascienden a $" + total);
        System.out.println("");
    }
}
