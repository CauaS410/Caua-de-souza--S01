#include <iostream>
#include <iomanip>

using namespace std;

double celsiusParaFahrenheit(double celsius) {
    return (celsius * 9.0 / 5.0) + 32;
}

double celsiusParaKelvin(double celsius) {
    return celsius + 273.15;
}

int main() {
    int opcao;
    double tempCelsius;
    double tempConvertida;

    cout << fixed << setprecision(2);

    do {
        cout << "1. Converter Celsius para Fahrenheit" << endl;
        cout << "2. Converter Celsius para Kelvin" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1:
                cout << "Digite a temperatura em Celsius: ";
                cin >> tempCelsius;
                tempConvertida = celsiusParaFahrenheit(tempCelsius);
                cout << tempCelsius << " C equivale a " << tempConvertida << " F." << endl;
                break;

            case 2:
                cout << "Digite a temperatura em Celsius: ";
                cin >> tempCelsius;
                tempConvertida = celsiusParaKelvin(tempCelsius);
                cout << tempCelsius << " C equivale a " << tempConvertida << " K." << endl;
                break;

            case 3:
                cout << "Saindo do programa" << endl;
                break;

            default:
                cout << "Opcao invalida! Tente novamente." << endl;
                break;
        }

    } while (opcao != 3);

    return 0;
}
