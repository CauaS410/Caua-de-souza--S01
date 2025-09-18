#include <iostream>

using namespace std;

int fibonacci(int n) {
    if (n == 0) {
        return 0;
    }
    else if (n == 1) {
        return 1;
    }
    else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main() {
    int n;

    cout << "Digite um numero inteiro para calcular o Fibonacci: ";
    cin >> n;

    if (n < 0) {
        cout << "O numero deve ser positivo" << endl;
    } else {
        int resultado = fibonacci(n);
        cout << "O Fibonacci de " << n << " e: " << resultado << endl;
    }

    return 0;
}
