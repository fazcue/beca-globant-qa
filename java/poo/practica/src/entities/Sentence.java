/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author facu
 */
public class Sentence {
    private String phrase;
    private int phraseLong;

    public Sentence() {
    }

    public Sentence(String phrase, int phraseLong) {
        this.phrase = phrase;
        this.phraseLong = phraseLong;
    }

    public String getPhrase() {
        return phrase;
    }

    public void setPhrase(String phrase) {
        this.phrase = phrase;
    }

    public int getPhraseLong() {
        return phraseLong;
    }

    public void setPhraseLong(int phraseLong) {
        this.phraseLong = phraseLong;
    }
}
