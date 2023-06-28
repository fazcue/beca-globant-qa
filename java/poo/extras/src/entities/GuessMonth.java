package entities;

import java.util.Arrays;

/**
 *
 * @author facu
 */
public class GuessMonth {   
    private String[] months;
    private String secretMonth;

    public GuessMonth() {
        months = new String[]{"enero", "febrero", "marzo", "abril", "mayo", "junio", "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};
        
        secretMonth = months[(int) (Math.random() * 12)];
    }

    public GuessMonth(String[] months, String secretMonth) {
        this.secretMonth = secretMonth;
    }

    public void setMonths(String[] months) {
        this.months = months;
    }

    public void setSecretMonth(String secretMonth) {
        this.secretMonth = secretMonth;
    }

    public String[] getMonths() {
        return months;
    }

    public String getSecretMonth() {
        return secretMonth;
    }

    @Override
    public String toString() {
        return "GuessMonth{" + "months=" + Arrays.toString(months) + ", secretMonth=" + secretMonth + '}';
    }
}
