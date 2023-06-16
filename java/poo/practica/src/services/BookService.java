/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import entities.Book;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class BookService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Book create() {
        Book b1 = new Book();
        
        System.out.println("Nuevo libro");
        System.out.println("-------------");
        
        System.out.print("Título: ");
        b1.setTitle(scanner.next());
        
        System.out.print("Autor: ");
        b1.setAuthor(scanner.next());
        
        System.out.print("ISBN: ");
        b1.setIsbn(scanner.next());
        
        System.out.print("Páginas: ");
        b1.setPages(scanner.nextInt());
        
        System.out.println("-------------");
        System.out.println("");
        
        return b1;
    }
    
    public void print(Book b1) {
        System.out.println("libro '" + b1.getTitle() + "'");
        System.out.println("-------------");
        System.out.println("Autor: " + b1.getAuthor());    
        System.out.println("ISBN: " + b1.getIsbn());
        System.out.println("Páginas: " + b1.getPages());
        System.out.println("-------------");
        System.out.println("");
    }
}
