#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    int numNotas;
    cout << "Quantas notas voce deseja colocar? ";
    cin >> numNotas;

    float soma = 0.0f;
    float nota;

    if (numNotas <= 0) {
        cout << "Nenhuma nota para calcular." << endl;
        return 0;
    }

    for (int i = 0; i < numNotas; i++) {
        do {
            cout << "Digite a nota " << i + 1 << ": ";
            cin >> nota;

            if (nota < 0 || nota > 10) {
                cout << "Nota invalida! Por favor, digite um valor entre 0 e 10." << endl;
            }
        } while (nota < 0 || nota > 10);

        soma += nota;
    }

    float media = soma / numNotas;

    cout << fixed << setprecision(2);
    cout << "A media final do aluno e: " << media << endl;

    if (media >= 7.0) {
        cout << "Status: Aprovado" << endl;
    } else {
        cout << "Status: Reprovado" << endl;
    }

    return 0;
}
