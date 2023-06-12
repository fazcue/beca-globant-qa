/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.BankAccount;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class BankAccountService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public BankAccount create() {
        BankAccount ba = new BankAccount();
        
        System.out.println("Apertura de cuenta");
        System.out.println("-------------------");
        
        System.out.print("Número: ");
        ba.setAccountNumber(scanner.nextInt());
        
        System.out.print("DNI: ");
        ba.setDni(scanner.nextLong());
        
        System.out.print("Deposito inicial: ");
        ba.setBalance(scanner.nextDouble());
        
        System.out.println("-------------------");
        System.out.println("");
        
        return ba;
    }
    
    public void deposit(BankAccount ba) {
        System.out.print("Cuanto $$$ desea ingresar: ");
        double amount = scanner.nextDouble();
        
        ba.setBalance(ba.getBalance() + amount);
        
        System.out.printf("Has ingresado $%.2f\n", amount);
        System.out.println("");
    }
    
    public void deposit(BankAccount ba, double amount) {
        ba.setBalance(ba.getBalance() + amount);
        System.out.printf("Has ingresado $%.2f\n", amount);
        System.out.println("");
    }
    
    public void withdrawal(BankAccount ba) {
        System.out.print("Cuanto $$$ desea retirar: ");
        double withdrawal = scanner.nextDouble();
        
        if (ba.getBalance() < withdrawal) {
            withdrawal = ba.getBalance();
        }
        
        ba.setBalance(ba.getBalance() - withdrawal);
        
        System.out.printf("Has retirado $%.2f\n", withdrawal);
        System.out.println("");
    }
    
    public void withdrawal(BankAccount ba, double amount) {
        double withdrawal = amount;
        
        if (ba.getBalance() < withdrawal) {
            withdrawal = ba.getBalance();
        }
        
        ba.setBalance(ba.getBalance() - withdrawal);
        
        System.out.printf("Has retirado $%.2f\n", withdrawal);
        System.out.println("");
    }
    
    public void quickWithdrawal(BankAccount ba) {
        double withdrawal = ba.getBalance() * 0.2;
        
        ba.setBalance(ba.getBalance() - withdrawal);
        System.out.printf("Extracción rápida $%.2f\n", withdrawal);
        System.out.println("");
    }
    
    public void balance(BankAccount ba) {
        System.out.printf("Tu saldo es de $%.2f\n", ba.getBalance());
        System.out.println("");
    }
    
    public void details(BankAccount ba) {
        System.out.println("Datos de la cuenta #" + ba.getAccountNumber());
        System.out.println("--------------------------------");
        
        System.out.println("DNI: " + ba.getDni());
        System.out.printf("Saldo: %.2f\n", ba.getBalance());
        
        System.out.println("--------------------------------");
        System.out.println("");
    }
}
