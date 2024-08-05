/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
using namespace std;

int main() {
    // Declaramos la constante que se utilizara durante la ejecucion de todo el codigo
    int edad;

    // Solicitar al usuario que ingrese su edad
    cout << "Por favor, ingrese su edad: ";
    // Leemos el dato ingresado
    cin >> edad;

    // Determinar si es mayor de edad y mostramos en pantalla el resultado
    if (edad >= 18) {
        cout << "Segun la edad que usted ingreso, se determina que usted es: mayor de edad" << endl;
    } else {
        cout << "Segun la edad que usted ingreso, se determina que usted es: menor de edad" << endl;
    }

    return 0;
}