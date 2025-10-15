from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo, funcao):
        self.custo = custo
        self.funcao = funcao

    def __str__(self):
        return f"Implante '{self.funcao}' (Custo: {self.custo})"

class NetRunner(Cibernetico):
    def __init__(self, nome):
        self.nome = nome
        self.implante = Implante(custo=15000, funcao="Cyberdeck")

    def realizar_hack(self):
        print(f"NetRunner {self.nome} usa seu {self.implante.funcao} para invadir o sistema.")

class Faccao:
    def __init__(self, nome):
        self.nome = nome
        self.membros = []

    def adicionar_membro(self, membro: Cibernetico):
        if isinstance(membro, Cibernetico):
            self.membros.append(membro)
        else:
            print("Erro: Apenas 'Ciberneticos' podem se juntar.")

    def executar_hack_coordenado(self):
        for membro in self.membros:
            membro.realizar_hack()

if __name__ == "__main__":
    netrunner_v = NetRunner("V")
    netrunner_lucy = NetRunner("Lucy")
    netrunner_kiwi = NetRunner("Kiwi")

    voodoo_boys = Faccao("Voodoo Boys")

    voodoo_boys.adicionar_membro(netrunner_v)
    voodoo_boys.adicionar_membro(netrunner_lucy)
    voodoo_boys.adicionar_membro(netrunner_kiwi)

    voodoo_boys.executar_hack_coordenado()
