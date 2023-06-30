package entities;

/**
 *
 * @author facu
 */
public class Nif {
    private long dni;
    private char letter;

    public Nif() {
    }

    public Nif(long dni, char letter) {
        this.dni = dni;
        this.letter = letter;
    }

    public void setDni(long dni) {
        this.dni = dni;
    }

    public void setLetter(char letter) {
        this.letter = letter;
    }

    public long getDni() {
        return dni;
    }

    public char getLetter() {
        return letter;
    }

    @Override
    public String toString() {
        return "Nif{" + "dni=" + dni + ", letter=" + letter + '}';
    }
}
