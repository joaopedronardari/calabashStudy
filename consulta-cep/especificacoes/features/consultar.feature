# language: pt
Funcionalidade: Consultar 
  Posso consultar um CEP válido.
  Se consultar um CEP inválido, devo ver uma mensagem de erro.
  Se consultar um CEP inexistente (CEP válido que não existe na base dos Correios), devo ver uma mensagem de erro.

  Contexto:
    Dado que estou na tela de consulta CEP
  
  @dev  
  Cenário: Consultar um CEP válido
    Quando digitar o CEP "02211020"
    E apertar o botão consultar
    Então devo ver o endereco "Rua Sem Nome"

  Cenário: Consultar um CEP inválido
  	Quando digitar o CEP ""
  	E apertar o botão consultar
  	Então devo ver a mensagem "CEP inválido"

  Cenário: Consultar um CEP inexistente.
  	Quando digitar o CEP "00000000"
  	E apertar o botão consultar
  	Então devo ver a mensagem "CEP não encontrado"