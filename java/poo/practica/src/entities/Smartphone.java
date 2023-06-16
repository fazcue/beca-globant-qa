package entities;

import java.util.Arrays;

/**
 *
 * @author facu
 */
public class Smartphone {
    private String brand;
    private double price;
    private String model;
    private double ram;
    private int diskSpace;
    private int[] code;

    public Smartphone() {
    }

    public Smartphone(String brand, double price, String model, double ram, int diskSpace, int[] code) {
        this.brand = brand;
        this.price = price;
        this.model = model;
        this.ram = ram;
        this.diskSpace = diskSpace;
        this.code = code;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public double getRam() {
        return ram;
    }

    public void setRam(double ram) {
        this.ram = ram;
    }

    public int getDiskSpace() {
        return diskSpace;
    }

    public void setDiskSpace(int diskSpace) {
        this.diskSpace = diskSpace;
    }

    public int[] getCode() {
        return code;
    }

    public void setCode(int[] code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Smarthphone{" + "brand=" + brand + ", price=" + price + ", model=" + model + ", ram=" + ram + ", diskSpace=" + diskSpace + ", code=" + Arrays.toString(code) + '}';
    }
}
