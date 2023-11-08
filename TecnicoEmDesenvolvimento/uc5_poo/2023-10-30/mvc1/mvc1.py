class Model:
    def __init__(self):
        self.products ={
            'ps5': {'id': 1, 'nome': 'Playstation 5', 'preco':3500},
            'xbox': {'id': 2, 'nome': 'X-Box 360', 'preco':2500},
            'wii': {'id': 3, 'nome': 'Nintendo Wii', 'preco':2500}
            }
    
class Controller:
    def __init__(self):
        self.model=Model()
    
    def listProducts(self):
        products=self.model.products.keys()
        print('PRODUTOS')
        for product in products:
            print(f'{self.model.products[product]["id"]}')
            print(f'{self.model.products[product]["nome"]}')
            print(f'{self.model.products[product]["preco"]}')

class View:
    def __init__(self):
        self.controller=Controller()
    def produts(self):
        self.controller.listProducts()
    
#usuário final
if __name__ == '__main__':
    view=View()
    view.produts()
        
        