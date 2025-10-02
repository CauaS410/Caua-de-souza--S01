#include <iostream>
#include <string>

using namespace std;

struct Personagem {
    string nome;
    int nivel;
    int dano;
    int vida;

    void atacar(Personagem &alvo) {
        cout << nome << " atacou " << alvo.nome << "!" << endl;
        alvo.vida -= dano;
        cout << alvo.nome << " perdeu " << dano << " pontos de vida." << endl;
    }
    
    void mostrarInfo() {
        cout << "Nome: " << nome << endl;
        cout << "Nivel: " << nivel << endl;
        cout << "Vida: " << vida << endl;
        cout << "Dano: " << dano << endl;
    }
};

int main() {
    Personagem heroi;
    heroi.nome = "Guerreiro";
    heroi.nivel = 10;
    heroi.dano = 25;
    heroi.vida = 100;

    Personagem inimigo;
    inimigo.nome = "Esqueleto";
    inimigo.nivel = 5;
    inimigo.dano = 15;
    inimigo.vida = 80;

    cout << "INICIO DO COMBATE" << endl;
    cout << "Status inicial dos personagens:" << endl;
    heroi.mostrarInfo();
    inimigo.mostrarInfo();

    heroi.atacar(inimigo);

    cout << "Status final dos personagens apos o combate:" << endl;
    heroi.mostrarInfo();
    inimigo.mostrarInfo();

    return 0;
}
