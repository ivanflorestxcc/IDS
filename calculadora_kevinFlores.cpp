#include <iostream>
using namespace std;

int main() {
    // se declaran las variables para almacenar los valores ingresados, se utiliza float para poder utilizar decimales
    float valor1;
    float valor2;
    
    // Solicitar al usuario que ingrese el primer valor
    cout << "Ingrese el primer valor: ";
    cin >> valor1;

    // Solicitar al usuario que ingrese el segundo valor
    cout << "Ingrese el segundo valor: ";
    cin >> valor2;

    // Realizar las operaciones aritméticas
    float suma = valor1 + valor2;
    float resta = valor1 - valor2;
    float multiplicacion = valor1 * valor2;
    float division;

    // Comprobar si el segundo valor es cero para evitar división por cero
    if (valor2 != 0) {
        division = valor1 / valor2;
    } else {
        cout << "Error: División por cero no es posible." << endl;
        return 1; // Terminar el programa con un código de error
    }

    // Imprimir los resultados de las operaciones
    cout << "La suma de los valores ingresados es: " << suma << endl;
    cout << "La resta de los valores ingresados es: " << resta << endl;
    cout << "La multiplicación de los valores ingresados es: " << multiplicacion << endl;
    cout << "La división de los valores ingresados es: " << division << endl;

    return 0; // Terminar el programa
}