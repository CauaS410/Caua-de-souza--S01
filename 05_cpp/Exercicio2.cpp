#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    Pessoa(string n, int i) : nome(n), idade(i) {}

    string nome() {
        return nome;
    }

    int idade() {
        return idade;
    }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    Protagonista(string n, int i, int lvl) : Pessoa(n, i) {
        nivel = lvl;
    }

    int nivel() {
        return nivel;
    }
};

class Personagem : public Pessoa {
private:
    int rank;

public:
    Personagem(string n, int i, int r) : Pessoa(n, i) {
        if (r >= 0 && r <= 10) {
            rank = r;
        } else {
            rank = 0;
        }
    }

    int rank() {
        return rank;
    }
};

int main() {
    Protagonista protagonista("Naruto", 16, 99);
    Personagem aliado("Sasuke", 17, 10);

    cout << "Informacoes do Protagonista" << endl;
    cout << "Nome: " << protagonista.nome() << endl;
    cout << "Nivel: " << protagonista.nivel() << endl;

    cout << "Informacoes do Aliado" << endl;
    cout << "Nome: " << aliado.nome() << endl;
    cout << "Rank do Social Link: " << aliado.rank() << endl;

    return 0;
}
