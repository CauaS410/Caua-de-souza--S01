#include <iostream>
#include <string>
#include <list>

using namespace std;

class SerVivo {
private:
    string nome;

public:
    SerVivo(string n) {
        nome = n;
    }

    virtual ~SerVivo() {}

    string nome() {
        return nome;
    }

    virtual void apresentar() {
        cout << nome << " diz: Eu sou um ser vivo." << endl;
    }
};

class Humano : public SerVivo {
public:
    Humano(string n) : SerVivo(n) {}

    void apresentar() {
        cout << "[Humano] " << nome() << ": Pela honra do rei" << endl;
    }
};

class Elfo : public SerVivo {
public:
    Elfo(string n) : SerVivo(n) {}

    void apresentar() {
        cout << "[Elfo] " << nome() << ": Que as estrelas guiem seu caminho." << endl;
    }
};

class Fada : public SerVivo {
public:
    Fada(string n) : SerVivo(n) {}

    void apresentar() {
        cout << "[Fada] " << nome() << ": A magia das fadas flui em mim" << endl;
    }
};

int main() {
    list<SerVivo*> seres;

    seres.push_back(new Humano("Carlos"));
    seres.push_back(new Elfo("Zelda"));
    seres.push_back(new Fada("Tinker Bell"));

    cout << "O Conselho de Seres Vivos se apresenta" << endl;
    for (SerVivo* ser : seres) {
        ser->apresentar();
    }

    for (SerVivo* ser : seres) {
        delete ser;
    }
    seres.clear();

    return 0;
}
