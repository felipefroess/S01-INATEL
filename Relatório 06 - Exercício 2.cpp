#include <iostream>
#include <string>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    Pessoa(string n, int i) {
        nome = n;
        idade = i;
    }

    string getNome() {
        return nome;
    }

    int getIdade() {
        return idade;
    }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    Protagonista(string n, int i, int nv) : Pessoa(n, i) {
        nivel = nv;
    }

    void mostrar() {
        cout << "Protagonista: " << getNome() << endl;
        cout << "Idade: " << getIdade() << endl;
        cout << "Nivel: " << nivel << endl;
        cout << "------------------" << endl;
    }
};

class Personagem : public Pessoa {
private:
    int forca;

public:
    Personagem(string n, int i, int f) : Pessoa(n, i) {
        forca = f;
    }

    void mostrar() {
        cout << "Personagem: " << getNome() << endl;
        cout << "Idade: " << getIdade() << endl;
        cout << "Forca: " << forca << endl;
        cout << "------------------" << endl;
    }
};

int main() {
    Protagonista p1("Felipe", 19, 10);
    Personagem p2("Inimigo", 25, 8);

    p1.mostrar();
    p2.mostrar();

    return 0;
}