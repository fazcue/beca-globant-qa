package entities;

import java.util.Arrays;

/**
 *
 * @author facu
 */
public class Tienda {
    private Pelicula[] peliculas;
    private Alquiler[] alquiladas;
    private int totalPeliculas;
    private int totalAlquiladas;

    public Tienda() {
        peliculas = new Pelicula[100];
        alquiladas = new Alquiler[100];
        totalPeliculas = 0;
        totalAlquiladas = 0;
    }

    public Tienda(Pelicula[] peliculas, Alquiler[] alquiladas, int totalPeliculas, int totalAlquiladas) {
        this.peliculas = peliculas;
        this.alquiladas = alquiladas;
        this.totalPeliculas = totalPeliculas;
        this.totalAlquiladas = totalAlquiladas;
    }

    public void setPeliculas(Pelicula[] peliculas) {
        this.peliculas = peliculas;
    }

    public void setAlquiladas(Alquiler[] alquiladas) {
        this.alquiladas = alquiladas;
    }

    public void setTotalPeliculas(int totalPeliculas) {
        this.totalPeliculas = totalPeliculas;
    }

    public void setTotalAlquiladas(int totalAlquiladas) {
        this.totalAlquiladas = totalAlquiladas;
    }

    public Pelicula[] getPeliculas() {
        return peliculas;
    }

    public Alquiler[] getAlquiladas() {
        return alquiladas;
    }

    public int getTotalPeliculas() {
        return totalPeliculas;
    }

    public int getTotalAlquiladas() {
        return totalAlquiladas;
    }
    
    @Override
    public String toString() {
        return "Tienda{" + "peliculas=" + Arrays.toString(peliculas) + ", alquiladas=" + Arrays.toString(alquiladas) + ", totalPeliculas=" + totalPeliculas + ", totalAlquiladas=" + totalAlquiladas + '}';
    }
}
