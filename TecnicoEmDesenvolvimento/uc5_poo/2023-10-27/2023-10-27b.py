#exemplo de agregação
class CarrinhoDeCompras:
    def __init__(self):
        self.produtos=[]
    def inserirProdutos(self, produto):
        self.produtos.append(produto)
    def listarProdutos(self):
        for produto in self.produtos:
            print(produto.getNome(), produto.getPreco())
    def totalDaCompra(self):
        valorDaCompra=0
        for produto in self.produtos:
            valorDaCompra+=produto.getPreco()
        print(valorDaCompra)

class Produto:
    def __init__(self, nome, preco):
        self.__nome= nome
        self.__preco = preco
    def getNome(self):
        return self.__nome
    def setNome(self, value):
        self.__nome = value
    def getPreco(self):
        return self.__preco
    def setPreco(self, value):
        self.__preco = value

#instancio objetos
p1=Produto("Arroz", 5.69)
p2=Produto("Feijão", 6.98)
p3=Produto("Macarrão", 3.69)
carrinho=CarrinhoDeCompras()
#encho o carrinho de produtos
carrinho.inserirProdutos(p1)
carrinho.inserirProdutos(p1)
carrinho.inserirProdutos(p1)
carrinho.inserirProdutos(p2)
carrinho.inserirProdutos(p2)
carrinho.inserirProdutos(p3)
carrinho.inserirProdutos(p3)
carrinho.inserirProdutos(p3)
carrinho.inserirProdutos(p3)
carrinho.inserirProdutos(p3)
#listo os produtos que estão no carrinho
carrinho.listarProdutos()
#vejo o valor total da compra
carrinho.totalDaCompra()
