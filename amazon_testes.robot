*** Settings ***
Documentation   Essa suite testa site da amazon
Resource        amazon_resources.robot
Test Setup      Abrir navegador
#Test Teardown   Fechar navegador   


*** Test Cases ***

Caso de teste 01 Carrinho de Compras"
    [Documentation]   Esse testes busca um produto e adiciona no carrinho da amazon
    [Tags]  Regressivo   Prod_01
    Acesse a Amazon
    Pesquise um "alexa"
    Adicione o produto no carrinho
    Valide se o produto foi incluído no carrinho com sucesso

Casos de teste 02 - Pesquisa de um produto
     [Documentation]  Esse teste adiciona o 3 item da lista no carrinho e verifica quandos itens tem no carrinho
     [Tags]  Regressivo   Prod_02
     Acesse a Amazon
     Pesquise um "alexa"
     Adicione o terceiro produto no carrinho
     Valide se o valor total do carrinho está correto


