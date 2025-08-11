/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pkg2025_2_actividad1;

import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class Persona {

    private float Peso;
    private float Estatura;

    public float getPeso() {
        return Peso;
    }

    public void setPeso(float Peso) {
        this.Peso = Peso;
    }

    public float getEstatura() {
        return Estatura;
    }

    public void setEstatura(float Estatura) {
        this.Estatura = Estatura;
    }

    public float calcularIMC() {
        float imc = getPeso() / getEstatura()*getEstatura();

        if (imc < 18.5) {
            JOptionPane.showMessageDialog(null, "Bajo Peso");

        } else if (imc >= 18.5 && imc <= 24.9) {
            JOptionPane.showMessageDialog(null, "Normal");
            
        } else if (imc >= 25 && imc <= 29.9) {
            JOptionPane.showMessageDialog(null, "Soprepeso");
            
        } else if (imc >= 30 && imc <= 34.9) {
            JOptionPane.showMessageDialog(null, "Obesidad I");
             
        }else if (imc >= 35 && imc <= 39) {
            JOptionPane.showMessageDialog(null, "Obesidad II");
            
        }else {
            JOptionPane.showMessageDialog(null, "Normal");
                     

        }
        

        return imc;

    }

}
