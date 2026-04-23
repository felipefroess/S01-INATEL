class Personagem:
    def __init__(self, vida, resistencia):
        self._vida = int(vida)
        self._resistencia = int(resistencia)

    @property
    def vida(self):
        return self._vida

    @vida.setter
    def vida(self, valor):
        if valor < 0:
            self._vida = 0
        else:
            self._vida = valor

    def __str__(self):
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência"


class Cavaleiro(Personagem):
    def __init__(self, vida, resistencia, armadura_pesada=True):
        super().__init__(vida, resistencia)
        self.armadura_pesada = bool(armadura_pesada)

    def __str__(self):
        status_armadura = "com" if self.armadura_pesada else "sem"
        return f"Cavaleiro {status_armadura} armadura pesada, possuindo {self._vida} de vida"

p1 = Personagem(100, 20)
print(p1)

c1 = Cavaleiro(150, 50, armadura_pesada=True)
print(c1)

c1.vida = -50 
print(f"Vida após tentativa de valor negativo: {c1.vida}")