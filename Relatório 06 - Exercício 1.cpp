#include <iostream>
#include <string>
using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo &alvo) {
        cout << modelo << " disparou em " << alvo.modelo << "!" << endl;

        alvo.integridade -= potenciaLaser;

        if (alvo.integridade < 0) {
            alvo.integridade = 0;
        }
    }

    void mostrarStatus() {
        cout << "Modelo: " << modelo << endl;
        cout << "Versao: " << versao << endl;
        cout << "Potencia Laser: " << potenciaLaser << endl;
        cout << "Integridade: " << integridade << endl;
        cout << "------------------------" << endl;
    }
};

int main() {
    Robo r1, r2;

    r1.modelo = "Alpha";
    r1.versao = 1;
    r1.potenciaLaser = 30.5;
    r1.integridade = 100;

    r2.modelo = "Beta";
    r2.versao = 2;
    r2.potenciaLaser = 20.0;
    r2.integridade = 100;

    cout << "=== Status Inicial ===" << endl;
    r1.mostrarStatus();
    r2.mostrarStatus();

    r1.disparar(r2);

    cout << "\n=== Status Final ===" << endl;
    r1.mostrarStatus();
    r2.mostrarStatus();

    return 0;
}