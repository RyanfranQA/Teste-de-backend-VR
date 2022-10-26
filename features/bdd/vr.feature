#language:pt

@TestGet:
Funcionalidade: Validar json

Cenario: Buscar informacoes de um estabelecimento
Dado que eu possuo o endpoint para consulta
Quando realizo a consulta
Entao valido se o campo 'typeOfEstablishment' existe
E retorno aleatoriamente o valor chave 'typeOfEstablishment'
E o status code e '200'
