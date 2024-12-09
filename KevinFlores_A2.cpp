#include <iostream>
#include <windows.h>
#include <sql.h>
#include <sqlext.h>
#include <iomanip>

using namespace std;

// Función para imprimir líneas separadoras
void imprimirLinea(int ancho, int columnas) {
    for (int i = 0; i < columnas; i++) {
        cout << "+" << string(ancho, '-');
    }
    cout << "+" << endl;
}

// Función para imprimir los encabezados con formato tabular
void imprimirEncabezados(SQLHDBC hDbc, const wchar_t* tabla, const wchar_t* consulta) {
    SQLHSTMT hStmt;   // Manejador de sentencia
    SQLRETURN retCode;

    // Asignar el manejador de sentencia
    retCode = SQLAllocHandle(SQL_HANDLE_STMT, hDbc, &hStmt);
    if (retCode != SQL_SUCCESS && retCode != SQL_SUCCESS_WITH_INFO) {
        wcout << L"Error al asignar el manejador de la sentencia para la tabla: " << tabla << endl;
        return;
    }

    // Ejecutar la consulta
    retCode = SQLExecDirect(hStmt, (SQLWCHAR*)consulta, SQL_NTS);
    if (retCode == SQL_SUCCESS || retCode == SQL_SUCCESS_WITH_INFO) {
        wcout << L"\nTabla: " << tabla << endl;

        // Imprimir encabezados
        SQLSMALLINT numColumnas;
        SQLNumResultCols(hStmt, &numColumnas);

        const int anchoColumna = 20; // Ancho fijo para cada columna
        imprimirLinea(anchoColumna, numColumnas); // Línea superior

        for (SQLSMALLINT i = 1; i <= numColumnas; i++) {
            SQLWCHAR columna[50];
            SQLDescribeCol(hStmt, i, columna, sizeof(columna) / sizeof(SQLWCHAR), NULL, NULL, NULL, NULL, NULL);
            wcout << L"|" << setw(anchoColumna) << left << columna;
        }
        wcout << L"|" << endl;

        imprimirLinea(anchoColumna, numColumnas); // Línea inferior
    }
    else {
        wcout << L"Error al ejecutar la consulta para la tabla: " << tabla << endl;
    }

    // Liberar el manejador de sentencia
    SQLFreeHandle(SQL_HANDLE_STMT, hStmt);
}

void conectarBaseDeDatos() {
    // Declarar variables para la conexión
    SQLHANDLE hEnv;  // Manejador de entorno
    SQLHANDLE hDbc;  // Manejador de conexión
    SQLRETURN retCode;  // Código de retorno

    // Inicializar el entorno ODBC
    retCode = SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &hEnv);
    if (retCode != SQL_SUCCESS && retCode != SQL_SUCCESS_WITH_INFO) {
        wcout << L"Error al inicializar el entorno ODBC" << endl;
        return;
    }

    // Configurar el entorno ODBC a nivel 3 (ODBC 3.0)
    SQLSetEnvAttr(hEnv, SQL_ATTR_ODBC_VERSION, (SQLPOINTER)SQL_OV_ODBC3, 0);

    // Inicializar el manejador de conexión
    retCode = SQLAllocHandle(SQL_HANDLE_DBC, hEnv, &hDbc);
    if (retCode != SQL_SUCCESS && retCode != SQL_SUCCESS_WITH_INFO) {
        wcout << L"Error al inicializar el manejador de conexión" << endl;
        SQLFreeHandle(SQL_HANDLE_ENV, hEnv);
        return;
    }

    // Convertir la cadena de conexión a Unicode
    const wchar_t connectionString[] = L"DSN=sqlserver;UID=Username;PWD=password;";

    // Conectar a la base de datos
    retCode = SQLDriverConnect(hDbc, NULL, (SQLWCHAR*)connectionString, SQL_NTS, NULL, 0, NULL, SQL_DRIVER_COMPLETE);
    if (retCode == SQL_SUCCESS || retCode == SQL_SUCCESS_WITH_INFO) {
        wcout << L"Conexión exitosa a la base de datos." << endl;

        // Imprimir los encabezados de las tablas
        imprimirEncabezados(hDbc, L"CentroDeTrabajo", L"SELECT * FROM CentroDeTrabajo WHERE 1=0");
        imprimirEncabezados(hDbc, L"Puesto", L"SELECT * FROM Puesto WHERE 1=0");
        imprimirEncabezados(hDbc, L"Empleado", L"SELECT * FROM Empleado WHERE 1=0");

    }
    else {
        wcout << L"Error al conectar a la base de datos." << endl;
    }

    // Desconectar y liberar recursos
    SQLDisconnect(hDbc);
    SQLFreeHandle(SQL_HANDLE_DBC, hDbc);
    SQLFreeHandle(SQL_HANDLE_ENV, hEnv);
}

int main() {
    conectarBaseDeDatos();
    return 0;
}
