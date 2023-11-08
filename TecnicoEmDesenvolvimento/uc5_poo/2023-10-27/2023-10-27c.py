#exemplo de composição
class Pessoa:
    def __init__(self, nome):
        self.__nome=nome
        self.enderecos=[]
    def inserirEndereco(self, rua, numero):
        self.enderecos.append(Endereco(rua, numero))
    def listarEnderecos(self):
        for endereco in self.enderecos:
            print(endereco.getRua(), endereco.getNumero())

class Endereco:
    def __init__(self, rua, numero):
        self.__rua=rua
        self.__numero=numero
    def getRua(self):
        return self.__rua
    def setRua(self, valor):
        self.__rua = valor
    def getNumero(self):
        return self.__numero
    def setNumero(self, valor):
        self.__numero = valor

#criar instâncias dos objetos
p1=Pessoa("Jozefina Cleuza")
p2=Pessoa("Santorismar Benevides")
p1.inserirEndereco("Rua dos Mamelungos", 59)
p1.inserirEndereco("Rua dos Joristamos", 1245)
p2.inserirEndereco("Rua do Lítio", 87)
p1.listarEnderecos()
p2.listarEnderecos()