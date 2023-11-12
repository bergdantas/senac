#cria um dicionário
tabela_preco = {
    "alface":1.5,
    "tomate":4.59,
    "alho":9.67,
    "cebola": 5.68
}

#acessar o preço do tomate
print(tabela_preco["tomate"])
preco_tomate = tabela_preco["tomate"]
print(f"O preço do tomate é: {preco_tomate}")

#adiciona registro ao dicionário
tabela_preco["pimenta"] = 7.21
print(tabela_preco["pimenta"]) #checar o registro

#remover registro do dicionário
del tabela_preco["cebola"]

# Verificar se "cebola" está na tabela de preços
if "cebola" in tabela_preco:
    print("A cebola está na tabela de preços.")
else:
    print("A cebola não está na tabela de preços.")

#atualizar registro no dicionário
tabela_preco["pimenta"] = 4.5
print(tabela_preco["pimenta"])