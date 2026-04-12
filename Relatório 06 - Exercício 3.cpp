#include <iostream>
#include <string>
using namespace std;

class MembroInatel {
protected:
    string nomeCompleto;

public:
    MembroInatel(string nome) {
        nomeCompleto = nome;
    }

    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: " 
             << nomeCompleto << "." << endl;
    }
};

class Coordenador : public MembroInatel {
private:
    string departamento;

public:
    Coordenador(string nome, string dept)
        : MembroInatel(nome) {
        departamento = dept;
    }

    void identificar() override {
        cout << "Sou um coordenador do departamento de "
             << departamento << ": " 
             << nomeCompleto << "." << endl;
    }
};

class Pesquisador : public MembroInatel {
public:
    Pesquisador(string nome)
        : MembroInatel(nome) {}

    void identificar() override {
        cout << "Sou um pesquisador do Inatel: "
             << nomeCompleto << "." << endl;
    }
};

int main() {
    MembroInatel m("Felipe");
    Coordenador c("Carlos", "Computacao");
    Pesquisador p("Ana");

    m.identificar();
    c.identificar();
    p.identificar();

    return 0;
}