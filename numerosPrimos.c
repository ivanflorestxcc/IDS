#include <stdio.h>
#include <math.h>

int main() {
    // paso 1. Inicializamos las variables para guardar los datos ingresados por el usuario y solicitamos al usuario ingrese el numero que se analizará
    int numero, esPrimo;//Inicialmente asumimos que el numero es primo
    esPrimo = 1;
    
    //paso 2. Solicitamos al usuario ingrese el numero que se desea analizar
    printf("Ingrese el número que desea analizar: ");
    scanf("%d", &numero);
    
    // paso 3. Verificamos si el número ingresado es menor o igual a 1
    if (numero <= 1)
    {
        esPrimo = 0; //El numero no es primo
    }
    else
    {
        //Iterar desde 2 hasta la raíz cuadrada del número
        for (int i = 2; i <= sqrt(numero); i++)
        {
            if (numero % i == 0)
            {
                esPrimo = 0; //El número no es primo
            }
        }
    }
    //Mostramos el resultado
    if (esPrimo == 1)
    {
        printf("El número ingresado es primo\n");
    }
    else
    {
        printf("El numero ingresado NO es primo");
    }
    

    return 0;
}