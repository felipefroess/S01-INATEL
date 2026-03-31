#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0}; // Todos começam com 0
    int opcao = 0;
    bool executando = true;

    while (executando) {
        cout << "\n===== MENU =====\n";
        cout << "1. Reservar Assento\n";
        cout << "2. Ver Mapa da Sala\n";
        cout << "3. Sair\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch (opcao) {
            case 1: {
                int f, c;
                cout << "Informe a fileira (0-4): ";
                cin >> f;
                cout << "Informe a coluna (0-4): ";
                cin >> c;

                if (f >= 0 && f < 5 && c >= 0 && c < 5) {
                    if (sala[f][c] == 0) {
                        sala[f][c] = 1;
                        cout << "Sucesso!\n";
                    } else {
                        cout << "Erro: Assento ocupado!\n";
                    }
                } else {
                    cout << "Posicao invalida!\n";
                }
                break;
            }

            case 2:
                cout << "\nMapa da Sala:\n";
                for (int i = 0; i < 5; i++) {
                    for (int j = 0; j < 5; j++) {
                        if (sala[i][j] == 0)
                            cout << "[O] ";
                        else
                            cout << "[X] ";
                    }
                    cout << endl;
                }
                break;

            case 3:
                executando = false;
                break;

            default:
                cout << "Opcao invalida!\n";
        }
    }

    // Relatório Final
    int ocupados = 0;
    int vazios = 0;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (sala[i][j] == 1)
                ocupados++;
            else
                vazios++;
        }
    }

    cout << "\n===== RELATORIO FINAL =====\n";
    cout << "Total de assentos ocupados: " << ocupados << endl;
    cout << "Total de assentos vazios: " << vazios << endl;

    return 0;
}