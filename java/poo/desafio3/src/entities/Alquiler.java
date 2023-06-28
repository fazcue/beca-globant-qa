package entities;

import java.util.Date;

/**
 *
 * @author facu
 */
public class Alquiler {
    private Pelicula pelicula;
    private Date inicio;
    private Date fin;
    private double precio;

    public Alquiler() {
        precio = 10;
    }

    public Alquiler(Pelicula pelicula, Date inicio, Date fin, double precio) {
        this.pelicula = pelicula;
        this.inicio = inicio;
        this.fin = fin;
        this.precio = precio;
    }

    public Pelicula getPelicula() {
        return pelicula;
    }

    public void setPelicula(Pelicula pelicula) {
        this.pelicula = pelicula;
    }

    public Date getInicio() {
        return inicio;
    }

    public void setInicio(Date inicio) {
        this.inicio = inicio;
    }

    public Date getFin() {
        return fin;
    }

    public void setFin(Date fin) {
        this.fin = fin;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Alquiler{" + "pelicula=" + pelicula + ", inicio=" + inicio + ", fin=" + fin + ", precio=" + precio + '}';
    }
}
