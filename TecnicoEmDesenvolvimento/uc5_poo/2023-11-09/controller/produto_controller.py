from model.produto_model import Produto

#método para adicionar produto a base de dados
class Adicionar:
    @staticmethod
    def post(nome, preco):
        produto=Produto(nome, preco)
        produto.salvarProduto()

#método para atualizar produto da base de dados
class Atualizar():
    @staticmethod
    def get(id, status):
        produto=Produto.get_produto(id)
        produto.status=status
        produto.atualizarProduto()

#método para apagar produto da base de dados
class Apagar:
    @staticmethod
    def get(id): #testar sem id
        produto=Produto.get_produto(id)
        produto.excluirProduto()

#método para listar produtos da base de dados   
class Listar:
    @staticmethod
    def get():
        print(Produto.get_produtos())

#método para buscar produtos da base de dados
# herdando o erro do método get_produto() definido no model.   
class Buscar:
    @staticmethod
    def get(id):
        print(Produto.get_produto(id))