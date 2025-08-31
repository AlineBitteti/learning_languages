#include <iostream>
using namespace std;

int main() {
    const int LINHAS = 3;
    const int COLUNAS = 3;
    int matriz[LINHAS][COLUNAS];

    // Preenchendo a matriz com valores
    for (int i = 0; i < LINHAS; i++) {
        for (int j = 0; j < COLUNAS; j++) {
            cin >> matriz[i][j];
        }
    }

    // Imprimindo a matriz
    cout << "\nMatriz:\n";
    for (int i = 0; i < LINHAS; i++) {
        for (int j = 0; j < COLUNAS; j++) {
            cout << matriz[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
}
