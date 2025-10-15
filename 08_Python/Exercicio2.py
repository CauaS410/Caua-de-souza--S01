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
        print(f"{self.nome} usa o Terremoto! O chão treme e os inimigos caem!")

class Dano(Heroi):
    def __init__(self, nome):
        super().__init__(nome, "Dano")

    def usar_ultimate(self):
        print(f"{self.nome} usa a Lâmina do Dragão! 'Ryūjin no ken wo kurae!'")

if __name__ == "__main__":
    reinhardt = Tanque("Reinhardt")
    genji = Dano("Genji")
    ashe = Dano("Ashe")
    winston = Tanque("Winston")

    lista_herois = [reinhardt, genji, ashe, winston]

    for heroi in lista_herois:
        heroi.usar_ultimate()
