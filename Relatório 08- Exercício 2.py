from abc import ABC, abstractmethod
class Heroi(ABC):
    def __init__(self, nome, funcao):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass

class Tanque(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Tanque")

    def usar_ultimate(self):
        print(f"[{self.nome}]: Ativando barreira protetora e absorvendo dano!")

class Dano(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Dano")

    def usar_ultimate(self):
        print(f"[{self.nome}]: Lançando ataque explosivo de área! Justiça chove dos céus!")

lista_herois = []
lista_herois.append(Tanque("Reinhardt"))
lista_herois.append(Dano("Pharah"))
lista_herois.append(Tanque("Roadhog"))
lista_herois.append(Dano("Genji"))

print("--- Iniciando o combate em Overwatch ---\n")

for heroi in lista_herois:
    heroi.usar_ultimate()