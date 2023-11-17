import sys
from PySide6.QtWidgets import QApplication, QPushButton, QWidget, QVBoxLayout
from PySide6.QtGui import QFont

app = QApplication(sys.argv)

botao1 = QPushButton('1')
serifFont = QFont("Times", 20, QFont.Bold)
botao1.setFont(serifFont)
botao1.show()

botao2 = QPushButton('2')
sansFont = QFont("Helvetica", 32)
botao2.setFont(sansFont)
botao2.show()

botao3 = QPushButton('3')
botao3.setStyleSheet('font-size:40px;color:blue')
botao3.show()

central_widget = QWidget() #classe genérica
layout = QVBoxLayout() #layout
central_widget.setLayout(layout) #associo os dois objetos

layout.addWidget(botao1)
layout.addWidget(botao2)
layout.addWidget(botao3)

central_widget.show()
app.exec()