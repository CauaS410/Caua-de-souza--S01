class ArmaCorpoACorpo:
    def __init__(self, nome, dano):
        self.nome = nome
        self.dano = dano

    def __str__(self):
        return f"{self.nome} (Dano: {self.dano})"
class PhantomThieves:
    def __init__(self, nome, codinome, arma):
        self.nome = nome
        self.codinome = codinome
        self.arma = arma

    def __str__(self):
        return (f"Membro: {self.nome} (Codinome: {self.codinome}) | "
                f"Arma: {self.arma}")

class Joker:
    def __init__(self, nome, equipe):
        self.nome = nome
        self.arma = ArmaCorpoACorpo("Faca", 15)


        self.equipe = equipe

    def mostrar_equipe(self):
        print("="*30)
        print(f"Líder: {self.nome} | Arma: {self.arma}")
        print("Membros dos Phantom Thieves:")
        print("="*30)
        if not self.equipe:
            print("A equipe ainda não possui outros membros.")
        else:
            for membro in self.equipe:
                print(f"- {membro}")
        print("="*30)

