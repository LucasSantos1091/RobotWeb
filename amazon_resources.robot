*** Settings ***
Documentation     create tests
Library    SeleniumLibrary
# Library    Selenium2Library

*** Variables ***
${URL}                 http://www.amazon.com.br
${Pesquisar}           //input[@id='twotabsearchtextbox']
${Botao_Pesquisa}      //input[contains(@id,'nav-search-submit-button')]
${Item01}              (//img[contains(@data-image-index,'1')])[1]
${Item03}              //img[@data-image-index='3']
${Nome_Prod}           //span[@class='a-size-large product-title-word-break']
${Nome_Prod03}         //span[contains(@class,'a-size-large product-title-word-break')] 
${Carrinho}            //input[contains(@name,'submit.add-to-cart')]
#${Pop}                //button[contains(@data-action,'a-popover-close')]
${Check_Carrinho}      //span[contains(.,'Adicionado ao carrinho')]
${Total_Carrinho}      id="nav-cart-count" 
${Ir_ao_Carrinho}      //a[@href='/gp/cart/view.html?ref_=sw_gtc']
${Check_Valor}          


*** Keywords ***
Abrir navegador
    Open Browser   browser=chrome
    Maximize Browser Window

Fechar navegador  
    Close Browser  

Acesse a Amazon
    Go To                            url=${URL}
Pesquise um "${Item}"
    Input Text                       ${Pesquisar}    ${Item}
    Click Element                    locator=${Botao_Pesquisa}
Adicione o produto no carrinho
    Wait Until Element Is Visible    ${Item01}
    Click Image                      ${Item01}
    Wait Until Element Is Visible    ${Nome_Prod}
Valide se o produto foi incluído no carrinho com sucesso
    Click Element                    ${Carrinho}
   # Click Element                    ${Pop} - Isso aqui está com opcional porque as vezes a Amazon mostra um pop pra adicionar outros itens antes de enviar ao carrinho
    Element Should Be Visible        ${Check_Carrinho}

Adicione o terceiro produto no carrinho
   Wait Until Element Is Visible     ${Item03}
   Click Element                     ${Item03}
   Wait Until Element Is Visible     ${Nome_Prod03}
   Click Element                     ${Carrinho}
Valide se o valor total do carrinho está correto
   Wait Until Element Is Visible     ${Ir_ao_Carrinho}
   Click Element                     ${Ir_ao_Carrinho}
   # Essa parte não ficou clara pra mim, se era pra validar o valor do produto, ou quantidade de itens 
   Page Should Contain               Subtotal (1 item)     
   

