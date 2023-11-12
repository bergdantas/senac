from model.produto_model import Produto
from db import _executar

if __name__=='__main__':
    #crio objetos do tipo produto
    p1=Produto("PS5", 3500.99)
    p2=Produto("X-BOX", 2500.79)
    p3=Produto("WII", 2500.50)
    p4=Produto("SWITCH", 3500.99)
    p5=Produto("SUPER NINTENDO II", 1500.38)

    #testo se os objetos foram criados
    print(p1)
    print(p2)
    print(p3)
    print(p4)
    print(p5)

    #insiro os objetos na base de dados
    print("=====INSERIR=====")
    p1.salvarProduto()
    p2.salvarProduto()
    p3.salvarProduto()
    p4.salvarProduto()
    p5.salvarProduto()

    #listo os produtos da base de dados para confirmar a inclusão
    print(Produto.get_produtos())

    #excluo um produto da base de dados
    print("=====EXCLUIR=====")
    indice=5 #pode ser feito via input
    p5.id=Produto.get_produto(indice).id
    print(Produto.get_produtos())
    p5.excluirProduto()
    print(Produto.get_produtos())

    #edito um produto da base de dados
    print("=====EDIT=====")
    indice=4 #pode ser feito via input
    p4.status=0 #1: ativo e 0: inativo, pode ser feito via input
    p4.id=Produto.get_produto(indice).id
    p4.atualizarProduto()
    print(Produto.get_produtos()) 