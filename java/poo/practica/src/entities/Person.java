package entities;

import java.time.LocalDate;

/**
 *
 * @author facu
 */
public class Person {
    private String name;
//    private int age; //Modificado por ejercicio 12
    private char sex;
    private double weight;
    private double height;
    //Extra ejercicio 12
    private LocalDate birthDate;

    public Person() {
    }

    //Modificado por ejercicio 12
    public Person(String name, char sex, double height, double weight, LocalDate birthDate) {
        this.name = name;
//        this.age = age;
        this.sex = sex;
        this.height = height;
        this.weight = weight;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    /* Modificado por ejercicio 12
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
*/

    public char getSex() {
        return sex;
    }

    public void setSex(char sex) {
        this.sex = sex;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public LocalDate getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(LocalDate birthDate) {
        this.birthDate = birthDate;
    }
}
