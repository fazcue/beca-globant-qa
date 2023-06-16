package services;

import entities.Sentence;
import java.util.Scanner;

/**
 *
 * @author facu
 */
public class SentenceService {
    Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Sentence create() {
        Sentence s1 = new Sentence();
        
        System.out.println("Ingresa una frase: ");
        s1.setPhrase(scanner.next());
        s1.setPhraseLong(s1.getPhrase().length());
        
        System.out.println("");
        
        return s1;
    }
    
    public void totalVowels(Sentence s1) {
        char[] vowels = {'a', 'e', 'i', 'o', 'u'};
        int total = 0;
        
        //Para cada letra...
        for (char letter : s1.getPhrase().toLowerCase().toCharArray()) {
            
            //Comparar con vocales
            for (char vowel : vowels) {
                if (letter == vowel) {
                    total++;
                    break;
                }
            }
            
        }
        
        System.out.println("Total de vocales: " + total);
        System.out.println("");
    }
    
    public void reverse(Sentence s1) {
        String sentence = "";
        for (char letter : s1.getPhrase().toCharArray()) {
            sentence = letter + sentence;
        }
        
        System.out.println(sentence);
        System.out.println("");
    }
    
    public void totalLetter(Sentence s1, char letter) {
        int total = 0;
        
        for (char currLetter : s1.getPhrase().toCharArray()) {
            if (currLetter == letter) {
                total++;
            }
        }
        
        System.out.println("La letra '" + letter + "' se repite " + total + " veces");
        System.out.println("");
    }
    
    public void compareLong(Sentence s1, String sentence) {
        int diff = sentence.length() - s1.getPhraseLong();
        
        System.out.print("La frase ingresada tiene ");
        
        if (diff < 0) {
            System.out.print(-diff + " caracter/es menos ");
        } else {
            System.out.print(diff + " caracter/es más ");
        }
        
        System.out.print("respecto de la frase original\n");
        System.out.println("");
    }
    
    public void join(Sentence s1, String extraPhrase) {
        s1.setPhrase(s1.getPhrase() + extraPhrase);
        s1.setPhraseLong(s1.getPhrase().length());
        
        System.out.println(s1.getPhrase());
        System.out.println("");
    }
    
    public void replace(Sentence s1, char letter, char newLetter) {
        String newSentence = "";
        
        for (char currLetter : s1.getPhrase().toCharArray()) {
            if (currLetter == letter) {
                newSentence += newLetter;
                continue;
            }
            newSentence += currLetter;
        }
        
        System.out.println(newSentence);
        System.out.println("");
    }
    
    public boolean include(Sentence s1, char letter) {
        for (char currLetter : s1.getPhrase().toCharArray()) {
            if (currLetter == letter) {
                return true;
            }
        }
        
        return false;
    }
}
