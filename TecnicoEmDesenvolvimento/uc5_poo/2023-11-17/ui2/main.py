import sys
from PySide6.QtWidgets import QApplication, QPushButton
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

app.exec()