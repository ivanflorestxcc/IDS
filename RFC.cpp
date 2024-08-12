#include <iostream>
#include <iomanip>
#include <string>
#include <sstream>

using namespace std;

string obtenerRFC(string nombre, string apellidoPaterno, string apellidoMaterno, string fechaNacimiento) {
    string rfc;
    
    // Obtener la primera letra y la primera vocal interna del apellido paterno
    rfc += toupper(apellidoPaterno[0]);
    size_t pos = apellidoPaterno.find_first_of("AEIOUaeiou", 1);
    rfc += (pos != string::npos) ? toupper(apellidoPaterno[pos]) : 'X';

    // Primera letra del apellido materno (o 'X' si no tiene apellido materno)
    rfc += !apellidoMaterno.empty() ? toupper(apellidoMaterno[0]) : 'X';

    // Primera letra del nombre
    rfc += toupper(nombre[0]);

    // Agregar los últimos dos dígitos del año de nacimiento
    rfc += fechaNacimiento.substr(8, 2);

    // Agregar el mes de nacimiento
    rfc += fechaNacimiento.substr(3, 2);

    // Agregar el día de nacimiento
    rfc += fechaNacimiento.substr(0, 2);

    return rfc;
}

int main() {
    string nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento;

    cout << "Introduce tu nombre: ";
    getline(cin, nombre);
    cout << "Introduce tu apellido paterno: ";
    getline(cin, apellidoPaterno);
    cout << "Introduce tu apellido materno: ";
    getline(cin, apellidoMaterno);
    cout << "Introduce tu fecha de nacimiento (DD/MM/AAAA): ";
    getline(cin, fechaNacimiento);

    string rfc = obtenerRFC(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento);

    cout << "Su RFC sin homoclave es: " << rfc << endl;

    return 0;
}