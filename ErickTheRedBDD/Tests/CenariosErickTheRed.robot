*** Settings ***
Resource                ../resource.robot
Resource                ../Pages/JogoErickTheRed.robot

Test Setup              Abrir navegador
#Test Teardown           Fechar navegador

*** Test Case ***
Cenario: Acessar o jogo
        Dado que o usuário acesse o link do jogo
        Quando a página abrir
        Então deve ser exibido o Erick The Red
