class ArmaCorpoACorpo:
    def __init__(self, tipo):
        self.tipo = tipo

    def __str__(self):
        return f"{self.tipo}"

class PhantomThieves:
    def __init__(self, nome, arma_principal):
        self.nome = nome
        self.arma_principal = arma_principal

    def __str__(self):
        return f"Codinome: {self.nome} | Arma: {self.arma_principal}"

class Joker:
    def __init__(self, lista_membros):
        self.faca = ArmaCorpoACorpo("Faca de Combate")
        
        self.equipe = lista_membros

    def mostrar_equipe(self):
        print(f"--- Status do Joker ---")
        print(f"Arma Própria (Composição): {self.faca}")
        print("\n--- Membros da Equipe (Agregação) ---")
        for membro in self.equipe:
            print(membro)

membro1 = PhantomThieves("Skull", "Cano de Metal")
membro2 = PhantomThieves("Panther", "Chicote")
membro3 = PhantomThieves("Fox", "Katana")

equipe_preparada = [membro1, membro2, membro3]

protagonista = Joker(equipe_preparada)

protagonista.mostrar_equipe()