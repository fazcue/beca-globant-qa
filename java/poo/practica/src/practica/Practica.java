package practica;

import entities.BankAccount;
import entities.Book;
import entities.Operation;
import entities.Circumference;
import entities.Course;
import entities.Nespresso;
import entities.Person;
import entities.Rectangle;
import entities.Sentence;
import entities.Mathematic;
import entities.Smartphone;
import java.time.LocalDate;
import java.time.Period;
import java.util.Arrays;
import java.util.Date;
import services.BankAccountService;
import services.BookService;
import services.OperationService;
import services.CircumferenceService;
import services.CourseService;
import services.MathematicService;
import services.NespressoService;
import services.PersonService;
import services.RectangleService;
import services.SentenceService;
import services.SmartphoneService;

/**
 *
 * @author facu
 */
public class Practica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//        ejercicio1();
//        ejercicio2();
//        ejercicio3();
//        ejercicio4();
//        ejercicio5();
//        ejercicio6();
//        ejercicio7();
//        ejercicio8();
//        ejercicio9();
//        ejercicio10();
//        ejercicio11();
//        ejercicio12();
//        ejercicio13();
        ejercicio14();
    }
    
    public static void ejercicio1() {
        //Crear servicio
        BookService bs = new BookService();
        
        //Crear libro
        Book book1 = bs.create();
        
        //Imprimir
        bs.print(book1);
    }
    
    public static void ejercicio2() {
        //Crear servicio
        CircumferenceService cs = new CircumferenceService();
        
        //Crear circunferencia
        Circumference circumference1 = cs.create();
        
        //Imprimir info
        cs.area(circumference1);
        cs.perimeter(circumference1);
    }
    
    public static void ejercicio3() {
        //Crear servicio
        OperationService cs = new OperationService();
        
        //Crear calculadora
        Operation c1 = cs.create();
        
        //Suma
        int suma = cs.add(c1);
        System.out.println("Suma: " + suma);
        
        //Resta
        int resta = cs.subtract(c1);
        System.out.println("Resta: " + resta);
        
        //Multiplicacion
        int multiplicacion = cs.multiply(c1);
        System.out.println("Multiplicacion: " + multiplicacion);
        
        //Division
        double division = cs.divide(c1);
        System.out.println("Division: " + division);
    }
    
    public static void ejercicio4() {
        //Crear servicio
        RectangleService rs = new RectangleService();
        
        //Crear rectangulo
        Rectangle r1 = rs.create();
        
        //Imprimir info
        rs.area(r1);
        rs.perimeter(r1);
        rs.draw(r1);
    }
    
    public static void ejercicio5() {
        //Crear servicio
        BankAccountService bas = new BankAccountService();
        
        //Crear cuenta bancaria
        BankAccount ba = bas.create();
        
        //Consultar datos de la cuenta
        bas.details(ba);
        
        //Ingresar dinero
//        bas.deposit(ba);
        bas.deposit(ba, 200);
        
        //Retirar dinero
//        bas.withdrawal(ba);
        bas.withdrawal(ba, 400);
        
        //Retirar dinero rápido
        bas.quickWithdrawal(ba);
        
        //Consultar saldo
        bas.balance(ba);
    }
    
    public static void ejercicio6() {
        //Crear servicio
        NespressoService ns = new NespressoService();
        
        //Crear cafetera
        Nespresso n1 = ns.create();
        
        //Llenar taza
        ns.serve(n1);
//        ns.serve(n1, 100);
        
        //Vaciar cafetera
        ns.empty(n1);
        
        //Añadir cafe en cantidades
        ns.add(n1);
//        ns.add(n1, 400);
        
        //Rellenar cafetera
        ns.fill(n1);
    }
    
    public static void ejercicio7() {
        //Constantes
        final int TOTAL_PERSONS = 1;
        
        //Variables
        int lowWeight = 0;
        int idealWeight = 0;
        int overWeight = 0;
        int totalAdults = 0;
        
        //Crear servicio
        PersonService ps = new PersonService();
        
        System.out.println("Total personas a analizar: " + TOTAL_PERSONS);
        System.out.println("-----------------------------");
        
        //Crear personas
        for (int i = 0; i < TOTAL_PERSONS; i++) {
            
            System.out.println("Datos persona #" + (i + 1));
            System.out.println("----------------");
            
            Person p = ps.create();
            
            //Calcular imc
            System.out.print(p.getName()+ " se encuenta ");
            switch (ps.imc(p)) {
                case -1:
                    System.out.print("bajo de peso");
                    lowWeight++;
                    break;
                case 0:
                    System.out.print("en su peso ideal");
                    idealWeight++;
                    break;
                case 1:
                    System.out.print("con sobrepeso");
                    overWeight++;
                    break;
            }
            
            //Es adulto
            if (ps.isAdult(p)) {
                System.out.println(", y es adulto");
                totalAdults++;
            } else {
                System.out.println(", y es menor de edad");
            }
            
            System.out.println("------------------");
            System.out.println("");
        }
        
        //Porcentajes       
        System.out.println("Porcentajes finales");
        System.out.println("-------------");
        System.out.printf("Bajo Peso: %.2f%%\n", ((double) lowWeight * 100 / TOTAL_PERSONS));
        System.out.printf("Peso Ideal: %.2f%%\n", ((double) idealWeight * 100 / TOTAL_PERSONS));
        System.out.printf("Sobrepeso: %.2f%%\n", ((double) overWeight * 100 / TOTAL_PERSONS));
        System.out.println("");
        System.out.printf("Mayor de edad: %.2f%%\n", ((double) (totalAdults) * 100 / TOTAL_PERSONS));
        System.out.printf("Menor de edad: %.2f%%\n", ((double) (TOTAL_PERSONS - totalAdults) * 100 / TOTAL_PERSONS));
        System.out.println("-------------");
        System.out.println("");
    }
    
    public static void ejercicio8() {
        //Crear servicio
        SentenceService ss = new SentenceService();
        
        //Crear sentencia
        Sentence sentence1 = ss.create();
        
        char letter = 'a';
        char replaceWith = 'A';
        
        ss.totalVowels(sentence1);
        ss.reverse(sentence1);
        ss.totalLetter(sentence1, letter);
        ss.compareLong(sentence1, "Nueva frase, más larga que la original");
        ss.join(sentence1, ", frase extra");
        ss.replace(sentence1, letter, replaceWith);
        
        System.out.println("La frase incluye la letra " + letter + "? " + ss.include(sentence1, letter));
    }
    
    public static void ejercicio9() {
        //Crear servicio
        MathematicService ms = new MathematicService();
        
        //Crear math
        Mathematic math1 = ms.create();
        
        ms.higher(math1);
        ms.pow(math1);
        ms.squareRoot(math1);
    }
    
    public static void ejercicio10() {
        double[] arrayA = new double[50];
        double[] arrayB = new double[20];
        
        //Array A
        for (int i=0; i < arrayA.length; i++) {
            arrayA[i] = (double) (int) (Math.random() * 10000) / 100;
        }
        
        System.out.println(Arrays.toString(arrayA));
        Arrays.sort(arrayA);
        
        //Array B
        for (int i = 0; i < arrayB.length; i++) {
            if (i < 10) {
                arrayB[i] = arrayA[i];
                continue;
            }
            arrayB[i] = 0.5;
        }
        
        //Imprimir arrays
        System.out.println(Arrays.toString(arrayA));
        System.out.println(Arrays.toString(arrayB));
    }
    
    public static void ejercicio11() {
        int day = 12;
        int month = 6;
        int year = 2021;
        
        //Date class (deprecated)
        Date before = new Date(year, month, day); //Funciona bien
        Date today = new Date(); //Funciona bien
        
        System.out.println("DATE CLASS:");
        //Obtener año
        System.out.println("año");
        System.out.println("-------------");
        System.out.println("Fecha anterior: " + before.getYear()); //Retorna correctamente
        System.out.println("Fecha actual erronea: " + today.getYear()); //Para fecha con constructor vacío, se debe sumar 1900
        System.out.println("Fecha actual corregida: " + (today.getYear() + 1900)); //Corregido
        System.out.println("-------------");
        
        System.out.println("");

        //Obtener mes
        System.out.println("mes");
        System.out.println("-------------");
        System.out.println("Fecha anterior: " + before.getMonth()); //Retorna correctamente
        System.out.println("Fecha actual erronea: " + today.getMonth()); //Para fecha con constructor vacío, se debe sumar 1
        System.out.println("Fecha actual corregida: " + (today.getMonth() + 1)); //Para fecha con constructor vacío, se debe sumar 1
        System.out.println("-------------");
        
        System.out.println("");

        //Obtener día
        System.out.println("día");
        System.out.println("-------------");
        System.out.println("Fecha anterior: " + before.getDate()); //Retorna correctamente
        System.out.println("Fecha actual: " + today.getDate()); //Retorna correctamente
        System.out.println("-------------");
        
        System.out.println("");
        
        //Calcular diferencia de años
        int diff = (today.getYear() + 1900) - before.getYear();
        System.out.println("Diferencia: " + diff + " años.");
        
        System.out.println("");
        
        //Class LocalDate
        LocalDate localBefore = LocalDate.of(year, month, day);
        LocalDate localToday = LocalDate.now();

        System.out.println("LOCALDATE CLASS");
        //Obtener año
        System.out.println("año");
        System.out.println("-------------");
        System.out.println("Fecha anterior: " + localBefore.getYear()); //Retorna correctamente
        System.out.println("Fecha actual: " + localToday.getYear()); //Retorna correctamente
        System.out.println("-------------");
        
        System.out.println("");

        //Obtener mes
        System.out.println("mes");
        System.out.println("-------------");
        System.out.println("Fecha anterior: " + localBefore.getMonthValue()); //Retorna correctamente
        System.out.println("Fecha actual: " + localToday.getMonthValue()); //Retorna correctamente
        System.out.println("-------------");
        
        System.out.println("");
        
        //Obtener día
        System.out.println("día");
        System.out.println("-------------");
        System.out.println("Fecha anterior: " + localBefore.getDayOfMonth()); //Retorna correctamente
        System.out.println("Fecha actual: " + localToday.getDayOfMonth()); //Retorna correctamente
        System.out.println("-------------");
        
        System.out.println("");
        
        //Period class (funciona con LocalDate) para calcular distancia entre fechas
        Period periodDiff = Period.between(localBefore, localToday);
        
        System.out.println("Diferencia: " + periodDiff.getYears() + " años, " + periodDiff.getMonths() + " meses, y " + periodDiff.getDays() + " días.");
    }
    
    public static void ejercicio12() { //Hace uso y modifica (atributo age) la clase 'Person' utilizada en ej 7.
        //Crear servicio
        PersonService ps = new PersonService();
        
        //Crear persona
        Person p1 = ps.create();
        
        //Variables
        int p2Age = 25;
        
        //Metodo menor que
        System.out.println("Es " + p1.getName() + " menor de " + p2Age + " años? " + ps.isYoungerThan(p1, p2Age));
        
        System.out.println("");
        
        //Metodo mostrar persona
        ps.print(p1);
    }
    
    public static void ejercicio13() {
        CourseService cs = new CourseService();
        
        Course c1 = cs.create();
        
        cs.weeklyProfits(c1);
        
        System.out.println(c1);
    }
    
    public static void ejercicio14() {
        SmartphoneService sps = new SmartphoneService();
        
        Smartphone sp1 = sps.create();
        
        System.out.println(sp1);
    }
}
