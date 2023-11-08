from model import Model

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
