from controller.produto_controller import Adicionar, Apagar, Atualizar, Buscar, Listar

if __name__ == '__main__':
    #adiciona produto na base de dados usando nome e preço
    Adicionar.post("PS5", 3500.99)
    Adicionar.post("X-BOX", 2500.79)
    Adicionar.post("WII", 2500.50)
    Adicionar.post("SWITCH", 3500.99)
    Adicionar.post("SUPER NINTENDO II", 1500.38)
    Listar.get() #listo a base de dados para conferir as inserções

    #apaga produto da base de dados usando o id
    Apagar.get(1)
    Listar.get() #listo a base de dados para conferir a remoção

    #busca produto na base de dados usando o id 
    Buscar.get(5)

    #atualiza o status do produto na base de dados usando o id 
    Atualizar.get(5, 0)
    Listar.get()
