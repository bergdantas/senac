#Exemplo de associação 
class Escritor:
    def __init__(self, nomeDoEscritor):
        self.__nomeDoEscritor=nomeDoEscritor
        self.__instrumentoDeTrabalho=None
    def getNome(self):
        return self.__nomeDoEscritor
    def setNome(self, valor):
        self.__nomeDoEscritor=valor
    def getInstrumentoDeTrabalho(self):
        return self.__instrumentoDeTrabalho
    def setInstrumentoDeTrabalho(self, valor):
        self.__instrumentoDeTrabalho=valor

class Computador:
    def __init__(self, marca):
        self.__marca=marca
    def getMarca(self):
        return self.__marca
    def setMarca(self, valor):
        self.getMarca=valor
    def escrever(self):
        print("Estou usando o Word")

class MaquinaDeDatilografia:
    def __init__(self, anoDeFabricacao):
        self.__anoDeFabricacao=anoDeFabricacao
    def getAnoDeFabricacao(self):
        return self.__anoDeFabricacao
    def setAnoDeFabricacao(self, valor):
        self.__anoDeFabricacao=valor
    def escrever(self):
        print("Estou usando a força do ódio")

#instancio objeto das classes
escritor=Escritor("Machado de Assis")
computador=Computador("DELL")
maquinaDeDatilografia=MaquinaDeDatilografia(1988)
#Utilizo um instrumento 
escritor.setInstrumentoDeTrabalho(computador)
#Utilizo um método de um instrumento 
escritor.getInstrumentoDeTrabalho().escrever()
#Utilizo um instrumento 
escritor.setInstrumentoDeTrabalho(maquinaDeDatilografia)
#Utilizo um método de um instrumento 
escritor.getInstrumentoDeTrabalho().escrever()

