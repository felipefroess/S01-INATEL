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
        return f"[Implante: {self.funcao} | Custo: {self.custo}eb]"

class NetRunner(Cibernetico):
    def __init__(self, nome, custo_implante, funcao_implante):
        self.nome = nome
        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"NetRunner {self.nome} usando '{self.implante.funcao}' para invadir o sistema!")

class Faccao:
    def __init__(self, nome_faccao, lista_membros):
        self.nome_faccao = nome_faccao
        self.membros = lista_membros

    def executar_operacao_hacker(self):
        print(f"--- Operação Iniciada pela Facção: {self.nome_faccao} ---")
        for membro in self.membros:
            membro.realizar_hack()

n1 = NetRunner("V", 5000, "Cyberdeck MK.4")
n2 = NetRunner("Lucy", 8000, "Monowire")
n3 = NetRunner("Kiwi", 6500, "Neural Link")

lista_de_hackers = [n1, n2, n3]
minha_faccao = Faccao("Edgerunners", lista_de_hackers)

minha_faccao.executar_operacao_hacker()