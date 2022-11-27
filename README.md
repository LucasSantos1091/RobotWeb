# PocRobot

## Inicio

Sera necessario instalar o Python e RobotFramework
```sh
https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installation-instructions
```sh
 
## Cenários

- Fazer uma pesquisa na amazom de algum produto e adicionar ele no carrinho, após isso verificar se o mesmo foi inserido no carrinho.
- Fazer uma pesquisa na amazom de algum produto e adicionar o terceiro produto da lista no carrinho, após isso verificar se o mesmo foi inserido no carrinho e se a quantidade está correta

### Tags: 

Executar os 2 cenários
```sh
robot -i Regressivo .\amazon_testes.robot  
```

Executar cenários separados:

```sh
''' robot -i "@Tags" .\amazon_testes.robot '''
```
