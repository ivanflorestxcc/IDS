#include <stdio.h>

int main() 

{
    //Inicializamos las variables globales que utilizaremos durante el desarrollo del programa
    int numeros[10];
    int pares = 0, impares = 0;

    // Solicitamos al usuario que ingrese 10 números, el codigo se repetirá hasta que se ingrese la cantidad total de 10 números, esto lo hace por medio de la variable local (i), que funge como contador
    printf("Ingrese 10 numeros:\n");
    for (int i = 0; i < 10; i++) {
        printf("Numero %d: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    // Determinamos y mostramos que numeros son pares y cuáles son impares, enlistados y separados por su clasificación
    printf("\nNumeros pares:\n");
    for (int i = 0; i < 10; i++) {
        if (numeros[i] % 2 == 0) {
            printf("%d\n", numeros[i]);
            pares++;
        }
    }

    printf("\nNumeros impares:\n");
    for (int i = 0; i < 10; i++) {
        if (numeros[i] % 2 != 0) {
            printf("%d\n", numeros[i]);
            impares++;
        }
    }

    return 0;
}
