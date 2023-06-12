/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica;

import entities.BankAccount;
import entities.Book;
import entities.Operation;
import entities.Circumference;
import entities.Nespresso;
import entities.Person;
import entities.Rectangle;
import entities.Sentence;
import services.BankAccountService;
import services.BookService;
import services.OperationService;
import services.CircumferenceService;
import services.NespressoService;
import services.PersonService;
import services.RectangleService;
import services.SentenceService;

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
    }
    
    public static void ejercicio1() {
        //Crear servicio
        BookService bs = new BookService();
        
        //Crear libro
        Book book1 = bs.newBook();
        
        //Imprimir
        bs.printBook(book1);
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
        rs.printRectangle(r1);
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
        final int TOTAL_PERSONS = 4;
        
        //Variables
        int bajoPeso = 0;
        int pesoIdeal = 0;
        int sobrePeso = 0;
        int mayorEdad = 0;
        
        //Crear servicio
        PersonService ps = new PersonService();
        
        //Crear personas
        for (int i = 0; i < TOTAL_PERSONS; i++) {
            Person p = ps.create();
            
            //Calcular imc
            System.out.print("Persona #" + p.getId() + " se encuenta ");
            switch (ps.imc(p)) {
                case -1:
                    System.out.print("bajo de peso");
                    bajoPeso++;
                    break;
                case 0:
                    System.out.print("en su peso ideal");
                    pesoIdeal++;
                    break;
                case 1:
                    System.out.print("con sobrepeso");
                    sobrePeso++;
                    break;
            }
            System.out.println("");
            
            //Es adulto
            if (ps.isAdult(p)) {
                System.out.println("Es adulto");
                mayorEdad++;
            } else {
                System.out.println("Es menor de edad");
            }
            
            System.out.println("");
        }
        
        //Porcentajes
        StringBuilder sb = new StringBuilder();
        
        sb.append("Porcentajes finales\n")
        .append("-------------\n")
        .append("Bajo Peso: ").append(String.format("%.2f\n", ((double) bajoPeso * 100 / TOTAL_PERSONS)))
        .append("Peso Ideal: ").append(String.format("%.2f\n", ((double) pesoIdeal * 100 / TOTAL_PERSONS)))
        .append("Sobrepeso: ").append(String.format("%.2f\n", ((double) sobrePeso * 100 / TOTAL_PERSONS)))
        .append("\n")
        .append("Mayor de edad: ").append(String.format("%.2f\n", ((double) (mayorEdad) * 100 / TOTAL_PERSONS)))
        .append("Menor de edad: ").append(String.format("%.2f\n", ((double) (TOTAL_PERSONS - mayorEdad) * 100 / TOTAL_PERSONS)))
        .append("-------------\n")
        .append(Person.getCount());
        
        System.out.println(sb.toString());
        
/*
        System.out.println("Porcentajes finales");
        System.out.println("-------------");
        System.out.printf("Bajo Peso: %.2f%%\n", ((double) bajoPeso * 100 / TOTAL_PERSONS));
        System.out.printf("Peso Ideal: %.2f%%\n", ((double) pesoIdeal * 100 / TOTAL_PERSONS));
        System.out.printf("Sobrepeso: %.2f%%\n", ((double) sobrePeso * 100 / TOTAL_PERSONS));
        System.out.println("");
        System.out.printf("Mayor de edad: %.2f%%\n", ((double) (mayorEdad) * 100 / TOTAL_PERSONS));
        System.out.printf("Menor de edad: %.2f%%\n", ((double) (TOTAL_PERSONS - mayorEdad) * 100 / TOTAL_PERSONS));
        System.out.println("-------------");
        System.out.println("");
        System.out.println(Person.getCount());
*/
    }
    
    public static void ejercicio8() {
        //Crear servicio
        SentenceService ss = new SentenceService();
        
        //Crear sentencia
        Sentence sentence1 = ss.create();
        
        ss.totalVowels(sentence1);
        ss.reverse(sentence1);
        ss.totalLetter(sentence1, 'a');
        ss.compareLong(sentence1, "Nueva frase");
        ss.join(sentence1, "que tal");
        ss.replace(sentence1, 'a', 'A');
        
        System.out.println("La frase incluye la letra 'A'? " + ss.include(sentence1, 'A'));
    }
}
