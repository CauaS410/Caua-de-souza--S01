#include <iostream>

using namespace std;

float somarArray(float arr[], int tamanho) {
    float soma = 0.0;

    for (int i = 0; i < tamanho; i++) {
        soma += arr[i];
    }

    return soma;
}

int main() {
    const int TAMANHO = 5;
    float array[TAMANHO];

    cout << "digite " << TAMANHO << " os numeros:" << endl;

    for (int i = 0; i < TAMANHO; i++) {
        cout << "Valor " << i + 1 << ": ";
        cin >> array[i];
    }

    float resultado = somarArray(array, TAMANHO);

    cout << endl;
    cout << "O somatorio dos valores do array e: " << resultado << endl;

    return 0;
}
