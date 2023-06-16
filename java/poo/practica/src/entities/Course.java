package entities;

import java.util.Arrays;

/**
 *
 * @author facu
 */
public class Course {
    private String name;
    private int hoursPerDay;
    private int daysPerWeek;
    private String shift;
    private double pricePerHour;
    private String[] students;

    public Course() {
    }

    public Course(String name, int hoursPerDay, int daysPerWeek, String shift, double pricePerHour, String[] students) {
        this.name = name;
        this.hoursPerDay = hoursPerDay;
        this.daysPerWeek = daysPerWeek;
        this.shift = shift;
        this.pricePerHour = pricePerHour;
        this.students = students;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getHoursPerDay() {
        return hoursPerDay;
    }

    public void setHoursPerDay(int hoursPerDay) {
        this.hoursPerDay = hoursPerDay;
    }

    public int getDaysPerWeek() {
        return daysPerWeek;
    }

    public void setDaysPerWeek(int daysPerWeek) {
        this.daysPerWeek = daysPerWeek;
    }

    public String getShift() {
        return shift;
    }

    public void setShift(String shift) {
        this.shift = shift;
    }

    public double getPricePerHour() {
        return pricePerHour;
    }

    public void setPricePerHour(double pricePerHour) {
        this.pricePerHour = pricePerHour;
    }

    public String[] getStudents() {
        return students;
    }

    public void setStudents(String[] students) {
        this.students = students;
    }

    @Override
    public String toString() {
        return "Course{" + "name=" + name + ", hoursPerDay=" + hoursPerDay + ", daysPerWeek=" + daysPerWeek + ", shift=" + shift + ", pricePerHour=" + pricePerHour + ", students=" + Arrays.toString(students) + '}';
    }
}
