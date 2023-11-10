import sqlite3 #importo a biblioteca de conexão com o banco de dados

def _executar(query):
    db_path='./produto' #definio o local da base de dados
    connection = sqlite3.connect(db_path) #abro a conexão
    cursor = connection.cursor() #crio o iterador para navegar e manipular registros da base de dados
    resultado = None
    try:
        cursor.execute(query) #tenta executar uma determinada query
        resultado = cursor.fetchall() #retorna linhas do resultado da consulta em uma lista
        connection.commit() #executa alteração na base de dados
    except Exception as e:
        print(f'erro na execução da query: {e}') #lança exceção, caso não consiga executar uma query
    finally:
        cursor.close #fecha o iterador
        connection.close() #fecha a conexão
        return resultado
        