#include <iostream>
#include <string>

using namespace std;

class Pokemon {
protected:
    string nome;

public:
    Pokemon(string nome) : nome(nome) {}
    virtual ~Pokemon() {}

    virtual void atacar() {
        cout << nome << " usa um ataque genérico!" << endl;
    }
};

class PokemonDeFogo : public Pokemon {
public:
    PokemonDeFogo(string nome) : Pokemon(nome) {}

    void atacar() override {
        cout << nome << " lança uma bola de fogo!" << endl;
    }
};

class PokemonDeAgua : public Pokemon {
public:
    PokemonDeAgua(string nome) : Pokemon(nome) {}

    void atacar() override {
        cout << nome << " lança um jato de água!" << endl;
    }
};

int main() {
    const int tamanhoDaPokedex = 2;
    Pokemon* minhaPokedex[tamanhoDaPokedex];

    minhaPokedex[0] = new PokemonDeFogo("Charizard");
    minhaPokedex[1] = new PokemonDeAgua("Blastoise");

    for (int i = 0; i < tamanhoDaPokedex; ++i) {
        minhaPokedex[i]->atacar();
    }

    for (int i = 0; i < tamanhoDaPokedex; ++i) {
        delete minhaPokedex[i];
    }

    return 0;
}
