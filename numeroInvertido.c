#include <stdio.h>

int main() 
{
    //el primer paso, es declarar las variables que utilizaremos para el desarrolo de nuestro programa
    int numero, invertido = 0;
    
    // Se solicita al usuario que ingrese un número entero de 4 dígitos
    printf("Ingrese un numero entero de 4 digitos: ");
    scanf("%d", &numero);

    // Verificamos si el número tiene 4 dígitos
    if (numero < 1000 || numero > 9999) {
        printf("El numero no tiene 4 digitos.\n");
        return 1; // Salir del programa con código de error
    }

    // Realizamos el proceso para invertir el número utilizando un bucle while
    while (numero > 0) {
        invertido = invertido * 10 + numero % 10; // Agregar el último dígito al número invertido
        numero /= 10; // Eliminar el último dígito del número original
    }

    // Mostramos en pantalla el número invertido
    printf("El numero invertido es: %d\n", invertido);

    return 0;
}