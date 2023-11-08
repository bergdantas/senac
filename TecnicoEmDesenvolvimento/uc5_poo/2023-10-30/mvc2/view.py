from controller import Controller

class View:
    def __init__(self):
        self.controller=Controller()
    def produts(self):
        self.controller.listProducts()
    
