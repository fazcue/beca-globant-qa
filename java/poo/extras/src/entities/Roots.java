package entities;

/**
 *
 * @author facu
 */
public class Roots {
    private double a;
    private double b;
    private double c;

    public Roots() {
    }

    public Roots(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public void setA(double a) {
        this.a = a;
    }

    public void setB(double b) {
        this.b = b;
    }

    public void setC(double c) {
        this.c = c;
    }

    public double getA() {
        return a;
    }

    public double getB() {
        return b;
    }

    public double getC() {
        return c;
    }

    @Override
    public String toString() {
        return "Roots{" + "a=" + a + ", b=" + b + ", c=" + c + '}';
    }
    
    public double getDiscriminat() {
        return (Math.pow(getB(), 2) - 4 * getA() * getC());
    }
    
    public boolean hasRoots() {
        return getDiscriminat() > 0;
    }
    
    public boolean hasRoot() {
        return getDiscriminat() == 0;
    }
    
    public double calculateRoot(int type) {
        return (-getB() + (type * (Math.sqrt( Math.pow(getB(), 2) - 4 * getA() * getC() ))) ) / 2 * getA();
    }
    
    public void getRoots() {
        if (hasRoots()) {
            System.out.println("Solución 1: " + calculateRoot(1));
            System.out.println("Solución 2: " + calculateRoot(-1));
        } else {
            System.out.println("No existen 2 soluciones");
        }
    }
    
    public void getRoot() {
        if (hasRoot()) {
            System.out.println("Solución: " + calculateRoot(1));
        } else {
            System.out.println("No existe solución única.");
        }
    }
    
    public void calculate() {
        if (hasRoots()) {
            getRoots();
            return;
        }
        
        if (hasRoot()) {
            getRoot();
            return;
        }
        
        System.out.println("No existen soluciones.");
    }
}
