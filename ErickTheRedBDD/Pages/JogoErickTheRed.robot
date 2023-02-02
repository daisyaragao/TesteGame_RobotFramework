*** Settings ***
Resource                ../resource.robot

*** Variable ***
${HOME_URL}            https://www.n1casino.com/game/erik-the-red


*** Keywords ***
#PRE-CONDIÇÕES
Dado que o usuário acesse o link do jogo
        Go To                                           ${HOME_URL}


#AÇÕES
Quando a página abrir
       Wait Until Element Is Visible                    class:react-notification-root

Então deve ser exibido o Erick The Red

        Click Element                                    //*[@id="root"]/div[3]/div/button

        Capture Page Screenshot