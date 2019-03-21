#language: pt
@find
Funcionalidade: Conexão com API
Como um usuário da internet
Eu quero manipular a requisição na API
A fim de achar dados do CEP

    Cenário: Consultar dados de CEP
        Dado o endereço da API para consultar os dados
        Quando realizar uma requisição para consultar um CEP
        Então a API irá retornar os dados do CEP os imprimindo na tela

    Cenário: Consultar numero de IBGE
        Dado o endereço da API para consultar os dados
        Quando realizar uma requisição para consultar numero IBGE
        Então a API irá retornar os dados do IBGE os imprimindo na tela

    Cenário: Envia dados de CEP
        Dado o endereço da API para consultar os dados
        Quando realizar uma requisição envie um CEP invalido
        Então a API irá retornar Erro
