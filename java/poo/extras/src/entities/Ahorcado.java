package entities;

import java.util.Arrays;

/**
 *
 * @author facu
 */
public class Ahorcado {
    private char[] palabraSecreta;
    private char[] palabraJugador;
    private int cantLetrasEncontradas;
    private int cantJugadasMaximas;

    public Ahorcado() {
        cantLetrasEncontradas = 0;
    }

    public Ahorcado(char[] palabraSecreta, char[] palabraJugador, int cantLetrasEncontradas, int cantJugadasMaximas) {
        this.palabraSecreta = palabraSecreta;
        this.palabraJugador = palabraJugador;
        this.cantLetrasEncontradas = cantLetrasEncontradas;
        this.cantJugadasMaximas = cantJugadasMaximas;
    }

    public void setPalabraSecreta(char[] palabraSecreta) {
        this.palabraSecreta = palabraSecreta;
    }

    public void setPalabraJugador(char[] palabraJugador) {
        this.palabraJugador = palabraJugador;
    }

    public void setCantLetrasEncontradas(int cantLetrasEncontradas) {
        this.cantLetrasEncontradas = cantLetrasEncontradas;
    }

    public void setCantJugadasMaximas(int cantJugadasMaximas) {
        this.cantJugadasMaximas = cantJugadasMaximas;
    }

    public char[] getPalabraSecreta() {
        return palabraSecreta;
    }

    public char[] getPalabraJugador() {
        return palabraJugador;
    }

    public int getCantLetrasEncontradas() {
        return cantLetrasEncontradas;
    }

    public int getCantJugadasMaximas() {
        return cantJugadasMaximas;
    }

    @Override
    public String toString() {
        return "Ahorcado{" + "palabraSecreta=" + Arrays.toString(palabraSecreta) + ", palabraJugador=" + Arrays.toString(palabraJugador) + ", cantLetrasEncontradas=" + cantLetrasEncontradas + ", cantJugadasMaximas=" + cantJugadasMaximas + '}';
    }
}
