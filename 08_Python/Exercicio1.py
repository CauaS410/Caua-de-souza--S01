class Personagem:
    def __init__(self, vida, resistencia):
        self._vida = int(vida)
        self._resistencia = int(resistencia)

    @property
    def vida(self):
        return self._vida

    @vida.setter
    def vida(self, novo_valor):
        if novo_valor < 0:
            self._vida = 0
        else:
            self._vida = int(novo_valor)

    def __str__(self):
        return f"Personagem com {self.vida} de vida"


class Cavaleiro(Personagem):
    def __init__(self, vida, resistencia, armadura_pesada):
        super().__init__(vida, resistencia)
        self.armadura_pesada = bool(armadura_pesada)

    def __str__(self):
        status_armadura = "Sim" if self.armadura_pesada else "Não"
        return (f"Cavaleiro com {self.vida} de vida, {self._resistencia} de resistência "
                f"e Armadura Pesada: {status_armadura}")
