#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
    float produto = 1.0;

    for (int i = 0; i < tamanho; i++) {
        produto *= arr[i];
    }

    return produto;
}

int main() {
    int tamanho;

    cout << "Quantos valores deseja inserir? ";
    cin >> tamanho;

    float arr[tamanho];

    cout << "Digite os valores:\n";
    for (int i = 0; i < tamanho; i++) {
        cin >> arr[i];
    }

    float resultado = multiplicaArray(arr, tamanho);

    cout << "Produto dos valores: " << resultado << endl;

    return 0;
}