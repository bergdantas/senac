from db import _executar

class Produto:
    def __init__(self, nome, preco, id=None):
        self.nome=nome
        self.preco=preco
        self.id=id
        self.status=1 #1: ativo e 0: inativo
    
        query="CREATE TABLE IF NOT EXISTS produto(id INTEGER PRIMARY KEY AUTOINCREMENT, nome TEXT, preco REAL, status NUMERIC)" #se a tabela produtos ainda não existir, crio uma
        _executar(query)

    #método para criar um produtos   
    def salvarProduto(self):
        query=f"INSERT INTO produto(nome, preco, status) VALUES ('{self.nome}', '{float(self.preco)}', '{self.status}')"
        _executar(query)
    
    #método para atualizar o status do produto
    def atualizarProduto(self):
        query=f"UPDATE produto SET status='{int(self.status)}' WHERE id='{int(self.id)}'"
        _executar(query)
    
    #método para excluir produtos
    def excluirProduto(self):
        query=f"DELETE FROM produto WHERE id='{self.id}'"
        _executar(query)

    #método para listar os produtos cadastrados
    @staticmethod
    def get_produtos():
        query="SELECT * FROM produto"
        produtos=_executar(query)
        return produtos

    #método para buscar um produto cadastrado
    @staticmethod
    def get_produto(id):
        query=f"SELECT * FROM produto WHERE id={int(id)}"
        produto=_executar(query)[0]
        produto=Produto(id=produto[0], nome=produto[1], preco=produto[2])
        return produto
    
    #to string
    def __str__(self):
        return f"'{self.id}', '{self.nome}', '{self.preco}', '{self.status}'"